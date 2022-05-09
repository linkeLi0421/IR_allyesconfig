; ModuleID = '/llk/IR_all_yes/drivers/memstick/host/r592.c_pt.bc'
source_filename = "../drivers/memstick/host/r592.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+memstick_debug_get_tpc_name\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_debug_get_tpc_name\09\09\09\09"
module asm "\09.long\09__crc_memstick_debug_get_tpc_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_debug_get_tpc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_debug_get_tpc_name\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_debug_get_tpc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.r592_device = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.timer_list, ptr, i8, %struct.anon.74, i32, i32, %struct.completion, ptr, i32 }
%struct.anon.74 = type { %union.anon.75, [4 x i8] }
%union.anon.75 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.72 }
%union.anon.72 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.anon.73 = type { i8, [15 x i8] }

@tpc_names = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [40 x i8] zeroinitializer }, align 32
@__kstrtab_memstick_debug_get_tpc_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_debug_get_tpc_name = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_debug_get_tpc_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_debug_get_tpc_name to i32), ptr @__kstrtab_memstick_debug_get_tpc_name, ptr @__kstrtabns_memstick_debug_get_tpc_name }, section "___ksymtab+memstick_debug_get_tpc_name", align 4
@__initcall__kmod_r592__253_887_r592_pci_driver_init6 = internal global ptr @r592_pci_driver_init, section ".initcall6.init", align 4
@r592_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.14, ptr @r592_pci_id_tbl, ptr @r592_probe, ptr @r592_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r592_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_r592_pci_driver_exit = internal global ptr @r592_pci_driver_exit, section ".exitcall.exit", align 4
@__param_str_enable_dma = internal constant [16 x i8] c"r592.enable_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@r592_enable_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_dma = internal constant %struct.kernel_param { ptr @__param_str_enable_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @r592_enable_dma } }, section "__param", align 4
@__UNIQUE_ID_enable_dmatype254 = internal constant [30 x i8] c"r592.parmtype=enable_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_dma255 = internal constant [55 x i8] c"r592.parm=enable_dma:Enable usage of the DMA (default)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"r592.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype256 = internal constant [24 x i8] c"r592.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug257 = internal constant [34 x i8] c"r592.parm=debug:Debug level (0-3)\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [37 x i8] c"r592.file=drivers/memstick/host/r592\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [17 x i8] c"r592.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [53 x i8] c"r592.author=Maxim Levitsky <maximlevitsky@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [71 x i8] c"r592.description=Ricoh R5C592 Memstick/Memstick PRO card reader driver\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TPC_READ_MG_STATUS\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TPC_READ_LONG_DATA\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MS_TPC_READ_SHORT_DATA\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MS_TPC_READ_REG\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TPC_READ_QUAD_DATA\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MS_TPC_GET_INT\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MS_TPC_SET_RW_REG_ADRS\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MS_TPC_EX_SET_CMD\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MS_TPC_WRITE_QUAD_DATA\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MS_TPC_WRITE_REG\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MS_TPC_WRITE_SHORT_DATA\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MS_TPC_WRITE_LONG_DATA\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MS_TPC_SET_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r592\00", [27 x i8] zeroinitializer }, align 32
@r592_pci_id_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4480, i32 1426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@r592_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @r592_suspend, ptr @r592_resume, ptr @r592_suspend, ptr @r592_resume, ptr @r592_suspend, ptr @r592_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r592_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@r592_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->io_thread_lock\00", [43 x i8] zeroinitializer }, align 32
@r592_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&dev->detect_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r592_io\00", [24 x i8] zeroinitializer }, align 32
@r592_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016r592: driver successfully loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r592_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/memstick/host/r592.c\00", [35 x i8] zeroinitializer }, align 32
@r592_probe._entry_ptr = internal global ptr @r592_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@r592_submit_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.23, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017r592: IO thread woken to process requests\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r592_submit_req\00", [16 x i8] zeroinitializer }, align 32
@r592_submit_req._entry_ptr = internal global ptr @r592_submit_req._entry, section ".printk_index", align 4
@r592_enable_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.23, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017r592: %sabling the device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r592_enable_device\00", [45 x i8] zeroinitializer }, align 32
@r592_enable_device._entry_ptr = internal global ptr @r592_enable_device._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@r592_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.23, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017r592: reg #%02d <- 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r592_write_reg\00", [17 x i8] zeroinitializer }, align 32
@r592_write_reg._entry_ptr = internal global ptr @r592_write_reg._entry, section ".printk_index", align 4
@r592_set_reg_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.23, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017r592: reg #%02d |= 0x%08x (old =0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r592_set_reg_mask\00", [46 x i8] zeroinitializer }, align 32
@r592_set_reg_mask._entry_ptr = internal global ptr @r592_set_reg_mask._entry, section ".printk_index", align 4
@r592_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.23, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017r592: switching to serial mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r592_set_mode\00", [18 x i8] zeroinitializer }, align 32
@r592_set_mode._entry_ptr = internal global ptr @r592_set_mode._entry, section ".printk_index", align 4
@r592_set_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.23, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017r592: switching to parallel mode\0A\00", [60 x i8] zeroinitializer }, align 32
@r592_set_mode._entry_ptr.39 = internal global ptr @r592_set_mode._entry.37, section ".printk_index", align 4
@r592_clear_reg_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.23, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017r592: reg #%02d &= 0x%08x (old = 0x%08x, mask = 0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r592_clear_reg_mask\00", [44 x i8] zeroinitializer }, align 32
@r592_clear_reg_mask._entry_ptr = internal global ptr @r592_clear_reg_mask._entry, section ".printk_index", align 4
@r592_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.23, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017r592: reg #%02d == 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r592_read_reg\00", [18 x i8] zeroinitializer }, align 32
@r592_read_reg._entry_ptr = internal global ptr @r592_read_reg._entry, section ".printk_index", align 4
@r592_process_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.23, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017r592: IO: done IO, sleeping\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r592_process_thread\00", [44 x i8] zeroinitializer }, align 32
@r592_process_thread._entry_ptr = internal global ptr @r592_process_thread._entry, section ".printk_index", align 4
@r592_process_thread._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.23, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017r592: IO: unknown error from memstick_next_req %d\0A\00", [43 x i8] zeroinitializer }, align 32
@r592_process_thread._entry_ptr.48 = internal global ptr @r592_process_thread._entry.46, section ".printk_index", align 4
@r592_execute_tpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.23, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016r592: BUG: tpc execution without request!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r592_execute_tpc\00", [47 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr = internal global ptr @r592_execute_tpc._entry, section ".printk_index", align 4
@r592_execute_tpc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.23, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016r592: IO: hardware doesn't support TPCs longer that 512\0A\00", [37 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.55 = internal global ptr @r592_execute_tpc._entry.53, section ".printk_index", align 4
@r592_execute_tpc._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.23, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017r592: IO: refusing to send TPC because card is absent\0A\00", [39 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.58 = internal global ptr @r592_execute_tpc._entry.56, section ".printk_index", align 4
@r592_execute_tpc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.23, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017r592: IO: executing %s LEN=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.61 = internal global ptr @r592_execute_tpc._entry.59, section ".printk_index", align 4
@r592_execute_tpc._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.23, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016r592: card didn't respond\0A\00", [35 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.64 = internal global ptr @r592_execute_tpc._entry.62, section ".printk_index", align 4
@r592_execute_tpc._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.23, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017r592: IO error\0A\00", [46 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.67 = internal global ptr @r592_execute_tpc._entry.65, section ".printk_index", align 4
@r592_execute_tpc._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.52, ptr @.str.23, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017r592: FIFO read error\0A\00", [39 x i8] zeroinitializer }, align 32
@r592_execute_tpc._entry_ptr.70 = internal global ptr @r592_execute_tpc._entry.68, section ".printk_index", align 4
@r592_test_fifo_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.23, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017r592: FIFO not ready, trying to reset the device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r592_test_fifo_empty\00", [43 x i8] zeroinitializer }, align 32
@r592_test_fifo_empty._entry_ptr = internal global ptr @r592_test_fifo_empty._entry, section ".printk_index", align 4
@r592_test_fifo_empty._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.23, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016r592: FIFO still not ready, giving up\0A\00", [55 x i8] zeroinitializer }, align 32
@r592_test_fifo_empty._entry_ptr.75 = internal global ptr @r592_test_fifo_empty._entry.73, section ".printk_index", align 4
@r592_transfer_fifo_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.23, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017r592: doing dma transfer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"r592_transfer_fifo_dma\00", [41 x i8] zeroinitializer }, align 32
@r592_transfer_fifo_dma._entry_ptr = internal global ptr @r592_transfer_fifo_dma._entry, section ".printk_index", align 4
@r592_transfer_fifo_dma._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.23, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016r592: problem in dma_map_sg\0A\00", [33 x i8] zeroinitializer }, align 32
@r592_transfer_fifo_dma._entry_ptr.80 = internal global ptr @r592_transfer_fifo_dma._entry.78, section ".printk_index", align 4
@r592_transfer_fifo_dma._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.23, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016r592: DMA timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@r592_transfer_fifo_dma._entry_ptr.83 = internal global ptr @r592_transfer_fifo_dma._entry.81, section ".printk_index", align 4
@r592_write_reg_raw_be._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.84, ptr @.str.23, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r592_write_reg_raw_be\00", [42 x i8] zeroinitializer }, align 32
@r592_write_reg_raw_be._entry_ptr = internal global ptr @r592_write_reg_raw_be._entry, section ".printk_index", align 4
@r592_read_reg_raw_be._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.85, ptr @.str.23, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r592_read_reg_raw_be\00", [43 x i8] zeroinitializer }, align 32
@r592_read_reg_raw_be._entry_ptr = internal global ptr @r592_read_reg_raw_be._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@r592_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.23, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016r592: IRQ: card %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r592_irq\00", [23 x i8] zeroinitializer }, align 32
@r592_irq._entry_ptr = internal global ptr @r592_irq._entry, section ".printk_index", align 4
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"added\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@r592_irq._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.87, ptr @.str.23, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016r592: IRQ: DMA error\0A\00", [40 x i8] zeroinitializer }, align 32
@r592_irq._entry_ptr.92 = internal global ptr @r592_irq._entry.90, section ".printk_index", align 4
@r592_irq._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.87, ptr @.str.23, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017r592: IRQ: dma done\0A\00", [41 x i8] zeroinitializer }, align 32
@r592_irq._entry_ptr.95 = internal global ptr @r592_irq._entry.93, section ".printk_index", align 4
@r592_update_card_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.23, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017r592: update card detect. card state: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r592_update_card_detect\00", [40 x i8] zeroinitializer }, align 32
@r592_update_card_detect._entry_ptr = internal global ptr @r592_update_card_detect._entry, section ".printk_index", align 4
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"absent\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967285, i64 4294967290]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"tpc_names\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 26, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"r592_pci_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 879, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"r592_enable_dma\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 23, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 24, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 27, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 28, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 29, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 30, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 31, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 32, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 33, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 34, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 35, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 36, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 37, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 38, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 39, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 40, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 887, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"r592_pci_id_tbl\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 725, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"r592_pm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 875, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 769, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 770, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 773, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 781, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 802, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 721, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 134, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 66, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 91, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 156, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 164, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 100, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 58, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 578, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 580, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 461, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 471, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 477, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 482, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 520, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 527, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 556, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 214, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 220, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 289, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 299, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 308, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 82, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 74, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 654, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 665, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 668, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [32 x i8] c"../drivers/memstick/host/r592.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 603, i32 2 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_debug257, ptr @__UNIQUE_ID_debugtype256, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_enable_dma255, ptr @__UNIQUE_ID_enable_dmatype254, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_r592_pci_driver_exit, ptr @__initcall__kmod_r592__253_887_r592_pci_driver_init6, ptr @__ksymtab_memstick_debug_get_tpc_name, ptr @__param_debug, ptr @__param_enable_dma, ptr @r592_clear_reg_mask._entry, ptr @r592_clear_reg_mask._entry_ptr, ptr @r592_enable_device._entry, ptr @r592_enable_device._entry_ptr, ptr @r592_execute_tpc._entry, ptr @r592_execute_tpc._entry.53, ptr @r592_execute_tpc._entry.56, ptr @r592_execute_tpc._entry.59, ptr @r592_execute_tpc._entry.62, ptr @r592_execute_tpc._entry.65, ptr @r592_execute_tpc._entry.68, ptr @r592_execute_tpc._entry_ptr, ptr @r592_execute_tpc._entry_ptr.55, ptr @r592_execute_tpc._entry_ptr.58, ptr @r592_execute_tpc._entry_ptr.61, ptr @r592_execute_tpc._entry_ptr.64, ptr @r592_execute_tpc._entry_ptr.67, ptr @r592_execute_tpc._entry_ptr.70, ptr @r592_irq._entry, ptr @r592_irq._entry.90, ptr @r592_irq._entry.93, ptr @r592_irq._entry_ptr, ptr @r592_irq._entry_ptr.92, ptr @r592_irq._entry_ptr.95, ptr @r592_pci_driver_exit, ptr @r592_probe._entry, ptr @r592_probe._entry_ptr, ptr @r592_process_thread._entry, ptr @r592_process_thread._entry.46, ptr @r592_process_thread._entry_ptr, ptr @r592_process_thread._entry_ptr.48, ptr @r592_read_reg._entry, ptr @r592_read_reg._entry_ptr, ptr @r592_read_reg_raw_be._entry, ptr @r592_read_reg_raw_be._entry_ptr, ptr @r592_set_mode._entry, ptr @r592_set_mode._entry.37, ptr @r592_set_mode._entry_ptr, ptr @r592_set_mode._entry_ptr.39, ptr @r592_set_reg_mask._entry, ptr @r592_set_reg_mask._entry_ptr, ptr @r592_submit_req._entry, ptr @r592_submit_req._entry_ptr, ptr @r592_test_fifo_empty._entry, ptr @r592_test_fifo_empty._entry.73, ptr @r592_test_fifo_empty._entry_ptr, ptr @r592_test_fifo_empty._entry_ptr.75, ptr @r592_transfer_fifo_dma._entry, ptr @r592_transfer_fifo_dma._entry.78, ptr @r592_transfer_fifo_dma._entry.81, ptr @r592_transfer_fifo_dma._entry_ptr, ptr @r592_transfer_fifo_dma._entry_ptr.80, ptr @r592_transfer_fifo_dma._entry_ptr.83, ptr @r592_update_card_detect._entry, ptr @r592_update_card_detect._entry_ptr, ptr @r592_write_reg._entry, ptr @r592_write_reg._entry_ptr, ptr @r592_write_reg_raw_be._entry, ptr @r592_write_reg_raw_be._entry_ptr, ptr @tpc_names, ptr @r592_pci_driver, ptr @r592_enable_dma, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @r592_pci_id_tbl, ptr @r592_pm_ops, ptr @r592_probe.__key, ptr @.str.15, ptr @r592_probe.__key.16, ptr @.str.17, ptr @r592_probe.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpc_names to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_enable_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_pci_id_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_submit_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_enable_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_set_reg_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_set_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_clear_reg_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_process_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_process_thread._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_execute_tpc._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_test_fifo_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_test_fifo_empty._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_transfer_fifo_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_transfer_fifo_dma._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_transfer_fifo_dma._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_write_reg_raw_be._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_read_reg_raw_be._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_irq._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_irq._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r592_update_card_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @memstick_debug_get_tpc_name(i32 noundef %tpc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %tpc, -1
  %arrayidx = getelementptr [14 x ptr], ptr @tpc_names, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @r592_pci_driver, ptr noundef null, ptr noundef nonnull @.str.14) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r592_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @r592_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @memstick_alloc_host(i32 noundef 260, ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %call, i32 0, i32 11
  %host3 = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %host3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %host3, align 4
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.error2_crit_edge

if.end.error2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error2

if.end7:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call9 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.error3_crit_edge

if.end7.error3_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %error3

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.error3_crit_edge

if.end12.error3_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error3

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #8
  %mmio = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %mmio, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.end16.error4_crit_edge, label %if.end21

if.end16.error4_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %error4

if.end21:                                         ; preds = %if.end16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq22 = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq22, align 4
  %irq_lock = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 0, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @r592_probe.__key, i16 noundef signext 3) #8
  %io_thread_lock = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %io_thread_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @r592_probe.__key.16, i16 noundef signext 3) #8
  %dma_done = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dma_done, align 4
  %wait.i = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %pio_fifo = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pio_fifo, align 4
  %out = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 6
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7
  %11 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1, i32 1
  %data = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %data, align 4
  %detect_timer = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 3, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %detect_timer, ptr noundef nonnull @r592_detect_timer, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @r592_probe.__key.18) #8
  %caps = getelementptr inbounds %struct.memstick_host, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %caps, align 32
  %request = getelementptr inbounds %struct.memstick_host, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @r592_submit_req, ptr %request, align 4
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %set_param to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @r592_set_param, ptr %set_param, align 64
  %16 = load i8, ptr @r592_enable_dma, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end21.r592_check_dma.exit_crit_edge, label %land.rhs.i

if.end21.r592_check_dma.exit_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_check_dma.exit

land.rhs.i:                                       ; preds = %if.end21
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !233
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %land.rhs.i.r592_read_reg.exit.i_crit_edge

land.rhs.i.r592_read_reg.exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 52, i32 noundef %20) #11
  br label %r592_read_reg.exit.i

r592_read_reg.exit.i:                             ; preds = %do.end.i.i, %land.rhs.i.r592_read_reg.exit.i_crit_edge
  %and.i = lshr i32 %20, 24
  %and.lobit.i = and i32 %and.i, 1
  br label %r592_check_dma.exit

r592_check_dma.exit:                              ; preds = %r592_read_reg.exit.i, %if.end21.r592_check_dma.exit_crit_edge
  %22 = phi i32 [ 0, %if.end21.r592_check_dma.exit_crit_edge ], [ %and.lobit.i, %r592_read_reg.exit.i ]
  %dma_capable.i = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 0, i32 2
  %23 = ptrtoint ptr %dma_capable.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dma_capable.i, align 4
  %call31 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @r592_process_thread, ptr noundef %private.i, i32 noundef -1, ptr noundef nonnull @.str.20) #8
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end42

if.then39:                                        ; preds = %r592_check_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %io_thread134 = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 2
  %24 = ptrtoint ptr %io_thread134 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call31, ptr %io_thread134, align 4
  %25 = ptrtoint ptr %call31 to i32
  br label %error5

if.end42:                                         ; preds = %r592_check_dma.exit
  %call34 = tail call i32 @wake_up_process(ptr noundef %call31) #8
  %io_thread = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 2
  %26 = ptrtoint ptr %io_thread to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %io_thread, align 4
  %dummy_dma_page_physical_address = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %dummy_dma_page_physical_address, i32 noundef 3264, i32 noundef 0) #8
  %dummy_dma_page = getelementptr inbounds %struct.memstick_host, ptr %call, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 2
  %27 = ptrtoint ptr %dummy_dma_page to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %dummy_dma_page, align 4
  tail call fastcc void @r592_stop_dma(ptr noundef %private.i, i32 noundef 0)
  %28 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq22, align 4
  %call.i133 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @r592_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool47.not = icmp eq i32 %call.i133, 0
  br i1 %tobool47.not, label %if.end49, label %if.end42.error6_crit_edge

if.end42.error6_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %error6

if.end49:                                         ; preds = %if.end42
  tail call fastcc void @r592_update_card_detect(ptr noundef %private.i)
  %call50 = tail call i32 @memstick_add_host(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end56, label %error7

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %cleanup

error7:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq22, align 4
  %call60 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %private.i) #8
  br label %error6

error6:                                           ; preds = %error7, %if.end42.error6_crit_edge
  %error.0 = phi i32 [ %call.i133, %if.end42.error6_crit_edge ], [ %call50, %error7 ]
  %32 = ptrtoint ptr %dummy_dma_page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dummy_dma_page, align 4
  %tobool62.not = icmp eq ptr %33, null
  br i1 %tobool62.not, label %error6.if.end67_crit_edge, label %if.then63

error6.if.end67_crit_edge:                        ; preds = %error6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %error6
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dummy_dma_page_physical_address to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dummy_dma_page_physical_address, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef nonnull %33, i32 noundef %35, i32 noundef 0) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %error6.if.end67_crit_edge
  %36 = ptrtoint ptr %io_thread to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_thread, align 4
  %call69 = tail call i32 @kthread_stop(ptr noundef %37) #8
  br label %error5

error5:                                           ; preds = %if.end67, %if.then39
  %error.1 = phi i32 [ %25, %if.then39 ], [ %error.0, %if.end67 ]
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %39) #8
  br label %error4

error4:                                           ; preds = %error5, %if.end16.error4_crit_edge
  %error.2 = phi i32 [ %error.1, %error5 ], [ -12, %if.end16.error4_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  br label %error3

error3:                                           ; preds = %error4, %if.end12.error3_crit_edge, %if.end7.error3_crit_edge
  %error.3 = phi i32 [ %call9, %if.end7.error3_crit_edge ], [ %call13, %if.end12.error3_crit_edge ], [ %error.2, %error4 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %error2

error2:                                           ; preds = %error3, %if.end.error2_crit_edge
  %error.4 = phi i32 [ %call4, %if.end.error2_crit_edge ], [ %error.3, %error3 ]
  tail call void @memstick_free_host(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %error2, %do.end56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end56 ], [ %error.4, %error2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r592_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_thread = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %io_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_thread, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %3) #8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp sgt i32 %4, 0
  br i1 %cmp.i, label %do.end2.i, label %entry.r592_enable_device.exit_crit_edge

entry.r592_enable_device.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end2.i:                                        ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i.i, label %do.end.i7.i, label %do.end2.i.r592_enable_device.exit_crit_edge

do.end2.i.r592_enable_device.exit_crit_edge:      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end.i7.i:                                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 32, i32 noundef 0) #11
  br label %r592_enable_device.exit

r592_enable_device.exit:                          ; preds = %do.end.i7.i, %do.end2.i.r592_enable_device.exit_crit_edge, %entry.r592_enable_device.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i8.i = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mmio.i8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #8, !srcloc !236
  %req = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 2
  %host = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %r592_enable_device.exit
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %error5 = getelementptr inbounds %struct.memstick_request, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -62, ptr %error5, align 4
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %call7 = tail call i32 @memstick_next_req(ptr noundef %11, ptr noundef %req) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  tail call void @memstick_remove_host(ptr noundef %13) #8
  %dummy_dma_page = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %dummy_dma_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dummy_dma_page, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dummy_dma_page_physical_address = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %dummy_dma_page_physical_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dummy_dma_page_physical_address, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %17, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %irq = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %1) #8
  %20 = ptrtoint ptr %mmio.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i8.i, align 4
  tail call void @iounmap(ptr noundef %21) #8
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  tail call void @memstick_free_host(ptr noundef %23) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memstick_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r592_detect_timer(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  tail call fastcc void @r592_update_card_detect(ptr noundef %add.ptr)
  %host = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @memstick_detect_change(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r592_submit_req(ptr noundef %host) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.memstick_host, ptr %host, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %io_thread_lock = getelementptr inbounds %struct.memstick_host, ptr %host, i32 1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_thread_lock) #8
  %io_thread = getelementptr inbounds %struct.memstick_host, ptr %host, i32 1, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %io_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_thread, align 4
  %call6 = tail call i32 @wake_up_process(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body1.if.end21_crit_edge, label %do.body9

do.body1.if.end21_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body9:                                         ; preds = %do.body1
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp10 = icmp sgt i32 %4, 1
  br i1 %cmp10, label %do.end15, label %do.body9.if.end21_crit_edge

do.body9.if.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %do.body9.if.end21_crit_edge, %do.body1.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_thread_lock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_set_param(ptr nocapture noundef %host, i32 noundef %param, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 11
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %value, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_enable_device(ptr noundef %private.i, i1 noundef zeroext true)
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %do.end2.i, label %sw.bb3.r592_enable_device.exit_crit_edge

sw.bb3.r592_enable_device.exit_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end2.i:                                        ; preds = %sw.bb3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i.i, label %do.end.i7.i, label %do.end2.i.r592_enable_device.exit_crit_edge

do.end2.i.r592_enable_device.exit_crit_edge:      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end.i7.i:                                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 32, i32 noundef 0) #11
  br label %r592_enable_device.exit

r592_enable_device.exit:                          ; preds = %do.end.i7.i, %do.end2.i.r592_enable_device.exit_crit_edge, %sw.bb3.r592_enable_device.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i8.i = getelementptr inbounds %struct.memstick_host, ptr %host, i32 1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %mmio.i8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #8, !srcloc !236
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %5 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %value, label %sw.bb5.cleanup_crit_edge [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb8
  ]

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_set_mode(ptr noundef %private.i, i1 noundef zeroext false)
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_set_mode(ptr noundef %private.i, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb6, %sw.bb5.cleanup_crit_edge, %r592_enable_device.exit, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %r592_enable_device.exit ], [ 0, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_process_thread(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call289 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call289, label %entry.while.end_crit_edge, label %do.body1.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body1.lr.ph:                                   ; preds = %entry
  %io_thread_lock = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 6
  %host = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 1
  %req = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 2
  %mmio.i.i = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 3
  %parallel_mode.i.i.i = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 9
  br label %do.body1

do.body1:                                         ; preds = %if.end272.do.body1_crit_edge, %do.body1.lr.ph
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_thread_lock) #8
  br label %__here

__here:                                           ; preds = %do.body1
  %0 = tail call i32 @llvm.read_register.i32(metadata !222) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@r592_process_thread, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %call72 = tail call i32 @memstick_next_req(ptr noundef %8, ptr noundef %req) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_thread_lock, i32 noundef %call3) #8
  %9 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call72, label %do.body93 [
    i32 0, label %__here242
    i32 -6, label %__here.do.body81_crit_edge
    i32 -11, label %__here.do.body81_crit_edge290
  ]

__here.do.body81_crit_edge290:                    ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

__here.do.body81_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

do.body81:                                        ; preds = %__here.do.body81_crit_edge, %__here.do.body81_crit_edge290
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp82 = icmp sgt i32 %10, 1
  br i1 %cmp82, label %do.end87, label %do.body81.if.end105_crit_edge

do.body81.if.end105_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  br label %if.end105

do.body93:                                        ; preds = %__here
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp94 = icmp sgt i32 %11, 0
  br i1 %cmp94, label %do.end99, label %do.body93.if.end105_crit_edge

do.body93.if.end105_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call72) #11
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %do.body93.if.end105_crit_edge, %do.end87, %do.body81.if.end105_crit_edge
  %call106 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call106, label %__here159, label %if.end105.if.end189_crit_edge

if.end105.if.end189_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

__here159:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change163 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change163 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@r592_process_thread, %__here159) to i32), ptr %task_state_change163, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %if.end189

if.end189:                                        ; preds = %__here159, %if.end105.if.end189_crit_edge
  tail call void @schedule() #8
  br label %if.end272

__here242:                                        ; preds = %__here
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change246 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change246 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@r592_process_thread, %__here242) to i32), ptr %task_state_change246, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %20, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %__here242
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #11
  br label %if.end272

if.end.i:                                         ; preds = %__here242
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp.i = icmp ugt i8 %25, 7
  %long_data.i = getelementptr inbounds %struct.memstick_request, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %long_data.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %long_data.i, align 1
  %27 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not.i = icmp eq i8 %27, 0
  br i1 %tobool5.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = getelementptr inbounds %struct.memstick_request, ptr %23, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv8.i = zext i8 %30 to i32
  br label %if.end17.i

cond.end.i:                                       ; preds = %if.end.i
  %length.i = getelementptr inbounds %struct.memstick_request, ptr %23, i32 0, i32 4, i32 0, i32 2
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %32)
  %cmp9.i = icmp sgt i32 %32, 512
  br i1 %cmp9.i, label %cond.end.i.out.sink.split.i_crit_edge, label %cond.end.i.if.end17.i_crit_edge

cond.end.i.if.end17.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

cond.end.i.out.sink.split.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.end17.i:                                       ; preds = %cond.end.i.if.end17.i_crit_edge, %cond.end.thread.i
  %cond277.i = phi i32 [ %conv8.i, %cond.end.thread.i ], [ %32, %cond.end.i.if.end17.i_crit_edge ]
  %33 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 40
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !233
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i.i = icmp sgt i32 %37, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end17.i.r592_read_reg.exit.i_crit_edge

if.end17.i.r592_read_reg.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit.i

do.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 40, i32 noundef %36) #11
  %.pr = load i32, ptr @debug, align 4
  br label %r592_read_reg.exit.i

r592_read_reg.exit.i:                             ; preds = %do.end.i.i, %if.end17.i.r592_read_reg.exit.i_crit_edge
  %38 = phi i32 [ %.pr, %do.end.i.i ], [ %37, %if.end17.i.r592_read_reg.exit.i_crit_edge ]
  %and.i286 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool19.not.i = icmp eq i32 %and.i286, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp22.i = icmp sgt i32 %38, 0
  br i1 %tobool19.not.i, label %do.body21.i, label %do.body34.i

do.body21.i:                                      ; preds = %r592_read_reg.exit.i
  br i1 %cmp22.i, label %do.body21.i.out.sink.split.i_crit_edge, label %do.body21.i.out.i_crit_edge

do.body21.i.out.i_crit_edge:                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.body21.i.out.sink.split.i_crit_edge:           ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

do.body34.i:                                      ; preds = %r592_read_reg.exit.i
  br i1 %cmp22.i, label %do.end40.i, label %do.body34.i.do.end49.i_crit_edge

do.body34.i.do.end49.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49.i

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv44.i = zext i8 %42 to i32
  %sub.i.i = add nsw i32 %conv44.i, -1
  %arrayidx.i.i = getelementptr [14 x ptr], ptr @tpc_names, i32 0, i32 %sub.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %44, i32 noundef %cond277.i) #11
  br label %do.end49.i

do.end49.i:                                       ; preds = %do.end40.i, %do.body34.i.do.end49.i_crit_edge
  %45 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i232.i = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232.i) #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i233.i = icmp sgt i32 %49, 2
  br i1 %cmp.i, label %if.then51.i, label %if.else.i

if.then51.i:                                      ; preds = %do.end49.i
  br i1 %cmp.i233.i, label %do.end.i235.i, label %if.then51.i.r592_set_reg_mask.exit.i_crit_edge

if.then51.i.r592_set_reg_mask.exit.i_crit_edge:   ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_set_reg_mask.exit.i

do.end.i235.i:                                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i234.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 24, i32 noundef 16777216, i32 noundef %48) #11
  br label %r592_set_reg_mask.exit.i

r592_set_reg_mask.exit.i:                         ; preds = %do.end.i235.i, %if.then51.i.r592_set_reg_mask.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %or.i.i = or i32 %48, 16777216
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %51 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %52, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %50) #8, !srcloc !236
  br label %if.end52.i

if.else.i:                                        ; preds = %do.end49.i
  br i1 %cmp.i233.i, label %do.end.i240.i, label %if.else.i.r592_clear_reg_mask.exit.i_crit_edge

if.else.i.r592_clear_reg_mask.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit.i

do.end.i240.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i239.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 24, i32 noundef -16777217, i32 noundef %48, i32 noundef 16777216) #11
  br label %r592_clear_reg_mask.exit.i

r592_clear_reg_mask.exit.i:                       ; preds = %do.end.i240.i, %if.else.i.r592_clear_reg_mask.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %48, -16777217
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %55, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %53) #8, !srcloc !236
  br label %if.end52.i

if.end52.i:                                       ; preds = %r592_clear_reg_mask.exit.i, %r592_set_reg_mask.exit.i
  %56 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !233
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp.i.i.i = icmp sgt i32 %60, 2
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end52.i.r592_read_reg.exit.i.i_crit_edge

if.end52.i.r592_read_reg.exit.i.i_crit_edge:      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 40, i32 noundef %59) #11
  br label %r592_read_reg.exit.i.i

r592_read_reg.exit.i.i:                           ; preds = %do.end.i.i.i, %if.end52.i.r592_read_reg.exit.i.i_crit_edge
  %and.i241.i = and i32 %59, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i241.i)
  %tobool.not.i.i = icmp eq i32 %and.i241.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %r592_read_reg.exit.i.i.if.end56.i_crit_edge

r592_read_reg.exit.i.i.if.end56.i_crit_edge:      ; preds = %r592_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

do.body.i.i:                                      ; preds = %r592_read_reg.exit.i.i
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i242.i = icmp sgt i32 %61, 0
  br i1 %cmp.i242.i, label %do.end.i243.i, label %do.body.i.i.do.end5.i.i_crit_edge

do.body.i.i.do.end5.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i243.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #11
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i243.i, %do.body.i.i.do.end5.i.i_crit_edge
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %63, i32 24
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !233
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i.i.i.i = icmp sgt i32 %66, 2
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %do.end5.i.i.r592_host_reset.exit.i.i_crit_edge

do.end5.i.i.r592_host_reset.exit.i.i_crit_edge:   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_host_reset.exit.i.i

do.end.i.i.i.i:                                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 24, i32 noundef -2147483648, i32 noundef %65) #11
  br label %r592_host_reset.exit.i.i

r592_host_reset.exit.i.i:                         ; preds = %do.end.i.i.i.i, %do.end5.i.i.r592_host_reset.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %or.i.i.i.i = or i32 %65, -2147483648
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #8
  %68 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr11.i.i.i.i = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i.i, i32 %67) #8, !srcloc !236
  tail call void @msleep(i32 noundef 100) #8
  %70 = ptrtoint ptr %parallel_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %parallel_mode.i.i.i, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i.i.i = icmp ne i8 %71, 0
  tail call fastcc void @r592_set_mode(ptr noundef %data, i1 noundef zeroext %tobool.i.i.i) #8
  %72 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %73, i32 40
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #8, !srcloc !233
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp.i19.i.i = icmp sgt i32 %76, 2
  br i1 %cmp.i19.i.i, label %do.end.i21.i.i, label %r592_host_reset.exit.i.i.r592_read_reg.exit22.i.i_crit_edge

r592_host_reset.exit.i.i.r592_read_reg.exit22.i.i_crit_edge: ; preds = %r592_host_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit22.i.i

do.end.i21.i.i:                                   ; preds = %r592_host_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 40, i32 noundef %75) #11
  br label %r592_read_reg.exit22.i.i

r592_read_reg.exit22.i.i:                         ; preds = %do.end.i21.i.i, %r592_host_reset.exit.i.i.r592_read_reg.exit22.i.i_crit_edge
  %and7.i.i = and i32 %75, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %r592_read_reg.exit22.i.i.out.sink.split.i_crit_edge, label %r592_read_reg.exit22.i.i.if.end56.i_crit_edge

r592_read_reg.exit22.i.i.if.end56.i_crit_edge:    ; preds = %r592_read_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

r592_read_reg.exit22.i.i.out.sink.split.i_crit_edge: ; preds = %r592_read_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.end56.i:                                       ; preds = %r592_read_reg.exit22.i.i.if.end56.i_crit_edge, %r592_read_reg.exit.i.i.if.end56.i_crit_edge
  br i1 %cmp.i, label %if.then58.i, label %if.end56.i.if.end68.i_crit_edge

if.end56.i.if.end68.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then58.i:                                      ; preds = %if.end56.i
  %call59.i = tail call fastcc i32 @r592_transfer_fifo_dma(ptr noundef %data) #8
  %77 = zext i32 %call59.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call59.i, label %if.then58.i.out.i_crit_edge [
    i32 -22, label %if.then62.i
    i32 0, label %if.then58.i.if.end68.i_crit_edge
  ]

if.then58.i.if.end68.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then58.i.out.i_crit_edge:                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then62.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_transfer_fifo_pio(ptr noundef %data) #8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then62.i, %if.then58.i.if.end68.i_crit_edge, %if.end56.i.if.end68.i_crit_edge
  %shl.i = shl i32 %cond277.i, 16
  %78 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %req, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 4
  %conv71.i = zext i8 %81 to i32
  %shl72.i = shl i32 %conv71.i, 28
  %or.i = or i32 %shl.i, %shl72.i
  %or73.i = or i32 %or.i, 67108864
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp.i244.i = icmp sgt i32 %82, 2
  br i1 %cmp.i244.i, label %do.end.i245.i, label %if.end68.i.r592_write_reg.exit.i_crit_edge

if.end68.i.r592_write_reg.exit.i_crit_edge:       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit.i

do.end.i245.i:                                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %or73.i) #11
  br label %r592_write_reg.exit.i

r592_write_reg.exit.i:                            ; preds = %do.end.i245.i, %if.end68.i.r592_write_reg.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %83 = tail call i32 @llvm.bswap.i32(i32 %or73.i) #8
  %84 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #8, !srcloc !236
  %86 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %req, align 4
  %need_card_int.i = getelementptr inbounds %struct.memstick_request, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %need_card_int.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load75.i = load i8, ptr %need_card_int.i, align 1
  %89 = and i8 %bf.load75.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool78.not.i = icmp eq i8 %89, 0
  %spec.select.i = select i1 %tobool78.not.i, i32 268435456, i32 805306368
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %91 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i248.i = getelementptr i8, ptr %92, i32 16
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i248.i) #8, !srcloc !233
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.i.i249.i = icmp sgt i32 %95, 2
  br i1 %cmp.i.i249.i, label %do.end.i.i251.i, label %r592_write_reg.exit.i.r592_read_reg.exit.i254.i_crit_edge

r592_write_reg.exit.i.r592_read_reg.exit.i254.i_crit_edge: ; preds = %r592_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit.i254.i

do.end.i.i251.i:                                  ; preds = %r592_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i250.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 16, i32 noundef %94) #11
  br label %r592_read_reg.exit.i254.i

r592_read_reg.exit.i254.i:                        ; preds = %do.end.i.i251.i, %r592_write_reg.exit.i.r592_read_reg.exit.i254.i_crit_edge
  %and.i252.i = and i32 %94, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i252.i, i32 %spec.select.i)
  %cmp.i253.i = icmp eq i32 %and.i252.i, %spec.select.i
  br i1 %cmp.i253.i, label %r592_read_reg.exit.i254.i.if.end90.i_crit_edge, label %while.cond.preheader.i.i

r592_read_reg.exit.i254.i.if.end90.i_crit_edge:   ; preds = %r592_read_reg.exit.i254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

while.cond.preheader.i.i:                         ; preds = %r592_read_reg.exit.i254.i
  %add.neg.i.i = sub i32 -100, %90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %sub29.i.i = add i32 %96, %add.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29.i.i)
  %cmp230.i.i = icmp slt i32 %sub29.i.i, 0
  br i1 %cmp230.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.out.sink.split.i_crit_edge

while.cond.preheader.i.i.out.sink.split.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end.i257.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %97 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %98, i32 16
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #8, !srcloc !233
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.i25.i.i = icmp sgt i32 %101, 2
  br i1 %cmp.i25.i.i, label %do.end.i27.i.i, label %while.body.i.i.r592_read_reg.exit28.i.i_crit_edge

while.body.i.i.r592_read_reg.exit28.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit28.i.i

do.end.i27.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 16, i32 noundef %100) #11
  br label %r592_read_reg.exit28.i.i

r592_read_reg.exit28.i.i:                         ; preds = %do.end.i27.i.i, %while.body.i.i.r592_read_reg.exit28.i.i_crit_edge
  %and4.i.i = and i32 %100, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i, i32 %spec.select.i)
  %cmp5.i.i = icmp eq i32 %and4.i.i, %spec.select.i
  br i1 %cmp5.i.i, label %r592_read_reg.exit28.i.i.if.end90.i_crit_edge, label %if.end7.i.i

r592_read_reg.exit28.i.i.if.end90.i_crit_edge:    ; preds = %r592_read_reg.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.end7.i.i:                                      ; preds = %r592_read_reg.exit28.i.i
  %and8.i.i = and i32 %100, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i255.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool.not.i255.i, label %do.end.i257.i, label %if.end7.i.i.out.sink.split.i_crit_edge

if.end7.i.i.out.sink.split.i_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

do.end.i257.i:                                    ; preds = %if.end7.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %sub.i256.i = add i32 %102, %add.neg.i.i
  %cmp2.i.i = icmp slt i32 %sub.i256.i, 0
  br i1 %cmp2.i.i, label %do.end.i257.i.while.body.i.i_crit_edge, label %do.end.i257.i.out.sink.split.i_crit_edge

do.end.i257.i.out.sink.split.i_crit_edge:         ; preds = %do.end.i257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

do.end.i257.i.while.body.i.i_crit_edge:           ; preds = %do.end.i257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end90.i:                                       ; preds = %r592_read_reg.exit28.i.i.if.end90.i_crit_edge, %r592_read_reg.exit.i254.i.if.end90.i_crit_edge
  %103 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i260.i = getelementptr i8, ptr %104, i32 16
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i260.i) #8, !srcloc !233
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %107 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp.i.i261.i = icmp sgt i32 %107, 2
  br i1 %cmp.i.i261.i, label %do.end.i.i263.i, label %if.end90.i.r592_test_io_error.exit.i_crit_edge

if.end90.i.r592_test_io_error.exit.i_crit_edge:   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_test_io_error.exit.i

do.end.i.i263.i:                                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i262.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 16, i32 noundef %106) #11
  br label %r592_test_io_error.exit.i

r592_test_io_error.exit.i:                        ; preds = %do.end.i.i263.i, %if.end90.i.r592_test_io_error.exit.i_crit_edge
  %and.i264.i = and i32 %106, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264.i)
  %tobool.not.i265.i = icmp eq i32 %and.i264.i, 0
  br i1 %tobool.not.i265.i, label %if.end106.i, label %do.body94.i

do.body94.i:                                      ; preds = %r592_test_io_error.exit.i
  %108 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp95.i = icmp sgt i32 %108, 0
  br i1 %cmp95.i, label %do.body94.i.out.sink.split.i_crit_edge, label %do.body94.i.out.i_crit_edge

do.body94.i.out.i_crit_edge:                      ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.body94.i.out.sink.split.i_crit_edge:           ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.end106.i:                                      ; preds = %r592_test_io_error.exit.i
  br i1 %cmp.i, label %if.end106.i.if.end115.i_crit_edge, label %if.then108.i

if.end106.i.if.end115.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.then108.i:                                     ; preds = %if.end106.i
  %call109.i = tail call fastcc i32 @r592_transfer_fifo_dma(ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call109.i)
  %cmp110.i = icmp eq i32 %call109.i, -22
  br i1 %cmp110.i, label %if.then112.i, label %if.then108.i.if.end115.i_crit_edge

if.then108.i.if.end115.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.then112.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_transfer_fifo_pio(ptr noundef %data) #8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then112.i, %if.then108.i.if.end115.i_crit_edge, %if.end106.i.if.end115.i_crit_edge
  %error.1.i = phi i32 [ 0, %if.end106.i.if.end115.i_crit_edge ], [ 0, %if.then112.i ], [ %call109.i, %if.then108.i.if.end115.i_crit_edge ]
  %109 = ptrtoint ptr %parallel_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %parallel_mode.i.i.i, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool116.not.i = icmp eq i8 %110, 0
  br i1 %tobool116.not.i, label %if.end115.i.if.end164.i_crit_edge, label %land.lhs.true.i

if.end115.i.if.end164.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i

land.lhs.true.i:                                  ; preds = %if.end115.i
  %111 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %req, align 4
  %need_card_int119.i = getelementptr inbounds %struct.memstick_request, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %need_card_int119.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load120.i = load i8, ptr %need_card_int119.i, align 1
  %114 = and i8 %bf.load120.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool124.not.i = icmp eq i8 %114, 0
  br i1 %tobool124.not.i, label %land.lhs.true.i.if.end164.i_crit_edge, label %if.then125.i

land.lhs.true.i.if.end164.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i

if.then125.i:                                     ; preds = %land.lhs.true.i
  %int_reg.i = getelementptr inbounds %struct.memstick_request, ptr %112, i32 0, i32 2
  %115 = ptrtoint ptr %int_reg.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %int_reg.i, align 2
  %116 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %117, i32 16
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp.i287 = icmp sgt i32 %120, 2
  br i1 %cmp.i287, label %do.end.i288, label %if.then125.i.r592_read_reg.exit_crit_edge

if.then125.i.r592_read_reg.exit_crit_edge:        ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit

do.end.i288:                                      ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 16, i32 noundef %119) #11
  br label %r592_read_reg.exit

r592_read_reg.exit:                               ; preds = %do.end.i288, %if.then125.i.r592_read_reg.exit_crit_edge
  %and128.i = and i32 %119, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i)
  %tobool129.not.i = icmp eq i32 %and128.i, 0
  br i1 %tobool129.not.i, label %r592_read_reg.exit.if.end136.i_crit_edge, label %if.then130.i

r592_read_reg.exit.if.end136.i_crit_edge:         ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136.i

if.then130.i:                                     ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %req, align 4
  %int_reg132.i = getelementptr inbounds %struct.memstick_request, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %int_reg132.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %int_reg132.i, align 2
  %125 = or i8 %124, 1
  store i8 %125, ptr %int_reg132.i, align 2
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then130.i, %r592_read_reg.exit.if.end136.i_crit_edge
  %and137.i = and i32 %119, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %if.end136.i.if.end145.i_crit_edge, label %if.then139.i

if.end136.i.if.end145.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.i

if.then139.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %req, align 4
  %int_reg141.i = getelementptr inbounds %struct.memstick_request, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %int_reg141.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %int_reg141.i, align 2
  %130 = or i8 %129, 32
  store i8 %130, ptr %int_reg141.i, align 2
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then139.i, %if.end136.i.if.end145.i_crit_edge
  %and146.i = and i32 %119, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end154.i_crit_edge, label %if.then148.i

if.end145.i.if.end154.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %req, align 4
  %int_reg150.i = getelementptr inbounds %struct.memstick_request, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %int_reg150.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %int_reg150.i, align 2
  %135 = or i8 %134, 64
  store i8 %135, ptr %int_reg150.i, align 2
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then148.i, %if.end145.i.if.end154.i_crit_edge
  %and155.i = and i32 %119, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.end154.i.if.end164.i_crit_edge, label %if.then157.i

if.end154.i.if.end164.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i

if.then157.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %req, align 4
  %int_reg159.i = getelementptr inbounds %struct.memstick_request, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %int_reg159.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %int_reg159.i, align 2
  %140 = or i8 %139, -128
  store i8 %140, ptr %int_reg159.i, align 2
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then157.i, %if.end154.i.if.end164.i_crit_edge, %land.lhs.true.i.if.end164.i_crit_edge, %if.end115.i.if.end164.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool165.not.i = icmp eq i32 %error.1.i, 0
  br i1 %tobool165.not.i, label %if.end164.i.out.i_crit_edge, label %do.body167.i

if.end164.i.out.i_crit_edge:                      ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.body167.i:                                     ; preds = %if.end164.i
  %141 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp168.i = icmp sgt i32 %141, 0
  br i1 %cmp168.i, label %do.body167.i.out.sink.split.i_crit_edge, label %do.body167.i.out.i_crit_edge

do.body167.i.out.i_crit_edge:                     ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.body167.i.out.sink.split.i_crit_edge:          ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %do.body167.i.out.sink.split.i_crit_edge, %do.body94.i.out.sink.split.i_crit_edge, %do.end.i257.i.out.sink.split.i_crit_edge, %if.end7.i.i.out.sink.split.i_crit_edge, %while.cond.preheader.i.i.out.sink.split.i_crit_edge, %r592_read_reg.exit22.i.i.out.sink.split.i_crit_edge, %do.body21.i.out.sink.split.i_crit_edge, %cond.end.i.out.sink.split.i_crit_edge
  %.str.74.sink.i = phi ptr [ @.str.54, %cond.end.i.out.sink.split.i_crit_edge ], [ @.str.57, %do.body21.i.out.sink.split.i_crit_edge ], [ @.str.74, %r592_read_reg.exit22.i.i.out.sink.split.i_crit_edge ], [ @.str.63, %while.cond.preheader.i.i.out.sink.split.i_crit_edge ], [ @.str.66, %do.body94.i.out.sink.split.i_crit_edge ], [ @.str.69, %do.body167.i.out.sink.split.i_crit_edge ], [ @.str.63, %if.end7.i.i.out.sink.split.i_crit_edge ], [ @.str.63, %do.end.i257.i.out.sink.split.i_crit_edge ]
  %error.2.ph.i = phi i32 [ -38, %cond.end.i.out.sink.split.i_crit_edge ], [ -19, %do.body21.i.out.sink.split.i_crit_edge ], [ -5, %r592_read_reg.exit22.i.i.out.sink.split.i_crit_edge ], [ -62, %while.cond.preheader.i.i.out.sink.split.i_crit_edge ], [ -5, %do.body94.i.out.sink.split.i_crit_edge ], [ %error.1.i, %do.body167.i.out.sink.split.i_crit_edge ], [ -62, %do.end.i257.i.out.sink.split.i_crit_edge ], [ -5, %if.end7.i.i.out.sink.split.i_crit_edge ]
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink.i) #11
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %do.body167.i.out.i_crit_edge, %if.end164.i.out.i_crit_edge, %do.body94.i.out.i_crit_edge, %if.then58.i.out.i_crit_edge, %do.body21.i.out.i_crit_edge
  %error.2.i = phi i32 [ -5, %do.body94.i.out.i_crit_edge ], [ %error.1.i, %do.body167.i.out.i_crit_edge ], [ 0, %if.end164.i.out.i_crit_edge ], [ -19, %do.body21.i.out.i_crit_edge ], [ %call59.i, %if.then58.i.out.i_crit_edge ], [ %error.2.ph.i, %out.sink.split.i ]
  %142 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %req, align 4
  %error181.i = getelementptr inbounds %struct.memstick_request, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %error181.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %error.2.i, ptr %error181.i, align 4
  %145 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i268.i = getelementptr i8, ptr %146, i32 40
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268.i) #8, !srcloc !233
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %149 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i269.i = icmp sgt i32 %149, 2
  br i1 %cmp.i269.i, label %do.end.i271.i, label %out.i.r592_clear_reg_mask.exit274.i_crit_edge

out.i.r592_clear_reg_mask.exit274.i_crit_edge:    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit274.i

do.end.i271.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i270.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -32769, i32 noundef %148, i32 noundef 32768) #11
  br label %r592_clear_reg_mask.exit274.i

r592_clear_reg_mask.exit274.i:                    ; preds = %do.end.i271.i, %out.i.r592_clear_reg_mask.exit274.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i272.i = and i32 %148, -32769
  %150 = tail call i32 @llvm.bswap.i32(i32 %and.i272.i) #8
  %151 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr12.i273.i = getelementptr i8, ptr %152, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i273.i, i32 %150) #8, !srcloc !236
  br label %if.end272

if.end272:                                        ; preds = %r592_clear_reg_mask.exit274.i, %do.end.i, %if.end189
  %call = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call, label %if.end272.while.end_crit_edge, label %if.end272.do.body1_crit_edge

if.end272.do.body1_crit_edge:                     ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

if.end272.while.end_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end272.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_stop_dma(ptr nocapture noundef %dev, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp sgt i32 %4, 2
  br i1 %cmp.i, label %do.end.i, label %entry.r592_clear_reg_mask.exit_crit_edge

entry.r592_clear_reg_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 52, i32 noundef -2, i32 noundef %3, i32 noundef 1) #11
  br label %r592_clear_reg_mask.exit

r592_clear_reg_mask.exit:                         ; preds = %do.end.i, %entry.r592_clear_reg_mask.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %3, -2
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %5) #8, !srcloc !236
  %dummy_dma_page_physical_address = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %dummy_dma_page_physical_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dummy_dma_page_physical_address, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i6 = icmp sgt i32 %10, 2
  br i1 %cmp.i6, label %do.end.i7, label %r592_clear_reg_mask.exit.r592_write_reg.exit_crit_edge

r592_clear_reg_mask.exit.r592_write_reg.exit_crit_edge: ; preds = %r592_clear_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end.i7:                                        ; preds = %r592_clear_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 44, i32 noundef %9) #11
  br label %r592_write_reg.exit

r592_write_reg.exit:                              ; preds = %do.end.i7, %r592_clear_reg_mask.exit.r592_write_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %11) #8, !srcloc !236
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8, !srcloc !233
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i12 = icmp sgt i32 %18, 2
  br i1 %cmp.i12, label %do.end.i14, label %r592_write_reg.exit.r592_clear_reg_mask.exit17_crit_edge

r592_write_reg.exit.r592_clear_reg_mask.exit17_crit_edge: ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit17

do.end.i14:                                       ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -1207959553, i32 noundef %17, i32 noundef 1207959552) #11
  br label %r592_clear_reg_mask.exit17

r592_clear_reg_mask.exit17:                       ; preds = %do.end.i14, %r592_write_reg.exit.r592_clear_reg_mask.exit17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i15 = and i32 %17, -1207959553
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i15) #8
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i16 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i16, i32 %19) #8, !srcloc !236
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %23, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !233
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i20 = icmp sgt i32 %26, 2
  br i1 %cmp.i20, label %do.end.i22, label %r592_clear_reg_mask.exit17.r592_clear_reg_mask.exit25_crit_edge

r592_clear_reg_mask.exit17.r592_clear_reg_mask.exit25_crit_edge: ; preds = %r592_clear_reg_mask.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit25

do.end.i22:                                       ; preds = %r592_clear_reg_mask.exit17
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -18433, i32 noundef %25, i32 noundef 18432) #11
  br label %r592_clear_reg_mask.exit25

r592_clear_reg_mask.exit25:                       ; preds = %do.end.i22, %r592_clear_reg_mask.exit17.r592_clear_reg_mask.exit25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i23 = and i32 %25, -18433
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i23) #8
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i24 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i24, i32 %27) #8, !srcloc !236
  %dma_error = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 12
  %30 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %error, ptr %dma_error, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_irq(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp sgt i32 %4, 2
  br i1 %cmp.i, label %r592_read_reg.exit, label %r592_read_reg.exit.thread

r592_read_reg.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and979 = and i32 %3, -65536
  br label %r592_write_reg.exit

r592_read_reg.exit:                               ; preds = %entry
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 40, i32 noundef %3) #11
  %.pr = load i32, ptr @debug, align 4
  %and9 = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i74 = icmp sgt i32 %.pr, 2
  br i1 %cmp.i74, label %do.end.i75, label %r592_read_reg.exit.r592_write_reg.exit_crit_edge

r592_read_reg.exit.r592_write_reg.exit_crit_edge: ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end.i75:                                       ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 40, i32 noundef %and9) #11
  br label %r592_write_reg.exit

r592_write_reg.exit:                              ; preds = %do.end.i75, %r592_read_reg.exit.r592_write_reg.exit_crit_edge, %r592_read_reg.exit.thread
  %and982 = phi i32 [ %and979, %r592_read_reg.exit.thread ], [ %and9, %r592_read_reg.exit.r592_write_reg.exit_crit_edge ], [ %and9, %do.end.i75 ]
  %shr81 = lshr i32 %3, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %and982) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %5) #8, !srcloc !236
  %and12 = and i32 %shr81, %3
  %and15 = and i32 %and12, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %r592_write_reg.exit.if.end_crit_edge, label %if.then

r592_write_reg.exit.if.end_crit_edge:             ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and17 = and i32 %and12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, ptr @.str.89, ptr @.str.88
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull %cond) #11
  %detect_timer = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %cond28 = select i1 %tobool18.not, i32 50, i32 500
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond28) #8
  %add = add i32 %call2.i, %8
  %call30 = tail call i32 @mod_timer(ptr noundef %detect_timer, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %r592_write_reg.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %r592_write_reg.exit.if.end_crit_edge ]
  %and32 = and i32 %and12, 18432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end.if.end57_crit_edge, label %if.then34

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then34:                                        ; preds = %if.end
  %and36 = and i32 %and12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body44, label %if.then34.if.end56.sink.split_crit_edge

if.then34.if.end56.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.sink.split

do.body44:                                        ; preds = %if.then34
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp45 = icmp sgt i32 %9, 1
  br i1 %cmp45, label %do.body44.if.end56.sink.split_crit_edge, label %do.body44.if.end56_crit_edge

do.body44.if.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body44.if.end56.sink.split_crit_edge:          ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %do.body44.if.end56.sink.split_crit_edge, %if.then34.if.end56.sink.split_crit_edge
  %.str.94.sink = phi ptr [ @.str.91, %if.then34.if.end56.sink.split_crit_edge ], [ @.str.94, %do.body44.if.end56.sink.split_crit_edge ]
  %error.0.ph = phi i32 [ -5, %if.then34.if.end56.sink.split_crit_edge ], [ 0, %do.body44.if.end56.sink.split_crit_edge ]
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.94.sink) #11
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %do.body44.if.end56_crit_edge
  %error.0 = phi i32 [ 0, %do.body44.if.end56_crit_edge ], [ %error.0.ph, %if.end56.sink.split ]
  tail call fastcc void @r592_stop_dma(ptr noundef %data, i32 noundef %error.0)
  %dma_done = getelementptr inbounds %struct.r592_device, ptr %data, i32 0, i32 13
  tail call void @complete(ptr noundef %dma_done) #8
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end.if.end57_crit_edge
  %ret.1 = phi i32 [ 1, %if.end56 ], [ %ret.0, %if.end.if.end57_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_update_card_detect(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp sgt i32 %4, 2
  br i1 %cmp.i, label %do.end.i, label %entry.r592_read_reg.exit_crit_edge

entry.r592_read_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 40, i32 noundef %3) #11
  %.pr = load i32, ptr @debug, align 4
  br label %r592_read_reg.exit

r592_read_reg.exit:                               ; preds = %do.end.i, %entry.r592_read_reg.exit_crit_edge
  %5 = phi i32 [ %4, %entry.r592_read_reg.exit_crit_edge ], [ %.pr, %do.end.i ]
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %r592_read_reg.exit.do.end5_crit_edge

r592_read_reg.exit.do.end5_crit_edge:             ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %r592_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool.not, ptr @.str.99, ptr @.str.98
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %cond) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %r592_read_reg.exit.do.end5_crit_edge
  %and6 = and i32 %3, -50331649
  %reg.0.v = select i1 %tobool.not, i32 16777216, i32 33554432
  %reg.0 = or i32 %reg.0.v, %and6
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i17 = icmp sgt i32 %6, 2
  br i1 %cmp.i17, label %do.end.i18, label %do.end5.r592_write_reg.exit_crit_edge

do.end5.r592_write_reg.exit_crit_edge:            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end.i18:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 40, i32 noundef %reg.0) #11
  br label %r592_write_reg.exit

r592_write_reg.exit:                              ; preds = %do.end.i18, %do.end5.r592_write_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %7) #8, !srcloc !236
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_detect_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_enable_device(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %enable, ptr @.str.29, ptr @.str.30
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %cond) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp sgt i32 %1, 2
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end2
  br i1 %cmp.i, label %do.end.i, label %if.then4.r592_write_reg.exit_crit_edge

if.then4.r592_write_reg.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 32, i32 noundef 3) #11
  br label %r592_write_reg.exit

r592_write_reg.exit:                              ; preds = %do.end.i, %if.then4.r592_write_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !236
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #8, !srcloc !233
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i3 = icmp sgt i32 %8, 2
  br i1 %cmp.i3, label %do.end.i4, label %r592_write_reg.exit.r592_set_reg_mask.exit_crit_edge

r592_write_reg.exit.r592_set_reg_mask.exit_crit_edge: ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_set_reg_mask.exit

do.end.i4:                                        ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 24, i32 noundef -2147483648, i32 noundef %7) #11
  br label %r592_set_reg_mask.exit

r592_set_reg_mask.exit:                           ; preds = %do.end.i4, %r592_write_reg.exit.r592_set_reg_mask.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %7, -2147483648
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %9) #8, !srcloc !236
  tail call void @msleep(i32 noundef 100) #8
  br label %if.end5

if.else:                                          ; preds = %do.end2
  br i1 %cmp.i, label %do.end.i7, label %if.else.r592_write_reg.exit10_crit_edge

if.else.r592_write_reg.exit10_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit10

do.end.i7:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 32, i32 noundef 0) #11
  br label %r592_write_reg.exit10

r592_write_reg.exit10:                            ; preds = %do.end.i7, %if.else.r592_write_reg.exit10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i8 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %mmio.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #8, !srcloc !236
  br label %if.end5

if.end5:                                          ; preds = %r592_write_reg.exit10, %r592_set_reg_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_set_mode(ptr nocapture noundef %dev, i1 noundef zeroext %parallel_mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %parallel_mode, label %do.body4, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp5, label %do.end3, label %do.body.r592_write_reg.exit_crit_edge

do.body.r592_write_reg.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end3:                                          ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i, label %do.end.i, label %do.end3.r592_write_reg.exit_crit_edge

do.end3.r592_write_reg.exit_crit_edge:            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 36, i32 noundef 1) #11
  br label %r592_write_reg.exit

r592_write_reg.exit:                              ; preds = %do.end.i, %do.end3.r592_write_reg.exit_crit_edge, %do.body.r592_write_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !236
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #8, !srcloc !233
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i3 = icmp sgt i32 %7, 2
  br i1 %cmp.i3, label %do.end.i4, label %r592_write_reg.exit.r592_clear_reg_mask.exit_crit_edge

r592_write_reg.exit.r592_clear_reg_mask.exit_crit_edge: ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit

do.end.i4:                                        ; preds = %r592_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 32, i32 noundef -33, i32 noundef %6, i32 noundef 32) #11
  br label %r592_clear_reg_mask.exit

r592_clear_reg_mask.exit:                         ; preds = %do.end.i4, %r592_write_reg.exit.r592_clear_reg_mask.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %6, -33
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %8) #8, !srcloc !236
  br label %if.end13

do.body4:                                         ; preds = %entry
  br i1 %cmp5, label %do.end8, label %do.body4.do.end12_crit_edge

do.body4.do.end12_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end8:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.body4.do.end12_crit_edge
  %mmio.i5 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !233
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i7 = icmp sgt i32 %15, 2
  br i1 %cmp.i7, label %do.end.i9, label %do.end12.r592_set_reg_mask.exit_crit_edge

do.end12.r592_set_reg_mask.exit_crit_edge:        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_set_reg_mask.exit

do.end.i9:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 32, i32 noundef 32, i32 noundef %14) #11
  br label %r592_set_reg_mask.exit

r592_set_reg_mask.exit:                           ; preds = %do.end.i9, %do.end12.r592_set_reg_mask.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %14, 32
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %17 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i5, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %16) #8, !srcloc !236
  %19 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i11 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8, !srcloc !233
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i12 = icmp sgt i32 %23, 2
  br i1 %cmp.i12, label %do.end.i14, label %r592_set_reg_mask.exit.r592_clear_reg_mask.exit17_crit_edge

r592_set_reg_mask.exit.r592_clear_reg_mask.exit17_crit_edge: ; preds = %r592_set_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit17

do.end.i14:                                       ; preds = %r592_set_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 24, i32 noundef -1074790401, i32 noundef %22, i32 noundef 1074790400) #11
  br label %r592_clear_reg_mask.exit17

r592_clear_reg_mask.exit17:                       ; preds = %do.end.i14, %r592_set_reg_mask.exit.r592_clear_reg_mask.exit17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i15 = and i32 %22, -1074790401
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i15) #8
  %25 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i5, align 4
  %add.ptr12.i16 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i16, i32 %24) #8, !srcloc !236
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i18 = icmp sgt i32 %27, 2
  br i1 %cmp.i18, label %do.end.i20, label %r592_clear_reg_mask.exit17.r592_write_reg.exit23_crit_edge

r592_clear_reg_mask.exit17.r592_write_reg.exit23_crit_edge: ; preds = %r592_clear_reg_mask.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit23

do.end.i20:                                       ; preds = %r592_clear_reg_mask.exit17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 36, i32 noundef 3) #11
  br label %r592_write_reg.exit23

r592_write_reg.exit23:                            ; preds = %do.end.i20, %r592_clear_reg_mask.exit17.r592_write_reg.exit23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i22 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 50331648) #8, !srcloc !236
  br label %if.end13

if.end13:                                         ; preds = %r592_write_reg.exit23, %r592_clear_reg_mask.exit
  %frombool = zext i1 %parallel_mode to i8
  %parallel_mode15 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 9
  %30 = ptrtoint ptr %parallel_mode15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %parallel_mode15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_next_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r592_transfer_fifo_dma(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_capable = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %dma_capable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %req = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %long_data, align 1
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp7.not = icmp eq i32 %7, 512
  br i1 %cmp7.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp sgt i32 %8, 1
  br i1 %cmp11, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %dma_error = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 12
  %9 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dma_error, align 4
  %dma_done = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 13
  %10 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma_done, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %15 = getelementptr inbounds %struct.memstick_request, ptr %14, i32 0, i32 4
  %cond = select i1 %cmp, i32 1, i32 2
  %call22 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev18, ptr noundef %15, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %lor.lhs.false25, label %do.end17.do.end32_crit_edge

do.end17.do.end32_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

lor.lhs.false25:                                  ; preds = %do.end17
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %dma_length = getelementptr inbounds %struct.memstick_request, ptr %17, i32 0, i32 4, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp27 = icmp ult i32 %19, 512
  br i1 %cmp27, label %lor.lhs.false25.do.end32_crit_edge, label %if.end35

lor.lhs.false25.do.end32_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

do.end32:                                         ; preds = %lor.lhs.false25.do.end32_crit_edge, %do.end17.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #11
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false25
  %irq_lock.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %mmio.i.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !233
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i.i = icmp sgt i32 %24, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end35.r592_clear_reg_mask.exit.i_crit_edge

if.end35.r592_clear_reg_mask.exit.i_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit.i

do.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -18433, i32 noundef %23, i32 noundef 18432) #11
  br label %r592_clear_reg_mask.exit.i

r592_clear_reg_mask.exit.i:                       ; preds = %do.end.i.i, %if.end35.r592_clear_reg_mask.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %23, -18433
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %25) #8, !srcloc !236
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %29, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #8, !srcloc !233
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i20.i = icmp sgt i32 %32, 2
  br i1 %cmp.i20.i, label %do.end.i22.i, label %r592_clear_reg_mask.exit.i.r592_set_reg_mask.exit.i_crit_edge

r592_clear_reg_mask.exit.i.r592_set_reg_mask.exit.i_crit_edge: ; preds = %r592_clear_reg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_set_reg_mask.exit.i

do.end.i22.i:                                     ; preds = %r592_clear_reg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 40, i32 noundef 1207959552, i32 noundef %31) #11
  br label %r592_set_reg_mask.exit.i

r592_set_reg_mask.exit.i:                         ; preds = %do.end.i22.i, %r592_clear_reg_mask.exit.i.r592_set_reg_mask.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %or.i.i = or i32 %31, 1207959552
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %33) #8, !srcloc !236
  %36 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req, align 4
  %dma_address.i = getelementptr inbounds %struct.memstick_request, ptr %37, i32 0, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_address.i, align 4
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i23.i = icmp sgt i32 %40, 2
  br i1 %cmp.i23.i, label %do.end.i24.i, label %r592_set_reg_mask.exit.i.r592_write_reg.exit.i_crit_edge

r592_set_reg_mask.exit.i.r592_write_reg.exit.i_crit_edge: ; preds = %r592_set_reg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg.exit.i

do.end.i24.i:                                     ; preds = %r592_set_reg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 44, i32 noundef %39) #11
  br label %r592_write_reg.exit.i

r592_write_reg.exit.i:                            ; preds = %do.end.i24.i, %r592_set_reg_mask.exit.i.r592_write_reg.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %41) #8, !srcloc !236
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %45, i32 52
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #8, !srcloc !233
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i29.i = icmp sgt i32 %48, 2
  br i1 %cmp.i29.i, label %r592_read_reg.exit.i, label %r592_read_reg.exit.thread.i

r592_read_reg.exit.thread.i:                      ; preds = %r592_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or38.i = and i32 %47, -4
  %and39.i = or i32 %or38.i, 1
  %or640.i = or i32 %47, 3
  %reg.041.i = select i1 %cmp, i32 %and39.i, i32 %or640.i
  br label %r592_start_dma.exit

r592_read_reg.exit.i:                             ; preds = %r592_write_reg.exit.i
  %call4.i30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 52, i32 noundef %47) #11
  %.pr.i = load i32, ptr @debug, align 4
  %or.i = and i32 %47, -4
  %and.i = or i32 %or.i, 1
  %or6.i = or i32 %47, 3
  %reg.0.i = select i1 %cmp, i32 %and.i, i32 %or6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp.i32.i = icmp sgt i32 %.pr.i, 2
  br i1 %cmp.i32.i, label %do.end.i34.i, label %r592_read_reg.exit.i.r592_start_dma.exit_crit_edge

r592_read_reg.exit.i.r592_start_dma.exit_crit_edge: ; preds = %r592_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_start_dma.exit

do.end.i34.i:                                     ; preds = %r592_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 52, i32 noundef %reg.0.i) #11
  br label %r592_start_dma.exit

r592_start_dma.exit:                              ; preds = %do.end.i34.i, %r592_read_reg.exit.i.r592_start_dma.exit_crit_edge, %r592_read_reg.exit.thread.i
  %reg.043.i = phi i32 [ %reg.041.i, %r592_read_reg.exit.thread.i ], [ %reg.0.i, %r592_read_reg.exit.i.r592_start_dma.exit_crit_edge ], [ %reg.0.i, %do.end.i34.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %reg.043.i) #8
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %51, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %49) #8, !srcloc !236
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #8
  %call39 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end44, label %r592_start_dma.exit.if.end47_crit_edge

r592_start_dma.exit.if.end47_crit_edge:           ; preds = %r592_start_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end44:                                         ; preds = %r592_start_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #11
  tail call fastcc void @r592_stop_dma(ptr noundef %dev, i32 noundef -110)
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %r592_start_dma.exit.if.end47_crit_edge
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 4
  %56 = getelementptr inbounds %struct.memstick_request, ptr %55, i32 0, i32 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev49, ptr noundef %56, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #8
  %57 = ptrtoint ptr %dma_error to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end32, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end32 ], [ %58, %if.end47 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_transfer_fifo_pio(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  %buffer.i1 = alloca [4 x i8], align 4
  %buffer.i = alloca [4 x i8], align 4
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp ugt i8 %3, 7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #8
  %4 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %pio_fifo = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10
  %out = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out, align 4
  %6 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pio_fifo, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %long_data, align 1
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %do.body15

if.then:                                          ; preds = %entry
  %9 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %data = getelementptr inbounds %struct.anon.73, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv7 = zext i8 %11 to i32
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  tail call fastcc void @r592_write_fifo_pio(ptr noundef %dev, ptr noundef %data, i32 noundef %conv7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #8
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buffer.i, align 4
  %13 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pio_fifo, align 4
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i = icmp eq i32 %14, %16
  br i1 %cmp.i, label %if.then4.r592_flush_fifo_write.exit_crit_edge, label %if.end.i

if.then4.r592_flush_fifo_write.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_flush_fifo_write.exit

if.end.i:                                         ; preds = %if.then4
  %call.i = call i32 @__kfifo_out(ptr noundef %pio_fifo, ptr noundef nonnull %buffer.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i.i = icmp sgt i32 %19, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.r592_write_reg_raw_be.exit.i_crit_edge

if.end.i.r592_write_reg_raw_be.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg_raw_be.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 48, i32 noundef %18) #11
  br label %r592_write_reg_raw_be.exit.i

r592_write_reg_raw_be.exit.i:                     ; preds = %do.end.i.i, %if.end.i.r592_write_reg_raw_be.exit.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #8, !srcloc !236
  br label %r592_flush_fifo_write.exit

r592_flush_fifo_write.exit:                       ; preds = %r592_write_reg_raw_be.exit.i, %if.then4.r592_flush_fifo_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @r592_read_fifo_pio(ptr noundef %dev, ptr noundef %data, i32 noundef %conv7)
  br label %cleanup

do.body15:                                        ; preds = %entry
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !246
  %and.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not = icmp eq i32 %and.i, 0
  br i1 %tobool26.not, label %if.then27, label %do.body15.do.end30_crit_edge

do.body15.do.end30_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body15.do.end30_crit_edge
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req, align 4
  %25 = getelementptr inbounds %struct.memstick_request, ptr %24, i32 0, i32 4
  %or = select i1 %cmp, i32 5, i32 3
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %25, i32 noundef 1, i32 noundef %or) #8
  %call3415 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #8
  br i1 %call3415, label %while.body.lr.ph, label %do.end30.while.end_crit_edge

do.end30.while.end_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end30
  %addr38 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %length39 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %26 = ptrtoint ptr %addr38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr38, align 4
  %28 = ptrtoint ptr %length39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length39, align 4
  br i1 %cmp, label %if.then36, label %if.else37

if.then36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @r592_write_fifo_pio(ptr noundef %dev, ptr noundef %27, i32 noundef %29)
  br label %if.end40

if.else37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @r592_read_fifo_pio(ptr noundef %dev, ptr noundef %27, i32 noundef %29)
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then36
  %call34 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #8
  br i1 %call34, label %if.end40.while.body_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %do.end30.while.end_crit_edge
  br i1 %cmp, label %if.then42, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i1) #8
  %30 = ptrtoint ptr %buffer.i1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %buffer.i1, align 4
  %31 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pio_fifo, align 4
  %33 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i4 = icmp eq i32 %32, %34
  br i1 %cmp.i4, label %if.then42.r592_flush_fifo_write.exit13_crit_edge, label %if.end.i7

if.then42.r592_flush_fifo_write.exit13_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_flush_fifo_write.exit13

if.end.i7:                                        ; preds = %if.then42
  %call.i5 = call i32 @__kfifo_out(ptr noundef %pio_fifo, ptr noundef nonnull %buffer.i1, i32 noundef 4) #8
  %35 = ptrtoint ptr %buffer.i1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer.i1, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i.i6 = icmp sgt i32 %37, 2
  br i1 %cmp.i.i6, label %do.end.i.i9, label %if.end.i7.r592_write_reg_raw_be.exit.i12_crit_edge

if.end.i7.r592_write_reg_raw_be.exit.i12_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg_raw_be.exit.i12

do.end.i.i9:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 48, i32 noundef %36) #11
  br label %r592_write_reg_raw_be.exit.i12

r592_write_reg_raw_be.exit.i12:                   ; preds = %do.end.i.i9, %if.end.i7.r592_write_reg_raw_be.exit.i12_crit_edge
  %mmio.i.i10 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %38 = ptrtoint ptr %mmio.i.i10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %39, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 %36) #8, !srcloc !236
  br label %r592_flush_fifo_write.exit13

r592_flush_fifo_write.exit13:                     ; preds = %r592_write_reg_raw_be.exit.i12, %if.then42.r592_flush_fifo_write.exit13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i1) #8
  br label %if.end43

if.end43:                                         ; preds = %r592_flush_fifo_write.exit13, %while.end.if.end43_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %miter) #8
  br i1 %tobool26.not, label %if.then53, label %if.end43.do.body55_crit_edge

if.end43.do.body55_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_on() #8
  br label %do.body55

do.body55:                                        ; preds = %if.then53, %if.end43.do.body55_crit_edge
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !247
  %and.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool63.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool63.not, label %if.then67, label %do.body55.do.end70_crit_edge, !prof !248

do.body55.do.end70_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.body55.do.end70_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.else, %r592_flush_fifo_write.exit
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_write_fifo_pio(ptr noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  %tmp1 = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_fifo = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pio_fifo, align 4
  %out = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end50_crit_edge, label %if.then

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp1) #8
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tmp1, align 4
  %call = tail call i32 @__kfifo_in(ptr noundef %pio_fifo, ptr noundef %buffer, i32 noundef %len) #8
  %5 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pio_fifo, align 4
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  %sub = sub i32 %6, %8
  %mask = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp10 = icmp ugt i32 %sub, %10
  br i1 %cmp10, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %sub14 = sub i32 %len, %call
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call
  %call22 = call i32 @__kfifo_out(ptr noundef %pio_fifo, ptr noundef nonnull %tmp1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call22)
  %cmp24.not = icmp eq i32 %call22, 4
  br i1 %cmp24.not, label %if.end.if.end40_crit_edge, label %do.end, !prof !250

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 340, i32 noundef 9, ptr noundef null) #8
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.end.if.end40_crit_edge
  %11 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp1, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp sgt i32 %13, 2
  br i1 %cmp.i, label %do.end.i, label %if.end40.cleanup.thread_crit_edge

if.end40.cleanup.thread_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 48, i32 noundef %12) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end.i, %if.end40.cleanup.thread_crit_edge
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1) #8
  br label %if.end50

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1) #8
  br label %if.end105

if.end50:                                         ; preds = %cleanup.thread, %entry.if.end50_crit_edge
  %len.addr.1 = phi i32 [ %len, %entry.if.end50_crit_edge ], [ %sub14, %cleanup.thread ]
  %buffer.addr.1 = phi ptr [ %buffer, %entry.if.end50_crit_edge ], [ %add.ptr, %cleanup.thread ]
  %16 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pio_fifo, align 4
  %18 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp57.not = icmp eq i32 %17, %19
  br i1 %cmp57.not, label %if.end50.if.end83_crit_edge, label %do.end77, !prof !250

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end77:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 344, i32 noundef 9, ptr noundef null) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end50.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.1)
  %cmp91138 = icmp sgt i32 %len.addr.1, 3
  br i1 %cmp91138, label %while.body.lr.ph, label %if.end83.while.end_crit_edge

if.end83.while.end_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end83
  %mmio.i133 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %r592_write_reg_raw_be.exit135.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.2140 = phi ptr [ %buffer.addr.1, %while.body.lr.ph ], [ %add.ptr93, %r592_write_reg_raw_be.exit135.while.body_crit_edge ]
  %len.addr.2139 = phi i32 [ %len.addr.1, %while.body.lr.ph ], [ %sub94, %r592_write_reg_raw_be.exit135.while.body_crit_edge ]
  %20 = ptrtoint ptr %buffer.addr.2140 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer.addr.2140, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i130 = icmp sgt i32 %22, 2
  br i1 %cmp.i130, label %do.end.i132, label %while.body.r592_write_reg_raw_be.exit135_crit_edge

while.body.r592_write_reg_raw_be.exit135_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_write_reg_raw_be.exit135

do.end.i132:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 48, i32 noundef %21) #11
  br label %r592_write_reg_raw_be.exit135

r592_write_reg_raw_be.exit135:                    ; preds = %do.end.i132, %while.body.r592_write_reg_raw_be.exit135_crit_edge
  %23 = ptrtoint ptr %mmio.i133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %24, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %21) #8, !srcloc !236
  %add.ptr93 = getelementptr i8, ptr %buffer.addr.2140, i32 4
  %sub94 = add nsw i32 %len.addr.2139, -4
  %cmp91 = icmp sgt i32 %len.addr.2139, 7
  br i1 %cmp91, label %r592_write_reg_raw_be.exit135.while.body_crit_edge, label %r592_write_reg_raw_be.exit135.while.end_crit_edge

r592_write_reg_raw_be.exit135.while.end_crit_edge: ; preds = %r592_write_reg_raw_be.exit135
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

r592_write_reg_raw_be.exit135.while.body_crit_edge: ; preds = %r592_write_reg_raw_be.exit135
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %r592_write_reg_raw_be.exit135.while.end_crit_edge, %if.end83.while.end_crit_edge
  %len.addr.2.lcssa = phi i32 [ %len.addr.1, %if.end83.while.end_crit_edge ], [ %sub94, %r592_write_reg_raw_be.exit135.while.end_crit_edge ]
  %buffer.addr.2.lcssa = phi ptr [ %buffer.addr.1, %if.end83.while.end_crit_edge ], [ %add.ptr93, %r592_write_reg_raw_be.exit135.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2.lcssa)
  %tobool95.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %tobool95.not, label %while.end.if.end105_crit_edge, label %if.then96

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then96:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = call i32 @__kfifo_in(ptr noundef %pio_fifo, ptr noundef %buffer.addr.2.lcssa, i32 noundef %len.addr.2.lcssa) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %while.end.if.end105_crit_edge, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_read_fifo_pio(ptr noundef %dev, ptr noundef %buffer, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %pio_fifo = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pio_fifo, align 4
  %out = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 10, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.smin.i32(i32 %len, i32 4)
  %call = tail call i32 @__kfifo_out(ptr noundef %pio_fifo, ptr noundef %buffer, i32 noundef %4) #8
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call
  %sub = sub i32 %len, %call
  %5 = ptrtoint ptr %pio_fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pio_fifo, align 4
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp13 = icmp eq i32 %6, %8
  br i1 %cmp13, label %if.then.if.end17_crit_edge, label %if.then.cleanup69_crit_edge

if.then.cleanup69_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %len.addr.0 = phi i32 [ %len, %entry.if.end17_crit_edge ], [ %sub, %if.then.if.end17_crit_edge ]
  %buffer.addr.0 = phi ptr [ %buffer, %entry.if.end17_crit_edge ], [ %add.ptr, %if.then.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0)
  %cmp18100 = icmp sgt i32 %len.addr.0, 3
  br i1 %cmp18100, label %while.body.lr.ph, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end17
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %r592_read_reg_raw_be.exit.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.1102 = phi ptr [ %buffer.addr.0, %while.body.lr.ph ], [ %add.ptr21, %r592_read_reg_raw_be.exit.while.body_crit_edge ]
  %len.addr.1101 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub22, %r592_read_reg_raw_be.exit.while.body_crit_edge ]
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp sgt i32 %12, 2
  br i1 %cmp.i, label %do.end.i, label %while.body.r592_read_reg_raw_be.exit_crit_edge

while.body.r592_read_reg_raw_be.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg_raw_be.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 48, i32 noundef %11) #11
  br label %r592_read_reg_raw_be.exit

r592_read_reg_raw_be.exit:                        ; preds = %do.end.i, %while.body.r592_read_reg_raw_be.exit_crit_edge
  %13 = ptrtoint ptr %buffer.addr.1102 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %buffer.addr.1102, align 4
  %add.ptr21 = getelementptr i8, ptr %buffer.addr.1102, i32 4
  %sub22 = add nsw i32 %len.addr.1101, -4
  %cmp18 = icmp sgt i32 %len.addr.1101, 7
  br i1 %cmp18, label %r592_read_reg_raw_be.exit.while.body_crit_edge, label %r592_read_reg_raw_be.exit.while.end_crit_edge

r592_read_reg_raw_be.exit.while.end_crit_edge:    ; preds = %r592_read_reg_raw_be.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

r592_read_reg_raw_be.exit.while.body_crit_edge:   ; preds = %r592_read_reg_raw_be.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %r592_read_reg_raw_be.exit.while.end_crit_edge, %if.end17.while.end_crit_edge
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end17.while.end_crit_edge ], [ %sub22, %r592_read_reg_raw_be.exit.while.end_crit_edge ]
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.0, %if.end17.while.end_crit_edge ], [ %add.ptr21, %r592_read_reg_raw_be.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa)
  %tobool23.not = icmp eq i32 %len.addr.1.lcssa, 0
  br i1 %tobool23.not, label %while.end.cleanup69_crit_edge, label %if.then24

while.end.cleanup69_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.then24:                                        ; preds = %while.end
  %mmio.i94 = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !233
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i96 = icmp sgt i32 %17, 2
  br i1 %cmp.i96, label %do.end.i98, label %if.then24.r592_read_reg_raw_be.exit99_crit_edge

if.then24.r592_read_reg_raw_be.exit99_crit_edge:  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_read_reg_raw_be.exit99

do.end.i98:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 48, i32 noundef %16) #11
  br label %r592_read_reg_raw_be.exit99

r592_read_reg_raw_be.exit99:                      ; preds = %do.end.i98, %if.then24.r592_read_reg_raw_be.exit99_crit_edge
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %tmp, align 4
  %call34 = call i32 @__kfifo_in(ptr noundef %pio_fifo, ptr noundef nonnull %tmp, i32 noundef 4) #8
  %call42 = call i32 @__kfifo_out(ptr noundef %pio_fifo, ptr noundef %buffer.addr.1.lcssa, i32 noundef %len.addr.1.lcssa) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1.lcssa, i32 %call42)
  %phi.cmp = icmp eq i32 %len.addr.1.lcssa, %call42
  br i1 %phi.cmp, label %r592_read_reg_raw_be.exit99.cleanup69_crit_edge, label %do.end, !prof !250

r592_read_reg_raw_be.exit99.cleanup69_crit_edge:  ; preds = %r592_read_reg_raw_be.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

do.end:                                           ; preds = %r592_read_reg_raw_be.exit99
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 407, i32 noundef 9, ptr noundef null) #8
  br label %cleanup69

cleanup69:                                        ; preds = %do.end, %r592_read_reg_raw_be.exit99.cleanup69_crit_edge, %while.end.cleanup69_crit_edge, %if.then.cleanup69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_suspend(ptr nocapture noundef readonly %core_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %core_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @r592_clear_interrupts(ptr noundef %1)
  %host = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @memstick_suspend_host(ptr noundef %3) #8
  %detect_timer = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @del_timer_sync(ptr noundef %detect_timer) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r592_resume(ptr nocapture noundef readonly %core_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %core_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @r592_clear_interrupts(ptr noundef %1)
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %do.end2.i, label %entry.r592_enable_device.exit_crit_edge

entry.r592_enable_device.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end2.i:                                        ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i.i, label %do.end.i7.i, label %do.end2.i.r592_enable_device.exit_crit_edge

do.end2.i.r592_enable_device.exit_crit_edge:      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_enable_device.exit

do.end.i7.i:                                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 32, i32 noundef 0) #11
  br label %r592_enable_device.exit

r592_enable_device.exit:                          ; preds = %do.end.i7.i, %do.end2.i.r592_enable_device.exit_crit_edge, %entry.r592_enable_device.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %mmio.i8.i = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %mmio.i8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #8, !srcloc !236
  %host = getelementptr inbounds %struct.r592_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  tail call void @memstick_resume_host(ptr noundef %6) #8
  tail call fastcc void @r592_update_card_detect(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r592_clear_interrupts(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r592_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !233
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp sgt i32 %4, 2
  br i1 %cmp.i, label %do.end.i, label %entry.r592_clear_reg_mask.exit_crit_edge

entry.r592_clear_reg_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -32513, i32 noundef %3, i32 noundef 32512) #11
  br label %r592_clear_reg_mask.exit

r592_clear_reg_mask.exit:                         ; preds = %do.end.i, %entry.r592_clear_reg_mask.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %3, -32513
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %5) #8, !srcloc !236
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #8, !srcloc !233
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i4 = icmp sgt i32 %12, 2
  br i1 %cmp.i4, label %do.end.i6, label %r592_clear_reg_mask.exit.r592_clear_reg_mask.exit9_crit_edge

r592_clear_reg_mask.exit.r592_clear_reg_mask.exit9_crit_edge: ; preds = %r592_clear_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %r592_clear_reg_mask.exit9

do.end.i6:                                        ; preds = %r592_clear_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 40, i32 noundef -2130706433, i32 noundef %11, i32 noundef 2130706432) #11
  br label %r592_clear_reg_mask.exit9

r592_clear_reg_mask.exit9:                        ; preds = %do.end.i6, %r592_clear_reg_mask.exit.r592_clear_reg_mask.exit9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %and.i7 = and i32 %11, -2130706433
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i7) #8
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i8 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i8, i32 %13) #8, !srcloc !236
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_suspend_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_resume_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !62, !64, !65, !67, !68, !70, !72, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !215, !216, !218, !219, !221}
!llvm.named.register.sp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__ksymtab_memstick_debug_get_tpc_name, !1, !"__ksymtab_memstick_debug_get_tpc_name", i1 false, i1 false}
!1 = !{!"../drivers/memstick/host/r592.c", i32 51, i32 1}
!2 = !{ptr @__initcall__kmod_r592__253_887_r592_pci_driver_init6, !3, !"__initcall__kmod_r592__253_887_r592_pci_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/memstick/host/r592.c", i32 887, i32 1}
!4 = !{ptr @__exitcall_r592_pci_driver_exit, !3, !"__exitcall_r592_pci_driver_exit", i1 false, i1 false}
!5 = !{ptr @__param_enable_dma, !6, !"__param_enable_dma", i1 false, i1 false}
!6 = !{!"../drivers/memstick/host/r592.c", i32 889, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_dmatype254, !6, !"__UNIQUE_ID_enable_dmatype254", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_dma255, !9, !"__UNIQUE_ID_enable_dma255", i1 false, i1 false}
!9 = !{!"../drivers/memstick/host/r592.c", i32 890, i32 1}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/memstick/host/r592.c", i32 891, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype256, !11, !"__UNIQUE_ID_debugtype256", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug257, !14, !"__UNIQUE_ID_debug257", i1 false, i1 false}
!14 = !{!"../drivers/memstick/host/r592.c", i32 892, i32 1}
!15 = !{ptr @__UNIQUE_ID_file258, !16, !"__UNIQUE_ID_file258", i1 false, i1 false}
!16 = !{!"../drivers/memstick/host/r592.c", i32 894, i32 1}
!17 = !{ptr @__UNIQUE_ID_license259, !16, !"__UNIQUE_ID_license259", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author260, !19, !"__UNIQUE_ID_author260", i1 false, i1 false}
!19 = !{!"../drivers/memstick/host/r592.c", i32 895, i32 1}
!20 = !{ptr @__UNIQUE_ID_description261, !21, !"__UNIQUE_ID_description261", i1 false, i1 false}
!21 = !{!"../drivers/memstick/host/r592.c", i32 896, i32 1}
!22 = !{ptr @debug, !23, !"debug", i1 false, i1 false}
!23 = !{!"../drivers/memstick/host/r592.c", i32 24, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memstick/host/r592.c", i32 27, i32 2}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memstick/host/r592.c", i32 28, i32 2}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memstick/host/r592.c", i32 29, i32 2}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memstick/host/r592.c", i32 30, i32 2}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memstick/host/r592.c", i32 31, i32 2}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memstick/host/r592.c", i32 32, i32 2}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memstick/host/r592.c", i32 33, i32 2}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memstick/host/r592.c", i32 34, i32 2}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memstick/host/r592.c", i32 35, i32 2}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memstick/host/r592.c", i32 36, i32 2}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memstick/host/r592.c", i32 37, i32 2}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memstick/host/r592.c", i32 38, i32 2}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memstick/host/r592.c", i32 39, i32 2}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memstick/host/r592.c", i32 40, i32 2}
!52 = !{ptr @tpc_names, !53, !"tpc_names", i1 false, i1 false}
!53 = !{!"../drivers/memstick/host/r592.c", i32 26, i32 20}
!54 = !{ptr @.str.14, !3, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @r592_pci_driver, !56, !"r592_pci_driver", i1 false, i1 false}
!56 = !{!"../drivers/memstick/host/r592.c", i32 879, i32 26}
!57 = !{ptr @r592_pci_id_tbl, !58, !"r592_pci_id_tbl", i1 false, i1 false}
!58 = !{!"../drivers/memstick/host/r592.c", i32 725, i32 35}
!59 = !{ptr @r592_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/memstick/host/r592.c", i32 769, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @r592_probe.__key.16, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/memstick/host/r592.c", i32 770, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @r592_probe.__key.18, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/memstick/host/r592.c", i32 773, i32 2}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memstick/host/r592.c", i32 781, i32 19}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memstick/host/r592.c", i32 802, i32 2}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @r592_probe._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @r592_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/memstick/host/r592.c", i32 721, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @r592_submit_req._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @r592_submit_req._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memstick/host/r592.c", i32 134, i32 2}
!86 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @r592_enable_device._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @r592_enable_device._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memstick/host/r592.c", i32 66, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @r592_write_reg._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @r592_write_reg._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memstick/host/r592.c", i32 91, i32 2}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @r592_set_reg_mask._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @r592_set_reg_mask._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memstick/host/r592.c", i32 156, i32 3}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @r592_set_mode._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @r592_set_mode._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memstick/host/r592.c", i32 164, i32 3}
!108 = !{ptr @r592_set_mode._entry.37, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @r592_set_mode._entry_ptr.39, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memstick/host/r592.c", i32 100, i32 2}
!112 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @r592_clear_reg_mask._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @r592_clear_reg_mask._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memstick/host/r592.c", i32 58, i32 2}
!117 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @r592_read_reg._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @r592_read_reg._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/memstick/host/r592.c", i32 572, i32 3}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memstick/host/r592.c", i32 578, i32 5}
!124 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @r592_process_thread._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @r592_process_thread._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/memstick/host/r592.c", i32 580, i32 5}
!129 = !{ptr @r592_process_thread._entry.46, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @r592_process_thread._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/memstick/host/r592.c", i32 585, i32 5}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/memstick/host/r592.c", i32 589, i32 4}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/memstick/host/r592.c", i32 461, i32 3}
!137 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @r592_execute_tpc._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @r592_execute_tpc._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memstick/host/r592.c", i32 471, i32 3}
!142 = !{ptr @r592_execute_tpc._entry.53, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @r592_execute_tpc._entry_ptr.55, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memstick/host/r592.c", i32 477, i32 3}
!146 = !{ptr @r592_execute_tpc._entry.56, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @r592_execute_tpc._entry_ptr.58, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/memstick/host/r592.c", i32 482, i32 2}
!150 = !{ptr @r592_execute_tpc._entry.59, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @r592_execute_tpc._entry_ptr.61, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memstick/host/r592.c", i32 520, i32 3}
!154 = !{ptr @r592_execute_tpc._entry.62, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @r592_execute_tpc._entry_ptr.64, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/memstick/host/r592.c", i32 527, i32 3}
!158 = !{ptr @r592_execute_tpc._entry.65, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @r592_execute_tpc._entry_ptr.67, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memstick/host/r592.c", i32 556, i32 3}
!162 = !{ptr @r592_execute_tpc._entry.68, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @r592_execute_tpc._entry_ptr.70, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memstick/host/r592.c", i32 214, i32 2}
!166 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @r592_test_fifo_empty._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @r592_test_fifo_empty._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/memstick/host/r592.c", i32 220, i32 2}
!171 = !{ptr @r592_test_fifo_empty._entry.73, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @r592_test_fifo_empty._entry_ptr.75, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memstick/host/r592.c", i32 289, i32 2}
!175 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @r592_transfer_fifo_dma._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @r592_transfer_fifo_dma._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/memstick/host/r592.c", i32 299, i32 3}
!180 = !{ptr @r592_transfer_fifo_dma._entry.78, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @r592_transfer_fifo_dma._entry_ptr.80, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/memstick/host/r592.c", i32 308, i32 3}
!184 = !{ptr @r592_transfer_fifo_dma._entry.81, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @r592_transfer_fifo_dma._entry_ptr.83, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/memstick/host/r592.c", i32 82, i32 2}
!188 = !{ptr @r592_write_reg_raw_be._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @r592_write_reg_raw_be._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memstick/host/r592.c", i32 74, i32 2}
!192 = !{ptr @r592_read_reg_raw_be._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @r592_read_reg_raw_be._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memstick/host/r592.c", i32 654, i32 3}
!196 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @r592_irq._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @r592_irq._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/memstick/host/r592.c", i32 665, i32 4}
!203 = !{ptr @r592_irq._entry.90, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @r592_irq._entry_ptr.92, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/memstick/host/r592.c", i32 668, i32 4}
!207 = !{ptr @r592_irq._entry.93, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @r592_irq._entry_ptr.95, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/memstick/host/r592.c", i32 603, i32 2}
!211 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @r592_update_card_detect._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @r592_update_card_detect._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @r592_pm_ops, !217, !"r592_pm_ops", i1 false, i1 false}
!217 = !{!"../drivers/memstick/host/r592.c", i32 875, i32 8}
!218 = !{ptr @__param_str_enable_dma, !6, !"__param_str_enable_dma", i1 false, i1 false}
!219 = !{ptr @r592_enable_dma, !220, !"r592_enable_dma", i1 false, i1 false}
!220 = !{!"../drivers/memstick/host/r592.c", i32 23, i32 13}
!221 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!222 = !{!"sp"}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i8 0, i8 2}
!233 = !{i64 4649054}
!234 = !{i64 2154621803}
!235 = !{i64 2154625684}
!236 = !{i64 4648636}
!237 = !{i64 2154677304}
!238 = !{i64 2154685714}
!239 = !{i64 2154690447}
!240 = !{i64 2154632583}
!241 = !{i64 2154635700}
!242 = !{i64 2154630485}
!243 = !{i64 2154636586}
!244 = !{i64 2154636428}
!245 = !{i64 2154633444}
!246 = !{i64 622038, i64 622099}
!247 = !{i64 624770}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{i64 625055}
!250 = !{!"branch_weights", i32 2000, i32 1}
