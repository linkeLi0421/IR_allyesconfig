; ModuleID = '/llk/IR_all_yes/drivers/gpu/vga/vgaarb.c_pt.bc'
source_filename = "../drivers/gpu/vga/vgaarb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vga_default_device\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_default_device\09\09\09\09"
module asm "\09.long\09__crc_vga_default_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_default_device:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_default_device\22\09\09\09\09\09"
module asm "__kstrtabns_vga_default_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vga_remove_vgacon\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_remove_vgacon\09\09\09\09"
module asm "\09.long\09__crc_vga_remove_vgacon\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_remove_vgacon:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_remove_vgacon\22\09\09\09\09\09"
module asm "__kstrtabns_vga_remove_vgacon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vga_get\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_get\09\09\09\09"
module asm "\09.long\09__crc_vga_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_get\22\09\09\09\09\09"
module asm "__kstrtabns_vga_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vga_put\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_put\09\09\09\09"
module asm "\09.long\09__crc_vga_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_put:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_put\22\09\09\09\09\09"
module asm "__kstrtabns_vga_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vga_set_legacy_decoding\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_set_legacy_decoding\09\09\09\09"
module asm "\09.long\09__crc_vga_set_legacy_decoding\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_set_legacy_decoding:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_set_legacy_decoding\22\09\09\09\09\09"
module asm "__kstrtabns_vga_set_legacy_decoding:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vga_client_register\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_client_register\09\09\09\09"
module asm "\09.long\09__crc_vga_client_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_client_register\22\09\09\09\09\09"
module asm "__kstrtabns_vga_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vga_device = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vga_arb_private = type { %struct.list_head, ptr, [16 x %struct.vga_arb_user_card], %struct.spinlock }
%struct.vga_arb_user_card = type { ptr, i32, i32 }

@vga_default = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_vga_default_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_default_device = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_default_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_default_device to i32), ptr @__kstrtab_vga_default_device, ptr @__kstrtabns_vga_default_device }, section "___ksymtab_gpl+vga_default_device", align 4
@vga_remove_vgacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vgaarb: deactivate vga console\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vga_remove_vgacon\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpu/vga/vgaarb.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vga_remove_vgacon._entry_ptr = internal global ptr @vga_remove_vgacon._entry, section ".printk_index", align 4
@vga_con = external dso_local constant %struct.consw, align 4
@dummy_con = external dso_local constant %struct.consw, align 4
@__kstrtab_vga_remove_vgacon = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_remove_vgacon = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_remove_vgacon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_remove_vgacon to i32), ptr @__kstrtab_vga_remove_vgacon, ptr @__kstrtabns_vga_remove_vgacon }, section "___ksymtab+vga_remove_vgacon", align 4
@vga_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@vga_wait_queue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @vga_wait_queue, i64 44), ptr getelementptr (i8, ptr @vga_wait_queue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_vga_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_get to i32), ptr @__kstrtab_vga_get, ptr @__kstrtabns_vga_get }, section "___ksymtab+vga_get", align 4
@__kstrtab_vga_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_put = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_put to i32), ptr @__kstrtab_vga_put, ptr @__kstrtabns_vga_put }, section "___ksymtab+vga_put", align 4
@__kstrtab_vga_set_legacy_decoding = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_set_legacy_decoding = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_set_legacy_decoding = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_set_legacy_decoding to i32), ptr @__kstrtab_vga_set_legacy_decoding, ptr @__kstrtabns_vga_set_legacy_decoding }, section "___ksymtab+vga_set_legacy_decoding", align 4
@__kstrtab_vga_client_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_client_register = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_client_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_client_register to i32), ptr @__kstrtab_vga_client_register, ptr @__kstrtabns_vga_client_register }, section "___ksymtab+vga_client_register", align 4
@__initcall__kmod_vgaarb__258_1567_vga_arb_device_init4 = internal global ptr @vga_arb_device_init, section ".initcall4.init", align 4
@vga_arbiter_used = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vga_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vga_list, ptr @vga_list }, [24 x i8] zeroinitializer }, align 32
@vga_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_update_device_decodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 772, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"vgaarb: changed VGA decodes: olddecodes=%s,decodes=%s:owns=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vga_update_device_decodes\00", [38 x i8] zeroinitializer }, align 32
@vga_update_device_decodes._entry_ptr = internal global ptr @vga_update_device_decodes._entry, section ".printk_index", align 4
@vga_decode_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vga_update_device_decodes.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vgaarb\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vgaarb: decoding count now is: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"io+mem\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vga_lock\00", [23 x i8] zeroinitializer }, align 32
@__vga_tryget.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__vga_tryget\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vgaarb: %s: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__vga_tryget.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vgaarb: %s: owns: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vga_wait_queue.lock\00", [44 x i8] zeroinitializer }, align 32
@__vga_put.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__vga_put\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vgaarb: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@vga_arb_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.32, ptr @vga_arb_device_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013vgaarb: error %d registering device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vga_arb_device_init\00", [44 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry_ptr = internal global ptr @vga_arb_device_init._entry, section ".printk_index", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@pci_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @pci_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vgaarb: bridge control possible\0A\00", [63 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry_ptr.25 = internal global ptr @vga_arb_device_init._entry.23, section ".printk_index", align 4
@vga_arb_device_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 1559, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vgaarb: no bridge control possible\0A\00", [60 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry_ptr.28 = internal global ptr @vga_arb_device_init._entry.26, section ".printk_index", align 4
@vga_arb_device_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016vgaarb: loaded\0A\00", [46 x i8] zeroinitializer }, align 32
@vga_arb_device_init._entry_ptr.31 = internal global ptr @vga_arb_device_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vga_arbiter\00", [20 x i8] zeroinitializer }, align 32
@vga_arb_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @vga_arb_read, ptr @vga_arb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vga_arb_fpoll, ptr null, ptr null, ptr null, i32 0, ptr @vga_arb_open, ptr null, ptr @vga_arb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"count:%d,PCI:%s,decodes=%s,owns=%s,locks=%s(%d:%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lock \00", [26 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vga_arb_write\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"client 0x%p called 'lock'\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vgaarb: client 0x%p called 'lock'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unlock \00", [24 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"client 0x%p called 'unlock'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vgaarb: client 0x%p called 'unlock'\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trylock \00", [23 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.47, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"client 0x%p called 'trylock'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vgaarb: client 0x%p called 'trylock'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"target \00", [24 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.50, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"client 0x%p called 'target'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vgaarb: client 0x%p called 'target'\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.53, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid PCI address %04x:%02x:%02x.%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vgaarb: invalid PCI address %04x:%02x:%02x.%x\0A\00", [49 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.55, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s ==> %04x:%02x:%02x.%x pdev %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"vgaarb: %s ==> %04x:%02x:%02x.%x pdev %p\0A\00", [54 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.57, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vgadev %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vgaarb: vgadev %p\0A\00", [45 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.59, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vgaarb: not a VGA device\0A\00", [38 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.60, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"vgaarb: maximum user cards (%d) number reached, ignoring this one!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"decodes \00", [23 x i8] zeroinitializer }, align 32
@vga_arb_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.39, ptr @.str.2, ptr @.str.62, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"client 0x%p called 'decodes'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vgaarb: client 0x%p called 'decodes'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI:%x:%x:%x.%x\00", [16 x i8] zeroinitializer }, align 32
@vga_arb_fpoll.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vga_arb_fpoll\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vga_arb_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.2, ptr @.str.66, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vga_arb_open\00", [19 x i8] zeroinitializer }, align 32
@vga_arb_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@vga_user_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@vga_user_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vga_user_list, ptr @vga_user_list }, [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vga_user_lock\00", [18 x i8] zeroinitializer }, align 32
@vga_arb_release.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.70, ptr @.str.2, ptr @.str.66, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vga_arb_release\00", [16 x i8] zeroinitializer }, align 32
@vga_arb_release.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vgaarb: uc->io_cnt == %d, uc->mem_cnt == %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pci_notify.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.2, ptr @.str.20, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_notify\00", [21 x i8] zeroinitializer }, align 32
@vga_arbiter_add_pci_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 648, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vgaarb: failed to allocate VGA arbiter data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vga_arbiter_add_pci_device\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vga_arbiter_add_pci_device._entry_ptr = internal global ptr @vga_arbiter_add_pci_device._entry, section ".printk_index", align 4
@vga_arbiter_add_pci_device._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 700, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vgaarb: setting as boot VGA device\0A\00", [60 x i8] zeroinitializer }, align 32
@vga_arbiter_add_pci_device._entry_ptr.78 = internal global ptr @vga_arbiter_add_pci_device._entry.76, section ".printk_index", align 4
@vga_arbiter_add_pci_device._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.2, i32 712, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vgaarb: VGA device added: decodes=%s,owns=%s,locks=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@vga_arbiter_add_pci_device._entry_ptr.81 = internal global ptr @vga_arbiter_add_pci_device._entry.79, section ".printk_index", align 4
@vga_arb_select_default_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"vgaarb: setting as boot device (VGA legacy resources not available)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vga_arb_select_default_device\00", [34 x i8] zeroinitializer }, align 32
@vga_arb_select_default_device._entry_ptr = internal global ptr @vga_arb_select_default_device._entry, section ".printk_index", align 4
@vga_arb_select_default_device._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vga_arb_select_default_device._entry_ptr.85 = internal global ptr @vga_arb_select_default_device._entry.84, section ".printk_index", align 4
@switch.table.vga_update_device_decodes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_update_device_decodes.86 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_update_device_decodes.87 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arbiter_add_pci_device = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arbiter_add_pci_device.88 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arbiter_add_pci_device.89 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arb_read = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arb_read.90 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.vga_arb_read.91 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"vga_default\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 123, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 198, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"vga_lock\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"vga_wait_queue\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"vga_arbiter_used\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"vga_list\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 78, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"vga_count\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 79, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 769, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"vga_decode_count\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 79, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 790, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 91, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 93, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 95, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 97, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 81, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 251, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 252, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 82, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 376, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"vga_arb_device\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1429, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1541, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"pci_notifier\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1416, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1557, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1559, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1564, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1430, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"vga_arb_device_fops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1420, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1025, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 230, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 214, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 174, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1071, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1075, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1107, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1111, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1113, i32 25 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1163, i32 31 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1167, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1204, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1210, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1212, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1222, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1229, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1235, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1238, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1258, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1271, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1274, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 973, i32 18 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1299, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1310, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1315, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [14 x i8] c"vga_user_lock\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"vga_user_list\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 957, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 958, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1339, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1347, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1401, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 648, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 700, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 709, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1517, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.377 = private constant [28 x i8] c"../drivers/gpu/vga/vgaarb.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1527, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant [39 x i8] c"switch.table.vga_update_device_decodes\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [42 x i8] c"switch.table.vga_update_device_decodes.86\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [42 x i8] c"switch.table.vga_update_device_decodes.87\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [40 x i8] c"switch.table.vga_arbiter_add_pci_device\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [43 x i8] c"switch.table.vga_arbiter_add_pci_device.88\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [43 x i8] c"switch.table.vga_arbiter_add_pci_device.89\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [26 x i8] c"switch.table.vga_arb_read\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [29 x i8] c"switch.table.vga_arb_read.90\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [29 x i8] c"switch.table.vga_arb_read.91\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__initcall__kmod_vgaarb__258_1567_vga_arb_device_init4, ptr @__ksymtab_vga_client_register, ptr @__ksymtab_vga_default_device, ptr @__ksymtab_vga_get, ptr @__ksymtab_vga_put, ptr @__ksymtab_vga_remove_vgacon, ptr @__ksymtab_vga_set_legacy_decoding, ptr @vga_arb_device_init._entry, ptr @vga_arb_device_init._entry.23, ptr @vga_arb_device_init._entry.26, ptr @vga_arb_device_init._entry.29, ptr @vga_arb_device_init._entry_ptr, ptr @vga_arb_device_init._entry_ptr.25, ptr @vga_arb_device_init._entry_ptr.28, ptr @vga_arb_device_init._entry_ptr.31, ptr @vga_arb_select_default_device._entry, ptr @vga_arb_select_default_device._entry.84, ptr @vga_arb_select_default_device._entry_ptr, ptr @vga_arb_select_default_device._entry_ptr.85, ptr @vga_arbiter_add_pci_device._entry, ptr @vga_arbiter_add_pci_device._entry.76, ptr @vga_arbiter_add_pci_device._entry.79, ptr @vga_arbiter_add_pci_device._entry_ptr, ptr @vga_arbiter_add_pci_device._entry_ptr.78, ptr @vga_arbiter_add_pci_device._entry_ptr.81, ptr @vga_remove_vgacon._entry, ptr @vga_remove_vgacon._entry_ptr, ptr @vga_update_device_decodes._entry, ptr @vga_update_device_decodes._entry_ptr, ptr @vga_default, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vga_lock, ptr @vga_wait_queue, ptr @vga_arbiter_used, ptr @vga_list, ptr @vga_count, ptr @.str.6, ptr @.str.7, ptr @vga_decode_count, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @vga_arb_device, ptr @.str.21, ptr @.str.22, ptr @pci_notifier, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @vga_arb_device_fops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @vga_arb_open.__key, ptr @.str.68, ptr @vga_user_lock, ptr @vga_user_list, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @switch.table.vga_update_device_decodes, ptr @switch.table.vga_update_device_decodes.86, ptr @switch.table.vga_update_device_decodes.87, ptr @switch.table.vga_arbiter_add_pci_device, ptr @switch.table.vga_arbiter_add_pci_device.88, ptr @switch.table.vga_arbiter_add_pci_device.89, ptr @switch.table.vga_arb_read, ptr @switch.table.vga_arb_read.90, ptr @switch.table.vga_arb_read.91], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_default to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_remove_vgacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_wait_queue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arbiter_used to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_update_device_decodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_decode_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_user_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_user_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arbiter_add_pci_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arbiter_add_pci_device._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arbiter_add_pci_device._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_select_default_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_arb_select_default_device._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_update_device_decodes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_update_device_decodes.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_update_device_decodes.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arbiter_add_pci_device to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arbiter_add_pci_device.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arbiter_add_pci_device.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arb_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arb_read.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vga_arb_read.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vga_default_device() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vga_default, align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vga_set_default_device(ptr noundef %pdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vga_default, align 4
  %cmp = icmp eq ptr %0, %pdev
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_dev_put(ptr noundef %0) #15
  %call = tail call ptr @pci_dev_get(ptr noundef %pdev) #15
  store ptr %call, ptr @vga_default, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vga_remove_vgacon(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vga_default, align 4
  %cmp.not = icmp eq ptr %0, %pdev
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #18
  tail call void @console_lock() #15
  %call = tail call i32 @con_is_bound(ptr noundef nonnull @vga_con) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end.if.then5_crit_edge, label %if.end3

do.end.if.then5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.end3:                                          ; preds = %do.end
  %call2 = tail call i32 @do_take_over_console(ptr noundef nonnull @dummy_con, i32 noundef 0, i32 noundef 62, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp eq i32 %call2, 0
  br i1 %cmp4, label %if.end3.if.then5_crit_edge, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %do.end.if.then5_crit_edge
  %call6 = tail call i32 @do_unregister_con_driver(ptr noundef nonnull @vga_con) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -19
  %spec.store.select = select i1 %cmp7, i32 0, i32 %call6
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %ret.1 = phi i32 [ %spec.store.select, %if.then5 ], [ %call2, %if.end3.if.end10_crit_edge ]
  tail call void @console_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_is_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_take_over_console(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unregister_con_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vga_get(ptr noundef readnone %pdev, i32 noundef %rsrc, i32 noundef %interruptible) #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #15
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = call ptr @memset(ptr %wait, i32 255, i32 20)
  %.b1.i = load i1, ptr @vga_arbiter_used, align 1
  br i1 %.b1.i, label %entry.vga_check_first_use.exit_crit_edge, label %do.body1.i.i

entry.vga_check_first_use.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_check_first_use.exit

do.body1.i.i:                                     ; preds = %entry
  store i1 true, ptr @vga_arbiter_used, align 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  %vgadev.031.i.i = load ptr, ptr @vga_list, align 4
  %cmp6.not32.i.i = icmp eq ptr %vgadev.031.i.i, @vga_list
  br i1 %cmp6.not32.i.i, label %do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, label %do.body1.i.i.for.body.i.i_crit_edge

do.body1.i.i.for.body.i.i_crit_edge:              ; preds = %do.body1.i.i
  br label %for.body.i.i

do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_notify_clients.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body1.i.i.for.body.i.i_crit_edge
  %vgadev.033.i.i = phi ptr [ %vgadev.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %vgadev.031.i.i, %do.body1.i.i.for.body.i.i_crit_edge ]
  %set_decode.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %set_decode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_decode.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %4, null
  br i1 %tobool12.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = load i32, ptr @vga_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8.i.i = icmp slt i32 %5, 2
  %pdev.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i.i, align 4
  %call16.i.i = tail call i32 %4(ptr noundef %7, i1 noundef zeroext %cmp8.i.i) #15
  tail call fastcc void @vga_update_device_decodes(ptr noundef %vgadev.033.i.i, i32 noundef %call16.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %8 = ptrtoint ptr %vgadev.033.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %vgadev.0.i.i = load ptr, ptr %vgadev.033.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %vgadev.0.i.i, @vga_list
  br i1 %cmp6.not.i.i, label %for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_notify_clients.exit.i

vga_arbiter_notify_clients.exit.i:                ; preds = %for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, %do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i.i) #15
  br label %vga_check_first_use.exit

vga_check_first_use.exit:                         ; preds = %vga_arbiter_notify_clients.exit.i, %entry.vga_check_first_use.exit_crit_edge
  %cmp = icmp eq ptr %pdev, null
  br i1 %cmp, label %if.end, label %vga_check_first_use.exit.for.cond.preheader_crit_edge

vga_check_first_use.exit.for.cond.preheader_crit_edge: ; preds = %vga_check_first_use.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.end:                                           ; preds = %vga_check_first_use.exit
  %9 = load ptr, ptr @vga_default, align 4
  %cmp1 = icmp eq ptr %9, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %vga_check_first_use.exit.for.cond.preheader_crit_edge
  %pdev.addr.0207 = phi ptr [ %9, %if.end.for.cond.preheader_crit_edge ], [ %pdev, %vga_check_first_use.exit.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interruptible)
  %tobool.not = icmp eq i32 %interruptible, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end173, %for.cond.preheader
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond
  %vgadev.0.in.i = phi ptr [ @vga_list, %for.cond ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.if.then13_crit_edge, label %for.body.i

for.cond.i.if.then13_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %12, %pdev.addr.0207
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp11 = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp11, label %vgadev_find.exit.if.then13_crit_edge, label %if.end14

vgadev_find.exit.if.then13_crit_edge:             ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %vgadev_find.exit.if.then13_crit_edge, %for.cond.i.if.then13_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7) #15
  br label %cleanup

if.end14:                                         ; preds = %vgadev_find.exit
  %call15 = call fastcc ptr @__vga_tryget(ptr noundef nonnull %vgadev.0.i, i32 noundef %rsrc)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7) #15
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %13 = call i32 @llvm.read_register.i32(metadata !207) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wait, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %0, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @default_wake_function, ptr %1, align 4
  call void @add_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %wait) #15
  br label %__here

__here:                                           ; preds = %if.end19
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@vga_get, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %cond, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !217
  br i1 %tobool.not, label %__here.if.end173_crit_edge, label %land.lhs.true

__here.if.end173_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

land.lhs.true:                                    ; preds = %__here
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.__here152_crit_edge, !prof !218

land.lhs.true.__here152_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here152

signal_pending.exit:                              ; preds = %land.lhs.true
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool99.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool99.not, label %signal_pending.exit.if.end173_crit_edge, label %signal_pending.exit.__here152_crit_edge

signal_pending.exit.__here152_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here152

signal_pending.exit.if.end173_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

__here152:                                        ; preds = %signal_pending.exit.__here152_crit_edge, %land.lhs.true.__here152_crit_edge
  %task_state_change156 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change156 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@vga_get, %__here152) to i32), ptr %task_state_change156, align 4
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  call void @remove_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %wait) #15
  br label %cleanup

if.end173:                                        ; preds = %signal_pending.exit.if.end173_crit_edge, %__here.if.end173_crit_edge
  call void @schedule() #15
  call void @remove_wait_queue(ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %wait) #15
  br label %for.cond

cleanup:                                          ; preds = %__here152, %if.end14.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -19, %if.then13 ], [ -512, %__here152 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vga_tryget(ptr noundef %vgadev, i32 noundef %rsrc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %and = and i32 %rsrc, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %decodes = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 2
  %2 = ptrtoint ptr %decodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decodes, align 4
  %and2 = and i32 %3, 1
  %4 = or i32 %and2, %rsrc
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %rsrc.addr.0 = phi i32 [ %rsrc, %entry.if.end_crit_edge ], [ %4, %land.lhs.true ]
  %and4 = and i32 %rsrc.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.body_crit_edge, label %land.lhs.true6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

land.lhs.true6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %decodes7 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 2
  %5 = ptrtoint ptr %decodes7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %decodes7, align 4
  %and8 = and i32 %6, 2
  %7 = or i32 %and8, %rsrc.addr.0
  br label %do.body

do.body:                                          ; preds = %land.lhs.true6, %if.end.do.body_crit_edge
  %rsrc.addr.1 = phi i32 [ %rsrc.addr.0, %if.end.do.body_crit_edge ], [ %7, %land.lhs.true6 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vga_tryget.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vga_tryget, %if.then16)) #15
          to label %do.body18 [label %if.then16], !srcloc !219

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vga_tryget.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %rsrc.addr.1) #15
  br label %do.body18

do.body18:                                        ; preds = %if.then16, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vga_tryget.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vga_tryget, %if.then30)) #15
          to label %do.end33 [label %if.then30], !srcloc !219

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %owns = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 3
  %8 = ptrtoint ptr %owns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %owns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vga_tryget.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %9) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %owns34 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 3
  %10 = ptrtoint ptr %owns34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %owns34, align 4
  %neg = xor i32 %11, -1
  %and35 = and i32 %rsrc.addr.1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp = icmp eq i32 %and35, 0
  br i1 %cmp, label %do.end33.lock_them_crit_edge, label %if.end37

do.end33.lock_them_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %lock_them

if.end37:                                         ; preds = %do.end33
  %and38 = and i32 %and35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %if.end37.enable_them_crit_edge, label %for.cond.preheader

if.end37.enable_them_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %enable_them

for.cond.preheader:                               ; preds = %if.end37
  %conflict.0243 = load ptr, ptr @vga_list, align 4
  %cmp43.not244 = icmp eq ptr %conflict.0243, @vga_list
  br i1 %cmp43.not244, label %for.cond.preheader.enable_them_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.enable_them_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %enable_them

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conflict.0245 = phi ptr [ %conflict.0, %for.inc.for.body_crit_edge ], [ %conflict.0243, %for.cond.preheader.for.body_crit_edge ]
  %cmp46 = icmp eq ptr %conflict.0245, %vgadev
  br i1 %cmp46, label %for.body.for.inc_crit_edge, label %if.end48

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end48:                                         ; preds = %for.body
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 8
  %pdev50 = getelementptr inbounds %struct.vga_device, ptr %conflict.0245, i32 0, i32 1
  %16 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev50, align 4
  %bus51 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bus51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus51, align 8
  %cmp52.not = icmp eq ptr %15, %19
  %spec.select226 = select i1 %cmp52.not, i32 %and38, i32 3
  %locks = getelementptr inbounds %struct.vga_device, ptr %conflict.0245, i32 0, i32 4
  %20 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %locks, align 4
  %and55 = and i32 %spec.select226, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end48.cleanup157_crit_edge

if.end48.cleanup157_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup157

if.end58:                                         ; preds = %if.end48
  %owns59 = getelementptr inbounds %struct.vga_device, ptr %conflict.0245, i32 0, i32 3
  %22 = ptrtoint ptr %owns59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %owns59, align 4
  %and60 = and i32 %23, %spec.select226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.for.inc_crit_edge, label %if.end63

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end63:                                         ; preds = %if.end58
  %bridge_has_one_vga = getelementptr inbounds %struct.vga_device, ptr %conflict.0245, i32 0, i32 9
  %24 = ptrtoint ptr %bridge_has_one_vga to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bridge_has_one_vga, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool64.not = icmp eq i8 %25, 0
  br i1 %tobool64.not, label %if.then65, label %if.end63.if.end84_crit_edge

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %decodes66 = getelementptr inbounds %struct.vga_device, ptr %conflict.0245, i32 0, i32 2
  %26 = ptrtoint ptr %decodes66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %decodes66, align 4
  %and67 = and i32 %27, %and60
  %and68 = and i32 %and67, 2
  %and75 = and i32 %and67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or78 = or i32 %and67, 1
  %pci_bits.1 = select i1 %tobool76.not, i32 %and68, i32 %or78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_bits.1)
  %tobool80.not = icmp eq i32 %pci_bits.1, 0
  %spec.select232 = select i1 %tobool80.not, i32 0, i32 2
  br label %if.end84

if.end84:                                         ; preds = %if.then65, %if.end63.if.end84_crit_edge
  %flags.0 = phi i32 [ 0, %if.end63.if.end84_crit_edge ], [ %spec.select232, %if.then65 ]
  %pci_bits.2 = phi i32 [ 0, %if.end63.if.end84_crit_edge ], [ %pci_bits.1, %if.then65 ]
  %not.cmp52.not = xor i1 %cmp52.not, true
  %or87 = zext i1 %not.cmp52.not to i32
  %spec.select228 = or i32 %flags.0, %or87
  %call90 = tail call i32 @pci_set_vga_state(ptr noundef %17, i1 noundef zeroext false, i32 noundef %pci_bits.2, i32 noundef %spec.select228) #15
  %neg91 = xor i32 %and60, -1
  %28 = ptrtoint ptr %owns59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %owns59, align 4
  %and93 = and i32 %29, %neg91
  %and94 = and i32 %pci_bits.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %and98 = and i32 %and93, -9
  %storemerge = select i1 %tobool95.not, i32 %and93, i32 %and98
  %30 = ptrtoint ptr %owns59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %owns59, align 4
  %and100 = and i32 %pci_bits.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end84.for.inc_crit_edge, label %if.then102

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then102:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  %and104 = and i32 %storemerge, -5
  %31 = ptrtoint ptr %owns59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and104, ptr %owns59, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then102, %if.end84.for.inc_crit_edge, %if.end58.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %conflict.0245 to i32
  call void @__asan_load4_noabort(i32 %32)
  %conflict.0 = load ptr, ptr %conflict.0245, align 4
  %cmp43.not = icmp eq ptr %conflict.0, @vga_list
  br i1 %cmp43.not, label %for.inc.enable_them_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.enable_them_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %enable_them

enable_them:                                      ; preds = %for.inc.enable_them_crit_edge, %for.cond.preheader.enable_them_crit_edge, %if.end37.enable_them_crit_edge
  %bridge_has_one_vga111 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 9
  %33 = ptrtoint ptr %bridge_has_one_vga111 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bridge_has_one_vga111, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool112.not = icmp eq i8 %34, 0
  br i1 %tobool112.not, label %if.then113, label %enable_them.if.end125_crit_edge

enable_them.if.end125_crit_edge:                  ; preds = %enable_them
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then113:                                       ; preds = %enable_them
  call void @__sanitizer_cov_trace_pc() #17
  %and115 = and i32 %and35, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %spec.select229 = select i1 %tobool116.not, i32 0, i32 2
  %and120 = and i32 %and35, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp ne i32 %and120, 0
  %or123 = zext i1 %tobool121.not to i32
  %spec.select231 = or i32 %spec.select229, %or123
  br label %if.end125

if.end125:                                        ; preds = %if.then113, %enable_them.if.end125_crit_edge
  %flags.2 = phi i32 [ 0, %enable_them.if.end125_crit_edge ], [ 2, %if.then113 ]
  %pci_bits.4 = phi i32 [ 0, %enable_them.if.end125_crit_edge ], [ %spec.select231, %if.then113 ]
  %not.cmp39 = xor i1 %cmp39, true
  %or129 = zext i1 %not.cmp39 to i32
  %spec.select230 = or i32 %flags.2, %or129
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %call132 = tail call i32 @pci_set_vga_state(ptr noundef %36, i1 noundef zeroext true, i32 noundef %pci_bits.4, i32 noundef %spec.select230) #15
  %37 = ptrtoint ptr %owns34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %owns34, align 4
  %or134 = or i32 %38, %and35
  store i32 %or134, ptr %owns34, align 4
  br label %lock_them

lock_them:                                        ; preds = %if.end125, %do.end33.lock_them_crit_edge
  %and135 = and i32 %rsrc.addr.1, 3
  %locks136 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 4
  %39 = ptrtoint ptr %locks136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %locks136, align 4
  %or137 = or i32 %40, %and135
  store i32 %or137, ptr %locks136, align 4
  %and138 = and i32 %rsrc.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %lock_them.if.end141_crit_edge, label %if.then140

lock_them.if.end141_crit_edge:                    ; preds = %lock_them
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

if.then140:                                       ; preds = %lock_them
  call void @__sanitizer_cov_trace_pc() #17
  %io_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 5
  %41 = ptrtoint ptr %io_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_lock_cnt, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %io_lock_cnt, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %lock_them.if.end141_crit_edge
  %and142 = and i32 %rsrc.addr.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end146_crit_edge, label %if.then144

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end146

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  %mem_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 6
  %43 = ptrtoint ptr %mem_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_lock_cnt, align 4
  %inc145 = add i32 %44, 1
  store i32 %inc145, ptr %mem_lock_cnt, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141.if.end146_crit_edge
  %and147 = and i32 %rsrc.addr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end151_crit_edge, label %if.then149

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  %io_norm_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 7
  %45 = ptrtoint ptr %io_norm_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_norm_cnt, align 4
  %inc150 = add i32 %46, 1
  store i32 %inc150, ptr %io_norm_cnt, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146.if.end151_crit_edge
  %and152 = and i32 %rsrc.addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.cleanup157_crit_edge, label %if.then154

if.end151.cleanup157_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup157

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  %mem_norm_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 8
  %47 = ptrtoint ptr %mem_norm_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mem_norm_cnt, align 4
  %inc155 = add i32 %48, 1
  store i32 %inc155, ptr %mem_norm_cnt, align 4
  br label %cleanup157

cleanup157:                                       ; preds = %if.then154, %if.end151.cleanup157_crit_edge, %if.end48.cleanup157_crit_edge
  %retval.2 = phi ptr [ null, %if.then154 ], [ null, %if.end151.cleanup157_crit_edge ], [ %conflict.0245, %if.end48.cleanup157_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vga_put(ptr noundef readnone %pdev, i32 noundef %rsrc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pdev, null
  br i1 %cmp, label %if.end, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @vga_default, align 4
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.do.body4_crit_edge

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body4:                                         ; preds = %if.end.do.body4_crit_edge, %entry.do.body4_crit_edge
  %pdev.addr.021 = phi ptr [ %0, %if.end.do.body4_crit_edge ], [ %pdev, %entry.do.body4_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body4
  %vgadev.0.in.i = phi ptr [ @vga_list, %do.body4 ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.bail_crit_edge, label %for.body.i

for.cond.i.bail_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %3, %pdev.addr.021
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp11 = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp11, label %vgadev_find.exit.bail_crit_edge, label %if.end14

vgadev_find.exit.bail_crit_edge:                  ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end14:                                         ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__vga_put(ptr noundef nonnull %vgadev.0.i, i32 noundef %rsrc)
  br label %bail

bail:                                             ; preds = %if.end14, %vgadev_find.exit.bail_crit_edge, %for.cond.i.bail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %bail, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vga_put(ptr nocapture noundef %vgadev, i32 noundef %rsrc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %locks = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 4
  %2 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %locks, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vga_put.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vga_put, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vga_put.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %rsrc, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %io_norm_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 7
  %4 = ptrtoint ptr %io_norm_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_norm_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %if.then5

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %io_norm_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %io_norm_cnt, align 4
  %decodes = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 2
  %7 = ptrtoint ptr %decodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %decodes, align 4
  %and7 = and i32 %8, 1
  %9 = or i32 %and7, %rsrc
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %rsrc.addr.0 = phi i32 [ %rsrc, %land.lhs.true.if.end11_crit_edge ], [ %rsrc, %do.end.if.end11_crit_edge ], [ %9, %if.then5 ]
  %and12 = and i32 %rsrc.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end25_crit_edge, label %land.lhs.true14

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true14:                                  ; preds = %if.end11
  %mem_norm_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 8
  %10 = ptrtoint ptr %mem_norm_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_norm_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.not = icmp eq i32 %11, 0
  br i1 %cmp15.not, label %land.lhs.true14.if.end25_crit_edge, label %if.then16

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  %dec18 = add i32 %11, -1
  %12 = ptrtoint ptr %mem_norm_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec18, ptr %mem_norm_cnt, align 4
  %decodes19 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 2
  %13 = ptrtoint ptr %decodes19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %decodes19, align 4
  %and20 = and i32 %14, 2
  %15 = or i32 %and20, %rsrc.addr.0
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %land.lhs.true14.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %rsrc.addr.1 = phi i32 [ %rsrc.addr.0, %land.lhs.true14.if.end25_crit_edge ], [ %rsrc.addr.0, %if.end11.if.end25_crit_edge ], [ %15, %if.then16 ]
  %and26 = and i32 %rsrc.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end33_crit_edge, label %land.lhs.true28

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true28:                                  ; preds = %if.end25
  %io_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 5
  %16 = ptrtoint ptr %io_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_lock_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not = icmp eq i32 %17, 0
  br i1 %cmp29.not, label %land.lhs.true28.if.end33_crit_edge, label %if.then30

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  %dec32 = add i32 %17, -1
  %18 = ptrtoint ptr %io_lock_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec32, ptr %io_lock_cnt, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true28.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  %and34 = and i32 %rsrc.addr.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end41_crit_edge, label %land.lhs.true36

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.lhs.true36:                                  ; preds = %if.end33
  %mem_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 6
  %19 = ptrtoint ptr %mem_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_lock_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37.not = icmp eq i32 %20, 0
  br i1 %cmp37.not, label %land.lhs.true36.if.end41_crit_edge, label %if.then38

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  %dec40 = add i32 %20, -1
  %21 = ptrtoint ptr %mem_lock_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec40, ptr %mem_lock_cnt, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %land.lhs.true36.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  %io_lock_cnt42 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 5
  %22 = ptrtoint ptr %io_lock_cnt42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_lock_cnt42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43 = icmp eq i32 %23, 0
  br i1 %cmp43, label %if.then44, label %if.end41.if.end47_crit_edge

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locks, align 4
  %and46 = and i32 %25, -2
  store i32 %and46, ptr %locks, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %mem_lock_cnt48 = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 6
  %26 = ptrtoint ptr %mem_lock_cnt48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_lock_cnt48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp49 = icmp eq i32 %27, 0
  br i1 %cmp49, label %if.then50, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %locks, align 4
  %and52 = and i32 %29, -3
  store i32 %and52, ptr %locks, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %30 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %locks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %31)
  %cmp55.not = icmp eq i32 %3, %31
  br i1 %cmp55.not, label %if.end53.if.end57_crit_edge, label %if.then56

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53.if.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vga_set_legacy_decoding(ptr noundef readnone %pdev, i32 noundef %decodes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %decodes, 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %vgadev.0.in.i.i = phi ptr [ @vga_list, %entry ], [ %vgadev.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %vgadev.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %vgadev.0.i.i = load ptr, ptr %vgadev.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vgadev.0.i.i, @vga_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.__vga_set_legacy_decoding.exit_crit_edge, label %for.body.i.i

for.cond.i.i.__vga_set_legacy_decoding.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vga_set_legacy_decoding.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pdev1.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %pdev
  br i1 %cmp2.i.i, label %vgadev_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

vgadev_find.exit.i:                               ; preds = %for.body.i.i
  %cmp6.i = icmp eq ptr %vgadev.0.i.i, null
  br i1 %cmp6.i, label %vgadev_find.exit.i.__vga_set_legacy_decoding.exit_crit_edge, label %if.end.i

vgadev_find.exit.i.__vga_set_legacy_decoding.exit_crit_edge: ; preds = %vgadev_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vga_set_legacy_decoding.exit

if.end.i:                                         ; preds = %vgadev_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vga_update_device_decodes(ptr noundef nonnull %vgadev.0.i.i, i32 noundef %and.i) #15
  br label %__vga_set_legacy_decoding.exit

__vga_set_legacy_decoding.exit:                   ; preds = %if.end.i, %vgadev_find.exit.i.__vga_set_legacy_decoding.exit_crit_edge, %for.cond.i.i.__vga_set_legacy_decoding.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vga_set_legacy_decoding(ptr noundef readnone %pdev, i32 noundef %decodes, i1 noundef zeroext %userspace) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %decodes, 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %vgadev.0.in.i = phi ptr [ @vga_list, %entry ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.bail_crit_edge, label %for.body.i

for.cond.i.bail_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %pdev
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp6 = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp6, label %vgadev_find.exit.bail_crit_edge, label %if.end

vgadev_find.exit.bail_crit_edge:                  ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end:                                           ; preds = %vgadev_find.exit
  br i1 %userspace, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %set_decode = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 10
  %3 = ptrtoint ptr %set_decode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_decode, align 4
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.bail_crit_edge

land.lhs.true.bail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call fastcc void @vga_update_device_decodes(ptr noundef nonnull %vgadev.0.i, i32 noundef %and)
  br label %bail

bail:                                             ; preds = %if.end11, %land.lhs.true.bail_crit_edge, %vgadev_find.exit.bail_crit_edge, %for.cond.i.bail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vga_client_register(ptr noundef readnone %pdev, ptr noundef %set_decode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %vgadev.0.in.i = phi ptr [ @vga_list, %entry ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.bail_crit_edge, label %for.body.i

for.cond.i.bail_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %pdev
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vgadev.0.i, null
  br i1 %tobool.not, label %vgadev_find.exit.bail_crit_edge, label %if.end

vgadev_find.exit.bail_crit_edge:                  ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end:                                           ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  %set_decode6 = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 10
  %3 = ptrtoint ptr %set_decode6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %set_decode, ptr %set_decode6, align 4
  br label %bail

bail:                                             ; preds = %if.end, %vgadev_find.exit.bail_crit_edge, %for.cond.i.bail_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -19, %vgadev_find.exit.bail_crit_edge ], [ -19, %for.cond.i.bail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2) #15
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_device_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @vga_arb_device) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @bus_register_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @pci_notifier) #15
  %call334 = tail call ptr @pci_get_subsys(i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef null) #15
  %cmp4.not35 = icmp eq ptr %call334, null
  br i1 %cmp4.not35, label %if.end.for.cond.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %vgadev.037 = load ptr, ptr @vga_list, align 4
  %cmp7.not38 = icmp eq ptr %vgadev.037, @vga_list
  br i1 %cmp7.not38, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %call336 = phi ptr [ %call3, %while.body.while.body_crit_edge ], [ %call334, %if.end.while.body_crit_edge ]
  %call5 = tail call fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef nonnull %call336)
  %call3 = tail call ptr @pci_get_subsys(i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call336) #15
  %cmp4.not = icmp eq ptr %call3, null
  br i1 %cmp4.not, label %while.body.for.cond.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vgadev.039 = phi ptr [ %vgadev.0, %for.body.for.body_crit_edge ], [ %vgadev.037, %for.cond.preheader.for.body_crit_edge ]
  %pdev8 = getelementptr inbounds %struct.vga_device, ptr %vgadev.039, i32 0, i32 1
  %0 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %bridge_has_one_vga = getelementptr inbounds %struct.vga_device, ptr %vgadev.039, i32 0, i32 9
  %2 = ptrtoint ptr %bridge_has_one_vga to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge_has_one_vga, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %.str.27..str.24 = select i1 %tobool.not, ptr @.str.27, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull %.str.27..str.24) #18
  %4 = ptrtoint ptr %vgadev.039 to i32
  call void @__asan_load4_noabort(i32 %4)
  %vgadev.0 = load ptr, ptr %vgadev.039, align 4
  %cmp7.not = icmp eq ptr %vgadev.0, @vga_list
  br i1 %cmp7.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @vga_arb_select_default_device() #19
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_update_device_decodes(ptr nocapture noundef %vgadev, i32 noundef %new_decodes) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %decodes = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 2
  %2 = ptrtoint ptr %decodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decodes, align 4
  %neg = xor i32 %new_decodes, -1
  %and = and i32 %3, %neg
  %locks = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 4
  %4 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %locks, align 4
  %and2 = and i32 %and, %5
  store i32 %new_decodes, ptr %decodes, align 4
  %and.i = and i32 %3, 3
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.vga_iostate_to_str.exit_crit_edge

entry.vga_iostate_to_str.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_update_device_decodes, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vga_iostate_to_str.exit

vga_iostate_to_str.exit:                          ; preds = %switch.lookup, %entry.vga_iostate_to_str.exit_crit_edge
  %retval.0.i57 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %entry.vga_iostate_to_str.exit_crit_edge ]
  %and.i58 = and i32 %new_decodes, 3
  %switch.tableidx72 = add nsw i32 %and.i58, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx72)
  %8 = icmp ult i32 %switch.tableidx72, 3
  br i1 %8, label %switch.lookup71, label %vga_iostate_to_str.exit.vga_iostate_to_str.exit63_crit_edge

vga_iostate_to_str.exit.vga_iostate_to_str.exit63_crit_edge: ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit63

switch.lookup71:                                  ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep73 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_update_device_decodes.86, i32 0, i32 %switch.tableidx72
  %9 = ptrtoint ptr %switch.gep73 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load74 = load ptr, ptr %switch.gep73, align 4
  br label %vga_iostate_to_str.exit63

vga_iostate_to_str.exit63:                        ; preds = %switch.lookup71, %vga_iostate_to_str.exit.vga_iostate_to_str.exit63_crit_edge
  %retval.0.i62 = phi ptr [ %switch.load74, %switch.lookup71 ], [ @.str.13, %vga_iostate_to_str.exit.vga_iostate_to_str.exit63_crit_edge ]
  %owns = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 3
  %10 = ptrtoint ptr %owns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %owns, align 4
  %and.i64 = and i32 %11, 3
  %switch.tableidx76 = add nsw i32 %and.i64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx76)
  %12 = icmp ult i32 %switch.tableidx76, 3
  br i1 %12, label %switch.lookup75, label %vga_iostate_to_str.exit63.vga_iostate_to_str.exit69_crit_edge

vga_iostate_to_str.exit63.vga_iostate_to_str.exit69_crit_edge: ; preds = %vga_iostate_to_str.exit63
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit69

switch.lookup75:                                  ; preds = %vga_iostate_to_str.exit63
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep77 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_update_device_decodes.87, i32 0, i32 %switch.tableidx76
  %13 = ptrtoint ptr %switch.gep77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load78 = load ptr, ptr %switch.gep77, align 4
  br label %vga_iostate_to_str.exit69

vga_iostate_to_str.exit69:                        ; preds = %switch.lookup75, %vga_iostate_to_str.exit63.vga_iostate_to_str.exit69_crit_edge
  %retval.0.i68 = phi ptr [ %switch.load78, %switch.lookup75 ], [ @.str.13, %vga_iostate_to_str.exit63.vga_iostate_to_str.exit69_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %retval.0.i57, ptr noundef nonnull %retval.0.i62, ptr noundef nonnull %retval.0.i68) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %vga_iostate_to_str.exit69.if.end14_crit_edge, label %if.then

vga_iostate_to_str.exit69.if.end14_crit_edge:     ; preds = %vga_iostate_to_str.exit69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %vga_iostate_to_str.exit69
  %and7 = and i32 %and2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %io_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 5
  %14 = ptrtoint ptr %io_lock_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %io_lock_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %and10 = and i32 %and2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mem_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev, i32 0, i32 6
  %15 = ptrtoint ptr %mem_lock_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mem_lock_cnt, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  tail call fastcc void @__vga_put(ptr noundef %vgadev, i32 noundef %and2)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %vga_iostate_to_str.exit69.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool18.not = icmp eq i32 %and.i58, 0
  %or.cond = and i1 %tobool18.not, %tobool16.not
  br i1 %or.cond, label %if.then19, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %16 = load i32, ptr @vga_decode_count, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr @vga_decode_count, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %or.cond56 = or i1 %tobool18.not, %tobool16.not
  br i1 %or.cond56, label %if.end20.do.body28_crit_edge, label %if.then26

if.end20.do.body28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body28

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %17 = load i32, ptr @vga_decode_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr @vga_decode_count, align 4
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %if.end20.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_update_device_decodes.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_update_device_decodes, %if.then33)) #15
          to label %do.end36 [label %if.then33], !srcloc !219

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  %18 = load i32, ptr @vga_decode_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vga_update_device_decodes.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %18) #15
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_vga_state(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_subsys(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef %pdev) unnamed_addr #1 align 64 {
entry:
  %cmd = alloca i16, align 2
  %l = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #15
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !221
  %class = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %class, align 8
  %shr.mask = and i32 %2, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 196608
  br i1 %cmp.not, label %if.end, label %entry.cleanup73_crit_edge

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #20
  %cmp1 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1, label %do.end, label %do.body5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #18
  br label %cleanup73

do.body5:                                         ; preds = %if.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body5
  %vgadev.0.in.i = phi ptr [ @vga_list, %do.body5 ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.if.end26_crit_edge, label %for.body.i

for.cond.i.if.end26_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %6, %pdev
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp14.not = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp14.not, label %vgadev_find.exit.if.end26_crit_edge, label %do.body18

vgadev_find.exit.if.end26_crit_edge:              ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

do.body18:                                        ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/vga/vgaarb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 659, 0\0A.popsection", ""() #15, !srcloc !222
  unreachable

if.end26:                                         ; preds = %vgadev_find.exit.if.end26_crit_edge, %for.cond.i.if.end26_crit_edge
  %pdev27 = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pdev27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev27, align 8
  %decodes = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %decodes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15, ptr %decodes, align 4
  %9 = load i32, ptr @vga_decode_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @vga_decode_count, align 4
  %call28 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd) #15
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmd, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %owns = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %owns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %owns, align 8
  %or = or i32 %14, 1
  store i32 %or, ptr %owns, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %15 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool34.not = icmp eq i16 %15, 0
  br i1 %tobool34.not, label %if.end31.if.end38_crit_edge, label %if.then35

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %owns36 = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %owns36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %owns36, align 8
  %or37 = or i32 %17, 2
  store i32 %or37, ptr %owns36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %bus39 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %bus39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bus.0120 = load ptr, ptr %bus39, align 8
  %tobool40.not121 = icmp eq ptr %bus.0120, null
  br i1 %tobool40.not121, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %if.end38.while.body_crit_edge
  %bus.0122 = phi ptr [ %bus.0, %if.end50.while.body_crit_edge ], [ %bus.0120, %if.end38.while.body_crit_edge ]
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus.0122, i32 0, i32 4
  %19 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %self, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %while.body.if.end50_crit_edge, label %if.then42

while.body.if.end50_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then42:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %l) #15
  %21 = ptrtoint ptr %l to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %l, align 2, !annotation !221
  %call43 = call i32 @pci_read_config_word(ptr noundef nonnull %20, i32 noundef 62, ptr noundef nonnull %l) #15
  %22 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l, align 2
  %24 = and i16 %23, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool46.not = icmp eq i16 %24, 0
  br i1 %tobool46.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l) #15
  br label %if.end50

cleanup:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %owns48 = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %owns48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %owns48, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l) #15
  br label %while.end

if.end50:                                         ; preds = %cleanup.thread, %while.body.if.end50_crit_edge
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus.0122, i32 0, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %bus.0 = load ptr, ptr %parent, align 8
  %tobool40.not = icmp eq ptr %bus.0, null
  br i1 %tobool40.not, label %if.end50.while.end_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %cleanup, %if.end38.while.end_crit_edge
  %27 = load ptr, ptr @vga_default, align 4
  %cmp51 = icmp eq ptr %27, null
  br i1 %cmp51, label %land.lhs.true, label %while.end.if.end62_crit_edge

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

land.lhs.true:                                    ; preds = %while.end
  %owns53 = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %owns53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %owns53, align 8
  %and54 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 3
  br i1 %cmp55, label %do.end60, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

do.end60:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.77) #18
  call void @vga_set_default_device(ptr noundef %pdev)
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %land.lhs.true.if.end62_crit_edge, %while.end.if.end62_crit_edge
  %bridge_has_one_vga.i = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %bridge_has_one_vga.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bridge_has_one_vga.i, align 8
  %31 = load volatile ptr, ptr @vga_list, align 4
  %cmp.i.not.i = icmp eq ptr %31, @vga_list
  br i1 %cmp.i.not.i, label %if.end62.vga_arbiter_check_bridge_sharing.exit_crit_edge, label %if.end.i

if.end62.vga_arbiter_check_bridge_sharing.exit_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_check_bridge_sharing.exit

if.end.i:                                         ; preds = %if.end62
  %32 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev27, align 8
  %bus1.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %new_bus.050.i = load ptr, ptr %bus1.i, align 8
  %tobool2.not51.i = icmp eq ptr %new_bus.050.i, null
  br i1 %tobool2.not51.i, label %if.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_check_bridge_sharing.exit

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %new_bus.052.i = phi ptr [ %new_bus.0.i, %for.end.i.while.body.i_crit_edge ], [ %new_bus.050.i, %if.end.i.while.body.i_crit_edge ]
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %new_bus.052.i, i32 0, i32 4
  %35 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %self.i, align 4
  br label %for.body.i101

for.cond.loopexit.i:                              ; preds = %if.end21.i.for.cond.loopexit.i_crit_edge, %if.end9.i.for.cond.loopexit.i_crit_edge
  %37 = ptrtoint ptr %same_bridge_vgadev.049.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %same_bridge_vgadev.0.i = load ptr, ptr %same_bridge_vgadev.049.i, align 4
  %cmp.not.i100 = icmp eq ptr %same_bridge_vgadev.0.i, @vga_list
  br i1 %cmp.not.i100, label %for.end.i, label %for.cond.loopexit.i.for.body.i101_crit_edge

for.cond.loopexit.i.for.body.i101_crit_edge:      ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.cond.loopexit.i.for.body.i101_crit_edge, %while.body.i
  %same_bridge_vgadev.049.i = phi ptr [ %same_bridge_vgadev.0.i, %for.cond.loopexit.i.for.body.i101_crit_edge ], [ %31, %while.body.i ]
  %pdev3.i = getelementptr inbounds %struct.vga_device, ptr %same_bridge_vgadev.049.i, i32 0, i32 1
  %38 = ptrtoint ptr %pdev3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev3.i, align 4
  %bus4.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bus4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus4.i, align 8
  %self5.i = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %self5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %self5.i, align 4
  %cmp6.i = icmp eq ptr %36, %43
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i101.if.end9.i_crit_edge

for.body.i101.if.end9.i_crit_edge:                ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.then7.i:                                       ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #17
  %bridge_has_one_vga8.i = getelementptr inbounds %struct.vga_device, ptr %same_bridge_vgadev.049.i, i32 0, i32 9
  %44 = ptrtoint ptr %bridge_has_one_vga8.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bridge_has_one_vga8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %for.body.i101.if.end9.i_crit_edge
  %tobool11.not45.i = icmp eq ptr %41, null
  br i1 %tobool11.not45.i, label %if.end9.i.for.cond.loopexit.i_crit_edge, label %if.end9.i.while.body12.i_crit_edge

if.end9.i.while.body12.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body12.i

if.end9.i.for.cond.loopexit.i_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

while.body12.i:                                   ; preds = %if.end21.i.while.body12.i_crit_edge, %if.end9.i.while.body12.i_crit_edge
  %bus.046.i = phi ptr [ %55, %if.end21.i.while.body12.i_crit_edge ], [ %41, %if.end9.i.while.body12.i_crit_edge ]
  %self13.i = getelementptr inbounds %struct.pci_bus, ptr %bus.046.i, i32 0, i32 4
  %45 = ptrtoint ptr %self13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %self13.i, align 4
  %tobool14.not.i = icmp eq ptr %46, null
  br i1 %tobool14.not.i, label %while.body12.i.if.end21.i_crit_edge, label %land.lhs.true.i

while.body12.i.if.end21.i_crit_edge:              ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %while.body12.i
  %47 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev27, align 8
  %bus16.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bus16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus16.i, align 8
  %self17.i = getelementptr inbounds %struct.pci_bus, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %self17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %self17.i, align 4
  %cmp18.i = icmp eq ptr %46, %52
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %bridge_has_one_vga.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bridge_has_one_vga.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %land.lhs.true.i.if.end21.i_crit_edge, %while.body12.i.if.end21.i_crit_edge
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus.046.i, i32 0, i32 1
  %54 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i, align 8
  %tobool11.not.i = icmp eq ptr %55, null
  br i1 %tobool11.not.i, label %if.end21.i.for.cond.loopexit.i_crit_edge, label %if.end21.i.while.body12.i_crit_edge

if.end21.i.while.body12.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body12.i

if.end21.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i

for.end.i:                                        ; preds = %for.cond.loopexit.i
  %parent26.i = getelementptr inbounds %struct.pci_bus, ptr %new_bus.052.i, i32 0, i32 1
  %56 = ptrtoint ptr %parent26.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %new_bus.0.i = load ptr, ptr %parent26.i, align 8
  %tobool2.not.i = icmp eq ptr %new_bus.0.i, null
  br i1 %tobool2.not.i, label %for.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

for.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_check_bridge_sharing.exit

vga_arbiter_check_bridge_sharing.exit:            ; preds = %for.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge, %if.end.i.vga_arbiter_check_bridge_sharing.exit_crit_edge, %if.end62.vga_arbiter_check_bridge_sharing.exit_crit_edge
  %57 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %57, ptr noundef nonnull @vga_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %vga_arbiter_check_bridge_sharing.exit.list_add_tail.exit_crit_edge

vga_arbiter_check_bridge_sharing.exit.list_add_tail.exit_crit_edge: ; preds = %vga_arbiter_check_bridge_sharing.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %vga_arbiter_check_bridge_sharing.exit
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @vga_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i, ptr %57, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %vga_arbiter_check_bridge_sharing.exit.list_add_tail.exit_crit_edge
  %61 = load i32, ptr @vga_count, align 4
  %inc63 = add i32 %61, 1
  store i32 %inc63, ptr @vga_count, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %62 = ptrtoint ptr %decodes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %decodes, align 4
  %and.i = and i32 %63, 3
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %64 = icmp ult i32 %switch.tableidx, 3
  br i1 %64, label %switch.lookup, label %list_add_tail.exit.vga_iostate_to_str.exit_crit_edge

list_add_tail.exit.vga_iostate_to_str.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit

switch.lookup:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arbiter_add_pci_device, i32 0, i32 %switch.tableidx
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vga_iostate_to_str.exit

vga_iostate_to_str.exit:                          ; preds = %switch.lookup, %list_add_tail.exit.vga_iostate_to_str.exit_crit_edge
  %retval.0.i102 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %list_add_tail.exit.vga_iostate_to_str.exit_crit_edge ]
  %owns70 = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %owns70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %owns70, align 8
  %and.i103 = and i32 %67, 3
  %switch.tableidx127 = add nsw i32 %and.i103, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx127)
  %68 = icmp ult i32 %switch.tableidx127, 3
  br i1 %68, label %switch.lookup126, label %vga_iostate_to_str.exit.vga_iostate_to_str.exit108_crit_edge

vga_iostate_to_str.exit.vga_iostate_to_str.exit108_crit_edge: ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit108

switch.lookup126:                                 ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep128 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arbiter_add_pci_device.88, i32 0, i32 %switch.tableidx127
  %69 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load129 = load ptr, ptr %switch.gep128, align 4
  br label %vga_iostate_to_str.exit108

vga_iostate_to_str.exit108:                       ; preds = %switch.lookup126, %vga_iostate_to_str.exit.vga_iostate_to_str.exit108_crit_edge
  %retval.0.i107 = phi ptr [ %switch.load129, %switch.lookup126 ], [ @.str.13, %vga_iostate_to_str.exit.vga_iostate_to_str.exit108_crit_edge ]
  %locks = getelementptr inbounds %struct.vga_device, ptr %call7.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %locks, align 4
  %and.i109 = and i32 %71, 3
  %switch.tableidx131 = add nsw i32 %and.i109, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx131)
  %72 = icmp ult i32 %switch.tableidx131, 3
  br i1 %72, label %switch.lookup130, label %vga_iostate_to_str.exit108.vga_iostate_to_str.exit114_crit_edge

vga_iostate_to_str.exit108.vga_iostate_to_str.exit114_crit_edge: ; preds = %vga_iostate_to_str.exit108
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit114

switch.lookup130:                                 ; preds = %vga_iostate_to_str.exit108
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep132 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arbiter_add_pci_device.89, i32 0, i32 %switch.tableidx131
  %73 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load133 = load ptr, ptr %switch.gep132, align 4
  br label %vga_iostate_to_str.exit114

vga_iostate_to_str.exit114:                       ; preds = %switch.lookup130, %vga_iostate_to_str.exit108.vga_iostate_to_str.exit114_crit_edge
  %retval.0.i113 = phi ptr [ %switch.load133, %switch.lookup130 ], [ @.str.13, %vga_iostate_to_str.exit108.vga_iostate_to_str.exit114_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.80, ptr noundef nonnull %retval.0.i102, ptr noundef nonnull %retval.0.i107, ptr noundef nonnull %retval.0.i113) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call8) #15
  br label %cleanup73

cleanup73:                                        ; preds = %vga_iostate_to_str.exit114, %do.end, %entry.cleanup73_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ true, %vga_iostate_to_str.exit114 ], [ false, %entry.cleanup73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #15
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_arb_select_default_device() unnamed_addr #5 section ".init.text" align 64 {
entry:
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vga_default, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

for.cond.preheader:                               ; preds = %entry
  %vgadev.065 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vga_list, i32 0, i32 1), align 4
  %cmp.not66 = icmp eq ptr %vgadev.065, @vga_list
  br i1 %cmp.not66, label %for.cond.preheader.if.then22_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vgadev.068 = phi ptr [ %vgadev.0, %for.body.for.body_crit_edge ], [ %vgadev.065, %for.cond.preheader.for.body_crit_edge ]
  %found.067 = phi ptr [ %spec.select63, %for.body.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %pdev1 = getelementptr inbounds %struct.vga_device, ptr %vgadev.068, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #15
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %cmd, align 2, !annotation !221
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %call4 = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %cmd) #15
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd, align 2
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  %spec.select63 = select i1 %tobool5.not, ptr %found.067, ptr %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #15
  %prev = getelementptr inbounds %struct.list_head, ptr %vgadev.068, i32 0, i32 1
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %vgadev.0 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %vgadev.0, @vga_list
  br i1 %cmp.not, label %if.end15, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end15:                                         ; preds = %for.body
  %tobool16.not = icmp eq ptr %spec.select63, null
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %spec.select63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.82) #18
  call void @vga_set_default_device(ptr noundef nonnull %spec.select63)
  br label %cleanup44

if.end19:                                         ; preds = %if.end15
  %.pr.pr = load ptr, ptr @vga_default, align 4
  %tobool21.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool21.not, label %if.end19.if.then22_crit_edge, label %if.end19.cleanup44_crit_edge

if.end19.cleanup44_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %for.cond.preheader.if.then22_crit_edge
  %8 = load volatile ptr, ptr @vga_list, align 4
  %cmp28.not = icmp eq ptr %8, @vga_list
  %tobool33.not64 = icmp eq ptr %8, null
  %tobool33.not = or i1 %cmp28.not, %tobool33.not64
  br i1 %tobool33.not, label %if.then22.cleanup44_crit_edge, label %if.then34

if.then22.cleanup44_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.then34:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %pdev36 = getelementptr inbounds %struct.vga_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.82) #18
  %11 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev36, align 4
  call void @vga_set_default_device(ptr noundef %12)
  br label %cleanup44

cleanup44:                                        ; preds = %if.then34, %if.then22.cleanup44_crit_edge, %if.end19.cleanup44_crit_edge, %do.end, %entry.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #20
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  %target = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target, align 4
  %magicptr = ptrtoint ptr %4 to i32
  %5 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %do.body1.for.cond.i_crit_edge [
    i32 0, label %do.body1.if.then11_crit_edge
    i32 -1, label %do.body1.if.then11_crit_edge97
  ]

do.body1.if.then11_crit_edge97:                   ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

do.body1.if.then11_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

do.body1.for.cond.i_crit_edge:                    ; preds = %do.body1
  br label %for.cond.i

if.then11:                                        ; preds = %do.body1.if.then11_crit_edge, %do.body1.if.then11_crit_edge97
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call4) #15
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 7597139782223356928, ptr %call7.i, align 8
  br label %done

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.for.cond.i_crit_edge
  %vgadev.0.in.i = phi ptr [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ], [ @vga_list, %do.body1.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.if.end22_crit_edge, label %for.body.i

for.cond.i.if.end22_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %9, %4
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp15 = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp15, label %vgadev_find.exit.if.end22_crit_edge, label %if.end24

vgadev_find.exit.if.end22_crit_edge:              ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end22:                                         ; preds = %vgadev_find.exit.if.end22_crit_edge, %for.cond.i.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call4) #15
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 7597139782223356928, ptr %call7.i, align 8
  br label %done

if.end24:                                         ; preds = %vgadev_find.exit
  %11 = load i32, ptr @vga_decode_count, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i65, label %if.end24.pci_name.exit_crit_edge

if.end24.pci_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i65:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i65, %if.end24.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i65 ], [ %13, %if.end24.pci_name.exit_crit_edge ]
  %decodes = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %decodes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %decodes, align 4
  %and.i = and i32 %17, 3
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  br i1 %18, label %switch.lookup, label %pci_name.exit.vga_iostate_to_str.exit_crit_edge

pci_name.exit.vga_iostate_to_str.exit_crit_edge:  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit

switch.lookup:                                    ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vga_iostate_to_str.exit

vga_iostate_to_str.exit:                          ; preds = %switch.lookup, %pci_name.exit.vga_iostate_to_str.exit_crit_edge
  %retval.0.i66 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %pci_name.exit.vga_iostate_to_str.exit_crit_edge ]
  %owns = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %owns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %owns, align 4
  %and.i67 = and i32 %21, 3
  %switch.tableidx88 = add nsw i32 %and.i67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx88)
  %22 = icmp ult i32 %switch.tableidx88, 3
  br i1 %22, label %switch.lookup87, label %vga_iostate_to_str.exit.vga_iostate_to_str.exit72_crit_edge

vga_iostate_to_str.exit.vga_iostate_to_str.exit72_crit_edge: ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit72

switch.lookup87:                                  ; preds = %vga_iostate_to_str.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep89 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.90, i32 0, i32 %switch.tableidx88
  %23 = ptrtoint ptr %switch.gep89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load90 = load ptr, ptr %switch.gep89, align 4
  br label %vga_iostate_to_str.exit72

vga_iostate_to_str.exit72:                        ; preds = %switch.lookup87, %vga_iostate_to_str.exit.vga_iostate_to_str.exit72_crit_edge
  %retval.0.i71 = phi ptr [ %switch.load90, %switch.lookup87 ], [ @.str.13, %vga_iostate_to_str.exit.vga_iostate_to_str.exit72_crit_edge ]
  %locks = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locks, align 4
  %and.i73 = and i32 %25, 3
  %switch.tableidx92 = add nsw i32 %and.i73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx92)
  %26 = icmp ult i32 %switch.tableidx92, 3
  br i1 %26, label %switch.lookup91, label %vga_iostate_to_str.exit72.vga_iostate_to_str.exit78_crit_edge

vga_iostate_to_str.exit72.vga_iostate_to_str.exit78_crit_edge: ; preds = %vga_iostate_to_str.exit72
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_iostate_to_str.exit78

switch.lookup91:                                  ; preds = %vga_iostate_to_str.exit72
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep93 = getelementptr inbounds [3 x ptr], ptr @switch.table.vga_arb_read.91, i32 0, i32 %switch.tableidx92
  %27 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load94 = load ptr, ptr %switch.gep93, align 4
  br label %vga_iostate_to_str.exit78

vga_iostate_to_str.exit78:                        ; preds = %switch.lookup91, %vga_iostate_to_str.exit72.vga_iostate_to_str.exit78_crit_edge
  %retval.0.i77 = phi ptr [ %switch.load94, %switch.lookup91 ], [ @.str.13, %vga_iostate_to_str.exit72.vga_iostate_to_str.exit78_crit_edge ]
  %io_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 5
  %28 = ptrtoint ptr %io_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_lock_cnt, align 4
  %mem_lock_cnt = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 6
  %30 = ptrtoint ptr %mem_lock_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_lock_cnt, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef %retval.0.i.i, ptr noundef nonnull %retval.0.i66, ptr noundef nonnull %retval.0.i71, ptr noundef nonnull %retval.0.i77, i32 noundef %29, i32 noundef %31)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call4) #15
  br label %done

done:                                             ; preds = %vga_iostate_to_str.exit78, %if.end22, %if.then11
  %len.0 = phi i32 [ 7, %if.then11 ], [ 7, %if.end22 ], [ %call29, %vga_iostate_to_str.exit78 ]
  %32 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %32)
  %cmp1.i.i = icmp ugt i32 %32, 1024
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !223

if.then3.i.i:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef 1024, i32 noundef %32) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %done
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %32, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %32, i32 -1226833920) #21, !srcloc !224
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %32) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i, i32 noundef %32) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %32, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %32, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %32, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then3.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  %io_state = alloca i32, align 4
  %kbuf = alloca [64 x i8], align 1
  %domain = alloca i32, align 4
  %bus = alloca i32, align 4
  %devfn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_state) #15
  %2 = ptrtoint ptr %io_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %io_state, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %kbuf) #15
  %3 = call ptr @memset(ptr %kbuf, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %count)
  %cmp = icmp ugt i32 %count, 63
  br i1 %cmp, label %entry.cleanup383_crit_edge, label %if.then.i.i.i

entry.cleanup383_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %kbuf, i32 noundef %count, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #21, !srcloc !225
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !218

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbuf, i32 noundef %count) #15
  %5 = call i32 @llvm.read_register.i32(metadata !207) #15
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !226
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !227
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !228
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbuf, ptr noundef %buf, i32 noundef %count) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #15, !srcloc !227
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !228
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !218

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kbuf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup383

if.end2:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [64 x i8], ptr %kbuf, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %kbuf, ptr noundef nonnull dereferenceable(5) @.str.38, i32 5) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end2
  %add.ptr = getelementptr inbounds i8, ptr %kbuf, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then11)) #15
          to label %do.end [label %if.then11], !srcloc !219

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.41, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.then6
  %bcmp598 = call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp598)
  %cmp.i = icmp eq i32 %bcmp598, 0
  br i1 %cmp.i, label %do.end.cleanup383_crit_edge, label %if.end.i

do.end.cleanup383_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end.i:                                         ; preds = %do.end
  %bcmp599 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr, ptr noundef nonnull dereferenceable(6) @.str.10, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp599)
  %cmp2.i = icmp eq i32 %bcmp599, 0
  br i1 %cmp2.i, label %if.end.i.if.end19_crit_edge, label %if.else.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.else.i:                                        ; preds = %if.end.i
  %bcmp600 = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr, ptr noundef nonnull dereferenceable(2) @.str.11, i32 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp600)
  %cmp5.i = icmp eq i32 %bcmp600, 0
  br i1 %cmp5.i, label %if.else.i.if.end19_crit_edge, label %if.else7.i

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.else7.i:                                       ; preds = %if.else.i
  %bcmp601 = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr, ptr noundef nonnull dereferenceable(3) @.str.12, i32 3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp601)
  %cmp9.i = icmp eq i32 %bcmp601, 0
  br i1 %cmp9.i, label %if.else7.i.if.end19_crit_edge, label %if.else7.i.cleanup383_crit_edge

if.else7.i.cleanup383_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.else7.i.if.end19_crit_edge:                    ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %if.else7.i.if.end19_crit_edge, %if.else.i.if.end19_crit_edge, %if.end.i.if.end19_crit_edge
  %target = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target, align 4
  %cmp21 = icmp eq ptr %11, null
  br i1 %cmp21, label %if.end19.cleanup383_crit_edge, label %if.end23

if.end19.cleanup383_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end23:                                         ; preds = %if.end19
  %call.i535 = call i32 @vga_get(ptr noundef nonnull %11, i32 noundef 3, i32 noundef 0) #15
  %arrayidx26 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26, align 4
  %cmp28 = icmp eq ptr %13, %11
  br i1 %cmp28, label %if.end23.if.then37_crit_edge, label %for.inc

if.end23.if.then37_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

if.then37:                                        ; preds = %for.inc.14.if.then37_crit_edge, %for.inc.13.if.then37_crit_edge, %for.inc.12.if.then37_crit_edge, %for.inc.11.if.then37_crit_edge, %for.inc.10.if.then37_crit_edge, %for.inc.9.if.then37_crit_edge, %for.inc.8.if.then37_crit_edge, %for.inc.7.if.then37_crit_edge, %for.inc.6.if.then37_crit_edge, %for.inc.5.if.then37_crit_edge, %for.inc.4.if.then37_crit_edge, %for.inc.3.if.then37_crit_edge, %for.inc.2.if.then37_crit_edge, %for.inc.1.if.then37_crit_edge, %for.inc.if.then37_crit_edge, %if.end23.if.then37_crit_edge
  %i.0613.lcssa = phi i32 [ 0, %if.end23.if.then37_crit_edge ], [ 1, %for.inc.if.then37_crit_edge ], [ 2, %for.inc.1.if.then37_crit_edge ], [ 3, %for.inc.2.if.then37_crit_edge ], [ 4, %for.inc.3.if.then37_crit_edge ], [ 5, %for.inc.4.if.then37_crit_edge ], [ 6, %for.inc.5.if.then37_crit_edge ], [ 7, %for.inc.6.if.then37_crit_edge ], [ 8, %for.inc.7.if.then37_crit_edge ], [ 9, %for.inc.8.if.then37_crit_edge ], [ 10, %for.inc.9.if.then37_crit_edge ], [ 11, %for.inc.10.if.then37_crit_edge ], [ 12, %for.inc.11.if.then37_crit_edge ], [ 13, %for.inc.12.if.then37_crit_edge ], [ 14, %for.inc.13.if.then37_crit_edge ], [ 15, %for.inc.14.if.then37_crit_edge ]
  %io_cnt = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0613.lcssa, i32 2
  %14 = ptrtoint ptr %io_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_cnt, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %io_cnt, align 4
  %mem_cnt = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0613.lcssa, i32 1
  %16 = ptrtoint ptr %mem_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_cnt, align 4
  %inc40 = add i32 %17, 1
  store i32 %inc40, ptr %mem_cnt, align 4
  br label %cleanup383

for.inc:                                          ; preds = %if.end23
  %arrayidx26.1 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26.1, align 4
  %cmp28.1 = icmp eq ptr %19, %11
  br i1 %cmp28.1, label %for.inc.if.then37_crit_edge, label %for.inc.1

for.inc.if.then37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.1:                                        ; preds = %for.inc
  %arrayidx26.2 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26.2, align 4
  %cmp28.2 = icmp eq ptr %21, %11
  br i1 %cmp28.2, label %for.inc.1.if.then37_crit_edge, label %for.inc.2

for.inc.1.if.then37_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx26.3 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx26.3, align 4
  %cmp28.3 = icmp eq ptr %23, %11
  br i1 %cmp28.3, label %for.inc.2.if.then37_crit_edge, label %for.inc.3

for.inc.2.if.then37_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx26.4 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26.4, align 4
  %cmp28.4 = icmp eq ptr %25, %11
  br i1 %cmp28.4, label %for.inc.3.if.then37_crit_edge, label %for.inc.4

for.inc.3.if.then37_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx26.5 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx26.5, align 4
  %cmp28.5 = icmp eq ptr %27, %11
  br i1 %cmp28.5, label %for.inc.4.if.then37_crit_edge, label %for.inc.5

for.inc.4.if.then37_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx26.6 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx26.6, align 4
  %cmp28.6 = icmp eq ptr %29, %11
  br i1 %cmp28.6, label %for.inc.5.if.then37_crit_edge, label %for.inc.6

for.inc.5.if.then37_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx26.7 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx26.7, align 4
  %cmp28.7 = icmp eq ptr %31, %11
  br i1 %cmp28.7, label %for.inc.6.if.then37_crit_edge, label %for.inc.7

for.inc.6.if.then37_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx26.8 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 8
  %32 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx26.8, align 4
  %cmp28.8 = icmp eq ptr %33, %11
  br i1 %cmp28.8, label %for.inc.7.if.then37_crit_edge, label %for.inc.8

for.inc.7.if.then37_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx26.9 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 9
  %34 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx26.9, align 4
  %cmp28.9 = icmp eq ptr %35, %11
  br i1 %cmp28.9, label %for.inc.8.if.then37_crit_edge, label %for.inc.9

for.inc.8.if.then37_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx26.10 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 10
  %36 = ptrtoint ptr %arrayidx26.10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx26.10, align 4
  %cmp28.10 = icmp eq ptr %37, %11
  br i1 %cmp28.10, label %for.inc.9.if.then37_crit_edge, label %for.inc.10

for.inc.9.if.then37_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx26.11 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 11
  %38 = ptrtoint ptr %arrayidx26.11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx26.11, align 4
  %cmp28.11 = icmp eq ptr %39, %11
  br i1 %cmp28.11, label %for.inc.10.if.then37_crit_edge, label %for.inc.11

for.inc.10.if.then37_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx26.12 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 12
  %40 = ptrtoint ptr %arrayidx26.12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx26.12, align 4
  %cmp28.12 = icmp eq ptr %41, %11
  br i1 %cmp28.12, label %for.inc.11.if.then37_crit_edge, label %for.inc.12

for.inc.11.if.then37_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx26.13 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 13
  %42 = ptrtoint ptr %arrayidx26.13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx26.13, align 4
  %cmp28.13 = icmp eq ptr %43, %11
  br i1 %cmp28.13, label %for.inc.12.if.then37_crit_edge, label %for.inc.13

for.inc.12.if.then37_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx26.14 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 14
  %44 = ptrtoint ptr %arrayidx26.14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx26.14, align 4
  %cmp28.14 = icmp eq ptr %45, %11
  br i1 %cmp28.14, label %for.inc.13.if.then37_crit_edge, label %for.inc.14

for.inc.13.if.then37_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx26.15 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 15
  %46 = ptrtoint ptr %arrayidx26.15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx26.15, align 4
  %cmp28.15 = icmp eq ptr %47, %11
  br i1 %cmp28.15, label %for.inc.14.if.then37_crit_edge, label %for.inc.14.cleanup383_crit_edge

for.inc.14.cleanup383_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

for.inc.14.if.then37_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

if.else:                                          ; preds = %if.end2
  %bcmp501 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %kbuf, ptr noundef nonnull dereferenceable(7) @.str.42, i32 7) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp501)
  %cmp45 = icmp eq i32 %bcmp501, 0
  br i1 %cmp45, label %if.then46, label %if.else120

if.then46:                                        ; preds = %if.else
  %add.ptr47 = getelementptr inbounds i8, ptr %kbuf, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then61)) #15
          to label %do.end64 [label %if.then61], !srcloc !219

if.then61:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.44, ptr noundef %1) #15
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %if.then46
  %bcmp506 = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr47, ptr noundef nonnull dereferenceable(3) @.str.45, i32 3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp506)
  %cmp66 = icmp eq i32 %bcmp506, 0
  br i1 %cmp66, label %do.end64.if.end73_crit_edge, label %if.else68

do.end64.if.end73_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.else68:                                        ; preds = %do.end64
  %bcmp594 = call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr47, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp594)
  %cmp.i537 = icmp eq i32 %bcmp594, 0
  br i1 %cmp.i537, label %if.else68.if.end73_crit_edge, label %if.end.i540

if.else68.if.end73_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.end.i540:                                      ; preds = %if.else68
  %bcmp595 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr47, ptr noundef nonnull dereferenceable(6) @.str.10, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp595)
  %cmp2.i539 = icmp eq i32 %bcmp595, 0
  br i1 %cmp2.i539, label %if.end.i540.if.end73_crit_edge, label %if.else.i543

if.end.i540.if.end73_crit_edge:                   ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.else.i543:                                     ; preds = %if.end.i540
  %bcmp596 = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr47, ptr noundef nonnull dereferenceable(2) @.str.11, i32 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp596)
  %cmp5.i542 = icmp eq i32 %bcmp596, 0
  br i1 %cmp5.i542, label %if.else.i543.if.end73_crit_edge, label %if.else7.i546

if.else.i543.if.end73_crit_edge:                  ; preds = %if.else.i543
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.else7.i546:                                    ; preds = %if.else.i543
  %bcmp597 = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr47, ptr noundef nonnull dereferenceable(3) @.str.12, i32 3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp597)
  %cmp9.i545 = icmp eq i32 %bcmp597, 0
  br i1 %cmp9.i545, label %if.else7.i546.if.end73_crit_edge, label %if.else7.i546.cleanup383_crit_edge

if.else7.i546.cleanup383_crit_edge:               ; preds = %if.else7.i546
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.else7.i546.if.end73_crit_edge:                 ; preds = %if.else7.i546
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.end73:                                         ; preds = %if.else7.i546.if.end73_crit_edge, %if.else.i543.if.end73_crit_edge, %if.end.i540.if.end73_crit_edge, %if.else68.if.end73_crit_edge, %do.end64.if.end73_crit_edge
  %storemerge = phi i32 [ 3, %do.end64.if.end73_crit_edge ], [ 0, %if.else68.if.end73_crit_edge ], [ 3, %if.else7.i546.if.end73_crit_edge ], [ 3, %if.else.i543.if.end73_crit_edge ], [ 3, %if.end.i540.if.end73_crit_edge ]
  %48 = ptrtoint ptr %io_state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge, ptr %io_state, align 4
  %target74 = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %target74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %target74, align 4
  %cmp76 = icmp eq ptr %50, null
  br i1 %cmp76, label %if.end73.cleanup383_crit_edge, label %for.body81.preheader

if.end73.cleanup383_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

for.body81.preheader:                             ; preds = %if.end73
  %arrayidx83 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 0
  %51 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx83, align 4
  %cmp85 = icmp eq ptr %52, %50
  %spec.select = select i1 %cmp85, ptr %arrayidx83, ptr null
  %arrayidx83.1 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx83.1, align 4
  %cmp85.1 = icmp eq ptr %54, %50
  %spec.select.1 = select i1 %cmp85.1, ptr %arrayidx83.1, ptr %spec.select
  %arrayidx83.2 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx83.2, align 4
  %cmp85.2 = icmp eq ptr %56, %50
  %spec.select.2 = select i1 %cmp85.2, ptr %arrayidx83.2, ptr %spec.select.1
  %arrayidx83.3 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx83.3, align 4
  %cmp85.3 = icmp eq ptr %58, %50
  %spec.select.3 = select i1 %cmp85.3, ptr %arrayidx83.3, ptr %spec.select.2
  %arrayidx83.4 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 4
  %59 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx83.4, align 4
  %cmp85.4 = icmp eq ptr %60, %50
  %spec.select.4 = select i1 %cmp85.4, ptr %arrayidx83.4, ptr %spec.select.3
  %arrayidx83.5 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 5
  %61 = ptrtoint ptr %arrayidx83.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx83.5, align 4
  %cmp85.5 = icmp eq ptr %62, %50
  %spec.select.5 = select i1 %cmp85.5, ptr %arrayidx83.5, ptr %spec.select.4
  %arrayidx83.6 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 6
  %63 = ptrtoint ptr %arrayidx83.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx83.6, align 4
  %cmp85.6 = icmp eq ptr %64, %50
  %spec.select.6 = select i1 %cmp85.6, ptr %arrayidx83.6, ptr %spec.select.5
  %arrayidx83.7 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 7
  %65 = ptrtoint ptr %arrayidx83.7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx83.7, align 4
  %cmp85.7 = icmp eq ptr %66, %50
  %spec.select.7 = select i1 %cmp85.7, ptr %arrayidx83.7, ptr %spec.select.6
  %arrayidx83.8 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 8
  %67 = ptrtoint ptr %arrayidx83.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx83.8, align 4
  %cmp85.8 = icmp eq ptr %68, %50
  %spec.select.8 = select i1 %cmp85.8, ptr %arrayidx83.8, ptr %spec.select.7
  %arrayidx83.9 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 9
  %69 = ptrtoint ptr %arrayidx83.9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx83.9, align 4
  %cmp85.9 = icmp eq ptr %70, %50
  %spec.select.9 = select i1 %cmp85.9, ptr %arrayidx83.9, ptr %spec.select.8
  %arrayidx83.10 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 10
  %71 = ptrtoint ptr %arrayidx83.10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx83.10, align 4
  %cmp85.10 = icmp eq ptr %72, %50
  %spec.select.10 = select i1 %cmp85.10, ptr %arrayidx83.10, ptr %spec.select.9
  %arrayidx83.11 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 11
  %73 = ptrtoint ptr %arrayidx83.11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx83.11, align 4
  %cmp85.11 = icmp eq ptr %74, %50
  %spec.select.11 = select i1 %cmp85.11, ptr %arrayidx83.11, ptr %spec.select.10
  %arrayidx83.12 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 12
  %75 = ptrtoint ptr %arrayidx83.12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx83.12, align 4
  %cmp85.12 = icmp eq ptr %76, %50
  %spec.select.12 = select i1 %cmp85.12, ptr %arrayidx83.12, ptr %spec.select.11
  %arrayidx83.13 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 13
  %77 = ptrtoint ptr %arrayidx83.13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx83.13, align 4
  %cmp85.13 = icmp eq ptr %78, %50
  %spec.select.13 = select i1 %cmp85.13, ptr %arrayidx83.13, ptr %spec.select.12
  %arrayidx83.14 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 14
  %79 = ptrtoint ptr %arrayidx83.14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx83.14, align 4
  %cmp85.14 = icmp eq ptr %80, %50
  %spec.select.14 = select i1 %cmp85.14, ptr %arrayidx83.14, ptr %spec.select.13
  %arrayidx83.15 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 15
  %81 = ptrtoint ptr %arrayidx83.15 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx83.15, align 4
  %cmp85.15 = icmp eq ptr %82, %50
  %spec.select.15 = select i1 %cmp85.15, ptr %arrayidx83.15, ptr %spec.select.14
  %tobool93.not = icmp eq ptr %spec.select.15, null
  br i1 %tobool93.not, label %for.body81.preheader.cleanup383_crit_edge, label %if.end95

for.body81.preheader.cleanup383_crit_edge:        ; preds = %for.body81.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end95:                                         ; preds = %for.body81.preheader
  %83 = ptrtoint ptr %io_state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_state, align 4
  %and96 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end101_crit_edge, label %land.lhs.true

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end95
  %io_cnt98 = getelementptr inbounds %struct.vga_arb_user_card, ptr %spec.select.15, i32 0, i32 2
  %85 = ptrtoint ptr %io_cnt98 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_cnt98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp99 = icmp eq i32 %86, 0
  br i1 %cmp99, label %land.lhs.true.cleanup383_crit_edge, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true.cleanup383_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end101:                                        ; preds = %land.lhs.true.if.end101_crit_edge, %if.end95.if.end101_crit_edge
  %and102 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end108_crit_edge, label %land.lhs.true104

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

land.lhs.true104:                                 ; preds = %if.end101
  %mem_cnt105 = getelementptr inbounds %struct.vga_arb_user_card, ptr %spec.select.15, i32 0, i32 1
  %87 = ptrtoint ptr %mem_cnt105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mem_cnt105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp106 = icmp eq i32 %88, 0
  br i1 %cmp106, label %land.lhs.true104.cleanup383_crit_edge, label %land.lhs.true104.if.end108_crit_edge

land.lhs.true104.if.end108_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

land.lhs.true104.cleanup383_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end108:                                        ; preds = %land.lhs.true104.if.end108_crit_edge, %if.end101.if.end108_crit_edge
  call void @vga_put(ptr noundef nonnull %50, i32 noundef %84)
  br i1 %tobool97.not, label %if.end108.if.end113_crit_edge, label %if.then111

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %io_cnt112 = getelementptr inbounds %struct.vga_arb_user_card, ptr %spec.select.15, i32 0, i32 2
  %89 = ptrtoint ptr %io_cnt112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_cnt112, align 4
  %dec = add i32 %90, -1
  store i32 %dec, ptr %io_cnt112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end108.if.end113_crit_edge
  br i1 %tobool103.not, label %if.end113.cleanup383_crit_edge, label %if.then116

if.end113.cleanup383_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  %mem_cnt117 = getelementptr inbounds %struct.vga_arb_user_card, ptr %spec.select.15, i32 0, i32 1
  %91 = ptrtoint ptr %mem_cnt117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mem_cnt117, align 4
  %dec118 = add i32 %92, -1
  store i32 %dec118, ptr %mem_cnt117, align 4
  br label %cleanup383

if.else120:                                       ; preds = %if.else
  %bcmp502 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %kbuf, ptr noundef nonnull dereferenceable(8) @.str.46, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp502)
  %cmp122 = icmp eq i32 %bcmp502, 0
  br i1 %cmp122, label %if.then123, label %if.else183

if.then123:                                       ; preds = %if.else120
  %add.ptr124 = getelementptr inbounds i8, ptr %kbuf, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then138)) #15
          to label %do.end141 [label %if.then138], !srcloc !219

if.then138:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.48, ptr noundef %1) #15
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %if.then123
  %bcmp590 = call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr124, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp590)
  %cmp.i552 = icmp eq i32 %bcmp590, 0
  br i1 %cmp.i552, label %do.end141.if.end145_crit_edge, label %if.end.i555

do.end141.if.end145_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.end.i555:                                      ; preds = %do.end141
  %bcmp591 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr124, ptr noundef nonnull dereferenceable(6) @.str.10, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp591)
  %cmp2.i554 = icmp eq i32 %bcmp591, 0
  br i1 %cmp2.i554, label %if.end.i555.if.end145_crit_edge, label %if.else.i558

if.end.i555.if.end145_crit_edge:                  ; preds = %if.end.i555
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.else.i558:                                     ; preds = %if.end.i555
  %bcmp592 = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr124, ptr noundef nonnull dereferenceable(2) @.str.11, i32 2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp592)
  %cmp5.i557 = icmp eq i32 %bcmp592, 0
  br i1 %cmp5.i557, label %if.else.i558.if.end145_crit_edge, label %if.else7.i561

if.else.i558.if.end145_crit_edge:                 ; preds = %if.else.i558
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.else7.i561:                                    ; preds = %if.else.i558
  %bcmp593 = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr124, ptr noundef nonnull dereferenceable(3) @.str.12, i32 3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp593)
  %cmp9.i560 = icmp eq i32 %bcmp593, 0
  br i1 %cmp9.i560, label %if.else7.i561.if.end145_crit_edge, label %if.else7.i561.cleanup383_crit_edge

if.else7.i561.cleanup383_crit_edge:               ; preds = %if.else7.i561
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.else7.i561.if.end145_crit_edge:                ; preds = %if.else7.i561
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.end145:                                        ; preds = %if.else7.i561.if.end145_crit_edge, %if.else.i558.if.end145_crit_edge, %if.end.i555.if.end145_crit_edge, %do.end141.if.end145_crit_edge
  %.sink.i562 = phi i32 [ 0, %do.end141.if.end145_crit_edge ], [ 3, %if.else7.i561.if.end145_crit_edge ], [ 3, %if.else.i558.if.end145_crit_edge ], [ 3, %if.end.i555.if.end145_crit_edge ]
  %93 = ptrtoint ptr %io_state to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink.i562, ptr %io_state, align 4
  %target146 = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %target146 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %target146, align 4
  %cmp148 = icmp eq ptr %95, null
  br i1 %cmp148, label %if.end145.cleanup383_crit_edge, label %if.end150

if.end145.cleanup383_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end150:                                        ; preds = %if.end145
  %96 = ptrtoint ptr %io_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_state, align 4
  %call151 = call fastcc i32 @vga_tryget(ptr noundef nonnull %95, i32 noundef %97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.cleanup383_crit_edge, label %for.body156.preheader

if.end150.cleanup383_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

for.body156.preheader:                            ; preds = %if.end150
  %arrayidx158 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 0
  %98 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx158, align 4
  %cmp160 = icmp eq ptr %99, %95
  br i1 %cmp160, label %for.body156.preheader.if.then161_crit_edge, label %for.inc179

for.body156.preheader.if.then161_crit_edge:       ; preds = %for.body156.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

if.then161:                                       ; preds = %for.inc179.14.if.then161_crit_edge, %for.inc179.13.if.then161_crit_edge, %for.inc179.12.if.then161_crit_edge, %for.inc179.11.if.then161_crit_edge, %for.inc179.10.if.then161_crit_edge, %for.inc179.9.if.then161_crit_edge, %for.inc179.8.if.then161_crit_edge, %for.inc179.7.if.then161_crit_edge, %for.inc179.6.if.then161_crit_edge, %for.inc179.5.if.then161_crit_edge, %for.inc179.4.if.then161_crit_edge, %for.inc179.3.if.then161_crit_edge, %for.inc179.2.if.then161_crit_edge, %for.inc179.1.if.then161_crit_edge, %for.inc179.if.then161_crit_edge, %for.body156.preheader.if.then161_crit_edge
  %i.2610.lcssa = phi i32 [ 0, %for.body156.preheader.if.then161_crit_edge ], [ 1, %for.inc179.if.then161_crit_edge ], [ 2, %for.inc179.1.if.then161_crit_edge ], [ 3, %for.inc179.2.if.then161_crit_edge ], [ 4, %for.inc179.3.if.then161_crit_edge ], [ 5, %for.inc179.4.if.then161_crit_edge ], [ 6, %for.inc179.5.if.then161_crit_edge ], [ 7, %for.inc179.6.if.then161_crit_edge ], [ 8, %for.inc179.7.if.then161_crit_edge ], [ 9, %for.inc179.8.if.then161_crit_edge ], [ 10, %for.inc179.9.if.then161_crit_edge ], [ 11, %for.inc179.10.if.then161_crit_edge ], [ 12, %for.inc179.11.if.then161_crit_edge ], [ 13, %for.inc179.12.if.then161_crit_edge ], [ 14, %for.inc179.13.if.then161_crit_edge ], [ 15, %for.inc179.14.if.then161_crit_edge ]
  %and162 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then161.if.end169_crit_edge, label %if.then164

if.then161.if.end169_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

if.then164:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  %io_cnt167 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.2610.lcssa, i32 2
  %100 = ptrtoint ptr %io_cnt167 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %io_cnt167, align 4
  %inc168 = add i32 %101, 1
  store i32 %inc168, ptr %io_cnt167, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.then161.if.end169_crit_edge
  %and170 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.cleanup383_crit_edge, label %if.then172

if.end169.cleanup383_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.then172:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  %mem_cnt175 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.2610.lcssa, i32 1
  %102 = ptrtoint ptr %mem_cnt175 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mem_cnt175, align 4
  %inc176 = add i32 %103, 1
  store i32 %inc176, ptr %mem_cnt175, align 4
  br label %cleanup383

for.inc179:                                       ; preds = %for.body156.preheader
  %arrayidx158.1 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %arrayidx158.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx158.1, align 4
  %cmp160.1 = icmp eq ptr %105, %95
  br i1 %cmp160.1, label %for.inc179.if.then161_crit_edge, label %for.inc179.1

for.inc179.if.then161_crit_edge:                  ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.1:                                     ; preds = %for.inc179
  %arrayidx158.2 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 2
  %106 = ptrtoint ptr %arrayidx158.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx158.2, align 4
  %cmp160.2 = icmp eq ptr %107, %95
  br i1 %cmp160.2, label %for.inc179.1.if.then161_crit_edge, label %for.inc179.2

for.inc179.1.if.then161_crit_edge:                ; preds = %for.inc179.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.2:                                     ; preds = %for.inc179.1
  %arrayidx158.3 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 3
  %108 = ptrtoint ptr %arrayidx158.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx158.3, align 4
  %cmp160.3 = icmp eq ptr %109, %95
  br i1 %cmp160.3, label %for.inc179.2.if.then161_crit_edge, label %for.inc179.3

for.inc179.2.if.then161_crit_edge:                ; preds = %for.inc179.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.3:                                     ; preds = %for.inc179.2
  %arrayidx158.4 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 4
  %110 = ptrtoint ptr %arrayidx158.4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx158.4, align 4
  %cmp160.4 = icmp eq ptr %111, %95
  br i1 %cmp160.4, label %for.inc179.3.if.then161_crit_edge, label %for.inc179.4

for.inc179.3.if.then161_crit_edge:                ; preds = %for.inc179.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.4:                                     ; preds = %for.inc179.3
  %arrayidx158.5 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 5
  %112 = ptrtoint ptr %arrayidx158.5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx158.5, align 4
  %cmp160.5 = icmp eq ptr %113, %95
  br i1 %cmp160.5, label %for.inc179.4.if.then161_crit_edge, label %for.inc179.5

for.inc179.4.if.then161_crit_edge:                ; preds = %for.inc179.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.5:                                     ; preds = %for.inc179.4
  %arrayidx158.6 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 6
  %114 = ptrtoint ptr %arrayidx158.6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx158.6, align 4
  %cmp160.6 = icmp eq ptr %115, %95
  br i1 %cmp160.6, label %for.inc179.5.if.then161_crit_edge, label %for.inc179.6

for.inc179.5.if.then161_crit_edge:                ; preds = %for.inc179.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.6:                                     ; preds = %for.inc179.5
  %arrayidx158.7 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 7
  %116 = ptrtoint ptr %arrayidx158.7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx158.7, align 4
  %cmp160.7 = icmp eq ptr %117, %95
  br i1 %cmp160.7, label %for.inc179.6.if.then161_crit_edge, label %for.inc179.7

for.inc179.6.if.then161_crit_edge:                ; preds = %for.inc179.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.7:                                     ; preds = %for.inc179.6
  %arrayidx158.8 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 8
  %118 = ptrtoint ptr %arrayidx158.8 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx158.8, align 4
  %cmp160.8 = icmp eq ptr %119, %95
  br i1 %cmp160.8, label %for.inc179.7.if.then161_crit_edge, label %for.inc179.8

for.inc179.7.if.then161_crit_edge:                ; preds = %for.inc179.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.8:                                     ; preds = %for.inc179.7
  %arrayidx158.9 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 9
  %120 = ptrtoint ptr %arrayidx158.9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx158.9, align 4
  %cmp160.9 = icmp eq ptr %121, %95
  br i1 %cmp160.9, label %for.inc179.8.if.then161_crit_edge, label %for.inc179.9

for.inc179.8.if.then161_crit_edge:                ; preds = %for.inc179.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.9:                                     ; preds = %for.inc179.8
  %arrayidx158.10 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 10
  %122 = ptrtoint ptr %arrayidx158.10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx158.10, align 4
  %cmp160.10 = icmp eq ptr %123, %95
  br i1 %cmp160.10, label %for.inc179.9.if.then161_crit_edge, label %for.inc179.10

for.inc179.9.if.then161_crit_edge:                ; preds = %for.inc179.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.10:                                    ; preds = %for.inc179.9
  %arrayidx158.11 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 11
  %124 = ptrtoint ptr %arrayidx158.11 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx158.11, align 4
  %cmp160.11 = icmp eq ptr %125, %95
  br i1 %cmp160.11, label %for.inc179.10.if.then161_crit_edge, label %for.inc179.11

for.inc179.10.if.then161_crit_edge:               ; preds = %for.inc179.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.11:                                    ; preds = %for.inc179.10
  %arrayidx158.12 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 12
  %126 = ptrtoint ptr %arrayidx158.12 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx158.12, align 4
  %cmp160.12 = icmp eq ptr %127, %95
  br i1 %cmp160.12, label %for.inc179.11.if.then161_crit_edge, label %for.inc179.12

for.inc179.11.if.then161_crit_edge:               ; preds = %for.inc179.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.12:                                    ; preds = %for.inc179.11
  %arrayidx158.13 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 13
  %128 = ptrtoint ptr %arrayidx158.13 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx158.13, align 4
  %cmp160.13 = icmp eq ptr %129, %95
  br i1 %cmp160.13, label %for.inc179.12.if.then161_crit_edge, label %for.inc179.13

for.inc179.12.if.then161_crit_edge:               ; preds = %for.inc179.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.13:                                    ; preds = %for.inc179.12
  %arrayidx158.14 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 14
  %130 = ptrtoint ptr %arrayidx158.14 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx158.14, align 4
  %cmp160.14 = icmp eq ptr %131, %95
  br i1 %cmp160.14, label %for.inc179.13.if.then161_crit_edge, label %for.inc179.14

for.inc179.13.if.then161_crit_edge:               ; preds = %for.inc179.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

for.inc179.14:                                    ; preds = %for.inc179.13
  %arrayidx158.15 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 15
  %132 = ptrtoint ptr %arrayidx158.15 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx158.15, align 4
  %cmp160.15 = icmp eq ptr %133, %95
  br i1 %cmp160.15, label %for.inc179.14.if.then161_crit_edge, label %for.inc179.14.cleanup383_crit_edge

for.inc179.14.cleanup383_crit_edge:               ; preds = %for.inc179.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

for.inc179.14.if.then161_crit_edge:               ; preds = %for.inc179.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then161

if.else183:                                       ; preds = %if.else120
  %bcmp503 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %kbuf, ptr noundef nonnull dereferenceable(7) @.str.49, i32 7) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp503)
  %cmp185 = icmp eq i32 %bcmp503, 0
  br i1 %cmp185, label %if.then186, label %if.else347

if.then186:                                       ; preds = %if.else183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %domain) #15
  %134 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %domain, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus) #15
  %135 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %bus, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devfn) #15
  %136 = ptrtoint ptr %devfn to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %devfn, align 4, !annotation !221
  %add.ptr187 = getelementptr inbounds i8, ptr %kbuf, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then201)) #15
          to label %do.end204 [label %if.then201], !srcloc !219

if.then201:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.51, ptr noundef %1) #15
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %if.then186
  %bcmp505 = call i32 @bcmp(ptr noundef dereferenceable(7) %add.ptr187, ptr noundef nonnull dereferenceable(7) @.str.52, i32 7) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp505)
  %tobool206.not = icmp eq i32 %bcmp505, 0
  br i1 %tobool206.not, label %if.then207, label %if.else210

if.then207:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #17
  %137 = load ptr, ptr @vga_default, align 4
  %call209 = call ptr @pci_dev_get(ptr noundef %137) #15
  br label %if.end256

if.else210:                                       ; preds = %do.end204
  %call211 = call fastcc i32 @vga_pci_str_to_vars(ptr noundef %add.ptr187, ptr noundef nonnull %domain, ptr noundef nonnull %bus, ptr noundef nonnull %devfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.else210.cleanup_crit_edge, label %if.end214

if.else210.cleanup_crit_edge:                     ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end214:                                        ; preds = %if.else210
  %138 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %domain, align 4
  %140 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bus, align 4
  %142 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %devfn, align 4
  %call215 = call ptr @pci_get_domain_bus_and_slot(i32 noundef %139, i32 noundef %141, i32 noundef %143) #15
  %tobool216.not = icmp eq ptr %call215, null
  br i1 %tobool216.not, label %do.body218, label %do.body237

do.body218:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then230)) #15
          to label %cleanup [label %if.then230], !srcloc !219

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #17
  %144 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %domain, align 4
  %146 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bus, align 4
  %shr = lshr i32 %143, 3
  %and231 = and i32 %shr, 31
  %and232 = and i32 %143, 7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.54, i32 noundef %145, i32 noundef %147, i32 noundef %and231, i32 noundef %and232) #15
  br label %cleanup

do.body237:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then249)) #15
          to label %if.end256 [label %if.then249], !srcloc !219

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #17
  %148 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %domain, align 4
  %150 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bus, align 4
  %shr250 = lshr i32 %143, 3
  %and251 = and i32 %shr250, 31
  %and252 = and i32 %143, 7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.56, ptr noundef %add.ptr187, i32 noundef %149, i32 noundef %151, i32 noundef %and251, i32 noundef %and252, ptr noundef nonnull %call215) #15
  br label %if.end256

if.end256:                                        ; preds = %if.then249, %do.body237, %if.then207
  %pdev.0 = phi ptr [ %call215, %if.then249 ], [ %call209, %if.then207 ], [ %call215, %do.body237 ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end256
  %vgadev.0.in.i = phi ptr [ @vga_list, %if.end256 ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %152 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.vgadev_find.exit_crit_edge, label %for.body.i

for.cond.i.vgadev_find.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vgadev_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %153 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i566 = icmp eq ptr %154, %pdev.0
  br i1 %cmp2.i566, label %for.body.i.vgadev_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.vgadev_find.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vgadev_find.exit

vgadev_find.exit:                                 ; preds = %for.body.i.vgadev_find.exit_crit_edge, %for.cond.i.vgadev_find.exit_crit_edge
  %retval.0.i567 = phi ptr [ %vgadev.0.i, %for.body.i.vgadev_find.exit_crit_edge ], [ null, %for.cond.i.vgadev_find.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then270)) #15
          to label %do.end273 [label %if.then270], !srcloc !219

if.then270:                                       ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.58, ptr noundef %retval.0.i567) #15
  br label %do.end273

do.end273:                                        ; preds = %if.then270, %vgadev_find.exit
  %cmp274 = icmp eq ptr %retval.0.i567, null
  br i1 %cmp274, label %if.then275, label %if.end295

if.then275:                                       ; preds = %do.end273
  %tobool276.not = icmp eq ptr %pdev.0, null
  br i1 %tobool276.not, label %if.then275.cleanup_crit_edge, label %do.body278

if.then275.cleanup_crit_edge:                     ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body278:                                       ; preds = %if.then275
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then290)) #15
          to label %do.end293 [label %if.then290], !srcloc !219

if.then290:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev.0, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.59) #15
  br label %do.end293

do.end293:                                        ; preds = %if.then290, %do.body278
  call void @pci_dev_put(ptr noundef nonnull %pdev.0) #15
  br label %cleanup

if.end295:                                        ; preds = %do.end273
  %target296 = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %155 = ptrtoint ptr %target296 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %pdev.0, ptr %target296, align 4
  %arrayidx301 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 0
  %156 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx301, align 4
  %cmp303 = icmp eq ptr %157, %pdev.0
  br i1 %cmp303, label %if.end295.if.end343_crit_edge, label %if.end305

if.end295.if.end343_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305:                                        ; preds = %if.end295
  %cmp309 = icmp eq ptr %157, null
  br i1 %cmp309, label %if.end305.if.then310_crit_edge, label %for.inc321

if.end305.if.then310_crit_edge:                   ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

if.then310:                                       ; preds = %if.end305.15.if.then310_crit_edge, %if.end305.14.if.then310_crit_edge, %if.end305.13.if.then310_crit_edge, %if.end305.12.if.then310_crit_edge, %if.end305.11.if.then310_crit_edge, %if.end305.10.if.then310_crit_edge, %if.end305.9.if.then310_crit_edge, %if.end305.8.if.then310_crit_edge, %if.end305.7.if.then310_crit_edge, %if.end305.6.if.then310_crit_edge, %if.end305.5.if.then310_crit_edge, %if.end305.4.if.then310_crit_edge, %if.end305.3.if.then310_crit_edge, %if.end305.2.if.then310_crit_edge, %if.end305.1.if.then310_crit_edge, %if.end305.if.then310_crit_edge
  %i.3609.lcssa620 = phi i32 [ 0, %if.end305.if.then310_crit_edge ], [ 1, %if.end305.1.if.then310_crit_edge ], [ 2, %if.end305.2.if.then310_crit_edge ], [ 3, %if.end305.3.if.then310_crit_edge ], [ 4, %if.end305.4.if.then310_crit_edge ], [ 5, %if.end305.5.if.then310_crit_edge ], [ 6, %if.end305.6.if.then310_crit_edge ], [ 7, %if.end305.7.if.then310_crit_edge ], [ 8, %if.end305.8.if.then310_crit_edge ], [ 9, %if.end305.9.if.then310_crit_edge ], [ 10, %if.end305.10.if.then310_crit_edge ], [ 11, %if.end305.11.if.then310_crit_edge ], [ 12, %if.end305.12.if.then310_crit_edge ], [ 13, %if.end305.13.if.then310_crit_edge ], [ 14, %if.end305.14.if.then310_crit_edge ], [ 15, %if.end305.15.if.then310_crit_edge ]
  %arrayidx301.lcssa618 = phi ptr [ %arrayidx301, %if.end305.if.then310_crit_edge ], [ %arrayidx301.1, %if.end305.1.if.then310_crit_edge ], [ %arrayidx301.2, %if.end305.2.if.then310_crit_edge ], [ %arrayidx301.3, %if.end305.3.if.then310_crit_edge ], [ %arrayidx301.4, %if.end305.4.if.then310_crit_edge ], [ %arrayidx301.5, %if.end305.5.if.then310_crit_edge ], [ %arrayidx301.6, %if.end305.6.if.then310_crit_edge ], [ %arrayidx301.7, %if.end305.7.if.then310_crit_edge ], [ %arrayidx301.8, %if.end305.8.if.then310_crit_edge ], [ %arrayidx301.9, %if.end305.9.if.then310_crit_edge ], [ %arrayidx301.10, %if.end305.10.if.then310_crit_edge ], [ %arrayidx301.11, %if.end305.11.if.then310_crit_edge ], [ %arrayidx301.12, %if.end305.12.if.then310_crit_edge ], [ %arrayidx301.13, %if.end305.13.if.then310_crit_edge ], [ %arrayidx301.14, %if.end305.14.if.then310_crit_edge ], [ %arrayidx301.15, %if.end305.15.if.then310_crit_edge ]
  %158 = ptrtoint ptr %arrayidx301.lcssa618 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %pdev.0, ptr %arrayidx301.lcssa618, align 4
  %io_cnt316 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.3609.lcssa620, i32 2
  %159 = ptrtoint ptr %io_cnt316 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %io_cnt316, align 4
  %mem_cnt319 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.3609.lcssa620, i32 1
  %160 = ptrtoint ptr %mem_cnt319 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %mem_cnt319, align 4
  br label %if.end343

for.inc321:                                       ; preds = %if.end305
  %arrayidx301.1 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 1
  %161 = ptrtoint ptr %arrayidx301.1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx301.1, align 4
  %cmp303.1 = icmp eq ptr %162, %pdev.0
  br i1 %cmp303.1, label %for.inc321.if.end343_crit_edge, label %if.end305.1

for.inc321.if.end343_crit_edge:                   ; preds = %for.inc321
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.1:                                      ; preds = %for.inc321
  %cmp309.1 = icmp eq ptr %162, null
  br i1 %cmp309.1, label %if.end305.1.if.then310_crit_edge, label %for.inc321.1

if.end305.1.if.then310_crit_edge:                 ; preds = %if.end305.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.1:                                     ; preds = %if.end305.1
  %arrayidx301.2 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 2
  %163 = ptrtoint ptr %arrayidx301.2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx301.2, align 4
  %cmp303.2 = icmp eq ptr %164, %pdev.0
  br i1 %cmp303.2, label %for.inc321.1.if.end343_crit_edge, label %if.end305.2

for.inc321.1.if.end343_crit_edge:                 ; preds = %for.inc321.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.2:                                      ; preds = %for.inc321.1
  %cmp309.2 = icmp eq ptr %164, null
  br i1 %cmp309.2, label %if.end305.2.if.then310_crit_edge, label %for.inc321.2

if.end305.2.if.then310_crit_edge:                 ; preds = %if.end305.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.2:                                     ; preds = %if.end305.2
  %arrayidx301.3 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 3
  %165 = ptrtoint ptr %arrayidx301.3 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx301.3, align 4
  %cmp303.3 = icmp eq ptr %166, %pdev.0
  br i1 %cmp303.3, label %for.inc321.2.if.end343_crit_edge, label %if.end305.3

for.inc321.2.if.end343_crit_edge:                 ; preds = %for.inc321.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.3:                                      ; preds = %for.inc321.2
  %cmp309.3 = icmp eq ptr %166, null
  br i1 %cmp309.3, label %if.end305.3.if.then310_crit_edge, label %for.inc321.3

if.end305.3.if.then310_crit_edge:                 ; preds = %if.end305.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.3:                                     ; preds = %if.end305.3
  %arrayidx301.4 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 4
  %167 = ptrtoint ptr %arrayidx301.4 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx301.4, align 4
  %cmp303.4 = icmp eq ptr %168, %pdev.0
  br i1 %cmp303.4, label %for.inc321.3.if.end343_crit_edge, label %if.end305.4

for.inc321.3.if.end343_crit_edge:                 ; preds = %for.inc321.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.4:                                      ; preds = %for.inc321.3
  %cmp309.4 = icmp eq ptr %168, null
  br i1 %cmp309.4, label %if.end305.4.if.then310_crit_edge, label %for.inc321.4

if.end305.4.if.then310_crit_edge:                 ; preds = %if.end305.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.4:                                     ; preds = %if.end305.4
  %arrayidx301.5 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 5
  %169 = ptrtoint ptr %arrayidx301.5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx301.5, align 4
  %cmp303.5 = icmp eq ptr %170, %pdev.0
  br i1 %cmp303.5, label %for.inc321.4.if.end343_crit_edge, label %if.end305.5

for.inc321.4.if.end343_crit_edge:                 ; preds = %for.inc321.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.5:                                      ; preds = %for.inc321.4
  %cmp309.5 = icmp eq ptr %170, null
  br i1 %cmp309.5, label %if.end305.5.if.then310_crit_edge, label %for.inc321.5

if.end305.5.if.then310_crit_edge:                 ; preds = %if.end305.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.5:                                     ; preds = %if.end305.5
  %arrayidx301.6 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 6
  %171 = ptrtoint ptr %arrayidx301.6 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx301.6, align 4
  %cmp303.6 = icmp eq ptr %172, %pdev.0
  br i1 %cmp303.6, label %for.inc321.5.if.end343_crit_edge, label %if.end305.6

for.inc321.5.if.end343_crit_edge:                 ; preds = %for.inc321.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.6:                                      ; preds = %for.inc321.5
  %cmp309.6 = icmp eq ptr %172, null
  br i1 %cmp309.6, label %if.end305.6.if.then310_crit_edge, label %for.inc321.6

if.end305.6.if.then310_crit_edge:                 ; preds = %if.end305.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.6:                                     ; preds = %if.end305.6
  %arrayidx301.7 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 7
  %173 = ptrtoint ptr %arrayidx301.7 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx301.7, align 4
  %cmp303.7 = icmp eq ptr %174, %pdev.0
  br i1 %cmp303.7, label %for.inc321.6.if.end343_crit_edge, label %if.end305.7

for.inc321.6.if.end343_crit_edge:                 ; preds = %for.inc321.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.7:                                      ; preds = %for.inc321.6
  %cmp309.7 = icmp eq ptr %174, null
  br i1 %cmp309.7, label %if.end305.7.if.then310_crit_edge, label %for.inc321.7

if.end305.7.if.then310_crit_edge:                 ; preds = %if.end305.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.7:                                     ; preds = %if.end305.7
  %arrayidx301.8 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 8
  %175 = ptrtoint ptr %arrayidx301.8 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx301.8, align 4
  %cmp303.8 = icmp eq ptr %176, %pdev.0
  br i1 %cmp303.8, label %for.inc321.7.if.end343_crit_edge, label %if.end305.8

for.inc321.7.if.end343_crit_edge:                 ; preds = %for.inc321.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.8:                                      ; preds = %for.inc321.7
  %cmp309.8 = icmp eq ptr %176, null
  br i1 %cmp309.8, label %if.end305.8.if.then310_crit_edge, label %for.inc321.8

if.end305.8.if.then310_crit_edge:                 ; preds = %if.end305.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.8:                                     ; preds = %if.end305.8
  %arrayidx301.9 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 9
  %177 = ptrtoint ptr %arrayidx301.9 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx301.9, align 4
  %cmp303.9 = icmp eq ptr %178, %pdev.0
  br i1 %cmp303.9, label %for.inc321.8.if.end343_crit_edge, label %if.end305.9

for.inc321.8.if.end343_crit_edge:                 ; preds = %for.inc321.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.9:                                      ; preds = %for.inc321.8
  %cmp309.9 = icmp eq ptr %178, null
  br i1 %cmp309.9, label %if.end305.9.if.then310_crit_edge, label %for.inc321.9

if.end305.9.if.then310_crit_edge:                 ; preds = %if.end305.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.9:                                     ; preds = %if.end305.9
  %arrayidx301.10 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 10
  %179 = ptrtoint ptr %arrayidx301.10 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx301.10, align 4
  %cmp303.10 = icmp eq ptr %180, %pdev.0
  br i1 %cmp303.10, label %for.inc321.9.if.end343_crit_edge, label %if.end305.10

for.inc321.9.if.end343_crit_edge:                 ; preds = %for.inc321.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.10:                                     ; preds = %for.inc321.9
  %cmp309.10 = icmp eq ptr %180, null
  br i1 %cmp309.10, label %if.end305.10.if.then310_crit_edge, label %for.inc321.10

if.end305.10.if.then310_crit_edge:                ; preds = %if.end305.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.10:                                    ; preds = %if.end305.10
  %arrayidx301.11 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 11
  %181 = ptrtoint ptr %arrayidx301.11 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx301.11, align 4
  %cmp303.11 = icmp eq ptr %182, %pdev.0
  br i1 %cmp303.11, label %for.inc321.10.if.end343_crit_edge, label %if.end305.11

for.inc321.10.if.end343_crit_edge:                ; preds = %for.inc321.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.11:                                     ; preds = %for.inc321.10
  %cmp309.11 = icmp eq ptr %182, null
  br i1 %cmp309.11, label %if.end305.11.if.then310_crit_edge, label %for.inc321.11

if.end305.11.if.then310_crit_edge:                ; preds = %if.end305.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.11:                                    ; preds = %if.end305.11
  %arrayidx301.12 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 12
  %183 = ptrtoint ptr %arrayidx301.12 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx301.12, align 4
  %cmp303.12 = icmp eq ptr %184, %pdev.0
  br i1 %cmp303.12, label %for.inc321.11.if.end343_crit_edge, label %if.end305.12

for.inc321.11.if.end343_crit_edge:                ; preds = %for.inc321.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.12:                                     ; preds = %for.inc321.11
  %cmp309.12 = icmp eq ptr %184, null
  br i1 %cmp309.12, label %if.end305.12.if.then310_crit_edge, label %for.inc321.12

if.end305.12.if.then310_crit_edge:                ; preds = %if.end305.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.12:                                    ; preds = %if.end305.12
  %arrayidx301.13 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 13
  %185 = ptrtoint ptr %arrayidx301.13 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx301.13, align 4
  %cmp303.13 = icmp eq ptr %186, %pdev.0
  br i1 %cmp303.13, label %for.inc321.12.if.end343_crit_edge, label %if.end305.13

for.inc321.12.if.end343_crit_edge:                ; preds = %for.inc321.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.13:                                     ; preds = %for.inc321.12
  %cmp309.13 = icmp eq ptr %186, null
  br i1 %cmp309.13, label %if.end305.13.if.then310_crit_edge, label %for.inc321.13

if.end305.13.if.then310_crit_edge:                ; preds = %if.end305.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.13:                                    ; preds = %if.end305.13
  %arrayidx301.14 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 14
  %187 = ptrtoint ptr %arrayidx301.14 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx301.14, align 4
  %cmp303.14 = icmp eq ptr %188, %pdev.0
  br i1 %cmp303.14, label %for.inc321.13.if.end343_crit_edge, label %if.end305.14

for.inc321.13.if.end343_crit_edge:                ; preds = %for.inc321.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.14:                                     ; preds = %for.inc321.13
  %cmp309.14 = icmp eq ptr %188, null
  br i1 %cmp309.14, label %if.end305.14.if.then310_crit_edge, label %for.inc321.14

if.end305.14.if.then310_crit_edge:                ; preds = %if.end305.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

for.inc321.14:                                    ; preds = %if.end305.14
  %arrayidx301.15 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 15
  %189 = ptrtoint ptr %arrayidx301.15 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx301.15, align 4
  %cmp303.15 = icmp eq ptr %190, %pdev.0
  br i1 %cmp303.15, label %for.inc321.14.if.end343_crit_edge, label %if.end305.15

for.inc321.14.if.end343_crit_edge:                ; preds = %for.inc321.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end343

if.end305.15:                                     ; preds = %for.inc321.14
  %cmp309.15 = icmp eq ptr %190, null
  br i1 %cmp309.15, label %if.end305.15.if.then310_crit_edge, label %do.body326

if.end305.15.if.then310_crit_edge:                ; preds = %if.end305.15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then310

do.body326:                                       ; preds = %if.end305.15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then338)) #15
          to label %do.end342 [label %if.then338], !srcloc !219

if.then338:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #17
  %dev339 = getelementptr inbounds %struct.pci_dev, ptr %pdev.0, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug250, ptr noundef %dev339, ptr noundef nonnull @.str.60, i32 noundef 16) #15
  br label %do.end342

do.end342:                                        ; preds = %if.then338, %do.body326
  call void @pci_dev_put(ptr noundef %pdev.0) #15
  br label %cleanup

if.end343:                                        ; preds = %for.inc321.14.if.end343_crit_edge, %for.inc321.13.if.end343_crit_edge, %for.inc321.12.if.end343_crit_edge, %for.inc321.11.if.end343_crit_edge, %for.inc321.10.if.end343_crit_edge, %for.inc321.9.if.end343_crit_edge, %for.inc321.8.if.end343_crit_edge, %for.inc321.7.if.end343_crit_edge, %for.inc321.6.if.end343_crit_edge, %for.inc321.5.if.end343_crit_edge, %for.inc321.4.if.end343_crit_edge, %for.inc321.3.if.end343_crit_edge, %for.inc321.2.if.end343_crit_edge, %for.inc321.1.if.end343_crit_edge, %for.inc321.if.end343_crit_edge, %if.then310, %if.end295.if.end343_crit_edge
  call void @pci_dev_put(ptr noundef %pdev.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end343, %do.end342, %do.end293, %if.then275.cleanup_crit_edge, %if.then230, %do.body218, %if.else210.cleanup_crit_edge
  %ret_val.0 = phi i32 [ -12, %do.end342 ], [ %count, %if.end343 ], [ -71, %if.else210.cleanup_crit_edge ], [ -19, %if.then230 ], [ -19, %do.end293 ], [ -19, %if.then275.cleanup_crit_edge ], [ -19, %do.body218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devfn) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain) #15
  br label %cleanup383

if.else347:                                       ; preds = %if.else183
  %bcmp504 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %kbuf, ptr noundef nonnull dereferenceable(8) @.str.61, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp504)
  %cmp349 = icmp eq i32 %bcmp504, 0
  br i1 %cmp349, label %if.then350, label %if.else347.cleanup383_crit_edge

if.else347.cleanup383_crit_edge:                  ; preds = %if.else347
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.then350:                                       ; preds = %if.else347
  %add.ptr351 = getelementptr inbounds i8, ptr %kbuf, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_write, %if.then365)) #15
          to label %do.end368 [label %if.then365], !srcloc !219

if.then365:                                       ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_write.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.63, ptr noundef %1) #15
  br label %do.end368

do.end368:                                        ; preds = %if.then365, %if.then350
  %call369 = call fastcc i32 @vga_str_to_iostate(ptr noundef %add.ptr351, ptr noundef nonnull %io_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %do.end368.cleanup383_crit_edge, label %if.end372

do.end368.cleanup383_crit_edge:                   ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end372:                                        ; preds = %do.end368
  %target373 = getelementptr inbounds %struct.vga_arb_private, ptr %1, i32 0, i32 1
  %191 = ptrtoint ptr %target373 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %target373, align 4
  %cmp375 = icmp eq ptr %192, null
  br i1 %cmp375, label %if.end372.cleanup383_crit_edge, label %if.end377

if.end372.cleanup383_crit_edge:                   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup383

if.end377:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #17
  %193 = ptrtoint ptr %io_state to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %io_state, align 4
  call fastcc void @__vga_set_legacy_decoding(ptr noundef nonnull %192, i32 noundef %194, i1 noundef zeroext true)
  br label %cleanup383

cleanup383:                                       ; preds = %if.end377, %if.end372.cleanup383_crit_edge, %do.end368.cleanup383_crit_edge, %if.else347.cleanup383_crit_edge, %cleanup, %for.inc179.14.cleanup383_crit_edge, %if.then172, %if.end169.cleanup383_crit_edge, %if.end150.cleanup383_crit_edge, %if.end145.cleanup383_crit_edge, %if.else7.i561.cleanup383_crit_edge, %if.then116, %if.end113.cleanup383_crit_edge, %land.lhs.true104.cleanup383_crit_edge, %land.lhs.true.cleanup383_crit_edge, %for.body81.preheader.cleanup383_crit_edge, %if.end73.cleanup383_crit_edge, %if.else7.i546.cleanup383_crit_edge, %for.inc.14.cleanup383_crit_edge, %if.then37, %if.end19.cleanup383_crit_edge, %if.else7.i.cleanup383_crit_edge, %do.end.cleanup383_crit_edge, %if.then11.i.i, %entry.cleanup383_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup383_crit_edge ], [ -71, %if.else347.cleanup383_crit_edge ], [ %ret_val.0, %cleanup ], [ %count, %if.end377 ], [ -19, %if.end19.cleanup383_crit_edge ], [ %count, %if.then37 ], [ -19, %if.end73.cleanup383_crit_edge ], [ -22, %for.body81.preheader.cleanup383_crit_edge ], [ -22, %land.lhs.true.cleanup383_crit_edge ], [ -22, %land.lhs.true104.cleanup383_crit_edge ], [ %count, %if.then116 ], [ %count, %if.end113.cleanup383_crit_edge ], [ -19, %if.end145.cleanup383_crit_edge ], [ %count, %if.end169.cleanup383_crit_edge ], [ %count, %if.then172 ], [ -16, %if.end150.cleanup383_crit_edge ], [ -71, %do.end368.cleanup383_crit_edge ], [ -19, %if.end372.cleanup383_crit_edge ], [ -14, %if.then11.i.i ], [ -71, %if.else7.i.cleanup383_crit_edge ], [ -71, %if.else7.i546.cleanup383_crit_edge ], [ -71, %if.else7.i561.cleanup383_crit_edge ], [ %count, %for.inc.14.cleanup383_crit_edge ], [ %count, %for.inc179.14.cleanup383_crit_edge ], [ -71, %do.end.cleanup383_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %kbuf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_state) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_fpoll(ptr noundef %file, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_fpoll.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_fpoll, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_fpoll.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.65) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

do.end.poll_wait.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %do.end
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %1(ptr noundef %file, ptr noundef nonnull @vga_wait_queue, ptr noundef nonnull %wait) #15
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %do.end.poll_wait.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_open, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_open.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.67) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #20
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body6:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.vga_arb_private, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @vga_arb_open.__key, i16 noundef signext 3) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_user_lock) #15
  %2 = load ptr, ptr @vga_user_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vga_user_list, ptr noundef %2) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.body6.list_add.exit_crit_edge

do.body6.list_add.exit_crit_edge:                 ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vga_user_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @vga_user_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body6.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_user_lock, i32 noundef %call15) #15
  %6 = load ptr, ptr @vga_default, align 4
  %target = getelementptr inbounds %struct.vga_arb_private, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %target, align 8
  %cards = getelementptr inbounds %struct.vga_arb_private, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %cards to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %cards, align 4
  %io_cnt = getelementptr inbounds %struct.vga_arb_private, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %io_cnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %io_cnt, align 4
  %mem_cnt = getelementptr inbounds %struct.vga_arb_private, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %mem_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mem_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vga_arb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_release.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_release, %if.then)) #15
          to label %do.body4 [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vga_arb_release.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.70) #15
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_user_lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_del.exit_crit_edge

do.body4.list_del.exit_crit_edge:                 ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body4.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_del.exit
  %i.0120 = phi i32 [ 0, %list_del.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0120
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp14 = icmp eq ptr %11, null
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %do.body18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body18:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vga_arb_release.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_release, %if.then30)) #15
          to label %do.end34 [label %if.then30], !srcloc !219

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %io_cnt = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0120, i32 2
  %14 = ptrtoint ptr %io_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_cnt, align 4
  %mem_cnt = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0120, i32 1
  %16 = ptrtoint ptr %mem_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vga_arb_release.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %15, i32 noundef %17) #15
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body18
  %io_cnt35 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0120, i32 2
  %18 = ptrtoint ptr %io_cnt35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_cnt35, align 4
  %dec116 = add i32 %19, -1
  store i32 %dec116, ptr %io_cnt35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool36.not117 = icmp eq i32 %19, 0
  br i1 %tobool36.not117, label %do.end34.while.cond38.preheader_crit_edge, label %do.end34.while.body_crit_edge

do.end34.while.body_crit_edge:                    ; preds = %do.end34
  br label %while.body

do.end34.while.cond38.preheader_crit_edge:        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond38.preheader

while.cond38.preheader:                           ; preds = %vga_put.exit.while.cond38.preheader_crit_edge, %do.end34.while.cond38.preheader_crit_edge
  %mem_cnt39 = getelementptr %struct.vga_arb_private, ptr %1, i32 0, i32 2, i32 %i.0120, i32 1
  %20 = ptrtoint ptr %mem_cnt39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_cnt39, align 4
  %dec40118 = add i32 %21, -1
  store i32 %dec40118, ptr %mem_cnt39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool41.not119 = icmp eq i32 %21, 0
  br i1 %tobool41.not119, label %while.cond38.preheader.for.inc_crit_edge, label %while.cond38.preheader.while.body42_crit_edge

while.cond38.preheader.while.body42_crit_edge:    ; preds = %while.cond38.preheader
  br label %while.body42

while.cond38.preheader.for.inc_crit_edge:         ; preds = %while.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

while.body:                                       ; preds = %vga_put.exit.while.body_crit_edge, %do.end34.while.body_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %23, null
  br i1 %cmp.i, label %if.end.i, label %while.body.do.body4.i_crit_edge

while.body.do.body4.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4.i

if.end.i:                                         ; preds = %while.body
  %24 = load ptr, ptr @vga_default, align 4
  %cmp1.i = icmp eq ptr %24, null
  br i1 %cmp1.i, label %if.end.i.vga_put.exit_crit_edge, label %if.end.i.do.body4.i_crit_edge

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4.i

if.end.i.vga_put.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_put.exit

do.body4.i:                                       ; preds = %if.end.i.do.body4.i_crit_edge, %while.body.do.body4.i_crit_edge
  %pdev.addr.021.i = phi ptr [ %24, %if.end.i.do.body4.i_crit_edge ], [ %23, %while.body.do.body4.i_crit_edge ]
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.body4.i
  %vgadev.0.in.i.i = phi ptr [ @vga_list, %do.body4.i ], [ %vgadev.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %25 = ptrtoint ptr %vgadev.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %vgadev.0.i.i = load ptr, ptr %vgadev.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vgadev.0.i.i, @vga_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.bail.i_crit_edge, label %for.body.i.i

for.cond.i.i.bail.i_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pdev1.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %27, %pdev.addr.021.i
  br i1 %cmp2.i.i, label %vgadev_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

vgadev_find.exit.i:                               ; preds = %for.body.i.i
  %cmp11.i = icmp eq ptr %vgadev.0.i.i, null
  br i1 %cmp11.i, label %vgadev_find.exit.i.bail.i_crit_edge, label %if.end14.i

vgadev_find.exit.i.bail.i_crit_edge:              ; preds = %vgadev_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i

if.end14.i:                                       ; preds = %vgadev_find.exit.i
  %locks.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %locks.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vga_put.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_release, %if.then.i)) #15
          to label %land.lhs.true28.i [label %if.then.i], !srcloc !219

if.then.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.addr.021.i, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vga_put.__UNIQUE_ID_ddebug238, ptr noundef %dev1.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #15
  br label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %if.then.i, %if.end14.i
  %io_lock_cnt.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %io_lock_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_lock_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29.not.i = icmp eq i32 %31, 0
  br i1 %cmp29.not.i, label %land.lhs.true28.i.if.then44.i_crit_edge, label %if.end41.i

land.lhs.true28.i.if.then44.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44.i

if.end41.i:                                       ; preds = %land.lhs.true28.i
  %dec32.i = add i32 %31, -1
  %32 = ptrtoint ptr %io_lock_cnt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec32.i, ptr %io_lock_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec32.i)
  %cmp43.i = icmp eq i32 %dec32.i, 0
  br i1 %cmp43.i, label %if.end41.i.if.then44.i_crit_edge, label %if.end41.i.if.end47.i_crit_edge

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

if.end41.i.if.then44.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.end41.i.if.then44.i_crit_edge, %land.lhs.true28.i.if.then44.i_crit_edge
  %33 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %locks.i, align 4
  %and46.i = and i32 %34, -2
  store i32 %and46.i, ptr %locks.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end47.i_crit_edge
  %mem_lock_cnt48.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %mem_lock_cnt48.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mem_lock_cnt48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp49.i = icmp eq i32 %36, 0
  br i1 %cmp49.i, label %if.then50.i, label %if.end47.i.if.end53.i_crit_edge

if.end47.i.if.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %locks.i, align 4
  %and52.i = and i32 %38, -3
  store i32 %and52.i, ptr %locks.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end53.i_crit_edge
  %39 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %locks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %40)
  %cmp55.not.i = icmp eq i32 %29, %40
  br i1 %cmp55.not.i, label %if.end53.i.bail.i_crit_edge, label %if.then56.i

if.end53.i.bail.i_crit_edge:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %bail.i

bail.i:                                           ; preds = %if.then56.i, %if.end53.i.bail.i_crit_edge, %vgadev_find.exit.i.bail.i_crit_edge, %for.cond.i.i.bail.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7.i) #15
  br label %vga_put.exit

vga_put.exit:                                     ; preds = %bail.i, %if.end.i.vga_put.exit_crit_edge
  %41 = ptrtoint ptr %io_cnt35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_cnt35, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %io_cnt35, align 4
  %tobool36.not = icmp eq i32 %42, 0
  br i1 %tobool36.not, label %vga_put.exit.while.cond38.preheader_crit_edge, label %vga_put.exit.while.body_crit_edge

vga_put.exit.while.body_crit_edge:                ; preds = %vga_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

vga_put.exit.while.cond38.preheader_crit_edge:    ; preds = %vga_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond38.preheader

while.body42:                                     ; preds = %vga_put.exit76.while.body42_crit_edge, %while.cond38.preheader.while.body42_crit_edge
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %cmp.i59 = icmp eq ptr %44, null
  br i1 %cmp.i59, label %if.end.i61, label %while.body42.do.body4.i64_crit_edge

while.body42.do.body4.i64_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4.i64

if.end.i61:                                       ; preds = %while.body42
  %45 = load ptr, ptr @vga_default, align 4
  %cmp1.i60 = icmp eq ptr %45, null
  br i1 %cmp1.i60, label %if.end.i61.vga_put.exit76_crit_edge, label %if.end.i61.do.body4.i64_crit_edge

if.end.i61.do.body4.i64_crit_edge:                ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4.i64

if.end.i61.vga_put.exit76_crit_edge:              ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_put.exit76

do.body4.i64:                                     ; preds = %if.end.i61.do.body4.i64_crit_edge, %while.body42.do.body4.i64_crit_edge
  %pdev.addr.021.i62 = phi ptr [ %45, %if.end.i61.do.body4.i64_crit_edge ], [ %44, %while.body42.do.body4.i64_crit_edge ]
  %call7.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i.i68

for.cond.i.i68:                                   ; preds = %for.body.i.i71.for.cond.i.i68_crit_edge, %do.body4.i64
  %vgadev.0.in.i.i65 = phi ptr [ @vga_list, %do.body4.i64 ], [ %vgadev.0.i.i66, %for.body.i.i71.for.cond.i.i68_crit_edge ]
  %46 = ptrtoint ptr %vgadev.0.in.i.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %vgadev.0.i.i66 = load ptr, ptr %vgadev.0.in.i.i65, align 4
  %cmp.not.i.i67 = icmp eq ptr %vgadev.0.i.i66, @vga_list
  br i1 %cmp.not.i.i67, label %for.cond.i.i68.bail.i75_crit_edge, label %for.body.i.i71

for.cond.i.i68.bail.i75_crit_edge:                ; preds = %for.cond.i.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i75

for.body.i.i71:                                   ; preds = %for.cond.i.i68
  %pdev1.i.i69 = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i66, i32 0, i32 1
  %47 = ptrtoint ptr %pdev1.i.i69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev1.i.i69, align 4
  %cmp2.i.i70 = icmp eq ptr %48, %pdev.addr.021.i62
  br i1 %cmp2.i.i70, label %vgadev_find.exit.i73, label %for.body.i.i71.for.cond.i.i68_crit_edge

for.body.i.i71.for.cond.i.i68_crit_edge:          ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i68

vgadev_find.exit.i73:                             ; preds = %for.body.i.i71
  %cmp11.i72 = icmp eq ptr %vgadev.0.i.i66, null
  br i1 %cmp11.i72, label %vgadev_find.exit.i73.bail.i75_crit_edge, label %if.end14.i74

vgadev_find.exit.i73.bail.i75_crit_edge:          ; preds = %vgadev_find.exit.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i75

if.end14.i74:                                     ; preds = %vgadev_find.exit.i73
  %locks.i78 = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i66, i32 0, i32 4
  %49 = ptrtoint ptr %locks.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %locks.i78, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vga_put.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vga_arb_release, %if.then.i80)) #15
          to label %land.lhs.true36.i94 [label %if.then.i80], !srcloc !219

if.then.i80:                                      ; preds = %if.end14.i74
  call void @__sanitizer_cov_trace_pc() #17
  %dev1.i79 = getelementptr inbounds %struct.pci_dev, ptr %pdev.addr.021.i62, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__vga_put.__UNIQUE_ID_ddebug238, ptr noundef %dev1.i79, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #15
  br label %land.lhs.true36.i94

land.lhs.true36.i94:                              ; preds = %if.then.i80, %if.end14.i74
  %mem_lock_cnt.i92 = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i66, i32 0, i32 6
  %51 = ptrtoint ptr %mem_lock_cnt.i92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mem_lock_cnt.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp37.not.i93 = icmp eq i32 %52, 0
  br i1 %cmp37.not.i93, label %land.lhs.true36.i94.if.end41.i99_crit_edge, label %if.then38.i96

land.lhs.true36.i94.if.end41.i99_crit_edge:       ; preds = %land.lhs.true36.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i99

if.then38.i96:                                    ; preds = %land.lhs.true36.i94
  call void @__sanitizer_cov_trace_pc() #17
  %dec40.i95 = add i32 %52, -1
  %53 = ptrtoint ptr %mem_lock_cnt.i92 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %dec40.i95, ptr %mem_lock_cnt.i92, align 4
  br label %if.end41.i99

if.end41.i99:                                     ; preds = %if.then38.i96, %land.lhs.true36.i94.if.end41.i99_crit_edge
  %io_lock_cnt42.i97 = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i66, i32 0, i32 5
  %54 = ptrtoint ptr %io_lock_cnt42.i97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_lock_cnt42.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp43.i98 = icmp eq i32 %55, 0
  br i1 %cmp43.i98, label %if.then44.i101, label %if.end41.i99.if.end47.i104_crit_edge

if.end41.i99.if.end47.i104_crit_edge:             ; preds = %if.end41.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i104

if.then44.i101:                                   ; preds = %if.end41.i99
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %locks.i78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %locks.i78, align 4
  %and46.i100 = and i32 %57, -2
  store i32 %and46.i100, ptr %locks.i78, align 4
  br label %if.end47.i104

if.end47.i104:                                    ; preds = %if.then44.i101, %if.end41.i99.if.end47.i104_crit_edge
  %58 = ptrtoint ptr %mem_lock_cnt.i92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mem_lock_cnt.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp49.i103 = icmp eq i32 %59, 0
  br i1 %cmp49.i103, label %if.then50.i106, label %if.end47.i104.if.end53.i108_crit_edge

if.end47.i104.if.end53.i108_crit_edge:            ; preds = %if.end47.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i108

if.then50.i106:                                   ; preds = %if.end47.i104
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %locks.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %locks.i78, align 4
  %and52.i105 = and i32 %61, -3
  store i32 %and52.i105, ptr %locks.i78, align 4
  br label %if.end53.i108

if.end53.i108:                                    ; preds = %if.then50.i106, %if.end47.i104.if.end53.i108_crit_edge
  %62 = ptrtoint ptr %locks.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %locks.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %63)
  %cmp55.not.i107 = icmp eq i32 %50, %63
  br i1 %cmp55.not.i107, label %if.end53.i108.bail.i75_crit_edge, label %if.then56.i109

if.end53.i108.bail.i75_crit_edge:                 ; preds = %if.end53.i108
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail.i75

if.then56.i109:                                   ; preds = %if.end53.i108
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %bail.i75

bail.i75:                                         ; preds = %if.then56.i109, %if.end53.i108.bail.i75_crit_edge, %vgadev_find.exit.i73.bail.i75_crit_edge, %for.cond.i.i68.bail.i75_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7.i63) #15
  br label %vga_put.exit76

vga_put.exit76:                                   ; preds = %bail.i75, %if.end.i61.vga_put.exit76_crit_edge
  %64 = ptrtoint ptr %mem_cnt39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mem_cnt39, align 4
  %dec40 = add i32 %65, -1
  store i32 %dec40, ptr %mem_cnt39, align 4
  %tobool41.not = icmp eq i32 %65, 0
  br i1 %tobool41.not, label %vga_put.exit76.for.inc_crit_edge, label %vga_put.exit76.while.body42_crit_edge

vga_put.exit76.while.body42_crit_edge:            ; preds = %vga_put.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body42

vga_put.exit76.for.inc_crit_edge:                 ; preds = %vga_put.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %vga_put.exit76.for.inc_crit_edge, %while.cond38.preheader.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_user_lock, i32 noundef %call7) #15
  tail call void @kfree(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @vga_str_to_iostate(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %io_state) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.13, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.10, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.return.sink.split_crit_edge, label %if.else

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.11, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.return.sink.split_crit_edge, label %if.else7

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.12, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else7.return.sink.split_crit_edge, label %if.else7.return_crit_edge

if.else7.return_crit_edge:                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.else7.return.sink.split_crit_edge:             ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else7.return.sink.split_crit_edge, %if.else.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.return.sink.split_crit_edge ], [ 3, %if.else7.return.sink.split_crit_edge ], [ 3, %if.else.return.sink.split_crit_edge ], [ 3, %if.end.return.sink.split_crit_edge ]
  %0 = ptrtoint ptr %io_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %io_state, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else7.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else7.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vga_tryget(ptr noundef readnone %pdev, i32 noundef %rsrc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1.i = load i1, ptr @vga_arbiter_used, align 1
  br i1 %.b1.i, label %entry.vga_check_first_use.exit_crit_edge, label %do.body1.i.i

entry.vga_check_first_use.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_check_first_use.exit

do.body1.i.i:                                     ; preds = %entry
  store i1 true, ptr @vga_arbiter_used, align 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  %vgadev.031.i.i = load ptr, ptr @vga_list, align 4
  %cmp6.not32.i.i = icmp eq ptr %vgadev.031.i.i, @vga_list
  br i1 %cmp6.not32.i.i, label %do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, label %do.body1.i.i.for.body.i.i_crit_edge

do.body1.i.i.for.body.i.i_crit_edge:              ; preds = %do.body1.i.i
  br label %for.body.i.i

do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_notify_clients.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body1.i.i.for.body.i.i_crit_edge
  %vgadev.033.i.i = phi ptr [ %vgadev.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %vgadev.031.i.i, %do.body1.i.i.for.body.i.i_crit_edge ]
  %set_decode.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i.i, i32 0, i32 10
  %0 = ptrtoint ptr %set_decode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_decode.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %1, null
  br i1 %tobool12.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %2 = load i32, ptr @vga_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp8.i.i = icmp slt i32 %2, 2
  %pdev.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 4
  %call16.i.i = tail call i32 %1(ptr noundef %4, i1 noundef zeroext %cmp8.i.i) #15
  tail call fastcc void @vga_update_device_decodes(ptr noundef %vgadev.033.i.i, i32 noundef %call16.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %5 = ptrtoint ptr %vgadev.033.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %vgadev.0.i.i = load ptr, ptr %vgadev.033.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %vgadev.0.i.i, @vga_list
  br i1 %cmp6.not.i.i, label %for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vga_arbiter_notify_clients.exit.i

vga_arbiter_notify_clients.exit.i:                ; preds = %for.inc.i.i.vga_arbiter_notify_clients.exit.i_crit_edge, %do.body1.i.i.vga_arbiter_notify_clients.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i.i) #15
  br label %vga_check_first_use.exit

vga_check_first_use.exit:                         ; preds = %vga_arbiter_notify_clients.exit.i, %entry.vga_check_first_use.exit_crit_edge
  %cmp = icmp eq ptr %pdev, null
  br i1 %cmp, label %if.end, label %vga_check_first_use.exit.do.body4_crit_edge

vga_check_first_use.exit.do.body4_crit_edge:      ; preds = %vga_check_first_use.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.end:                                           ; preds = %vga_check_first_use.exit
  %6 = load ptr, ptr @vga_default, align 4
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.do.body4_crit_edge

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body4:                                         ; preds = %if.end.do.body4_crit_edge, %vga_check_first_use.exit.do.body4_crit_edge
  %pdev.addr.025 = phi ptr [ %6, %if.end.do.body4_crit_edge ], [ %pdev, %vga_check_first_use.exit.do.body4_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body4
  %vgadev.0.in.i = phi ptr [ @vga_list, %do.body4 ], [ %vgadev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %vgadev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %vgadev.0.i = load ptr, ptr %vgadev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp.not.i, label %for.cond.i.bail_crit_edge, label %for.body.i

for.cond.i.bail_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

for.body.i:                                       ; preds = %for.cond.i
  %pdev1.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 4
  %cmp2.i = icmp eq ptr %9, %pdev.addr.025
  br i1 %cmp2.i, label %vgadev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

vgadev_find.exit:                                 ; preds = %for.body.i
  %cmp11 = icmp eq ptr %vgadev.0.i, null
  br i1 %cmp11, label %vgadev_find.exit.bail_crit_edge, label %if.end14

vgadev_find.exit.bail_crit_edge:                  ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bail

if.end14:                                         ; preds = %vgadev_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call fastcc ptr @__vga_tryget(ptr noundef nonnull %vgadev.0.i, i32 noundef %rsrc)
  %tobool.not = icmp eq ptr %call15, null
  %spec.select = select i1 %tobool.not, i32 0, i32 -16
  br label %bail

bail:                                             ; preds = %if.end14, %vgadev_find.exit.bail_crit_edge, %for.cond.i.bail_crit_edge
  %rc.0 = phi i32 [ -19, %vgadev_find.exit.bail_crit_edge ], [ %spec.select, %if.end14 ], [ -19, %for.cond.i.bail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %bail, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bail ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vga_pci_str_to_vars(ptr nocapture noundef readonly %buf, ptr noundef %domain, ptr noundef %bus, ptr nocapture noundef writeonly %devfn) unnamed_addr #12 align 64 {
entry:
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #15
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slot, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func) #15
  %1 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %func, align 4, !annotation !221
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.64, ptr noundef %domain, ptr noundef %bus, ptr noundef nonnull %slot, ptr noundef nonnull %func)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  %and = shl i32 %3, 3
  %shl = and i32 %and, 248
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %func, align 4
  %and1 = and i32 %5, 7
  %or = or i32 %shl, %and1
  %6 = ptrtoint ptr %devfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %devfn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_notify.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pci_notify, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_notify.__UNIQUE_ID_ddebug256, ptr noundef %data, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.72) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %action, label %do.end.if.end15_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then8
  ]

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then4:                                         ; preds = %do.end
  %call5 = tail call fastcc zeroext i1 @vga_arbiter_add_pci_device(ptr noundef %add.ptr)
  br i1 %call5, label %if.then4.if.then14_crit_edge, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then4.if.then14_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14

if.then8:                                         ; preds = %do.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then8
  %vgadev.0.in.i.i = phi ptr [ @vga_list, %if.then8 ], [ %vgadev.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %1 = ptrtoint ptr %vgadev.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %vgadev.0.i.i = load ptr, ptr %vgadev.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vgadev.0.i.i, @vga_list
  br i1 %cmp.not.i.i, label %if.end12, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pdev1.i.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %3, %add.ptr
  br i1 %cmp2.i.i, label %vgadev_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

vgadev_find.exit.i:                               ; preds = %for.body.i.i
  %cmp6.i = icmp eq ptr %vgadev.0.i.i, null
  br i1 %cmp6.i, label %if.end15.critedge, label %if.end.i

if.end.i:                                         ; preds = %vgadev_find.exit.i
  %4 = load ptr, ptr @vga_default, align 4
  %cmp8.i = icmp ne ptr %4, %add.ptr
  %cmp.i.i = icmp eq ptr %4, null
  %or.cond.i = or i1 %cmp8.i, %cmp.i.i
  br i1 %or.cond.i, label %if.end.i.if.end11.i_crit_edge, label %if.end.i.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_dev_put(ptr noundef nonnull %add.ptr) #15
  %call.i.i = tail call ptr @pci_dev_get(ptr noundef null) #15
  store ptr %call.i.i, ptr @vga_default, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i, %if.end.i.if.end11.i_crit_edge
  %decodes.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.0.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %decodes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %decodes.i, align 4
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i.if.end13.i_crit_edge, label %if.then12.i

if.end11.i.if.end13.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = load i32, ptr @vga_decode_count, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr @vga_decode_count, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end11.i.if.end13.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %vgadev.0.i.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.list_del.exit.i_crit_edge

if.end13.i.list_del.exit.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %vgadev.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %vgadev.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vgadev.0.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end13.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %vgadev.0.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %vgadev.0.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vgadev.0.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = load i32, ptr @vga_count, align 4
  %dec14.i = add i32 %16, -1
  store i32 %dec14.i, ptr @vga_count, align 4
  tail call void @__wake_up(ptr noundef nonnull @vga_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i) #15
  tail call void @kfree(ptr noundef nonnull %vgadev.0.i.i) #15
  br label %if.then14

if.end12:                                         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i) #15
  tail call void @kfree(ptr noundef null) #15
  br label %if.end15

if.then14:                                        ; preds = %list_del.exit.i, %if.then4.if.then14_crit_edge
  %.b30.i = load i1, ptr @vga_arbiter_used, align 1
  br i1 %.b30.i, label %do.body1.i, label %if.then14.if.end15_crit_edge

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.body1.i:                                       ; preds = %if.then14
  %call2.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vga_lock) #15
  %vgadev.031.i = load ptr, ptr @vga_list, align 4
  %cmp6.not32.i = icmp eq ptr %vgadev.031.i, @vga_list
  br i1 %cmp6.not32.i, label %do.body1.i.for.end.i_crit_edge, label %do.body1.i.for.body.i_crit_edge

do.body1.i.for.body.i_crit_edge:                  ; preds = %do.body1.i
  br label %for.body.i

do.body1.i.for.end.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body1.i.for.body.i_crit_edge
  %vgadev.033.i = phi ptr [ %vgadev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vgadev.031.i, %do.body1.i.for.body.i_crit_edge ]
  %set_decode.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i, i32 0, i32 10
  %17 = ptrtoint ptr %set_decode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_decode.i, align 4
  %tobool12.not.i = icmp eq ptr %18, null
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then13.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = load i32, ptr @vga_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp8.i20 = icmp slt i32 %19, 2
  %pdev.i = getelementptr inbounds %struct.vga_device, ptr %vgadev.033.i, i32 0, i32 1
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %call16.i = tail call i32 %18(ptr noundef %21, i1 noundef zeroext %cmp8.i20) #15
  tail call fastcc void @vga_update_device_decodes(ptr noundef %vgadev.033.i, i32 noundef %call16.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %vgadev.033.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %vgadev.0.i = load ptr, ptr %vgadev.033.i, align 4
  %cmp6.not.i = icmp eq ptr %vgadev.0.i, @vga_list
  br i1 %cmp6.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body1.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i19) #15
  br label %if.end15

if.end15.critedge:                                ; preds = %vgadev_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vga_lock, i32 noundef %call2.i) #15
  tail call void @kfree(ptr noundef null) #15
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %for.end.i, %if.then14.if.end15_crit_edge, %if.end12, %if.then4.if.end15_crit_edge, %do.end.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !121, !123, !124, !125, !127, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !155, !156, !157, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !177, !179, !180, !182, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__ksymtab_vga_default_device, !1, !"__ksymtab_vga_default_device", i1 false, i1 false}
!1 = !{!"../drivers/gpu/vga/vgaarb.c", i32 160, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/vga/vgaarb.c", i32 198, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vga_remove_vgacon._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vga_remove_vgacon._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_vga_remove_vgacon, !11, !"__ksymtab_vga_remove_vgacon", i1 false, i1 false}
!11 = !{!"../drivers/gpu/vga/vgaarb.c", i32 216, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/vga/vgaarb.c", i32 481, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/vga/vgaarb.c", i32 485, i32 4}
!16 = !{ptr @__ksymtab_vga_get, !17, !"__ksymtab_vga_get", i1 false, i1 false}
!17 = !{!"../drivers/gpu/vga/vgaarb.c", i32 495, i32 1}
!18 = !{ptr @__ksymtab_vga_put, !19, !"__ksymtab_vga_put", i1 false, i1 false}
!19 = !{!"../drivers/gpu/vga/vgaarb.c", i32 566, i32 1}
!20 = !{ptr @__ksymtab_vga_set_legacy_decoding, !21, !"__ksymtab_vga_set_legacy_decoding", i1 false, i1 false}
!21 = !{!"../drivers/gpu/vga/vgaarb.c", i32 837, i32 1}
!22 = !{ptr @__ksymtab_vga_client_register, !23, !"__ksymtab_vga_client_register", i1 false, i1 false}
!23 = !{!"../drivers/gpu/vga/vgaarb.c", i32 883, i32 1}
!24 = !{ptr @__initcall__kmod_vgaarb__258_1567_vga_arb_device_init4, !25, !"__initcall__kmod_vgaarb__258_1567_vga_arb_device_init4", i1 false, i1 false}
!25 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1567, i32 1}
!26 = !{ptr @vga_default, !27, !"vga_default", i1 false, i1 false}
!27 = !{!"../drivers/gpu/vga/vgaarb.c", i32 123, i32 24}
!28 = distinct !{null, !29, !"vga_arbiter_used", i1 false, i1 false}
!29 = !{!"../drivers/gpu/vga/vgaarb.c", i32 80, i32 13}
!30 = !{ptr @vga_list, !31, !"vga_list", i1 false, i1 false}
!31 = !{!"../drivers/gpu/vga/vgaarb.c", i32 78, i32 8}
!32 = !{ptr @vga_count, !33, !"vga_count", i1 false, i1 false}
!33 = !{!"../drivers/gpu/vga/vgaarb.c", i32 79, i32 12}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/vga/vgaarb.c", i32 769, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vga_update_device_decodes._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @vga_update_device_decodes._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/vga/vgaarb.c", i32 790, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vga_update_device_decodes.__UNIQUE_ID_ddebug241, !40, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/vga/vgaarb.c", i32 91, i32 10}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/vga/vgaarb.c", i32 93, i32 10}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/vga/vgaarb.c", i32 95, i32 10}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/vga/vgaarb.c", i32 97, i32 9}
!51 = !{ptr @vga_decode_count, !52, !"vga_decode_count", i1 false, i1 false}
!52 = !{!"../drivers/gpu/vga/vgaarb.c", i32 79, i32 23}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/vga/vgaarb.c", i32 81, i32 8}
!55 = !{ptr @vga_lock, !54, !"vga_lock", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/vga/vgaarb.c", i32 251, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__vga_tryget.__UNIQUE_ID_ddebug236, !57, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/vga/vgaarb.c", i32 252, i32 2}
!62 = !{ptr @__vga_tryget.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/vga/vgaarb.c", i32 82, i32 8}
!65 = !{ptr @vga_wait_queue, !64, !"vga_wait_queue", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/vga/vgaarb.c", i32 376, i32 2}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__vga_put.__UNIQUE_ID_ddebug238, !67, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1541, i32 3}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vga_arb_device_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vga_arb_device_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1557, i32 4}
!77 = !{ptr @vga_arb_device_init._entry.23, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @vga_arb_device_init._entry_ptr.25, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1559, i32 4}
!81 = !{ptr @vga_arb_device_init._entry.26, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @vga_arb_device_init._entry_ptr.28, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1564, i32 2}
!85 = !{ptr @vga_arb_device_init._entry.29, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @vga_arb_device_init._entry_ptr.31, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1430, i32 22}
!89 = !{ptr @vga_arb_device, !90, !"vga_arb_device", i1 false, i1 false}
!90 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1429, i32 26}
!91 = !{ptr @vga_arb_device_fops, !92, !"vga_arb_device_fops", i1 false, i1 false}
!92 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1420, i32 37}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1006, i32 23}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1025, i32 10}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1071, i32 24}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1075, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug242, !107, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!110 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1107, i32 31}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1111, i32 3}
!115 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug243, !114, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!116 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1113, i32 25}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1163, i32 31}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1167, i32 3}
!123 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug244, !122, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!124 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1204, i32 31}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1210, i32 3}
!129 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug245, !128, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!130 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1212, i32 26}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1222, i32 5}
!135 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug246, !134, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!136 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1229, i32 4}
!139 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug247, !138, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!140 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1235, i32 3}
!143 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug248, !142, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!144 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1238, i32 5}
!147 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug249, !146, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1258, i32 4}
!150 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug250, !149, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1271, i32 31}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1274, i32 3}
!155 = !{ptr @vga_arb_write.__UNIQUE_ID_ddebug251, !154, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!156 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/vga/vgaarb.c", i32 973, i32 18}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1299, i32 2}
!161 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vga_arb_fpoll.__UNIQUE_ID_ddebug252, !160, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1310, i32 2}
!165 = !{ptr @vga_arb_open.__UNIQUE_ID_ddebug253, !164, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!166 = !{ptr @vga_arb_open.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1315, i32 2}
!168 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/vga/vgaarb.c", i32 958, i32 8}
!171 = !{ptr @vga_user_lock, !170, !"vga_user_lock", i1 false, i1 false}
!172 = !{ptr @vga_user_list, !173, !"vga_user_list", i1 false, i1 false}
!173 = !{!"../drivers/gpu/vga/vgaarb.c", i32 957, i32 8}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1339, i32 2}
!176 = !{ptr @vga_arb_release.__UNIQUE_ID_ddebug254, !175, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1347, i32 3}
!179 = !{ptr @vga_arb_release.__UNIQUE_ID_ddebug255, !178, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!180 = !{ptr @pci_notifier, !181, !"pci_notifier", i1 false, i1 false}
!181 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1416, i32 30}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1401, i32 2}
!184 = !{ptr @pci_notify.__UNIQUE_ID_ddebug256, !183, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/vga/vgaarb.c", i32 648, i32 3}
!187 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @vga_arbiter_add_pci_device._entry, !186, !"_entry", i1 false, i1 false}
!190 = !{ptr @vga_arbiter_add_pci_device._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/vga/vgaarb.c", i32 700, i32 3}
!193 = !{ptr @vga_arbiter_add_pci_device._entry.76, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @vga_arbiter_add_pci_device._entry_ptr.78, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/vga/vgaarb.c", i32 709, i32 2}
!197 = !{ptr @vga_arbiter_add_pci_device._entry.79, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @vga_arbiter_add_pci_device._entry_ptr.81, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1517, i32 3}
!201 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @vga_arb_select_default_device._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @vga_arb_select_default_device._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @vga_arb_select_default_device._entry.84, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/gpu/vga/vgaarb.c", i32 1527, i32 4}
!206 = !{ptr @vga_arb_select_default_device._entry_ptr.85, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2155127422}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 2148994736, i64 2148994741, i64 2148994754, i64 2148994798, i64 2148994832, i64 2148994853}
!220 = !{i8 0, i8 2}
!221 = !{!"auto-init"}
!222 = !{i64 2155141623, i64 2155142112, i64 2155141660, i64 2155141716, i64 2155141750, i64 2155141774, i64 2155141815, i64 2155141836, i64 2155141864, i64 2155141898}
!223 = !{!"branch_weights", i32 1, i32 2000}
!224 = !{i64 2153918365, i64 2153918390}
!225 = !{i64 2153917684, i64 2153917709}
!226 = !{i64 6413239}
!227 = !{i64 6413436}
!228 = !{i64 2153898669}
