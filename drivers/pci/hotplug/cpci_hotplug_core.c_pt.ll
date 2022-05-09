; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/cpci_hotplug_core.c_pt.bc'
source_filename = "../drivers/pci/hotplug/cpci_hotplug_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_register_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_register_bus\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_register_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_register_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_register_bus\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_register_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_unregister_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_unregister_bus\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_unregister_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_unregister_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_unregister_bus\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_unregister_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_register_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_register_controller\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_register_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_register_controller\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_unregister_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_unregister_controller\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_unregister_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_unregister_controller\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_start\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_start\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_start:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_start\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpci_hp_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_cpci_hp_stop\09\09\09\09"
module asm "\09.long\09__crc_cpci_hp_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpci_hp_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22cpci_hp_stop\22\09\09\09\09\09"
module asm "__kstrtabns_cpci_hp_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.slot = type { i8, i32, ptr, ptr, i8, i32, %struct.hotplug_slot, %struct.list_head }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.cpci_hp_controller = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.cpci_hp_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@controller = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%02x:%02x\00", [22 x i8] zeroinitializer }, align 32
@cpci_hotplug_slot_ops = internal constant { %struct.hotplug_slot_ops, [60 x i8] } { %struct.hotplug_slot_ops { ptr @enable_slot, ptr @disable_slot, ptr @set_attention_status, ptr null, ptr @get_power_status, ptr @get_attention_status, ptr @get_latch_status, ptr @get_adapter_status, ptr null }, [60 x i8] zeroinitializer }, align 32
@cpci_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@cpci_hp_register_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: registering slot %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpci_hp_register_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/hotplug/cpci_hotplug_core.c\00", [56 x i8] zeroinitializer }, align 32
@cpci_hp_register_bus._entry_ptr = internal global ptr @cpci_hp_register_bus._entry, section ".printk_index", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpci_hotplug\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_hotplug\00", [20 x i8] zeroinitializer }, align 32
@cpci_hp_register_bus._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: pci_hp_register failed with error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cpci_hp_register_bus._entry_ptr.8 = internal global ptr @cpci_hp_register_bus._entry.6, section ".printk_index", align 4
@cpci_hp_register_bus._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: slot registered with name: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@cpci_hp_register_bus._entry_ptr.11 = internal global ptr @cpci_hp_register_bus._entry.9, section ".printk_index", align 4
@list_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @list_rwsem, i64 56), ptr getelementptr (i8, ptr @list_rwsem, i64 56) }, ptr @list_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@slot_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @slot_list, ptr @slot_list }, [24 x i8] zeroinitializer }, align 32
@slots = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cpci_hp_register_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_register_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_register_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_register_bus to i32), ptr @__kstrtab_cpci_hp_register_bus, ptr @__kstrtabns_cpci_hp_register_bus }, section "___ksymtab_gpl+cpci_hp_register_bus", align 4
@cpci_hp_unregister_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: deregistering slot %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpci_hp_unregister_bus\00", [41 x i8] zeroinitializer }, align 32
@cpci_hp_unregister_bus._entry_ptr = internal global ptr @cpci_hp_unregister_bus._entry, section ".printk_index", align 4
@__kstrtab_cpci_hp_unregister_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_unregister_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_unregister_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_unregister_bus to i32), ptr @__kstrtab_cpci_hp_unregister_bus, ptr @__kstrtabns_cpci_hp_unregister_bus }, section "___ksymtab_gpl+cpci_hp_unregister_bus", align 4
@cpci_hp_register_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Can't get irq %d for the hotplug cPCI controller\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpci_hp_register_controller\00", [36 x i8] zeroinitializer }, align 32
@cpci_hp_register_controller._entry_ptr = internal global ptr @cpci_hp_register_controller._entry, section ".printk_index", align 4
@cpci_hp_register_controller._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s - acquired controller irq %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cpci_hp_register_controller._entry_ptr.18 = internal global ptr @cpci_hp_register_controller._entry.16, section ".printk_index", align 4
@__kstrtab_cpci_hp_register_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_register_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_register_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_register_controller to i32), ptr @__kstrtab_cpci_hp_register_controller, ptr @__kstrtabns_cpci_hp_register_controller }, section "___ksymtab_gpl+cpci_hp_register_controller", align 4
@thread_finished = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_cpci_hp_unregister_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_unregister_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_unregister_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_unregister_controller to i32), ptr @__kstrtab_cpci_hp_unregister_controller, ptr @__kstrtabns_cpci_hp_unregister_controller }, section "___ksymtab_gpl+cpci_hp_unregister_controller", align 4
@cpci_hp_start.first = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cpci_hp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s - enter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpci_hp_start\00", [18 x i8] zeroinitializer }, align 32
@cpci_hp_start._entry_ptr = internal global ptr @cpci_hp_start._entry, section ".printk_index", align 4
@cpci_hp_start._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s - thread started\0A\00", [37 x i8] zeroinitializer }, align 32
@cpci_hp_start._entry_ptr.23 = internal global ptr @cpci_hp_start._entry.21, section ".printk_index", align 4
@cpci_hp_start._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s - enabling irq\0A\00", [39 x i8] zeroinitializer }, align 32
@cpci_hp_start._entry_ptr.26 = internal global ptr @cpci_hp_start._entry.24, section ".printk_index", align 4
@cpci_hp_start._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s - exit\0A\00", [47 x i8] zeroinitializer }, align 32
@cpci_hp_start._entry_ptr.29 = internal global ptr @cpci_hp_start._entry.27, section ".printk_index", align 4
@__kstrtab_cpci_hp_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_start = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_start to i32), ptr @__kstrtab_cpci_hp_start, ptr @__kstrtabns_cpci_hp_start }, section "___ksymtab_gpl+cpci_hp_start", align 4
@cpci_hp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s - disabling irq\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpci_hp_stop\00", [19 x i8] zeroinitializer }, align 32
@cpci_hp_stop._entry_ptr = internal global ptr @cpci_hp_stop._entry, section ".printk_index", align 4
@__kstrtab_cpci_hp_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpci_hp_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_cpci_hp_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpci_hp_stop to i32), ptr @__kstrtab_cpci_hp_stop, ptr @__kstrtabns_cpci_hp_stop }, section "___ksymtab_gpl+cpci_hp_stop", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@enable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s - physical_slot = %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_slot\00", [20 x i8] zeroinitializer }, align 32
@enable_slot._entry_ptr = internal global ptr @enable_slot._entry, section ".printk_index", align 4
@disable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.34, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_slot\00", [19 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr = internal global ptr @disable_slot._entry, section ".printk_index", align 4
@disable_slot._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s - unconfiguring slot %s\0A\00", [62 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr.37 = internal global ptr @disable_slot._entry.35, section ".printk_index", align 4
@disable_slot._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s - could not unconfigure slot %s\0A\00", [54 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr.40 = internal global ptr @disable_slot._entry.38, section ".printk_index", align 4
@disable_slot._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s - finished unconfiguring slot %s\0A\00", [53 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr.43 = internal global ptr @disable_slot._entry.41, section ".printk_index", align 4
@disable_slot._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: %s - could not clear EXT for slot %s\0A\00", [52 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr.46 = internal global ptr @disable_slot._entry.44, section ".printk_index", align 4
@extracting = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_rwsem.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list_rwsem\00", [21 x i8] zeroinitializer }, align 32
@cpci_hp_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: entered cpci_hp_intr\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpci_hp_intr\00", [19 x i8] zeroinitializer }, align 32
@cpci_hp_intr._entry_ptr = internal global ptr @cpci_hp_intr._entry, section ".printk_index", align 4
@cpci_hp_intr._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: exited cpci_hp_intr, not our interrupt\0A\00", [50 x i8] zeroinitializer }, align 32
@cpci_hp_intr._entry_ptr.53 = internal global ptr @cpci_hp_intr._entry.51, section ".printk_index", align 4
@cpci_thread = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.54, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_slots\00", [21 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr = internal global ptr @init_slots._entry, section ".printk_index", align 4
@init_slots._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s - looking at slot %s\0A\00", [33 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr.57 = internal global ptr @init_slots._entry.55, section ".printk_index", align 4
@init_slots._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s - cleared INS for slot %s\0A\00", [60 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr.60 = internal global ptr @init_slots._entry.58, section ".printk_index", align 4
@init_slots._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.54, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr.62 = internal global ptr @init_slots._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpci_hp_eventd\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpci_hp_polld\00", [18 x i8] zeroinitializer }, align 32
@cpci_start_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Can't start up our thread\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpci_start_thread\00", [46 x i8] zeroinitializer }, align 32
@cpci_start_thread._entry_ptr = internal global ptr @cpci_start_thread._entry, section ".printk_index", align 4
@event_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s - event thread started\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"event_thread\00", [19 x i8] zeroinitializer }, align 32
@event_thread._entry_ptr = internal global ptr @event_thread._entry, section ".printk_index", align 4
@event_thread._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: event thread sleeping\0A\00", [35 x i8] zeroinitializer }, align 32
@event_thread._entry_ptr.71 = internal global ptr @event_thread._entry.69, section ".printk_index", align 4
@event_thread._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s - error checking slots\0A\00", [63 x i8] zeroinitializer }, align 32
@event_thread._entry_ptr.74 = internal global ptr @event_thread._entry.72, section ".printk_index", align 4
@event_thread._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s - re-enabling irq\0A\00", [36 x i8] zeroinitializer }, align 32
@event_thread._entry_ptr.77 = internal global ptr @event_thread._entry.75, section ".printk_index", align 4
@check_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: no slots registered, shutting down\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"check_slots\00", [20 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr = internal global ptr @check_slots._entry, section ".printk_index", align 4
@check_slots._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.79, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.81 = internal global ptr @check_slots._entry.80, section ".printk_index", align 4
@check_slots._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.3, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: slot %s already inserted\0A\00", [32 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.84 = internal global ptr @check_slots._entry.82, section ".printk_index", align 4
@check_slots._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.79, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s - slot %s inserted\0A\00", [35 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.87 = internal global ptr @check_slots._entry.85, section ".printk_index", align 4
@check_slots._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.79, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s - slot %s HS_CSR (1) = %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.90 = internal global ptr @check_slots._entry.88, section ".printk_index", align 4
@check_slots._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.79, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s - configuring slot %s\0A\00", [32 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.93 = internal global ptr @check_slots._entry.91, section ".printk_index", align 4
@check_slots._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.79, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: %s - could not configure slot %s\0A\00", [56 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.96 = internal global ptr @check_slots._entry.94, section ".printk_index", align 4
@check_slots._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.79, ptr @.str.3, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s - finished configuring slot %s\0A\00", [55 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.99 = internal global ptr @check_slots._entry.97, section ".printk_index", align 4
@check_slots._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.79, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s - slot %s HS_CSR (2) = %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.102 = internal global ptr @check_slots._entry.100, section ".printk_index", align 4
@check_slots._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.79, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s - slot %s HS_CSR (3) = %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.105 = internal global ptr @check_slots._entry.103, section ".printk_index", align 4
@check_slots._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.79, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s - slot %s extracted\0A\00", [34 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.108 = internal global ptr @check_slots._entry.106, section ".printk_index", align 4
@check_slots._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.79, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s - slot %s HS_CSR = %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.111 = internal global ptr @check_slots._entry.109, section ".printk_index", align 4
@check_slots._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.79, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: card in slot %s was improperly removed\0A\00", [50 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.114 = internal global ptr @check_slots._entry.112, section ".printk_index", align 4
@check_slots._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.79, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: inserted=%d, extracted=%d, extracting=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.117 = internal global ptr @check_slots._entry.115, section ".printk_index", align 4
@check_slots._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.79, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: cannot find ENUM# source, shutting down\0A\00", [49 x i8] zeroinitializer }, align 32
@check_slots._entry_ptr.120 = internal global ptr @check_slots._entry.118, section ".printk_index", align 4
@poll_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.121, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"poll_thread\00", [20 x i8] zeroinitializer }, align 32
@poll_thread._entry_ptr = internal global ptr @poll_thread._entry, section ".printk_index", align 4
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 48, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 215, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"cpci_hotplug_slot_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 60, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant [11 x i8] c"cpci_debug\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 47, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 219, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 220, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 222, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 225, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"list_rwsem\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"slot_list\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 44, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 45, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 258, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 533, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 537, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"thread_finished\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"cpci_hp_start.first\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 592, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 612, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 616, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 619, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 631, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 76, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 89, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 94, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 97, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 101, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 105, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [11 x i8] c"extracting\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 46, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 43, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 272, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 277, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [12 x i8] c"cpci_thread\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 49, i32 28 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 300, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 307, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 309, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 319, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 497, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 499, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 501, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 436, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 438, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 449, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 458, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 334, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 339, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 346, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 353, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 357, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 361, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 364, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 368, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 373, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 383, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 389, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 394, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 410, i32 5 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 419, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 424, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.458 = private constant [43 x i8] c"../drivers/pci/hotplug/cpci_hotplug_core.c\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 481, i32 6 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__ksymtab_cpci_hp_register_bus, ptr @__ksymtab_cpci_hp_register_controller, ptr @__ksymtab_cpci_hp_start, ptr @__ksymtab_cpci_hp_stop, ptr @__ksymtab_cpci_hp_unregister_bus, ptr @__ksymtab_cpci_hp_unregister_controller, ptr @check_slots._entry, ptr @check_slots._entry.100, ptr @check_slots._entry.103, ptr @check_slots._entry.106, ptr @check_slots._entry.109, ptr @check_slots._entry.112, ptr @check_slots._entry.115, ptr @check_slots._entry.118, ptr @check_slots._entry.80, ptr @check_slots._entry.82, ptr @check_slots._entry.85, ptr @check_slots._entry.88, ptr @check_slots._entry.91, ptr @check_slots._entry.94, ptr @check_slots._entry.97, ptr @check_slots._entry_ptr, ptr @check_slots._entry_ptr.102, ptr @check_slots._entry_ptr.105, ptr @check_slots._entry_ptr.108, ptr @check_slots._entry_ptr.111, ptr @check_slots._entry_ptr.114, ptr @check_slots._entry_ptr.117, ptr @check_slots._entry_ptr.120, ptr @check_slots._entry_ptr.81, ptr @check_slots._entry_ptr.84, ptr @check_slots._entry_ptr.87, ptr @check_slots._entry_ptr.90, ptr @check_slots._entry_ptr.93, ptr @check_slots._entry_ptr.96, ptr @check_slots._entry_ptr.99, ptr @cpci_hp_intr._entry, ptr @cpci_hp_intr._entry.51, ptr @cpci_hp_intr._entry_ptr, ptr @cpci_hp_intr._entry_ptr.53, ptr @cpci_hp_register_bus._entry, ptr @cpci_hp_register_bus._entry.6, ptr @cpci_hp_register_bus._entry.9, ptr @cpci_hp_register_bus._entry_ptr, ptr @cpci_hp_register_bus._entry_ptr.11, ptr @cpci_hp_register_bus._entry_ptr.8, ptr @cpci_hp_register_controller._entry, ptr @cpci_hp_register_controller._entry.16, ptr @cpci_hp_register_controller._entry_ptr, ptr @cpci_hp_register_controller._entry_ptr.18, ptr @cpci_hp_start._entry, ptr @cpci_hp_start._entry.21, ptr @cpci_hp_start._entry.24, ptr @cpci_hp_start._entry.27, ptr @cpci_hp_start._entry_ptr, ptr @cpci_hp_start._entry_ptr.23, ptr @cpci_hp_start._entry_ptr.26, ptr @cpci_hp_start._entry_ptr.29, ptr @cpci_hp_stop._entry, ptr @cpci_hp_stop._entry_ptr, ptr @cpci_hp_unregister_bus._entry, ptr @cpci_hp_unregister_bus._entry_ptr, ptr @cpci_start_thread._entry, ptr @cpci_start_thread._entry_ptr, ptr @disable_slot._entry, ptr @disable_slot._entry.35, ptr @disable_slot._entry.38, ptr @disable_slot._entry.41, ptr @disable_slot._entry.44, ptr @disable_slot._entry_ptr, ptr @disable_slot._entry_ptr.37, ptr @disable_slot._entry_ptr.40, ptr @disable_slot._entry_ptr.43, ptr @disable_slot._entry_ptr.46, ptr @enable_slot._entry, ptr @enable_slot._entry_ptr, ptr @event_thread._entry, ptr @event_thread._entry.69, ptr @event_thread._entry.72, ptr @event_thread._entry.75, ptr @event_thread._entry_ptr, ptr @event_thread._entry_ptr.71, ptr @event_thread._entry_ptr.74, ptr @event_thread._entry_ptr.77, ptr @init_slots._entry, ptr @init_slots._entry.55, ptr @init_slots._entry.58, ptr @init_slots._entry.61, ptr @init_slots._entry_ptr, ptr @init_slots._entry_ptr.57, ptr @init_slots._entry_ptr.60, ptr @init_slots._entry_ptr.62, ptr @poll_thread._entry, ptr @poll_thread._entry_ptr, ptr @controller, ptr @.str, ptr @cpci_hotplug_slot_ops, ptr @cpci_debug, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @list_rwsem, ptr @slot_list, ptr @slots, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @thread_finished, ptr @cpci_hp_start.first, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @extracting, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @cpci_thread, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hotplug_slot_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_register_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_register_bus._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_register_bus._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slots to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_unregister_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_register_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_register_controller._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_finished to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_start.first to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_start._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_start._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_start._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extracting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_hp_intr._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_thread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_start_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thread._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thread._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thread._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slots._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_register_bus(ptr noundef %bus, i8 noundef zeroext %first, i8 noundef zeroext %last) #0 align 64 {
entry:
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #10
  %0 = call ptr @memset(ptr %name, i32 255, i32 6)
  %1 = load ptr, ptr @controller, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %bus, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %first, i8 %last)
  %cmp.not65 = icmp ugt i8 %first, %last
  br i1 %cmp.not65, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv2 = zext i8 %last to i32
  %conv = zext i8 %first to i32
  %number9 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc43, %list_add.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %bus7 = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %bus7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bus, ptr %bus7, align 8
  %conv8 = trunc i32 %i.066 to i8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %call7.i.i, align 8
  %and = shl i32 %i.066, 3
  %shl = and i32 %and, 248
  %devfn = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %devfn, align 4
  %6 = ptrtoint ptr %number9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number9, align 4
  %conv10 = zext i8 %7 to i32
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 6, ptr noundef nonnull @.str, i32 noundef %conv10, i32 noundef %i.066)
  %hotplug_slot = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %hotplug_slot to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpci_hotplug_slot_ops, ptr %hotplug_slot, align 8
  %9 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end6.do.end19_crit_edge, label %do.end

if.end6.do.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull %name) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end6.do.end19_crit_edge
  %call22 = call i32 @__pci_hp_register(ptr noundef %hotplug_slot, ptr noundef nonnull %bus, i32 noundef %i.066, ptr noundef nonnull %name, ptr noundef null, ptr noundef nonnull @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body31, label %do.end27

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %call22) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

do.body31:                                        ; preds = %do.end19
  %10 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp eq i32 %10, 0
  br i1 %tobool32.not, label %do.body31.do.end42_crit_edge, label %do.end36

do.body31.do.end42_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kobj.i.i.i, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef %14) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %do.body31.do.end42_crit_edge
  call void @down_write(ptr noundef nonnull @list_rwsem) #10
  %slot_list = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 7
  %15 = load ptr, ptr @slot_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %slot_list, ptr noundef nonnull @slot_list, ptr noundef %15) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end42.list_add.exit_crit_edge

do.end42.list_add.exit_crit_edge:                 ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %slot_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %slot_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %slot_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.slot, ptr %call7.i.i, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @slot_list, ptr %prev3.i.i, align 4
  store volatile ptr %slot_list, ptr @slot_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end42.list_add.exit_crit_edge
  %19 = load i32, ptr @slots, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr @slots, align 4
  call void @up_write(ptr noundef nonnull @list_rwsem) #10
  %inc43 = add nuw nsw i32 %i.066, 1
  %exitcond = icmp eq i32 %i.066, %conv2
  br i1 %exitcond, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %do.end27, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call22, %do.end27 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_hp_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_unregister_bus(ptr noundef readnone %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @list_rwsem) #10
  %0 = load i32, ptr @slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @slot_list, align 4
  %cmp.not36 = icmp eq ptr %1, @slot_list
  br i1 %cmp.not36, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn39, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %slot.038 = getelementptr i8, ptr %.pn.in37, i32 -48
  %2 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %.pn.in37, align 4
  %bus6 = getelementptr i8, ptr %.pn.in37, i32 -40
  %3 = ptrtoint ptr %bus6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus6, align 4
  %cmp7 = icmp eq ptr %4, %bus
  br i1 %cmp7, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in37, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = load i32, ptr @slots, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr @slots, align 4
  %14 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %list_del.exit.do.end17_crit_edge, label %do.end

list_del.exit.do.end17_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i = getelementptr i8, ptr %.pn.in37, i32 -12
  %15 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kobj.i.i.i, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %18) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end, %list_del.exit.do.end17_crit_edge
  %hotplug_slot = getelementptr i8, ptr %.pn.in37, i32 -24
  tail call void @pci_hp_deregister(ptr noundef %hotplug_slot) #10
  %dev.i = getelementptr i8, ptr %.pn.in37, i32 -36
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void @pci_dev_put(ptr noundef %20) #10
  tail call void @kfree(ptr noundef %slot.038) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end17, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn39, @slot_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @list_rwsem) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_deregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_register_controller(ptr noundef %new_controller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @controller, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %new_controller, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %new_controller, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %new_controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_controller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end4.if.then34_crit_edge, label %if.then6

if.end4.if.then34_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then6:                                         ; preds = %if.end4
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable_irq, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.then6.if.then12_crit_edge, label %land.lhs.true9

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

land.lhs.true9:                                   ; preds = %if.then6
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_irq, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %land.lhs.true9.if.then12_crit_edge, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true9.if.then12_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true9.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true9.if.end13_crit_edge
  %status.0 = phi i32 [ 0, %land.lhs.true9.if.end13_crit_edge ], [ -22, %if.then12 ]
  %irq_flags = getelementptr inbounds %struct.cpci_hp_controller, ptr %new_controller, i32 0, i32 1
  %9 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_flags, align 4
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, ptr %new_controller, i32 0, i32 3
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %4, ptr noundef nonnull @cpci_hp_intr, ptr noundef null, i32 noundef %10, ptr noundef nonnull @.str.4, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end13.do.body20_crit_edge, label %do.end

if.end13.do.body20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %new_controller to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_controller, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef %14) #14
  br label %do.body20

do.body20:                                        ; preds = %do.end, %if.end13.do.body20_crit_edge
  %status.1 = phi i32 [ -19, %do.end ], [ %status.0, %if.end13.do.body20_crit_edge ]
  %15 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %do.body20.if.end32_crit_edge, label %do.end25

do.body20.if.end32_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %new_controller to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %new_controller, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %17) #14
  br label %if.end32

if.end32:                                         ; preds = %do.end25, %do.body20.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool33.not = icmp eq i32 %status.1, 0
  br i1 %tobool33.not, label %if.end32.if.then34_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.end4.if.then34_crit_edge
  store ptr %new_controller, ptr @controller, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then34 ], [ %status.1, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpci_hp_intr(i32 noundef %irq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.4) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = load ptr, ptr @controller, align 4
  %irq_flags = getelementptr inbounds %struct.cpci_hp_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_flags, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end2.if.end16_crit_edge, label %land.lhs.true

do.end2.if.end16_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %do.end2
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %check_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %check_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_irq, align 4
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %call4 = tail call i32 %7(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body7, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body7:                                         ; preds = %land.lhs.true
  %10 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %do.body7.return_crit_edge, label %do.end11

do.body7.return_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end11:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.4) #14
  br label %return

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %do.end2.if.end16_crit_edge
  %11 = load ptr, ptr @controller, align 4
  %ops17 = getelementptr inbounds %struct.cpci_hp_controller, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops17, align 4
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_irq, align 4
  %call18 = tail call i32 %15() #10
  %16 = load ptr, ptr @cpci_thread, align 4
  %call19 = tail call i32 @wake_up_process(ptr noundef %16) #10
  br label %return

return:                                           ; preds = %if.end16, %do.end11, %do.body7.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %do.body7.return_crit_edge ], [ 0, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_unregister_controller(ptr nocapture readnone %old_controller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @controller, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %.b = load i1, ptr @thread_finished, align 4
  br i1 %.b, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @cpci_thread, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %1) #10
  store i1 true, ptr @thread_finished, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %2 = load ptr, ptr @controller, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %call = tail call ptr @free_irq(i32 noundef %4, ptr noundef %6) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  store ptr null, ptr @controller, align 4
  tail call void @down_write(ptr noundef nonnull @list_rwsem) #10
  %7 = load i32, ptr @slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6.cleanup_slots.exit_crit_edge, label %if.end.i

if.end6.cleanup_slots.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_slots.exit

if.end.i:                                         ; preds = %if.end6
  %8 = load ptr, ptr @slot_list, align 4
  %cmp.not18.i = icmp eq ptr %8, @slot_list
  br i1 %cmp.not18.i, label %if.end.i.cleanup_slots.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_slots.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_slots.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %8, %if.end.i.for.body.i_crit_edge ]
  %slot.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -48
  %9 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in19.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %hotplug_slot.i = getelementptr i8, ptr %.pn.in19.i, i32 -24
  tail call void @pci_hp_deregister(ptr noundef %hotplug_slot.i) #10
  %dev.i.i = getelementptr i8, ptr %.pn.in19.i, i32 -36
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void @pci_dev_put(ptr noundef %19) #10
  tail call void @kfree(ptr noundef %slot.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, @slot_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_slots.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.cleanup_slots.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_slots.exit

cleanup_slots.exit:                               ; preds = %list_del.exit.i.cleanup_slots.exit_crit_edge, %if.end.i.cleanup_slots.exit_crit_edge, %if.end6.cleanup_slots.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @list_rwsem) #10
  br label %if.end7

if.end7:                                          ; preds = %cleanup_slots.exit, %entry.if.end7_crit_edge
  %status.0 = phi i32 [ 0, %cleanup_slots.exit ], [ -19, %entry.if.end7_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_start() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = load ptr, ptr @controller, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  tail call void @down_read(ptr noundef nonnull @list_rwsem) #10
  %2 = load volatile ptr, ptr @slot_list, align 4
  %cmp.i.not = icmp eq ptr %2, @slot_list
  tail call void @up_read(ptr noundef nonnull @list_rwsem) #10
  br i1 %cmp.i.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %.b62 = load i1, ptr @cpci_hp_start.first, align 4
  %3 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end10.do.end3.i_crit_edge, label %do.end.i

if.end10.do.end3.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54) #14
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end10.do.end3.i_crit_edge
  tail call void @down_read(ptr noundef nonnull @list_rwsem) #10
  %4 = load i32, ptr @slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not.i = icmp eq i32 %4, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end3.i
  %.pn73.i = load ptr, ptr @slot_list, align 4
  %cmp.not75.i = icmp eq ptr %.pn73.i, @slot_list
  br i1 %cmp.not75.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.do.body8.i_crit_edge

for.cond.preheader.i.do.body8.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %do.body8.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then5.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef nonnull @list_rwsem) #10
  br label %init_slots.exit

do.body8.i:                                       ; preds = %for.inc.i.do.body8.i_crit_edge, %for.cond.preheader.i.do.body8.i_crit_edge
  %.pn76.i = phi ptr [ %.pn.i, %for.inc.i.do.body8.i_crit_edge ], [ %.pn73.i, %for.cond.preheader.i.do.body8.i_crit_edge ]
  %slot.078.i = getelementptr i8, ptr %.pn76.i, i32 -48
  %5 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not.i = icmp eq i32 %5, 0
  br i1 %tobool9.not.i, label %do.body8.i.do.end19.i_crit_edge, label %do.end13.i

do.body8.i.do.end19.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i.i = getelementptr i8, ptr %.pn76.i, i32 -12
  %6 = ptrtoint ptr %pci_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_slot.i.i.i, align 4
  %kobj.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %kobj.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kobj.i.i.i.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54, ptr noundef %9) #14
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end13.i, %do.body8.i.do.end19.i_crit_edge
  br i1 %.b62, label %do.end19.i.if.end36.i_crit_edge, label %land.lhs.true.i

do.end19.i.if.end36.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %do.end19.i
  %call21.i = tail call i32 @cpci_check_and_clear_ins(ptr noundef %slot.078.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %do.body24.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

do.body24.i:                                      ; preds = %land.lhs.true.i
  %10 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not.i = icmp eq i32 %10, 0
  br i1 %tobool25.not.i, label %do.body24.i.if.end36.i_crit_edge, label %do.end29.i

do.body24.i.if.end36.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

do.end29.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i71.i = getelementptr i8, ptr %.pn76.i, i32 -12
  %11 = ptrtoint ptr %pci_slot.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_slot.i.i71.i, align 4
  %kobj.i.i.i72.i = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %kobj.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kobj.i.i.i72.i, align 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54, ptr noundef %14) #14
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end29.i, %do.body24.i.if.end36.i_crit_edge, %land.lhs.true.i.if.end36.i_crit_edge, %do.end19.i.if.end36.i_crit_edge
  %bus.i = getelementptr i8, ptr %.pn76.i, i32 -40
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %17 = ptrtoint ptr %slot.078.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %slot.078.i, align 4
  %19 = shl i8 %18, 3
  %shl.i = zext i8 %19 to i32
  %call37.i = tail call ptr @pci_get_slot(ptr noundef %16, i32 noundef %shl.i) #10
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %if.end36.i.for.inc.i_crit_edge, label %if.then39.i

if.end36.i.for.inc.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %adapter_status.i = getelementptr i8, ptr %.pn76.i, i32 -32
  %20 = ptrtoint ptr %adapter_status.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %adapter_status.i, align 4
  %bf.set42.i = or i8 %bf.load.i, -64
  store i8 %bf.set42.i, ptr %adapter_status.i, align 4
  %dev43.i = getelementptr i8, ptr %.pn76.i, i32 -36
  %21 = ptrtoint ptr %dev43.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37.i, ptr %dev43.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then39.i, %if.end36.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn76.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @slot_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.do.body8.i_crit_edge

for.inc.i.do.body8.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @up_read(ptr noundef nonnull @list_rwsem) #10
  %23 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not.i = icmp eq i32 %23, 0
  br i1 %tobool50.not.i, label %for.end.i.init_slots.exit_crit_edge, label %do.end54.i

for.end.i.init_slots.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_slots.exit

do.end54.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54) #14
  br label %init_slots.exit

init_slots.exit:                                  ; preds = %do.end54.i, %for.end.i.init_slots.exit_crit_edge, %if.then5.i
  %.b = load i1, ptr @cpci_hp_start.first, align 4
  br i1 %.b, label %init_slots.exit.if.end14_crit_edge, label %if.then13

init_slots.exit.if.end14_crit_edge:               ; preds = %init_slots.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %init_slots.exit
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpci_hp_start.first, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %init_slots.exit.if.end14_crit_edge
  br i1 %tobool4.not.i, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %24 = load ptr, ptr @controller, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i63 = icmp eq i32 %26, 0
  br i1 %tobool.not.i63, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end17
  %call.i64 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @event_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.63) #10
  %cmp.i.i = icmp ugt ptr %call.i64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.if.end11.i_crit_edge, label %if.then.i.if.end11.sink.split.i_crit_edge

if.then.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.sink.split.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end17
  %call5.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @poll_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.64) #10
  %cmp.i22.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %if.else.i.if.end11.i_crit_edge, label %if.else.i.if.end11.sink.split.i_crit_edge

if.else.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.sink.split.i

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end11.sink.split.i:                            ; preds = %if.else.i.if.end11.sink.split.i_crit_edge, %if.then.i.if.end11.sink.split.i_crit_edge
  %call5.sink.i = phi ptr [ %call.i64, %if.then.i.if.end11.sink.split.i_crit_edge ], [ %call5.i, %if.else.i.if.end11.sink.split.i_crit_edge ]
  %call8.i = tail call i32 @wake_up_process(ptr noundef %call5.sink.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.else.i.if.end11.i_crit_edge, %if.then.i.if.end11.i_crit_edge
  %storemerge.i = phi ptr [ %call.i64, %if.then.i.if.end11.i_crit_edge ], [ %call5.i, %if.else.i.if.end11.i_crit_edge ], [ %call5.sink.i, %if.end11.sink.split.i ]
  store ptr %storemerge.i, ptr @cpci_thread, align 4
  %cmp.i23.i = icmp ugt ptr %storemerge.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i, label %cpci_start_thread.exit, label %cpci_start_thread.exit.thread

cpci_start_thread.exit.thread:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 false, ptr @thread_finished, align 4
  br label %do.body22

cpci_start_thread.exit:                           ; preds = %if.end11.i
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.4) #14
  %27 = load ptr, ptr @cpci_thread, align 4
  %28 = ptrtoint ptr %27 to i32
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %cpci_start_thread.exit.do.body22_crit_edge, label %cpci_start_thread.exit.cleanup_crit_edge

cpci_start_thread.exit.cleanup_crit_edge:         ; preds = %cpci_start_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cpci_start_thread.exit.do.body22_crit_edge:       ; preds = %cpci_start_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.body22:                                        ; preds = %cpci_start_thread.exit.do.body22_crit_edge, %cpci_start_thread.exit.thread
  %29 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not = icmp eq i32 %29, 0
  br i1 %tobool23.not, label %do.body22.do.end32_crit_edge, label %do.end27

do.body22.do.end32_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #14
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body22.do.end32_crit_edge
  %30 = load ptr, ptr @controller, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not = icmp eq i32 %32, 0
  br i1 %tobool33.not, label %do.end32.do.body48_crit_edge, label %do.body35

do.end32.do.body48_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

do.body35:                                        ; preds = %do.end32
  %33 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  br i1 %tobool36.not, label %do.body35.do.end45_crit_edge, label %do.end40

do.body35.do.end45_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #14
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.body35.do.end45_crit_edge
  %34 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enable_irq, align 4
  %call46 = tail call i32 %38() #10
  br label %do.body48

do.body48:                                        ; preds = %do.end45, %do.end32.do.body48_crit_edge
  %39 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool49.not = icmp eq i32 %39, 0
  br i1 %tobool49.not, label %do.body48.cleanup_crit_edge, label %do.end53

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.body48.cleanup_crit_edge, %cpci_start_thread.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end3.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ], [ %28, %cpci_start_thread.exit.cleanup_crit_edge ], [ 0, %do.end53 ], [ 0, %do.body48.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_hp_stop() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @controller, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %4 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_irq, align 4
  %call8 = tail call i32 %8() #10
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  %9 = load ptr, ptr @cpci_thread, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %9) #10
  store i1 true, ptr @thread_finished, align 4
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cpci_hotplug_init(i32 noundef %debug) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %debug, ptr @cpci_debug, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_slot(ptr noundef %hotplug_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %1 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kobj.i.i.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, ptr noundef %4) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %set_power = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %do.end6.if.end12_crit_edge, label %if.then8

do.end6.if.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 %9(ptr noundef %add.ptr.i, i32 noundef 1) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.end6.if.end12_crit_edge
  %retval1.0 = phi i32 [ %call11, %if.then8 ], [ 0, %do.end6.if.end12_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_slot(ptr noundef %hotplug_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %1 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kobj.i.i.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef %4) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  tail call void @down_write(ptr noundef nonnull @list_rwsem) #10
  %5 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %do.end6.do.end18_crit_edge, label %do.end12

do.end6.do.end18_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i78 = getelementptr i8, ptr %hotplug_slot, i32 12
  %6 = ptrtoint ptr %pci_slot.i.i78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_slot.i.i78, align 4
  %kobj.i.i.i79 = getelementptr inbounds %struct.pci_slot, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %kobj.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kobj.i.i.i79, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef %9) #14
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.end6.do.end18_crit_edge
  %call19 = tail call i32 @cpci_unconfigure_slot(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body29, label %do.end24

do.end24:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i80 = getelementptr i8, ptr %hotplug_slot, i32 12
  %10 = ptrtoint ptr %pci_slot.i.i80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_slot.i.i80, align 4
  %kobj.i.i.i81 = getelementptr inbounds %struct.pci_slot, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %kobj.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kobj.i.i.i81, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef %13) #14
  br label %disable_error

do.body29:                                        ; preds = %do.end18
  %14 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool30.not = icmp eq i32 %14, 0
  br i1 %tobool30.not, label %do.body29.do.end40_crit_edge, label %do.end34

do.body29.do.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i82 = getelementptr i8, ptr %hotplug_slot, i32 12
  %15 = ptrtoint ptr %pci_slot.i.i82 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_slot.i.i82, align 4
  %kobj.i.i.i83 = getelementptr inbounds %struct.pci_slot, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %kobj.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kobj.i.i.i83, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef %18) #14
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %do.body29.do.end40_crit_edge
  %call41 = tail call i32 @cpci_clear_ext(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i84 = getelementptr i8, ptr %hotplug_slot, i32 12
  %19 = ptrtoint ptr %pci_slot.i.i84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_slot.i.i84, align 4
  %kobj.i.i.i85 = getelementptr inbounds %struct.pci_slot, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %kobj.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kobj.i.i.i85, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef %22) #14
  br label %disable_error

if.end50:                                         ; preds = %do.end40
  %call51 = tail call i32 @cpci_led_on(ptr noundef %add.ptr.i) #10
  %23 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %set_power = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_power, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %if.end50.if.end60_crit_edge, label %if.then53

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then53:                                        ; preds = %if.end50
  %call56 = tail call i32 %27(ptr noundef %add.ptr.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then53.if.end60_crit_edge, label %if.then53.disable_error_crit_edge

if.then53.disable_error_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_error

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.end60:                                         ; preds = %if.then53.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  %adapter_status = getelementptr i8, ptr %hotplug_slot, i32 -8
  %28 = ptrtoint ptr %adapter_status to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %adapter_status, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %adapter_status, align 4
  %extracting = getelementptr i8, ptr %hotplug_slot, i32 -4
  %29 = ptrtoint ptr %extracting to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extracting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %if.end60.disable_error_crit_edge, label %if.then62

if.end60.disable_error_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_error

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %extracting to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %extracting, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @extracting, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @extracting, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @extracting, ptr nonnull @extracting, i32 1, ptr nonnull elementtype(i32) @extracting) #10, !srcloc !240
  br label %disable_error

disable_error:                                    ; preds = %if.then62, %if.end60.disable_error_crit_edge, %if.then53.disable_error_crit_edge, %do.end46, %do.end24
  %retval1.1 = phi i32 [ %call19, %do.end24 ], [ -19, %do.end46 ], [ %call56, %if.then53.disable_error_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end60.disable_error_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @list_rwsem) #10
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_attention_status(ptr noundef %hotplug_slot, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %conv = zext i8 %status to i32
  %call1 = tail call i32 @cpci_set_attention_status(ptr noundef %add.ptr.i, i32 noundef %conv) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_power_status(ptr noundef %hotplug_slot, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @controller, align 4
  %ops.i = getelementptr inbounds %struct.cpci_hp_controller, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %get_power.i = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %get_power.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_power.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cpci_get_power_status.exit_crit_edge, label %if.then.i

entry.cpci_get_power_status.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpci_get_power_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %call.i = tail call zeroext i8 %4(ptr noundef %add.ptr.i) #10
  br label %cpci_get_power_status.exit

cpci_get_power_status.exit:                       ; preds = %if.then.i, %entry.cpci_get_power_status.exit_crit_edge
  %power.0.i = phi i8 [ %call.i, %if.then.i ], [ 1, %entry.cpci_get_power_status.exit_crit_edge ]
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %power.0.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_attention_status(ptr noundef %hotplug_slot, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %call1 = tail call zeroext i8 @cpci_get_attention_status(ptr noundef %add.ptr.i) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call1, ptr %value, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_latch_status(ptr nocapture noundef readonly %hotplug_slot, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %latch_status = getelementptr i8, ptr %hotplug_slot, i32 -8
  %0 = ptrtoint ptr %latch_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %latch_status, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.lshr, ptr %value, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_adapter_status(ptr nocapture noundef readonly %hotplug_slot, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_status = getelementptr i8, ptr %hotplug_slot, i32 -8
  %0 = ptrtoint ptr %adapter_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %adapter_status, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.clear, ptr %value, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_unconfigure_slot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_clear_ext(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_led_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_set_attention_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cpci_get_attention_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_check_and_clear_ins(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_thread(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.while.cond.preheader_crit_edge, label %do.end

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68) #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end, %entry.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %do.end125, %while.cond.preheader
  %1 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %while.cond.__here_crit_edge, label %do.end9

while.cond.__here_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

do.end9:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.4) #14
  br label %__here

__here:                                           ; preds = %do.end9, %while.cond.__here_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !230) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@event_thread, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @schedule() #10
  %call82 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call82, label %__here.out_crit_edge, label %__here.do.body85_crit_edge

__here.do.body85_crit_edge:                       ; preds = %__here
  br label %do.body85

__here.out_crit_edge:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body85:                                        ; preds = %land.rhs106.do.body85_crit_edge, %__here.do.body85_crit_edge
  %call86 = tail call fastcc i32 @check_slots()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp = icmp sgt i32 %call86, 0
  br i1 %cmp, label %if.then87, label %if.else

if.then87:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 500) #10
  br label %do.cond103

if.else:                                          ; preds = %do.body85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp88 = icmp slt i32 %call86, 0
  br i1 %cmp88, label %do.body90, label %if.else.do.cond103_crit_edge

if.else.do.cond103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond103

do.body90:                                        ; preds = %if.else
  %9 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool91.not = icmp eq i32 %9, 0
  br i1 %tobool91.not, label %do.body90.do.end100_crit_edge, label %do.end95

do.body90.do.end100_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

do.end95:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68) #14
  br label %do.end100

do.end100:                                        ; preds = %do.end95, %do.body90.do.end100_crit_edge
  store i1 true, ptr @thread_finished, align 4
  br label %out

do.cond103:                                       ; preds = %if.else.do.cond103_crit_edge, %if.then87
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @extracting, i32 noundef 4) #10
  %10 = load volatile i32, ptr @extracting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool105.not = icmp eq i32 %10, 0
  br i1 %tobool105.not, label %do.cond103.do.end111_crit_edge, label %land.rhs106

do.cond103.do.end111_crit_edge:                   ; preds = %do.cond103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111

land.rhs106:                                      ; preds = %do.cond103
  %call107 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call107, label %land.rhs106.do.end111_crit_edge, label %land.rhs106.do.body85_crit_edge

land.rhs106.do.body85_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body85

land.rhs106.do.end111_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111

do.end111:                                        ; preds = %land.rhs106.do.end111_crit_edge, %do.cond103.do.end111_crit_edge
  %call112 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call112, label %do.end111.out_crit_edge, label %do.body115

do.end111.out_crit_edge:                          ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body115:                                       ; preds = %do.end111
  %11 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool116.not = icmp eq i32 %11, 0
  br i1 %tobool116.not, label %do.body115.do.end125_crit_edge, label %do.end120

do.body115.do.end125_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

do.end120:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68) #14
  br label %do.end125

do.end125:                                        ; preds = %do.end120, %do.body115.do.end125_crit_edge
  %12 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_irq, align 4
  %call126 = tail call i32 %16() #10
  br label %while.cond

out:                                              ; preds = %do.end111.out_crit_edge, %do.end100, %__here.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_thread(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call29 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call29, label %entry.out_crit_edge, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !230) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false.out_crit_edge, !prof !242

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

signal_pending.exit:                              ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %signal_pending.exit.out_crit_edge

signal_pending.exit.out_crit_edge:                ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %signal_pending.exit
  %11 = load ptr, ptr @controller, align 4
  %ops = getelementptr inbounds %struct.cpci_hp_controller, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call3 = tail call i32 %15() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end25_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end.do.body_crit_edge
  %call6 = tail call fastcc i32 @check_slots()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 500) #10
  br label %do.cond20

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp slt i32 %call6, 0
  br i1 %cmp8, label %do.body10, label %if.else.do.cond20_crit_edge

if.else.do.cond20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond20

do.body10:                                        ; preds = %if.else
  %16 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %do.body10.do.end17_crit_edge, label %do.end

do.body10.do.end17_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.121) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body10.do.end17_crit_edge
  store i1 true, ptr @thread_finished, align 4
  br label %out

do.cond20:                                        ; preds = %if.else.do.cond20_crit_edge, %if.then7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @extracting, i32 noundef 4) #10
  %17 = load volatile i32, ptr @extracting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %do.cond20.if.end25_crit_edge, label %land.rhs

do.cond20.if.end25_crit_edge:                     ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.rhs:                                         ; preds = %do.cond20
  %call23 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call23, label %land.rhs.if.end25_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.rhs.if.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %land.rhs.if.end25_crit_edge, %do.cond20.if.end25_crit_edge, %if.end.if.end25_crit_edge
  tail call void @msleep(i32 noundef 100) #10
  %call = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %if.end25.out_crit_edge, label %if.end25.lor.lhs.false_crit_edge

if.end25.lor.lhs.false_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end25.out_crit_edge, %do.end17, %signal_pending.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_slots() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @list_rwsem) #10
  %0 = load i32, ptr @slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %.pn280 = load ptr, ptr @slot_list, align 4
  %cmp.not282 = icmp eq ptr %.pn280, @slot_list
  br i1 %cmp.not282, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.do.body2_crit_edge

for.cond.preheader.do.body2_crit_edge:            ; preds = %for.cond.preheader
  br label %do.body2

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef nonnull @list_rwsem) #10
  br label %cleanup.sink.split

do.body2:                                         ; preds = %for.inc.do.body2_crit_edge, %for.cond.preheader.do.body2_crit_edge
  %.pn285 = phi ptr [ %.pn, %for.inc.do.body2_crit_edge ], [ %.pn280, %for.cond.preheader.do.body2_crit_edge ]
  %extracted.0284 = phi i32 [ %extracted.1, %for.inc.do.body2_crit_edge ], [ 0, %for.cond.preheader.do.body2_crit_edge ]
  %inserted.0283 = phi i32 [ %inserted.1, %for.inc.do.body2_crit_edge ], [ 0, %for.cond.preheader.do.body2_crit_edge ]
  %slot.0289 = getelementptr i8, ptr %.pn285, i32 -48
  %1 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.body2.do.end13_crit_edge, label %do.end7

do.body2.do.end13_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end7:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i = getelementptr i8, ptr %.pn285, i32 -12
  %2 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj.i.i.i, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %5) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end7, %do.body2.do.end13_crit_edge
  %call14 = tail call i32 @cpci_check_and_clear_ins(ptr noundef %slot.0289) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end13
  %dev = getelementptr i8, ptr %.pn285, i32 -36
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %do.body26, label %do.end21

do.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i257 = getelementptr i8, ptr %.pn285, i32 -12
  %8 = ptrtoint ptr %pci_slot.i.i257 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_slot.i.i257, align 4
  %kobj.i.i.i258 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %kobj.i.i.i258 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kobj.i.i.i258, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.4, ptr noundef %11) #14
  %inc = add i32 %inserted.0283, 1
  br label %for.inc

do.body26:                                        ; preds = %if.then16
  %12 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %do.body26.do.end37_crit_edge, label %do.end31

do.body26.do.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i259 = getelementptr i8, ptr %.pn285, i32 -12
  %13 = ptrtoint ptr %pci_slot.i.i259 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_slot.i.i259, align 4
  %kobj.i.i.i260 = getelementptr inbounds %struct.pci_slot, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %kobj.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kobj.i.i.i260, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %16) #14
  br label %do.end37

do.end37:                                         ; preds = %do.end31, %do.body26.do.end37_crit_edge
  %call38 = tail call zeroext i16 @cpci_get_hs_csr(ptr noundef %slot.0289) #10
  %17 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %do.end37.do.end62_crit_edge, label %do.body51

do.end37.do.end62_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.body51:                                        ; preds = %do.end37
  %pci_slot.i.i261 = getelementptr i8, ptr %.pn285, i32 -12
  %18 = ptrtoint ptr %pci_slot.i.i261 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_slot.i.i261, align 4
  %kobj.i.i.i262 = getelementptr inbounds %struct.pci_slot, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %kobj.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kobj.i.i.i262, align 4
  %conv = zext i16 %call38 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %21, i32 noundef %conv) #14
  %.pr = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool52.not = icmp eq i32 %.pr, 0
  br i1 %tobool52.not, label %do.body51.do.end62_crit_edge, label %do.end56

do.body51.do.end62_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.end56:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %pci_slot.i.i261 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_slot.i.i261, align 4
  %kobj.i.i.i264 = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %kobj.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kobj.i.i.i264, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %25) #14
  br label %do.end62

do.end62:                                         ; preds = %do.end56, %do.body51.do.end62_crit_edge, %do.end37.do.end62_crit_edge
  %call63 = tail call i32 @cpci_configure_slot(ptr noundef %slot.0289) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body73, label %do.end68

do.end68:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i265 = getelementptr i8, ptr %.pn285, i32 -12
  %26 = ptrtoint ptr %pci_slot.i.i265 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_slot.i.i265, align 4
  %kobj.i.i.i266 = getelementptr inbounds %struct.pci_slot, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %kobj.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kobj.i.i.i266, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %29) #14
  br label %for.inc

do.body73:                                        ; preds = %do.end62
  %30 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool74.not = icmp eq i32 %30, 0
  br i1 %tobool74.not, label %do.body73.do.end84_crit_edge, label %do.end78

do.body73.do.end84_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

do.end78:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i267 = getelementptr i8, ptr %.pn285, i32 -12
  %31 = ptrtoint ptr %pci_slot.i.i267 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_slot.i.i267, align 4
  %kobj.i.i.i268 = getelementptr inbounds %struct.pci_slot, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %kobj.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kobj.i.i.i268, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %34) #14
  br label %do.end84

do.end84:                                         ; preds = %do.end78, %do.body73.do.end84_crit_edge
  %call85 = tail call zeroext i16 @cpci_get_hs_csr(ptr noundef %slot.0289) #10
  %35 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool87.not = icmp eq i32 %35, 0
  br i1 %tobool87.not, label %do.end84.do.end98_crit_edge, label %do.end91

do.end84.do.end98_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end91:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i269 = getelementptr i8, ptr %.pn285, i32 -12
  %36 = ptrtoint ptr %pci_slot.i.i269 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_slot.i.i269, align 4
  %kobj.i.i.i270 = getelementptr inbounds %struct.pci_slot, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %kobj.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kobj.i.i.i270, align 4
  %conv94 = zext i16 %call85 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %39, i32 noundef %conv94) #14
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %do.end84.do.end98_crit_edge
  %latch_status = getelementptr i8, ptr %.pn285, i32 -32
  %40 = ptrtoint ptr %latch_status to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %latch_status, align 4
  %bf.set101 = or i8 %bf.load, -64
  store i8 %bf.set101, ptr %latch_status, align 4
  %call102 = tail call i32 @cpci_led_off(ptr noundef %slot.0289) #10
  %call103 = tail call zeroext i16 @cpci_get_hs_csr(ptr noundef %slot.0289) #10
  %41 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool105.not = icmp eq i32 %41, 0
  br i1 %tobool105.not, label %do.end98.do.end116_crit_edge, label %do.end109

do.end98.do.end116_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

do.end109:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i271 = getelementptr i8, ptr %.pn285, i32 -12
  %42 = ptrtoint ptr %pci_slot.i.i271 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_slot.i.i271, align 4
  %kobj.i.i.i272 = getelementptr inbounds %struct.pci_slot, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %kobj.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kobj.i.i.i272, align 4
  %conv112 = zext i16 %call103 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %45, i32 noundef %conv112) #14
  br label %do.end116

do.end116:                                        ; preds = %do.end109, %do.end98.do.end116_crit_edge
  %inc117 = add i32 %inserted.0283, 1
  br label %for.inc

if.else:                                          ; preds = %do.end13
  %call118 = tail call i32 @cpci_check_ext(ptr noundef %slot.0289) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.else156, label %do.body121

do.body121:                                       ; preds = %if.else
  %46 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool122.not = icmp eq i32 %46, 0
  br i1 %tobool122.not, label %do.body121.do.end132_crit_edge, label %do.end126

do.body121.do.end132_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132

do.end126:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i273 = getelementptr i8, ptr %.pn285, i32 -12
  %47 = ptrtoint ptr %pci_slot.i.i273 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_slot.i.i273, align 4
  %kobj.i.i.i274 = getelementptr inbounds %struct.pci_slot, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %kobj.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %kobj.i.i.i274, align 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %50) #14
  br label %do.end132

do.end132:                                        ; preds = %do.end126, %do.body121.do.end132_crit_edge
  %call133 = tail call zeroext i16 @cpci_get_hs_csr(ptr noundef %slot.0289) #10
  %51 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool135.not = icmp eq i32 %51, 0
  br i1 %tobool135.not, label %do.end132.do.end146_crit_edge, label %do.end139

do.end132.do.end146_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146

do.end139:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i275 = getelementptr i8, ptr %.pn285, i32 -12
  %52 = ptrtoint ptr %pci_slot.i.i275 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_slot.i.i275, align 4
  %kobj.i.i.i276 = getelementptr inbounds %struct.pci_slot, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %kobj.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %kobj.i.i.i276, align 4
  %conv142 = zext i16 %call133 to i32
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.79, ptr noundef %55, i32 noundef %conv142) #14
  br label %do.end146

do.end146:                                        ; preds = %do.end139, %do.end132.do.end146_crit_edge
  %extracting = getelementptr i8, ptr %.pn285, i32 -28
  %56 = ptrtoint ptr %extracting to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %extracting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool147.not = icmp eq i32 %57, 0
  br i1 %tobool147.not, label %if.then148, label %do.end146.if.end154_crit_edge

do.end146.if.end154_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then148:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #12
  %latch_status149 = getelementptr i8, ptr %.pn285, i32 -32
  %58 = ptrtoint ptr %latch_status149 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load150 = load i8, ptr %latch_status149, align 4
  %bf.clear151 = and i8 %bf.load150, 127
  store i8 %bf.clear151, ptr %latch_status149, align 4
  %59 = ptrtoint ptr %extracting to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %extracting, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @extracting, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @extracting, i32 1, i32 3, i32 1) #10
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @extracting, ptr nonnull @extracting, i32 1, ptr nonnull elementtype(i32) @extracting) #10, !srcloc !243
  br label %if.end154

if.end154:                                        ; preds = %if.then148, %do.end146.if.end154_crit_edge
  %inc155 = add i32 %extracted.0284, 1
  br label %for.inc

if.else156:                                       ; preds = %if.else
  %extracting157 = getelementptr i8, ptr %.pn285, i32 -28
  %61 = ptrtoint ptr %extracting157 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %extracting157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool158.not = icmp eq i32 %62, 0
  br i1 %tobool158.not, label %if.else156.for.inc_crit_edge, label %if.then159

if.else156.for.inc_crit_edge:                     ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then159:                                       ; preds = %if.else156
  %call160 = tail call zeroext i16 @cpci_get_hs_csr(ptr noundef %slot.0289) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call160)
  %cmp162 = icmp eq i16 %call160, -1
  br i1 %cmp162, label %do.end167, label %if.then159.for.inc_crit_edge

if.then159.for.inc_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end167:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  %pci_slot.i.i277 = getelementptr i8, ptr %.pn285, i32 -12
  %63 = ptrtoint ptr %pci_slot.i.i277 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_slot.i.i277, align 4
  %kobj.i.i.i278 = getelementptr inbounds %struct.pci_slot, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %kobj.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %kobj.i.i.i278, align 4
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.4, ptr noundef %66) #14
  %adapter_status171 = getelementptr i8, ptr %.pn285, i32 -32
  %67 = ptrtoint ptr %adapter_status171 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load172 = load i8, ptr %adapter_status171, align 4
  %bf.clear173 = and i8 %bf.load172, -65
  store i8 %bf.clear173, ptr %adapter_status171, align 4
  %68 = ptrtoint ptr %extracting157 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %extracting157, align 4
  %call.i.i254 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @extracting, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @extracting, i32 1, i32 3, i32 1) #10
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @extracting, ptr nonnull @extracting, i32 1, ptr nonnull elementtype(i32) @extracting) #10, !srcloc !240
  br label %for.inc

for.inc:                                          ; preds = %do.end167, %if.then159.for.inc_crit_edge, %if.else156.for.inc_crit_edge, %if.end154, %do.end116, %do.end68, %do.end21
  %inserted.1 = phi i32 [ %inc, %do.end21 ], [ %inserted.0283, %do.end68 ], [ %inc117, %do.end116 ], [ %inserted.0283, %if.end154 ], [ %inserted.0283, %do.end167 ], [ %inserted.0283, %if.then159.for.inc_crit_edge ], [ %inserted.0283, %if.else156.for.inc_crit_edge ]
  %extracted.1 = phi i32 [ %extracted.0284, %do.end21 ], [ %extracted.0284, %do.end68 ], [ %extracted.0284, %do.end116 ], [ %inc155, %if.end154 ], [ %extracted.0284, %do.end167 ], [ %extracted.0284, %if.then159.for.inc_crit_edge ], [ %extracted.0284, %if.else156.for.inc_crit_edge ]
  %70 = ptrtoint ptr %.pn285 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn285, align 4
  %cmp.not = icmp eq ptr %.pn, @slot_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body2_crit_edge

for.inc.do.body2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %inserted.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inserted.1, %for.inc.for.end_crit_edge ]
  %extracted.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %extracted.1, %for.inc.for.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @list_rwsem) #10
  %71 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool185.not = icmp eq i32 %71, 0
  br i1 %tobool185.not, label %for.end.do.end195_crit_edge, label %do.end189

for.end.do.end195_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end195

do.end189:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i255 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @extracting, i32 noundef 4) #10
  %72 = load volatile i32, ptr @extracting, align 4
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.4, i32 noundef %inserted.0.lcssa, i32 noundef %extracted.0.lcssa, i32 noundef %72) #14
  br label %do.end195

do.end195:                                        ; preds = %do.end189, %for.end.do.end195_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inserted.0.lcssa)
  %tobool196.not = icmp eq i32 %inserted.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extracted.0.lcssa)
  %tobool197.not = icmp eq i32 %extracted.0.lcssa, 0
  %or.cond = select i1 %tobool196.not, i1 %tobool197.not, i1 false
  br i1 %or.cond, label %if.else199, label %do.end195.cleanup_crit_edge

do.end195.cleanup_crit_edge:                      ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else199:                                       ; preds = %do.end195
  %call.i.i256 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @extracting, i32 noundef 4) #10
  %73 = load volatile i32, ptr @extracting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool201.not = icmp eq i32 %73, 0
  br i1 %tobool201.not, label %if.else199.cleanup.sink.split_crit_edge, label %if.else199.cleanup_crit_edge

if.else199.cleanup_crit_edge:                     ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else199.cleanup.sink.split_crit_edge:          ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else199.cleanup.sink.split_crit_edge, %if.then
  %.str.119.sink = phi ptr [ @.str.78, %if.then ], [ @.str.119, %if.else199.cleanup.sink.split_crit_edge ]
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.119.sink, ptr noundef nonnull @.str.4) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else199.cleanup_crit_edge, %do.end195.cleanup_crit_edge
  %retval.0 = phi i32 [ %extracted.0.lcssa, %do.end195.cleanup_crit_edge ], [ 0, %if.else199.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cpci_get_hs_csr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_configure_slot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_led_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpci_check_ext(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 215, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 219, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpci_hp_register_bus._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpci_hp_register_bus._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 220, i32 12}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 222, i32 4}
!13 = !{ptr @cpci_hp_register_bus._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cpci_hp_register_bus._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 225, i32 3}
!17 = !{ptr @cpci_hp_register_bus._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cpci_hp_register_bus._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_cpci_hp_register_bus, !20, !"__ksymtab_cpci_hp_register_bus", i1 false, i1 false}
!20 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 239, i32 1}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 258, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpci_hp_unregister_bus._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @cpci_hp_unregister_bus._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_cpci_hp_unregister_bus, !27, !"__ksymtab_cpci_hp_unregister_bus", i1 false, i1 false}
!27 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 266, i32 1}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 533, i32 4}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cpci_hp_register_controller._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cpci_hp_register_controller._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 537, i32 3}
!35 = !{ptr @cpci_hp_register_controller._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cpci_hp_register_controller._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_cpci_hp_register_controller, !38, !"__ksymtab_cpci_hp_register_controller", i1 false, i1 false}
!38 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 544, i32 1}
!39 = !{ptr @__ksymtab_cpci_hp_unregister_controller, !40, !"__ksymtab_cpci_hp_unregister_controller", i1 false, i1 false}
!40 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 584, i32 1}
!41 = distinct !{null, !42, !"first", i1 false, i1 false}
!42 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 589, i32 13}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 592, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cpci_hp_start._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cpci_hp_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 612, i32 2}
!50 = !{ptr @cpci_hp_start._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cpci_hp_start._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 616, i32 3}
!54 = !{ptr @cpci_hp_start._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cpci_hp_start._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 619, i32 2}
!58 = !{ptr @cpci_hp_start._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cpci_hp_start._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_cpci_hp_start, !61, !"__ksymtab_cpci_hp_start", i1 false, i1 false}
!61 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 622, i32 1}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 631, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cpci_hp_stop._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cpci_hp_stop._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__ksymtab_cpci_hp_stop, !68, !"__ksymtab_cpci_hp_stop", i1 false, i1 false}
!68 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 637, i32 1}
!69 = !{ptr @slots, !70, !"slots", i1 false, i1 false}
!70 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 45, i32 12}
!71 = !{ptr @cpci_debug, !72, !"cpci_debug", i1 false, i1 false}
!72 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 47, i32 5}
!73 = !{ptr @controller, !74, !"controller", i1 false, i1 false}
!74 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 48, i32 35}
!75 = distinct !{null, !76, !"thread_finished", i1 false, i1 false}
!76 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 50, i32 12}
!77 = !{ptr @cpci_hotplug_slot_ops, !78, !"cpci_hotplug_slot_ops", i1 false, i1 false}
!78 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 60, i32 38}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 76, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @enable_slot._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @enable_slot._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 89, i32 2}
!86 = !{ptr @disable_slot._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @disable_slot._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 94, i32 2}
!90 = !{ptr @disable_slot._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @disable_slot._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 97, i32 3}
!94 = !{ptr @disable_slot._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @disable_slot._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 101, i32 2}
!98 = !{ptr @disable_slot._entry.41, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @disable_slot._entry_ptr.43, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 105, i32 3}
!102 = !{ptr @disable_slot._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @disable_slot._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @extracting, !105, !"extracting", i1 false, i1 false}
!105 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 46, i32 17}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 43, i32 8}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @list_rwsem, !107, !"list_rwsem", i1 false, i1 false}
!110 = !{ptr @slot_list, !111, !"slot_list", i1 false, i1 false}
!111 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 44, i32 8}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 272, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cpci_hp_intr._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @cpci_hp_intr._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 277, i32 3}
!119 = !{ptr @cpci_hp_intr._entry.51, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cpci_hp_intr._entry_ptr.53, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @cpci_thread, !122, !"cpci_thread", i1 false, i1 false}
!122 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 49, i32 28}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 300, i32 2}
!125 = !{ptr @init_slots._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @init_slots._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 307, i32 3}
!129 = !{ptr @init_slots._entry.55, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @init_slots._entry_ptr.57, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 309, i32 4}
!133 = !{ptr @init_slots._entry.58, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @init_slots._entry_ptr.60, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @init_slots._entry.61, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 319, i32 2}
!137 = !{ptr @init_slots._entry_ptr.62, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 497, i32 17}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 499, i32 17}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 501, i32 3}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cpci_start_thread._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @cpci_start_thread._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 436, i32 2}
!149 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @event_thread._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @event_thread._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 438, i32 3}
!154 = !{ptr @event_thread._entry.69, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @event_thread._entry_ptr.71, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 439, i32 3}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 449, i32 5}
!160 = !{ptr @event_thread._entry.72, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @event_thread._entry_ptr.74, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 458, i32 3}
!164 = !{ptr @event_thread._entry.75, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @event_thread._entry_ptr.77, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 334, i32 3}
!168 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @check_slots._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @check_slots._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @check_slots._entry.80, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 339, i32 3}
!173 = !{ptr @check_slots._entry_ptr.81, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 346, i32 5}
!176 = !{ptr @check_slots._entry.82, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @check_slots._entry_ptr.84, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 353, i32 4}
!180 = !{ptr @check_slots._entry.85, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @check_slots._entry_ptr.87, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 357, i32 4}
!184 = !{ptr @check_slots._entry.88, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @check_slots._entry_ptr.90, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 361, i32 4}
!188 = !{ptr @check_slots._entry.91, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @check_slots._entry_ptr.93, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 364, i32 5}
!192 = !{ptr @check_slots._entry.94, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @check_slots._entry_ptr.96, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 368, i32 4}
!196 = !{ptr @check_slots._entry.97, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @check_slots._entry_ptr.99, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 373, i32 4}
!200 = !{ptr @check_slots._entry.100, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @check_slots._entry_ptr.102, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 383, i32 4}
!204 = !{ptr @check_slots._entry.103, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @check_slots._entry_ptr.105, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 389, i32 4}
!208 = !{ptr @check_slots._entry.106, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @check_slots._entry_ptr.108, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 394, i32 4}
!212 = !{ptr @check_slots._entry.109, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @check_slots._entry_ptr.111, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 410, i32 5}
!216 = !{ptr @check_slots._entry.112, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @check_slots._entry_ptr.114, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 419, i32 2}
!220 = !{ptr @check_slots._entry.115, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @check_slots._entry_ptr.117, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 424, i32 3}
!224 = !{ptr @check_slots._entry.118, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @check_slots._entry_ptr.120, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.121, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pci/hotplug/cpci_hotplug_core.c", i32 481, i32 6}
!228 = !{ptr @poll_thread._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @poll_thread._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 2148355179, i64 2148355205, i64 2148355234, i64 2148355268, i64 2148355299, i64 2148355322}
!241 = !{i64 2154536282}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 2148352714, i64 2148352740, i64 2148352769, i64 2148352803, i64 2148352834, i64 2148352857}
