; ModuleID = '/llk/IR_all_yes/kernel/dma/debug.c_pt.bc'
source_filename = "../kernel/dma/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+debug_dma_map_single\22, \22a\22\09"
module asm "\09.weak\09__crc_debug_dma_map_single\09\09\09\09"
module asm "\09.long\09__crc_debug_dma_map_single\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_dma_map_single:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_dma_map_single\22\09\09\09\09\09"
module asm "__kstrtabns_debug_dma_map_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+debug_dma_mapping_error\22, \22a\22\09"
module asm "\09.weak\09__crc_debug_dma_mapping_error\09\09\09\09"
module asm "\09.long\09__crc_debug_dma_mapping_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_dma_mapping_error:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_dma_mapping_error\22\09\09\09\09\09"
module asm "__kstrtabns_debug_dma_mapping_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hash_bucket = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_debug_entry = type { %struct.list_head, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [44 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.70 = type { ptr }

@dma_entry_hash = internal global { [16384 x %struct.hash_bucket], [212992 x i8] } zeroinitializer, align 32
@debug_dma_dump_mappings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s idx %d P=%Lx N=%lx D=%Lx L=%Lx %s %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"debug_dma_dump_mappings\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/dma/debug.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@debug_dma_dump_mappings._entry_ptr = internal global ptr @debug_dma_dump_mappings._entry, section ".printk_index", align 4
@type2name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@dir2name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@maperr2str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_debug__232_812_dma_debug_fs_init1s = internal global ptr @dma_debug_fs_init, section ".initcall1s.init", align 4
@dma_debug_add_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DMA-API: dma_debug_add_bus: out of memory\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_debug_add_bus\00", [46 x i8] zeroinitializer }, align 32
@dma_debug_add_bus._entry_ptr = internal global ptr @dma_debug_add_bus._entry, section ".printk_index", align 4
@__initcall__kmod_debug__233_918_dma_debug_init1 = internal global ptr @dma_debug_init, section ".initcall1.init", align 4
@__setup_str_dma_debug_cmdline = internal constant [11 x i8] c"dma_debug=\00", section ".init.rodata", align 1
@__setup_dma_debug_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_dma_debug_cmdline, ptr @dma_debug_cmdline, i32 0 }, section ".init.setup", align 4
@__setup_str_dma_debug_entries_cmdline = internal constant [19 x i8] c"dma_debug_entries=\00", section ".init.rodata", align 1
@__setup_dma_debug_entries_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_dma_debug_entries_cmdline, ptr @dma_debug_entries_cmdline, i32 0 }, section ".init.setup", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@error_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@show_all_errors = internal global i32 0, section ".data..read_mostly", align 4
@show_num_errors = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"DMA-API: %s %s: device driver maps memory from invalid area [addr=%p] [len=%lu]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"DMA-API: %s %s: device driver maps memory from vmalloc area [addr=%p] [len=%lu]\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_debug_dma_map_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_dma_map_single = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_dma_map_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_dma_map_single to i32), ptr @__kstrtab_debug_dma_map_single, ptr @__kstrtabns_debug_dma_map_single }, section "___ksymtab+debug_dma_map_single", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_debug_dma_mapping_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_dma_mapping_error = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_dma_mapping_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_dma_mapping_error to i32), ptr @__kstrtab_debug_dma_mapping_error, ptr @__kstrtabns_debug_dma_mapping_error }, section "___ksymtab+debug_dma_mapping_error", align 4
@__setup_str_dma_debug_driver_setup = internal constant [18 x i8] c"dma_debug_driver=\00", section ".init.rodata", align 1
@__setup_dma_debug_driver_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_dma_debug_driver_setup, ptr @dma_debug_driver_setup, i32 0 }, section ".init.setup", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"single\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scather-gather\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coherent\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resource\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA_BIDIRECTIONAL\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA_TO_DEVICE\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA_FROM_DEVICE\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMA_NONE\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma map error check not applicable\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dma map error not checked\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma map error checked\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma-api\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@global_disable = internal global i8 0, section ".data..read_mostly", align 1
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"error_count\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"all_errors\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"num_errors\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"num_free_entries\00", [47 x i8] zeroinitializer }, align 32
@num_free_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"min_free_entries\00", [47 x i8] zeroinitializer }, align 32
@min_free_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_total_entries\00", [47 x i8] zeroinitializer }, align 32
@nr_total_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver_filter\00", [18 x i8] zeroinitializer }, align 32
@filter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @filter_read, ptr @filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dump\00", [27 x i8] zeroinitializer }, align 32
@dump_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@current_driver_name = internal global [64 x i8] zeroinitializer, section ".data..read_mostly", align 1
@driver_name_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"driver_name_lock\00", [47 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@filter_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016DMA-API: switching off dma-debug driver filter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"filter_write\00", [19 x i8] zeroinitializer }, align 32
@filter_write._entry_ptr = internal global ptr @filter_write._entry, section ".printk_index", align 4
@current_driver = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@filter_write._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016DMA-API: enable driver filter for driver [%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@filter_write._entry_ptr.37 = internal global ptr @filter_write._entry.35, section ".printk_index", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s %s %s idx %d P=%llx N=%lx D=%llx L=%llx %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@dma_debug_initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.42 = internal constant { [205 x i8], [51 x i8] } { [205 x i8] c"DMA-API: %s %s: device driver has pending DMA allocations while released from device [count=%d]\0AOne of leaked entries details: [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [mapped as %s]\0A\00", [51 x i8] zeroinitializer }, align 32
@dma_debug_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dma_entry_hash[i].lock\00", [40 x i8] zeroinitializer }, align 32
@nr_prealloc_entries = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@dma_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016DMA-API: preallocated %d debug entries\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma_debug_init\00", [17 x i8] zeroinitializer }, align 32
@dma_debug_init._entry_ptr = internal global ptr @dma_debug_init._entry, section ".printk_index", align 4
@dma_debug_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014DMA-API: %d debug entries requested but only %d allocated\0A\00", [35 x i8] zeroinitializer }, align 32
@dma_debug_init._entry_ptr.48 = internal global ptr @dma_debug_init._entry.46, section ".printk_index", align 4
@dma_debug_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DMA-API: debugging out of memory error - disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@dma_debug_init._entry_ptr.51 = internal global ptr @dma_debug_init._entry.49, section ".printk_index", align 4
@dma_debug_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016DMA-API: debugging enabled by kernel config\0A\00", [49 x i8] zeroinitializer }, align 32
@dma_debug_init._entry_ptr.54 = internal global ptr @dma_debug_init._entry.52, section ".printk_index", align 4
@free_entries = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @free_entries, ptr @free_entries }, [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@dma_debug_cmdline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016DMA-API: debugging disabled on kernel command line\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_debug_cmdline\00", [46 x i8] zeroinitializer }, align 32
@dma_debug_cmdline._entry_ptr = internal global ptr @dma_debug_cmdline._entry, section ".printk_index", align 4
@dump_entry_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014DMA-API: Mapped at:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dump_entry_trace\00", [47 x i8] zeroinitializer }, align 32
@dump_entry_trace._entry_ptr = internal global ptr @dump_entry_trace._entry, section ".printk_index", align 4
@free_entries_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dma_entry_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DMA-API: debugging out of memory - disabling\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_entry_alloc\00", [16 x i8] zeroinitializer }, align 32
@dma_entry_alloc._entry_ptr = internal global ptr @dma_entry_alloc._entry, section ".printk_index", align 4
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"free_entries_lock\00", [46 x i8] zeroinitializer }, align 32
@__dma_entry_alloc_check_leak._entry = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 616, ptr null, ptr null }, align 1
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016DMA-API: dma_debug_entry pool grown to %u (%u00%%)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__dma_entry_alloc_check_leak\00", [35 x i8] zeroinitializer }, align 32
@__dma_entry_alloc_check_leak._entry_ptr = internal global ptr @__dma_entry_alloc_check_leak._entry, section ".printk_index", align 4
@.str.65 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"DMA-API: %s %s: device driver maps memory from stack [addr=%p]\0A\00", [32 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@.str.67 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"DMA-API: %s %s: device driver maps memory from kernel text or rodata [addr=%p] [len=%lu]\0A\00", [38 x i8] zeroinitializer }, align 32
@add_dma_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013DMA-API: cacheline tracking ENOMEM, dma-debug disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_dma_entry\00", [18 x i8] zeroinitializer }, align 32
@add_dma_entry._entry_ptr = internal global ptr @add_dma_entry._entry, section ".printk_index", align 4
@.str.70 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"DMA-API: %s %s: cacheline tracking EEXIST, overlapping mappings aren't supported\0A\00", [46 x i8] zeroinitializer }, align 32
@radix_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.71, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dma_active_cacheline = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 2048, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radix_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dma_active_cacheline.xa_lock\00", [35 x i8] zeroinitializer }, align 32
@active_cacheline_inc_overlap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DMA-API: exceeded %d overlapping mappings of cacheline %pa\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"DMA-API: %s %s: device driver tries to free an invalid DMA memory address\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"DMA-API: %s %s: device driver tries to free DMA memory it has not allocated [device address=0x%016llx] [size=%llu bytes]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"DMA-API: %s %s: device driver frees DMA memory with different size [device address=0x%016llx] [map size=%llu bytes] [unmap size=%llu bytes]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"DMA-API: %s %s: device driver frees DMA memory with wrong function [device address=0x%016llx] [size=%llu bytes] [mapped as %s] [unmapped as %s]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [178 x i8], [46 x i8] } { [178 x i8] c"DMA-API: %s %s: device driver frees DMA memory with different CPU address [device address=0x%016llx] [size=%llu bytes] [cpu alloc address=0x%016llx] [cpu free address=0x%016llx]\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"DMA-API: %s %s: device driver frees DMA sg list with different entry count [map count=%d] [unmap count=%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"DMA-API: %s %s: device driver frees DMA memory with different direction [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [unmapped with %s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"DMA-API: %s %s: device driver failed to check map error[device address=0x%016llx] [size=%llu bytes] [mapped as %s]\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"DMA-API: %s %s: mapping sg segment longer than device claims to support [len=%u] [max=%u]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"DMA-API: %s %s: mapping sg segment across boundary [start=0x%016llx] [end=0x%016llx] [boundary=0x%016llx]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"DMA-API: %s %s: device driver tries to sync DMA memory it has not allocated [device address=0x%016llx] [size=%llu bytes]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"DMA-API: %s %s: device driver syncs DMA memory outside allocated range [device address=0x%016llx] [allocation size=%llu bytes] [sync offset+size=%llu]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"DMA-API: %s %s: device driver syncs DMA memory with different direction [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"DMA-API: %s %s: device driver syncs device read-only DMA memory for cpu [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"DMA-API: %s %s: device driver syncs device write-only DMA memory to device [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"DMA-API: %s %s: device driver syncs DMA sg list with different entry count [map count=%d] [sync count=%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@dma_debug_driver_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.90, ptr @.str.2, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_debug_driver_setup\00", [41 x i8] zeroinitializer }, align 32
@dma_debug_driver_setup._entry_ptr = internal global ptr @dma_debug_driver_setup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"dma_entry_hash\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 92, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 416, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"type2name\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 139, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"dir2name\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 146, i32 20 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"maperr2str\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 133, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 873, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"error_count\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 110, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"show_num_errors\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 115, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1184, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1188, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 140, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 141, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 142, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 143, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 147, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 148, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 149, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 150, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 134, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 135, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 136, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 798, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 800, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 801, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 802, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 803, i32 21 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 804, i32 21 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"num_free_entries\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 117, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 805, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"min_free_entries\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 118, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 806, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"nr_total_entries\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 119, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 807, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"filter_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 763, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 808, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"dump_fops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 794, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"driver_name_lock\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 693, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 131, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 736, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 754, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 156, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 781, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 848, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 894, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"nr_prealloc_entries\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 122, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 901, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 903, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 906, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 915, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"free_entries\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 94, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 925, i32 19 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 926, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 170, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"free_entries_lock\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 635, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 96, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 614, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1053, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1073, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 567, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 570, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [11 x i8] c"radix_lock\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [21 x i8] c"dma_active_cacheline\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 452, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 451, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 498, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 959, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 963, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 973, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 981, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 989, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1001, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1012, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1027, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1162, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1172, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1089, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1097, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1110, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1121, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1131, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1141, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.425 = private constant [22 x i8] c"../kernel/dma/debug.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1587, i32 3 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @__dma_entry_alloc_check_leak._entry, ptr @__dma_entry_alloc_check_leak._entry_ptr, ptr @__initcall__kmod_debug__232_812_dma_debug_fs_init1s, ptr @__initcall__kmod_debug__233_918_dma_debug_init1, ptr @__ksymtab_debug_dma_map_single, ptr @__ksymtab_debug_dma_mapping_error, ptr @__setup_dma_debug_cmdline, ptr @__setup_dma_debug_driver_setup, ptr @__setup_dma_debug_entries_cmdline, ptr @add_dma_entry._entry, ptr @add_dma_entry._entry_ptr, ptr @debug_dma_dump_mappings._entry, ptr @debug_dma_dump_mappings._entry_ptr, ptr @dma_debug_add_bus._entry, ptr @dma_debug_add_bus._entry_ptr, ptr @dma_debug_cmdline._entry, ptr @dma_debug_cmdline._entry_ptr, ptr @dma_debug_driver_setup._entry, ptr @dma_debug_driver_setup._entry_ptr, ptr @dma_debug_init._entry, ptr @dma_debug_init._entry.46, ptr @dma_debug_init._entry.49, ptr @dma_debug_init._entry.52, ptr @dma_debug_init._entry_ptr, ptr @dma_debug_init._entry_ptr.48, ptr @dma_debug_init._entry_ptr.51, ptr @dma_debug_init._entry_ptr.54, ptr @dma_entry_alloc._entry, ptr @dma_entry_alloc._entry_ptr, ptr @dump_entry_trace._entry, ptr @dump_entry_trace._entry_ptr, ptr @filter_write._entry, ptr @filter_write._entry.35, ptr @filter_write._entry_ptr, ptr @filter_write._entry_ptr.37, ptr @dma_entry_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @type2name, ptr @dir2name, ptr @maperr2str, ptr @.str.5, ptr @.str.6, ptr @error_count, ptr @show_num_errors, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @num_free_entries, ptr @.str.27, ptr @min_free_entries, ptr @.str.28, ptr @nr_total_entries, ptr @.str.29, ptr @filter_fops, ptr @.str.30, ptr @dump_fops, ptr @driver_name_lock, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @dma_debug_init.__key, ptr @.str.43, ptr @nr_prealloc_entries, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @free_entries, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @free_entries_lock, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @radix_lock, ptr @dma_active_cacheline, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_entry_hash to i32), i32 851968, i32 1064960, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dma_dump_mappings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type2name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir2name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maperr2str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_add_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_num_errors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_free_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_free_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_total_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_write._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 205, i32 256, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_prealloc_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_cmdline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_entry_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_entries_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_entry_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_dma_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radix_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_active_cacheline to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 178, i32 224, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_debug_driver_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_dump_mappings(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %idx.057 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %idx.057
  %lock = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %idx.057, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry2.054 = load ptr, ptr %arrayidx, align 4
  %cmp13.not55 = icmp eq ptr %entry2.054, %arrayidx
  br i1 %cmp13.not55, label %for.body.for.end_crit_edge, label %for.body.for.body15_crit_edge

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %entry2.056 = phi ptr [ %entry2.0, %for.inc.for.body15_crit_edge ], [ %entry2.054, %for.body.for.body15_crit_edge ]
  br i1 %tobool.not, label %for.body15.do.end21_crit_edge, label %lor.lhs.false

for.body15.do.end21_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

lor.lhs.false:                                    ; preds = %for.body15
  %dev16 = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 1
  %1 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev16, align 8
  %cmp17 = icmp eq ptr %2, %dev
  br i1 %cmp17, label %lor.lhs.false.do.end21_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.do.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end21:                                         ; preds = %lor.lhs.false.do.end21_crit_edge, %for.body15.do.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 1
  %3 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev22, align 8
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 32
  %arrayidx23 = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp eq i32 %6, 3
  %pfn.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 8
  %9 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pfn.i, align 16
  br i1 %cmp.i, label %do.end21.phys_addr.exit_crit_edge, label %if.end.i

do.end21.phys_addr.exit_crit_edge:                ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %phys_addr.exit

if.end.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %10, %11
  %add.ptr.idx.i = mul i32 %sub.i, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx.i, 36
  %add3.i = add i32 %sub.ptr.div.i, %11
  br label %phys_addr.exit

phys_addr.exit:                                   ; preds = %if.end.i, %do.end21.phys_addr.exit_crit_edge
  %add3.sink.i = phi i32 [ %add3.i, %if.end.i ], [ %10, %do.end21.phys_addr.exit_crit_edge ]
  %shl4.i = shl i32 %add3.sink.i, 12
  %offset5.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 9
  %12 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset5.i, align 4
  %add6.i = add i32 %shl4.i, %13
  %retval.0.i = zext i32 %add6.i to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 2
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dev_addr, align 16
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 3
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 5
  %18 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %direction, align 4
  %arrayidx25 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25, align 4
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.056, i32 0, i32 10
  %22 = ptrtoint ptr %map_err_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %map_err_type, align 8
  %arrayidx26 = getelementptr [3 x ptr], ptr @maperr2str, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %idx.057, i64 noundef %retval.0.i, i32 noundef %10, i64 noundef %15, i64 noundef %17, ptr noundef %21, ptr noundef %25) #12
  br label %for.inc

for.inc:                                          ; preds = %phys_addr.exit, %lor.lhs.false.for.inc_crit_edge
  %26 = ptrtoint ptr %entry2.056 to i32
  call void @__asan_load4_noabort(i32 %26)
  %entry2.0 = load ptr, ptr %entry2.056, align 4
  %cmp13.not = icmp eq ptr %entry2.0, %arrayidx
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 427, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %inc = add nuw nsw i32 %idx.057, 1
  %exitcond.not = icmp eq i32 %inc, 16384
  br i1 %exitcond.not, label %for.end36, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_fs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.21, ptr noundef null) #9
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %call, ptr noundef nonnull @global_disable) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %call, ptr noundef nonnull @error_count) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef %call, ptr noundef nonnull @show_all_errors) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.25, i16 noundef zeroext 420, ptr noundef %call, ptr noundef nonnull @show_num_errors) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.26, i16 noundef zeroext 292, ptr noundef %call, ptr noundef nonnull @num_free_entries) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.27, i16 noundef zeroext 292, ptr noundef %call, ptr noundef nonnull @min_free_entries) #9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef %call, ptr noundef nonnull @nr_total_entries) #9
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 420, ptr noundef %call, ptr noundef null, ptr noundef nonnull @filter_fops) #9
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @dump_fops) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_debug_add_bus(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dma_debug_device_change, ptr %call7.i.i, align 8
  %call5 = tail call i32 @bus_register_notifier(ptr noundef %bus, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_device_change(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %action)
  %cond45 = icmp eq i32 %action, 7
  %or.cond = and i1 %cond45, %.b2.i
  br i1 %or.cond, label %dma_debug_disabled.exit.do.body3.i_crit_edge, label %dma_debug_disabled.exit.cleanup_crit_edge

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit.do.body3.i_crit_edge:     ; preds = %dma_debug_disabled.exit
  br label %do.body3.i

do.body3.i:                                       ; preds = %for.end.i.do.body3.i_crit_edge, %dma_debug_disabled.exit.do.body3.i_crit_edge
  %entry1.0 = phi ptr [ %entry1.3, %for.end.i.do.body3.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %dma_debug_disabled.exit.do.body3.i_crit_edge ]
  %count.044.i = phi i32 [ %count.1.lcssa.i, %for.end.i.do.body3.i_crit_edge ], [ 0, %dma_debug_disabled.exit.do.body3.i_crit_edge ]
  %i.043.i = phi i32 [ %inc.i, %for.end.i.do.body3.i_crit_edge ], [ 0, %dma_debug_disabled.exit.do.body3.i_crit_edge ]
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %i.043.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %i.043.i, i32 1
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %entry1.039.i = load ptr, ptr %arrayidx.i, align 4
  %cmp15.not40.i = icmp eq ptr %entry1.039.i, %arrayidx.i
  br i1 %cmp15.not40.i, label %do.body3.i.for.end.i_crit_edge, label %do.body3.i.for.body17.i_crit_edge

do.body3.i.for.body17.i_crit_edge:                ; preds = %do.body3.i
  br label %for.body17.i

do.body3.i.for.end.i_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %do.body3.i.for.body17.i_crit_edge
  %entry1.1 = phi ptr [ %spec.select, %for.body17.i.for.body17.i_crit_edge ], [ %entry1.0, %do.body3.i.for.body17.i_crit_edge ]
  %entry1.042.i = phi ptr [ %entry1.0.i, %for.body17.i.for.body17.i_crit_edge ], [ %entry1.039.i, %do.body3.i.for.body17.i_crit_edge ]
  %count.141.i = phi i32 [ %spec.select73, %for.body17.i.for.body17.i_crit_edge ], [ %count.044.i, %do.body3.i.for.body17.i_crit_edge ]
  %dev18.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.042.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev18.i, align 8
  %cmp19.i = icmp eq ptr %3, %data
  %spec.select = select i1 %cmp19.i, ptr %entry1.042.i, ptr %entry1.1
  %add.i = zext i1 %cmp19.i to i32
  %spec.select73 = add i32 %count.141.i, %add.i
  %4 = ptrtoint ptr %entry1.042.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0.i = load ptr, ptr %entry1.042.i, align 4
  %cmp15.not.i = icmp eq ptr %entry1.0.i, %arrayidx.i
  br i1 %cmp15.not.i, label %for.body17.i.for.end.i_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

for.body17.i.for.end.i_crit_edge:                 ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body17.i.for.end.i_crit_edge, %do.body3.i.for.end.i_crit_edge
  %entry1.3 = phi ptr [ %entry1.0, %do.body3.i.for.end.i_crit_edge ], [ %spec.select, %for.body17.i.for.end.i_crit_edge ]
  %count.1.lcssa.i = phi i32 [ %count.044.i, %do.body3.i.for.end.i_crit_edge ], [ %spec.select73, %for.body17.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #9
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16384
  br i1 %exitcond.not.i, label %device_dma_allocations.exit, label %for.end.i.do.body3.i_crit_edge

for.end.i.do.body3.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

device_dma_allocations.exit:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i)
  %cmp = icmp eq i32 %count.1.lcssa.i, 0
  br i1 %cmp, label %device_dma_allocations.exit.cleanup_crit_edge, label %do.body

device_dma_allocations.exit.cleanup_crit_edge:    ; preds = %device_dma_allocations.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %device_dma_allocations.exit
  %5 = load i32, ptr @error_count, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr @error_count, align 4
  %6 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i53 = icmp eq i8 %6, 0
  br i1 %tobool.not.i53, label %do.body.land.lhs.true_crit_edge, label %if.end.i, !prof !252

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i:                                         ; preds = %do.body
  %7 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  %tobool5.not.i = icmp eq ptr %data, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end35_crit_edge, label %if.end15.i

if.end8.i.if.end35_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %9, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end35_crit_edge, label %do.body.i

if.end15.i.if.end35_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool21.not.i = icmp eq ptr %11, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %11, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end35

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %9, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 4
  %cmp.i = icmp eq ptr %13, %7
  br i1 %cmp.i, label %driver_filter.exit.land.lhs.true_crit_edge, label %driver_filter.exit.if.end35_crit_edge

driver_filter.exit.if.end35_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

driver_filter.exit.land.lhs.true_crit_edge:       ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %driver_filter.exit.land.lhs.true_crit_edge, %do.body29.i, %do.body.land.lhs.true_crit_edge
  %14 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not = icmp eq i32 %15, 0
  br i1 %cmp6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %tobool14.not = icmp eq ptr %data, null
  br i1 %tobool14.not, label %do.end.cond.end20_crit_edge, label %cond.true17

do.end.cond.end20_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end20

cond.true17:                                      ; preds = %do.end
  %call15 = tail call ptr @dev_driver_string(ptr noundef nonnull %data) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i54 = icmp eq ptr %17, null
  br i1 %tobool.not.i54, label %if.end.i55, label %cond.true17.cond.end20_crit_edge

cond.true17.cond.end20_crit_edge:                 ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end20

if.end.i55:                                       ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %if.end.i55, %cond.true17.cond.end20_crit_edge, %do.end.cond.end20_crit_edge
  %cond68 = phi ptr [ %call15, %cond.true17.cond.end20_crit_edge ], [ %call15, %if.end.i55 ], [ @.str.8, %do.end.cond.end20_crit_edge ]
  %cond21 = phi ptr [ %17, %cond.true17.cond.end20_crit_edge ], [ %19, %if.end.i55 ], [ @.str.8, %do.end.cond.end20_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 2
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dev_addr, align 16
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 3
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size, align 8
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 5
  %24 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %direction, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 32
  %arrayidx22 = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 855, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %cond68, ptr noundef %cond21, i32 noundef %count.1.lcssa.i, i64 noundef %21, i64 noundef %23, ptr noundef %27, ptr noundef %31) #9
  %tobool.not.i57 = icmp eq ptr %entry1.3, null
  br i1 %tobool.not.i57, label %cond.end20.if.end35_crit_edge, label %do.end.i

cond.end20.if.end35_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end.i:                                         ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 12
  %stack_len.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.3, i32 0, i32 11
  %32 = ptrtoint ptr %stack_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stack_len.i, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i, i32 noundef %33, i32 noundef 0) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end.i, %cond.end20.if.end35_crit_edge, %driver_filter.exit.if.end35_crit_edge, %do.body29.i.thread, %if.end15.i.if.end35_crit_edge, %if.end8.i.if.end35_crit_edge
  %.pr = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool36.not = icmp eq i32 %.pr, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.end35
  %.pr70 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr70)
  %cmp38.not = icmp eq i32 %.pr70, 0
  br i1 %cmp38.not, label %land.lhs.true37.cleanup_crit_edge, label %if.then39

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %.pr70, -1
  store i32 %sub, ptr @show_num_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true37.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %device_dma_allocations.exit.cleanup_crit_edge, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %i.047
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %prev.i, align 4
  %lock = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %i.047, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @dma_debug_init.__key, i16 noundef signext 3) #9
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 16384
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %3 = load i32, ptr @nr_prealloc_entries, align 4
  %sub = add i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp448.not = icmp ult i32 %sub, 32
  br i1 %cmp448.not, label %for.end.for.end10_crit_edge, label %for.body6.preheader

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body6.preheader:                              ; preds = %for.end
  %div46 = lshr i32 %sub, 5
  br label %for.body6

for.body6:                                        ; preds = %dma_debug_create_entries.exit.for.body6_crit_edge, %for.body6.preheader
  %i.149 = phi i32 [ %inc9, %dma_debug_create_entries.exit.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %4 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body6.dma_debug_create_entries.exit_crit_edge, label %for.body6.for.body.i_crit_edge

for.body6.for.body.i_crit_edge:                   ; preds = %for.body6
  br label %for.body.i

for.body6.dma_debug_create_entries.exit_crit_edge: ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_debug_create_entries.exit

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body6.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %for.body6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dma_debug_entry, ptr %4, i32 %i.07.i
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @free_entries, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %5, ptr noundef nonnull @free_entries) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %arrayidx.i, ptr getelementptr inbounds (%struct.list_head, ptr @free_entries, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @free_entries, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.i, ptr %5, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = load i32, ptr @num_free_entries, align 4
  %add.i = add i32 %9, 32
  store i32 %add.i, ptr @num_free_entries, align 4
  %10 = load i32, ptr @nr_total_entries, align 4
  %add2.i = add i32 %10, 32
  store i32 %add2.i, ptr @nr_total_entries, align 4
  br label %dma_debug_create_entries.exit

dma_debug_create_entries.exit:                    ; preds = %for.end.i, %for.body6.dma_debug_create_entries.exit_crit_edge
  %inc9 = add nuw nsw i32 %i.149, 1
  %exitcond50.not = icmp eq i32 %inc9, %div46
  br i1 %exitcond50.not, label %dma_debug_create_entries.exit.for.end10_crit_edge, label %dma_debug_create_entries.exit.for.body6_crit_edge

dma_debug_create_entries.exit.for.body6_crit_edge: ; preds = %dma_debug_create_entries.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

dma_debug_create_entries.exit.for.end10_crit_edge: ; preds = %dma_debug_create_entries.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.end10:                                        ; preds = %dma_debug_create_entries.exit.for.end10_crit_edge, %for.end.for.end10_crit_edge
  %11 = load i32, ptr @num_free_entries, align 4
  %12 = load i32, ptr @nr_prealloc_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp11.not = icmp ult i32 %11, %12
  br i1 %cmp11.not, label %if.else, label %do.end16

do.end16:                                         ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load i32, ptr @nr_total_entries, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %13) #12
  br label %if.end33

if.else:                                          ; preds = %for.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.not = icmp eq i32 %11, 0
  br i1 %cmp18.not, label %do.end29, label %do.end23

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %14 = load i32, ptr @nr_total_entries, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %12, i32 noundef %14) #12
  br label %if.end33

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  store i8 1, ptr @global_disable, align 1
  br label %cleanup

if.end33:                                         ; preds = %do.end23, %do.end16
  %15 = load i32, ptr @num_free_entries, align 4
  store i32 %15, ptr @min_free_entries, align 4
  store i1 true, ptr @dma_debug_initialized, align 1
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end29, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_cmdline(ptr noundef readonly %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(4) @.str.55, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  store i8 1, ptr @global_disable, align 1
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_entries_cmdline(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @nr_prealloc_entries) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 65536, ptr @nr_prealloc_entries, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_map_single(ptr noundef %dev, ptr noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.if.end110_crit_edge, !prof !253

entry.if.end110_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.if.end110_crit_edge, !prof !252

dma_debug_disabled.exit.if.end110_crit_edge:      ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.end:                                           ; preds = %dma_debug_disabled.exit
  %1 = ptrtoint ptr %addr to i32
  %cmp = icmp ugt ptr %addr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %2, %addr
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %3, %shr
  %call4 = tail call i32 @pfn_valid(i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.body_crit_edge, label %land.lhs.true3.if.end52_crit_edge

land.lhs.true3.if.end52_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true3.do.body_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %land.lhs.true3.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %4 = load i32, ptr @error_count, align 4
  %add7 = add i32 %4, 1
  store i32 %add7, ptr @error_count, align 4
  %5 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i130 = icmp eq i8 %5, 0
  br i1 %tobool.not.i130, label %do.body.land.lhs.true9_crit_edge, label %if.end.i, !prof !252

do.body.land.lhs.true9_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9

if.end.i:                                         ; preds = %do.body
  %6 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  %tobool5.not.i = icmp eq ptr %dev, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end43_crit_edge, label %if.end15.i

if.end8.i.if.end43_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %8, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end43_crit_edge, label %do.body.i

if.end15.i.if.end43_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool21.not.i = icmp eq ptr %10, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %10, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end43

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %8, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true9

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver.i, align 4
  %cmp.i = icmp eq ptr %12, %6
  br i1 %cmp.i, label %driver_filter.exit.land.lhs.true9_crit_edge, label %driver_filter.exit.if.end43_crit_edge

driver_filter.exit.if.end43_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

driver_filter.exit.land.lhs.true9_crit_edge:      ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %driver_filter.exit.land.lhs.true9_crit_edge, %do.body29.i, %do.body.land.lhs.true9_crit_edge
  %13 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true9.do.end_crit_edge

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %14 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  br i1 %cmp11.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true9.do.end_crit_edge
  %tobool23.not = icmp eq ptr %dev, null
  br i1 %tobool23.not, label %do.end.cond.end29_crit_edge, label %cond.true26

do.end.cond.end29_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.true26:                                      ; preds = %do.end
  %call24 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i131 = icmp eq ptr %16, null
  br i1 %tobool.not.i131, label %if.end.i132, label %cond.true26.cond.end29_crit_edge

cond.true26.cond.end29_crit_edge:                 ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

if.end.i132:                                      ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %if.end.i132, %cond.true26.cond.end29_crit_edge, %do.end.cond.end29_crit_edge
  %cond170 = phi ptr [ %call24, %cond.true26.cond.end29_crit_edge ], [ %call24, %if.end.i132 ], [ @.str.8, %do.end.cond.end29_crit_edge ]
  %cond30 = phi ptr [ %16, %cond.true26.cond.end29_crit_edge ], [ %18, %if.end.i132 ], [ @.str.8, %do.end.cond.end29_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1185, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %cond170, ptr noundef %cond30, ptr noundef %addr, i32 noundef %len) #9
  br label %if.end43

if.end43:                                         ; preds = %cond.end29, %driver_filter.exit.if.end43_crit_edge, %do.body29.i.thread, %if.end15.i.if.end43_crit_edge, %if.end8.i.if.end43_crit_edge
  %.pr = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool44.not = icmp eq i32 %.pr, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true45:                                  ; preds = %if.end43
  %.pr172 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr172)
  %cmp46.not = icmp eq i32 %.pr172, 0
  br i1 %cmp46.not, label %land.lhs.true45.if.end52_crit_edge, label %if.then47

land.lhs.true45.if.end52_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  %sub48 = add i32 %.pr172, -1
  store i32 %sub48, ptr @show_num_errors, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true45.if.end52_crit_edge, %if.end43.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge, %land.lhs.true3.if.end52_crit_edge
  %call53 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %addr) #9
  br i1 %call53, label %do.body55, label %if.end52.if.end110_crit_edge

if.end52.if.end110_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

do.body55:                                        ; preds = %if.end52
  %19 = load i32, ptr @error_count, align 4
  %add56 = add i32 %19, 1
  store i32 %add56, ptr @error_count, align 4
  %20 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i135 = icmp eq i8 %20, 0
  br i1 %tobool.not.i135, label %do.body55.land.lhs.true58_crit_edge, label %if.end.i139, !prof !252

do.body55.land.lhs.true58_crit_edge:              ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

if.end.i139:                                      ; preds = %do.body55
  %21 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i136 = icmp eq ptr %21, null
  %tobool5.not.i137 = icmp eq ptr %dev, null
  %or.cond.i138 = or i1 %tobool5.not.i137, %tobool4.not.i136
  br i1 %or.cond.i138, label %if.end8.i145, label %driver_filter.exit159

if.end8.i145:                                     ; preds = %if.end.i139
  %tobool4.not.not49.i143 = xor i1 %tobool4.not.i136, true
  %brmerge50.i144 = select i1 %tobool5.not.i137, i1 true, i1 %tobool4.not.not49.i143
  br i1 %brmerge50.i144, label %if.end8.i145.if.end101_crit_edge, label %if.end15.i148

if.end8.i145.if.end101_crit_edge:                 ; preds = %if.end8.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.end15.i148:                                    ; preds = %if.end8.i145
  %driver16.i146 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %driver16.i146 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver16.i146, align 4
  %tobool17.not.i147 = icmp eq ptr %23, null
  br i1 %tobool17.not.i147, label %if.end15.i148.if.end101_crit_edge, label %do.body.i151

if.end15.i148.if.end101_crit_edge:                ; preds = %if.end15.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.body.i151:                                     ; preds = %if.end15.i148
  %call.i149 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool21.not.i150 = icmp eq ptr %25, null
  br i1 %tobool21.not.i150, label %do.body.i151.do.body29.i157.thread_crit_edge, label %land.lhs.true22.i154

do.body.i151.do.body29.i157.thread_crit_edge:     ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i157.thread

land.lhs.true22.i154:                             ; preds = %do.body.i151
  %call24.i152 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %25, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i152)
  %cmp25.i153 = icmp eq i32 %call24.i152, 0
  br i1 %cmp25.i153, label %do.body29.i157, label %land.lhs.true22.i154.do.body29.i157.thread_crit_edge

land.lhs.true22.i154.do.body29.i157.thread_crit_edge: ; preds = %land.lhs.true22.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i157.thread

do.body29.i157.thread:                            ; preds = %land.lhs.true22.i154.do.body29.i157.thread_crit_edge, %do.body.i151.do.body29.i157.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i149) #9
  br label %if.end101

do.body29.i157:                                   ; preds = %land.lhs.true22.i154
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %23, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i149) #9
  br label %land.lhs.true58

driver_filter.exit159:                            ; preds = %if.end.i139
  %driver.i140 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %26 = ptrtoint ptr %driver.i140 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver.i140, align 4
  %cmp.i141 = icmp eq ptr %27, %21
  br i1 %cmp.i141, label %driver_filter.exit159.land.lhs.true58_crit_edge, label %driver_filter.exit159.if.end101_crit_edge

driver_filter.exit159.if.end101_crit_edge:        ; preds = %driver_filter.exit159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

driver_filter.exit159.land.lhs.true58_crit_edge:  ; preds = %driver_filter.exit159
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %driver_filter.exit159.land.lhs.true58_crit_edge, %do.body29.i157, %do.body55.land.lhs.true58_crit_edge
  %28 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool59.not = icmp eq i32 %28, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %land.lhs.true58.do.end75_crit_edge

land.lhs.true58.do.end75_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

lor.lhs.false60:                                  ; preds = %land.lhs.true58
  %29 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp61.not = icmp eq i32 %29, 0
  br i1 %cmp61.not, label %lor.lhs.false60.if.end110_crit_edge, label %lor.lhs.false60.do.end75_crit_edge

lor.lhs.false60.do.end75_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

lor.lhs.false60.if.end110_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

do.end75:                                         ; preds = %lor.lhs.false60.do.end75_crit_edge, %land.lhs.true58.do.end75_crit_edge
  %tobool76.not = icmp eq ptr %dev, null
  br i1 %tobool76.not, label %do.end75.cond.end86_crit_edge, label %cond.true83

do.end75.cond.end86_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end86

cond.true83:                                      ; preds = %do.end75
  %call78 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i160 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i160 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i160, align 8
  %tobool.not.i161 = icmp eq ptr %31, null
  br i1 %tobool.not.i161, label %if.end.i162, label %cond.true83.cond.end86_crit_edge

cond.true83.cond.end86_crit_edge:                 ; preds = %cond.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end86

if.end.i162:                                      ; preds = %cond.true83
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %cond.end86

cond.end86:                                       ; preds = %if.end.i162, %cond.true83.cond.end86_crit_edge, %do.end75.cond.end86_crit_edge
  %cond81178 = phi ptr [ %call78, %cond.true83.cond.end86_crit_edge ], [ %call78, %if.end.i162 ], [ @.str.8, %do.end75.cond.end86_crit_edge ]
  %cond87 = phi ptr [ %31, %cond.true83.cond.end86_crit_edge ], [ %33, %if.end.i162 ], [ @.str.8, %do.end75.cond.end86_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1189, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %cond81178, ptr noundef %cond87, ptr noundef %addr, i32 noundef %len) #9
  br label %if.end101

if.end101:                                        ; preds = %cond.end86, %driver_filter.exit159.if.end101_crit_edge, %do.body29.i157.thread, %if.end15.i148.if.end101_crit_edge, %if.end8.i145.if.end101_crit_edge
  %.pr179 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr179)
  %tobool102.not = icmp eq i32 %.pr179, 0
  br i1 %tobool102.not, label %land.lhs.true103, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

land.lhs.true103:                                 ; preds = %if.end101
  %.pr181 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr181)
  %cmp104.not = icmp eq i32 %.pr181, 0
  br i1 %cmp104.not, label %land.lhs.true103.if.end110_crit_edge, label %if.then105

land.lhs.true103.if.end110_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  %sub106 = add i32 %.pr181, -1
  store i32 %sub106, ptr @show_num_errors, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %land.lhs.true103.if.end110_crit_edge, %if.end101.if.end110_crit_edge, %lor.lhs.false60.if.end110_crit_edge, %if.end52.if.end110_crit_edge, %dma_debug_disabled.exit.if.end110_crit_edge, %entry.if.end110_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_map_page(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %direction, i32 noundef %dma_addr, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %dma_debug_disabled.exit.i.i, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit.i.i:                      ; preds = %dma_debug_disabled.exit
  %.b2.i.i.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i.i.i, label %if.end.i.i, label %dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge, !prof !252

dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge: ; preds = %dma_debug_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_mapping_error.exit

if.end.i.i:                                       ; preds = %dma_debug_disabled.exit.i.i
  %conv.i.i = zext i32 %dma_addr to i64
  %1 = lshr i32 %dma_addr, 13
  %conv.i.i.i.i = and i32 %1, 16383
  %arrayidx.i.i.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i.i
  %lock.i.i.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i.i, i32 1
  %call4.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #9
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.036.i.i = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.not37.i.i = icmp eq ptr %entry1.036.i.i, %arrayidx.i.i.i
  br i1 %cmp.not37.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %entry1.038.i.i = phi ptr [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entry1.036.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %dev_addr1.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev_addr1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dev_addr1.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv.i.i)
  %cmp.i.i.i = icmp eq i64 %4, %conv.i.i
  br i1 %cmp.i.i.i, label %exact_match.exit.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

exact_match.exit.i.i:                             ; preds = %for.body.i.i
  %dev2.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i.i.i, align 8
  %cmp3.i.i.i = icmp eq ptr %6, %dev
  br i1 %cmp3.i.i.i, label %if.end12.i.i, label %exact_match.exit.i.i.for.inc.i.i_crit_edge

exact_match.exit.i.i.for.inc.i.i_crit_edge:       ; preds = %exact_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %exact_match.exit.i.i
  %map_err_type.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %map_err_type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_err_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp13.i.i = icmp eq i32 %8, 1
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_err_type.i.i.le = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %map_err_type.i.i.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %map_err_type.i.i.le, align 8
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i.for.inc.i.i_crit_edge, %exact_match.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %10 = ptrtoint ptr %entry1.038.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0.i.i = load ptr, ptr %entry1.038.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then15.i.i, %if.end.i.i.for.end.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call4.i.i.i) #9
  br label %dma_mapping_error.exit

dma_mapping_error.exit:                           ; preds = %for.end.i.i, %dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma_addr)
  %cmp.i.not = icmp eq i32 %dma_addr, -1
  br i1 %cmp.i.not, label %dma_mapping_error.exit.cleanup_crit_edge, label %if.end6

dma_mapping_error.exit.cleanup_crit_edge:         ; preds = %dma_mapping_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %dma_mapping_error.exit
  %call7 = tail call fastcc ptr @dma_entry_alloc()
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 1
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev11, align 8
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %14
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 8
  %15 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %pfn, align 16
  %offset12 = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 9
  %16 = ptrtoint ptr %offset12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %offset, ptr %offset12, align 4
  %conv = zext i32 %dma_addr to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 2
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %dev_addr, align 16
  %conv13 = zext i32 %size to i64
  %size14 = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 3
  %18 = ptrtoint ptr %size14 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv13, ptr %size14, align 8
  %direction15 = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 5
  %19 = ptrtoint ptr %direction15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %direction, ptr %direction15, align 4
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %call7, i32 0, i32 10
  %20 = ptrtoint ptr %map_err_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %map_err_type, align 8
  tail call fastcc void @check_for_stack(ptr noundef %dev, ptr noundef %page, i32 noundef %offset)
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %22, 30
  %23 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end10.if.then19_crit_edge [
    i32 2, label %if.end10.if.end21_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

is_highmem_idx.exit:                              ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not = icmp eq i32 %24, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end21_crit_edge, label %is_highmem_idx.exit.if.then19_crit_edge

is_highmem_idx.exit.if.then19_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

is_highmem_idx.exit.if.end21_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %is_highmem_idx.exit.if.then19_crit_edge, %if.end10.if.then19_crit_edge
  %call20 = tail call ptr @page_address(ptr noundef %page) #9
  %add.ptr = getelementptr i8, ptr %call20, i32 %offset
  tail call fastcc void @check_for_illegal_area(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %size)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %is_highmem_idx.exit.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  tail call fastcc void @add_dma_entry(ptr noundef nonnull %call7, i32 noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end6.cleanup_crit_edge, %dma_mapping_error.exit.cleanup_crit_edge, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_entry_alloc() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @free_entries_lock) #9
  %0 = load i32, ptr @num_free_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp eq i32 %0, 0
  br i1 %cmp6, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 2592) #9
  %1 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then9, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dma_debug_entry, ptr %1, i32 %i.07.i
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @free_entries, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %2, ptr noundef nonnull @free_entries) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %arrayidx.i, ptr getelementptr inbounds (%struct.list_head, ptr @free_entries, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @free_entries, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.i, ptr %2, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @global_disable, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @free_entries_lock, i32 noundef %call3) #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit.i
  %6 = load i32, ptr @num_free_entries, align 4
  %add.i = add i32 %6, 32
  store i32 %add.i, ptr @num_free_entries, align 4
  %7 = load i32, ptr @nr_total_entries, align 4
  %add2.i = add i32 %7, 32
  store i32 %add2.i, ptr @nr_total_entries, align 4
  %8 = load i32, ptr @nr_prealloc_entries, align 4
  %add2.i.frozen = freeze i32 %add2.i
  %.frozen = freeze i32 %8
  %div.i = udiv i32 %add2.i.frozen, %.frozen
  %9 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %add2.i.frozen, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rem.i.decomposed)
  %cmp.i = icmp ult i32 %rem.i.decomposed, 32
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %add2.i, i32 noundef %div.i) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end.i, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %10 = load ptr, ptr @free_entries, align 4
  %call.i.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i.i23, label %if.end.i.i.i24, label %if.end15.list_del.exit.i_crit_edge

if.end15.list_del.exit.i_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i24:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i24, %if.end15.list_del.exit.i_crit_edge
  %17 = call ptr @memset(ptr %10, i32 0, i32 128)
  %18 = load i32, ptr @num_free_entries, align 4
  %sub.i = add i32 %18, -1
  store i32 %sub.i, ptr @num_free_entries, align 4
  %19 = load i32, ptr @min_free_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %19)
  %cmp.i25 = icmp ult i32 %sub.i, %19
  br i1 %cmp.i25, label %if.then.i, label %list_del.exit.i.__dma_entry_alloc.exit_crit_edge

list_del.exit.i.__dma_entry_alloc.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dma_entry_alloc.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %sub.i, ptr @min_free_entries, align 4
  br label %__dma_entry_alloc.exit

__dma_entry_alloc.exit:                           ; preds = %if.then.i, %list_del.exit.i.__dma_entry_alloc.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @free_entries_lock, i32 noundef %call3) #9
  %stack_entries = getelementptr inbounds %struct.dma_debug_entry, ptr %10, i32 0, i32 12
  %call17 = tail call i32 @stack_trace_save(ptr noundef %stack_entries, i32 noundef 5, i32 noundef 1) #9
  %stack_len = getelementptr inbounds %struct.dma_debug_entry, ptr %10, i32 0, i32 11
  %20 = ptrtoint ptr %stack_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call17, ptr %stack_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %__dma_entry_alloc.exit, %if.then9
  %retval.0 = phi ptr [ null, %if.then9 ], [ %10, %__dma_entry_alloc.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_for_stack(ptr noundef %dev, ptr noundef %page, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %shr.i, label %entry.if.end_crit_edge [
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.cleanup_crit_edge, label %is_highmem_idx.exit.if.end_crit_edge

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

is_highmem_idx.exit.cleanup_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call ptr @page_address(ptr noundef %page) #9
  %add.ptr = getelementptr i8, ptr %call6, i32 %offset
  %4 = tail call i32 @llvm.read_register.i32(metadata !241) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack1.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack1.i, align 4
  %cmp.not.i = icmp ugt ptr %9, %add.ptr
  %add.ptr.i = getelementptr i8, ptr %9, i32 16384
  %cmp2.i135 = icmp ule ptr %add.ptr.i, %add.ptr
  %tobool8.not = or i1 %cmp.not.i, %cmp2.i135
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %10 = load i32, ptr @error_count, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr @error_count, align 4
  %11 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.body.land.lhs.true_crit_edge, label %if.end.i, !prof !252

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i:                                         ; preds = %do.body
  %12 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  %tobool5.not.i = icmp eq ptr %dev, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end39_crit_edge, label %if.end15.i

if.end8.i.if.end39_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %14, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end39_crit_edge, label %do.body.i

if.end15.i.if.end39_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %16, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end39

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %14, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver.i, align 4
  %cmp.i = icmp eq ptr %18, %12
  br i1 %cmp.i, label %driver_filter.exit.land.lhs.true_crit_edge, label %driver_filter.exit.if.end39_crit_edge

driver_filter.exit.if.end39_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

driver_filter.exit.land.lhs.true_crit_edge:       ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %driver_filter.exit.land.lhs.true_crit_edge, %do.body29.i, %do.body.land.lhs.true_crit_edge
  %19 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %tobool19.not = icmp eq ptr %dev, null
  br i1 %tobool19.not, label %do.end.cond.end25_crit_edge, label %cond.true22

do.end.cond.end25_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true22:                                      ; preds = %do.end
  %call20 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i136 = icmp eq ptr %22, null
  br i1 %tobool.not.i136, label %if.end.i137, label %cond.true22.cond.end25_crit_edge

cond.true22.cond.end25_crit_edge:                 ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

if.end.i137:                                      ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %if.end.i137, %cond.true22.cond.end25_crit_edge, %do.end.cond.end25_crit_edge
  %cond147 = phi ptr [ %call20, %cond.true22.cond.end25_crit_edge ], [ %call20, %if.end.i137 ], [ @.str.8, %do.end.cond.end25_crit_edge ]
  %cond26 = phi ptr [ %22, %cond.true22.cond.end25_crit_edge ], [ %24, %if.end.i137 ], [ @.str.8, %do.end.cond.end25_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1053, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %cond147, ptr noundef %cond26, ptr noundef %add.ptr) #9
  br label %if.end39

if.end39:                                         ; preds = %cond.end25, %driver_filter.exit.if.end39_crit_edge, %do.body29.i.thread, %if.end15.i.if.end39_crit_edge, %if.end8.i.if.end39_crit_edge
  %.pr = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool40.not = icmp eq i32 %.pr, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true41:                                  ; preds = %if.end39
  %.pr149 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr149)
  %cmp42.not = icmp eq i32 %.pr149, 0
  br i1 %cmp42.not, label %land.lhs.true41.cleanup_crit_edge, label %if.then43

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %.pr149, -1
  store i32 %sub, ptr @show_num_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %land.lhs.true41.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_highmem_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_for_illegal_area(ptr noundef %dev, ptr noundef %addr, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not.i = icmp uge ptr %addr, @_stext
  %cmp1.i = icmp ult ptr %addr, @_etext
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %entry.do.body_crit_edge, label %memory_intersects.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

memory_intersects.exit:                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %addr, i32 %len
  %cmp2.not.i = icmp uge ptr %add.ptr.i, @_stext
  %cmp3.i = icmp ult ptr %add.ptr.i, @_etext
  %spec.select.i = and i1 %cmp2.not.i, %cmp3.i
  br i1 %spec.select.i, label %memory_intersects.exit.do.body_crit_edge, label %lor.lhs.false

memory_intersects.exit.do.body_crit_edge:         ; preds = %memory_intersects.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %memory_intersects.exit
  %cmp.not.i48 = icmp uge ptr %addr, @__start_rodata
  %cmp1.i49 = icmp ult ptr %addr, @__end_rodata
  %or.cond.i50 = and i1 %cmp.not.i48, %cmp1.i49
  br i1 %or.cond.i50, label %lor.lhs.false.do.body_crit_edge, label %memory_intersects.exit56

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

memory_intersects.exit56:                         ; preds = %lor.lhs.false
  %cmp2.not.i52 = icmp uge ptr %add.ptr.i, @__start_rodata
  %cmp3.i53 = icmp ult ptr %add.ptr.i, @__end_rodata
  %spec.select.i54 = and i1 %cmp2.not.i52, %cmp3.i53
  br i1 %spec.select.i54, label %memory_intersects.exit56.do.body_crit_edge, label %memory_intersects.exit56.if.end38_crit_edge

memory_intersects.exit56.if.end38_crit_edge:      ; preds = %memory_intersects.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

memory_intersects.exit56.do.body_crit_edge:       ; preds = %memory_intersects.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %memory_intersects.exit56.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %memory_intersects.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %0 = load i32, ptr @error_count, align 4
  %add = add i32 %0, 1
  store i32 %add, ptr @error_count, align 4
  %1 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body.land.lhs.true_crit_edge, label %if.end.i, !prof !252

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i:                                         ; preds = %do.body
  %2 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %2, null
  %tobool5.not.i = icmp eq ptr %dev, null
  %or.cond.i57 = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i57, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end30_crit_edge, label %if.end15.i

if.end8.i.if.end30_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %4, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end30_crit_edge, label %do.body.i

if.end15.i.if.end30_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool21.not.i = icmp eq ptr %6, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %6, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end30

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %4, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i, align 4
  %cmp.i = icmp eq ptr %8, %2
  br i1 %cmp.i, label %driver_filter.exit.land.lhs.true_crit_edge, label %driver_filter.exit.if.end30_crit_edge

driver_filter.exit.if.end30_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

driver_filter.exit.land.lhs.true_crit_edge:       ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %driver_filter.exit.land.lhs.true_crit_edge, %do.body29.i, %do.body.land.lhs.true_crit_edge
  %9 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false3:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %lor.lhs.false3.if.end38_crit_edge, label %lor.lhs.false3.do.end_crit_edge

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false3.if.end38_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %tobool11.not = icmp eq ptr %dev, null
  br i1 %tobool11.not, label %do.end.cond.end17_crit_edge, label %cond.true14

do.end.cond.end17_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end17

cond.true14:                                      ; preds = %do.end
  %call12 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i58 = icmp eq ptr %12, null
  br i1 %tobool.not.i58, label %if.end.i59, label %cond.true14.cond.end17_crit_edge

cond.true14.cond.end17_crit_edge:                 ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end17

if.end.i59:                                       ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %if.end.i59, %cond.true14.cond.end17_crit_edge, %do.end.cond.end17_crit_edge
  %cond66 = phi ptr [ %call12, %cond.true14.cond.end17_crit_edge ], [ %call12, %if.end.i59 ], [ @.str.8, %do.end.cond.end17_crit_edge ]
  %cond18 = phi ptr [ %12, %cond.true14.cond.end17_crit_edge ], [ %14, %if.end.i59 ], [ @.str.8, %do.end.cond.end17_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1073, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %cond66, ptr noundef %cond18, ptr noundef %addr, i32 noundef %len) #9
  br label %if.end30

if.end30:                                         ; preds = %cond.end17, %driver_filter.exit.if.end30_crit_edge, %do.body29.i.thread, %if.end15.i.if.end30_crit_edge, %if.end8.i.if.end30_crit_edge
  %.pr = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool31.not = icmp eq i32 %.pr, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true32:                                  ; preds = %if.end30
  %.pr68 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr68)
  %cmp33.not = icmp eq i32 %.pr68, 0
  br i1 %cmp33.not, label %land.lhs.true32.if.end38_crit_edge, label %if.then34

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %.pr68, -1
  store i32 %sub, ptr @show_num_errors, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true32.if.end38_crit_edge, %if.end30.if.end38_crit_edge, %lor.lhs.false3.if.end38_crit_edge, %memory_intersects.exit56.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_dma_entry(ptr noundef %entry1, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  %cln.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_addr.i.i, align 16
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 13
  %conv.i.i = and i32 %3, 16383
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %5, ptr noundef %arrayidx.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.hash_bucket_add.exit_crit_edge

entry.hash_bucket_add.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bucket_add.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry1, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.i, ptr %entry1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry1, ptr %5, align 4
  br label %hash_bucket_add.exit

hash_bucket_add.exit:                             ; preds = %if.end.i.i.i, %entry.hash_bucket_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %pfn.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 8
  %10 = ptrtoint ptr %pfn.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pfn.i.i, align 16
  %shl.i.i = shl i32 %11, 5
  %offset.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 9
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %shr.i.i = lshr i32 %13, 7
  %add.i.i = add i32 %shr.i.i, %shl.i.i
  %direction.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 5
  %14 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %hash_bucket_add.exit.if.end53_crit_edge, label %do.body2.i

hash_bucket_add.exit.if.end53_crit_edge:          ; preds = %hash_bucket_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.body2.i:                                       ; preds = %hash_bucket_add.exit
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @radix_lock) #9
  %call8.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i, ptr noundef %entry1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -17
  br i1 %cmp9.i, label %if.then11.i, label %active_cacheline_insert.exit

if.then11.i:                                      ; preds = %do.body2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cln.addr.i.i) #9
  %16 = ptrtoint ptr %cln.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i.i, ptr %cln.addr.i.i, align 4
  %call.i.i.i68 = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i68)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i68, 0
  %or.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 4
  %call.1.i.i.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %call.1.i.i.i, 0
  %or.1.i.i.i = select i1 %tobool.not.1.i.i.i, i32 0, i32 2
  %overlap.1.1.i.i.i = or i32 %or.1.i.i.i, %or.i.i.i
  %call.2.i.i.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i.i)
  %tobool.not.2.i.i.i = icmp ne i32 %call.2.i.i.i, 0
  %or.2.i.i.i = zext i1 %tobool.not.2.i.i.i to i32
  %overlap.1.2.i.i.i = or i32 %overlap.1.1.i.i.i, %or.2.i.i.i
  %inc.i.i = add nuw nsw i32 %overlap.1.2.i.i.i, 1
  %call1.i.i = tail call fastcc i32 @active_cacheline_set_overlap(i32 noundef %add.i.i, i32 noundef %inc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %overlap.1.2.i.i.i)
  %cmp.i.i = icmp eq i32 %overlap.1.2.i.i.i, 7
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then11.i.active_cacheline_insert.exit.thread78_crit_edge

if.then11.i.active_cacheline_insert.exit.thread78_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %active_cacheline_insert.exit.thread78

land.rhs.i.i:                                     ; preds = %if.then11.i
  %.b39.i.i = load i1, ptr @active_cacheline_inc_overlap.__already_done, align 1
  br i1 %.b39.i.i, label %land.rhs.i.i.active_cacheline_insert.exit.thread78_crit_edge, label %if.then.i.i, !prof !252

land.rhs.i.i.active_cacheline_insert.exit.thread78_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %active_cacheline_insert.exit.thread78

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @active_cacheline_inc_overlap.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 500, i32 noundef 9, ptr noundef nonnull @.str.73, i32 noundef 7, ptr noundef nonnull %cln.addr.i.i) #9
  br label %active_cacheline_insert.exit.thread78

active_cacheline_insert.exit.thread78:            ; preds = %if.then.i.i, %land.rhs.i.i.active_cacheline_insert.exit.thread78_crit_edge, %if.then11.i.active_cacheline_insert.exit.thread78_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cln.addr.i.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @radix_lock, i32 noundef %call5.i) #9
  %and = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %active_cacheline_insert.exit.thread78.if.end53_crit_edge

active_cacheline_insert.exit.thread78.if.end53_crit_edge: ; preds = %active_cacheline_insert.exit.thread78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

active_cacheline_insert.exit:                     ; preds = %do.body2.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @radix_lock, i32 noundef %call5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call8.i)
  %cond = icmp eq i32 %call8.i, -12
  br i1 %cond, label %do.end, label %active_cacheline_insert.exit.if.end53_crit_edge

active_cacheline_insert.exit.if.end53_crit_edge:  ; preds = %active_cacheline_insert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end:                                           ; preds = %active_cacheline_insert.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  store i8 1, ptr @global_disable, align 1
  br label %if.end53

do.body6:                                         ; preds = %active_cacheline_insert.exit.thread78
  %17 = load i32, ptr @error_count, align 4
  %add = add i32 %17, 1
  store i32 %add, ptr @error_count, align 4
  %dev = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.body6.land.lhs.true8_crit_edge, label %if.end.i, !prof !252

do.body6.land.lhs.true8_crit_edge:                ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

if.end.i:                                         ; preds = %do.body6
  %21 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  %tobool5.not.i = icmp eq ptr %19, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end44_crit_edge, label %if.end15.i

if.end8.i.if.end44_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %23, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end44_crit_edge, label %do.body.i

if.end15.i.if.end44_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body.i:                                        ; preds = %if.end15.i
  %call.i = call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool21.not.i = icmp eq ptr %25, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %25, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end44

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %23, ptr @current_driver, align 4
  call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true8

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver.i, align 4
  %cmp.i69 = icmp eq ptr %27, %21
  br i1 %cmp.i69, label %driver_filter.exit.land.lhs.true8_crit_edge, label %driver_filter.exit.if.end44_crit_edge

driver_filter.exit.if.end44_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

driver_filter.exit.land.lhs.true8_crit_edge:      ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

land.lhs.true8:                                   ; preds = %driver_filter.exit.land.lhs.true8_crit_edge, %do.body29.i, %do.body6.land.lhs.true8_crit_edge
  %28 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %land.lhs.true8.do.end19_crit_edge

land.lhs.true8.do.end19_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %29 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10.not = icmp eq i32 %29, 0
  br i1 %cmp10.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end19:                                         ; preds = %lor.lhs.false.do.end19_crit_edge, %land.lhs.true8.do.end19_crit_edge
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %tobool21.not = icmp eq ptr %31, null
  br i1 %tobool21.not, label %do.end19.cond.end30_crit_edge, label %cond.end

do.end19.cond.end30_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end30

cond.end:                                         ; preds = %do.end19
  %call23 = call ptr @dev_driver_string(ptr noundef nonnull %31) #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %dev, align 8
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %cond.end.cond.end30_crit_edge, label %cond.true26

cond.end.cond.end30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end30

cond.true26:                                      ; preds = %cond.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %.pr, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i71 = icmp eq ptr %34, null
  br i1 %tobool.not.i71, label %if.end.i72, label %cond.true26.cond.end30_crit_edge

cond.true26.cond.end30_crit_edge:                 ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end30

if.end.i72:                                       ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pr, align 4
  br label %cond.end30

cond.end30:                                       ; preds = %if.end.i72, %cond.true26.cond.end30_crit_edge, %cond.end.cond.end30_crit_edge, %do.end19.cond.end30_crit_edge
  %cond84 = phi ptr [ %call23, %cond.end.cond.end30_crit_edge ], [ %call23, %cond.true26.cond.end30_crit_edge ], [ %call23, %if.end.i72 ], [ @.str.8, %do.end19.cond.end30_crit_edge ]
  %cond31 = phi ptr [ @.str.8, %cond.end.cond.end30_crit_edge ], [ %34, %cond.true26.cond.end30_crit_edge ], [ %36, %if.end.i72 ], [ @.str.8, %do.end19.cond.end30_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 571, i32 noundef 9, ptr noundef nonnull @.str.70, ptr noundef %cond84, ptr noundef %cond31) #9
  %tobool.not.i74 = icmp eq ptr %entry1, null
  br i1 %tobool.not.i74, label %cond.end30.if.end44_crit_edge, label %do.end.i

cond.end30.if.end44_crit_edge:                    ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end.i:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 12
  %stack_len.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1, i32 0, i32 11
  %37 = ptrtoint ptr %stack_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stack_len.i, align 4
  call void @stack_trace_print(ptr noundef %stack_entries.i, i32 noundef %38, i32 noundef 0) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end.i, %cond.end30.if.end44_crit_edge, %driver_filter.exit.if.end44_crit_edge, %do.body29.i.thread, %if.end15.i.if.end44_crit_edge, %if.end8.i.if.end44_crit_edge
  %.pr85 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr85)
  %tobool45.not = icmp eq i32 %.pr85, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true46:                                  ; preds = %if.end44
  %.pr87 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr87)
  %cmp47.not = icmp eq i32 %.pr87, 0
  br i1 %cmp47.not, label %land.lhs.true46.if.end53_crit_edge, label %if.then48

land.lhs.true46.if.end53_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %.pr87, -1
  store i32 %sub, ptr @show_num_errors, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %land.lhs.true46.if.end53_crit_edge, %if.end44.if.end53_crit_edge, %lor.lhs.false.if.end53_crit_edge, %do.end, %active_cacheline_insert.exit.if.end53_crit_edge, %active_cacheline_insert.exit.thread78.if.end53_crit_edge, %hash_bucket_add.exit.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %dma_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  %conv = zext i32 %dma_addr to i64
  %1 = lshr i32 %dma_addr, 13
  %conv.i.i = and i32 %1, 16383
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.036 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not37 = icmp eq ptr %entry1.036, %arrayidx.i
  br i1 %cmp.not37, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %entry1.038 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.036, %if.end.for.body_crit_edge ]
  %dev_addr1.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038, i32 0, i32 2
  %3 = ptrtoint ptr %dev_addr1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dev_addr1.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv)
  %cmp.i = icmp eq i64 %4, %conv
  br i1 %cmp.i, label %exact_match.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

exact_match.exit:                                 ; preds = %for.body
  %dev2.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038, i32 0, i32 1
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 8
  %cmp3.i = icmp eq ptr %6, %dev
  br i1 %cmp3.i, label %if.end12, label %exact_match.exit.for.inc_crit_edge

exact_match.exit.for.inc_crit_edge:               ; preds = %exact_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %exact_match.exit
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038, i32 0, i32 10
  %7 = ptrtoint ptr %map_err_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_err_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp13 = icmp eq i32 %8, 1
  br i1 %cmp13, label %if.then15, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %map_err_type.le = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038, i32 0, i32 10
  %9 = ptrtoint ptr %map_err_type.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %map_err_type.le, align 8
  br label %for.end

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %exact_match.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %entry1.038 to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0 = load ptr, ptr %entry1.038, align 4
  %cmp.not = icmp eq ptr %entry1.0, %arrayidx.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_unmap_page(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %0 = call ptr @memset(ptr %ref, i32 0, i32 128)
  %dev1 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %conv = zext i32 %addr to i64
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %dev_addr, align 16
  %size2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %conv3 = zext i32 %size to i64
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv3, ptr %size2, align 8
  %direction4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %4 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %direction, ptr %direction4, align 4
  %5 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @check_unmap(ptr noundef nonnull %ref)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_unmap(ptr noundef readonly %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %0 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_addr.i.i, align 16
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 13
  %conv.i.i = and i32 %3, 16383
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.074.i.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not75.i.i = icmp eq ptr %entry1.074.i.i, %arrayidx.i
  br i1 %cmp.not75.i.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.lr.ph.i.i:                               ; preds = %entry
  %size4.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type6.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction13.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents20.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %5 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dev_addr.i.i, align 16
  %dev.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.079.i.i = phi ptr [ %entry1.074.i.i, %for.body.lr.ph.i.i ], [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ret.078.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ret.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %matches.077.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %matches.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %last_lvl.076.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %last_lvl.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dev_addr1.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev_addr1.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dev_addr1.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i.i = icmp eq i64 %6, %8
  br i1 %cmp.i.i, label %exact_match.exit.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

exact_match.exit.i:                               ; preds = %for.body.i.i
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2.i.i, align 8
  %cmp3.i.i = icmp eq ptr %10, %12
  br i1 %cmp3.i.i, label %if.end.i.i, label %exact_match.exit.i.for.inc.i.i_crit_edge

exact_match.exit.i.for.inc.i.i_crit_edge:         ; preds = %exact_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %exact_match.exit.i
  %size.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size.i.i, align 8
  %15 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp5.i.i = icmp eq i64 %14, %16
  %spec.select.i.i = zext i1 %cmp5.i.i to i32
  %type.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i, align 32
  %19 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp7.i.i = icmp eq i32 %18, %20
  %inc9.i.i = select i1 %cmp5.i.i, i32 2, i32 1
  %match_lvl.1.i.i = select i1 %cmp7.i.i, i32 %inc9.i.i, i32 %spec.select.i.i
  %direction.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %direction.i.i, align 4
  %23 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp14.i.i = icmp eq i32 %22, %24
  %inc16.i.i = zext i1 %cmp14.i.i to i32
  %match_lvl.2.i.i = add nuw nsw i32 %match_lvl.1.i.i, %inc16.i.i
  %sg_call_ents.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %sg_call_ents.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_call_ents.i.i, align 8
  %27 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_call_ents20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp21.i.i = icmp eq i32 %26, %28
  %inc23.i.i = zext i1 %cmp21.i.i to i32
  %match_lvl.3.i.i = add nuw nsw i32 %match_lvl.2.i.i, %inc23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %match_lvl.3.i.i)
  %cmp27.i.i = icmp eq i32 %match_lvl.3.i.i, 4
  br i1 %cmp27.i.i, label %if.end.i.i.bucket_find_exact.exit_crit_edge, label %if.else.i.i

if.end.i.i.bucket_find_exact.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_find_exact.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %matches.077.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i)
  %cmp29.i.i = icmp sgt i32 %match_lvl.3.i.i, %last_lvl.076.i.i
  %29 = tail call i32 @llvm.smax.i32(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i) #9
  %spec.select69.i.i = select i1 %cmp29.i.i, ptr %entry1.079.i.i, ptr %ret.078.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %last_lvl.1.i.i = phi i32 [ %last_lvl.076.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %29, %if.else.i.i ], [ %last_lvl.076.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %matches.1.i.i = phi i32 [ %matches.077.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %add.i.i, %if.else.i.i ], [ %matches.077.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %ret.1.i.i = phi ptr [ %ret.078.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %spec.select69.i.i, %if.else.i.i ], [ %ret.078.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %30 = ptrtoint ptr %entry1.079.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %entry1.0.i.i = load ptr, ptr %entry1.079.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %matches.1.i.i)
  %cmp38.i.i = icmp eq i32 %matches.1.i.i, 1
  br i1 %cmp38.i.i, label %for.end.i.i.bucket_find_exact.exit_crit_edge, label %for.end.i.i.if.then_crit_edge

for.end.i.i.if.then_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end.i.i.bucket_find_exact.exit_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_find_exact.exit

bucket_find_exact.exit:                           ; preds = %for.end.i.i.bucket_find_exact.exit_crit_edge, %if.end.i.i.bucket_find_exact.exit_crit_edge
  %retval.0.i.i = phi ptr [ %ret.1.i.i, %for.end.i.i.bucket_find_exact.exit_crit_edge ], [ %entry1.079.i.i, %if.end.i.i.bucket_find_exact.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %bucket_find_exact.exit.if.then_crit_edge, label %if.end115

bucket_find_exact.exit.if.then_crit_edge:         ; preds = %bucket_find_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %bucket_find_exact.exit.if.then_crit_edge, %for.end.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %dev = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dev_addr.i.i, align 16
  %conv = trunc i64 %34 to i32
  %35 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i.i, label %dma_debug_disabled.exit.i.i, label %if.then.dma_mapping_error.exit_crit_edge, !prof !253

if.then.dma_mapping_error.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_mapping_error.exit

dma_debug_disabled.exit.i.i:                      ; preds = %if.then
  %.b2.i.i.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i.i.i, label %if.end.i.i688, label %dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge, !prof !252

dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge: ; preds = %dma_debug_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_mapping_error.exit

if.end.i.i688:                                    ; preds = %dma_debug_disabled.exit.i.i
  %conv.i.i687 = and i64 %34, 4294967295
  %36 = lshr i32 %conv, 13
  %conv.i.i.i.i = and i32 %36, 16383
  %arrayidx.i.i.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i.i
  %lock.i.i.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i.i, i32 1
  %call4.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #9
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %entry1.036.i.i = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.not37.i.i = icmp eq ptr %entry1.036.i.i, %arrayidx.i.i.i
  br i1 %cmp.not37.i.i, label %if.end.i.i688.for.end.i.i693_crit_edge, label %if.end.i.i688.for.body.i.i689_crit_edge

if.end.i.i688.for.body.i.i689_crit_edge:          ; preds = %if.end.i.i688
  br label %for.body.i.i689

if.end.i.i688.for.end.i.i693_crit_edge:           ; preds = %if.end.i.i688
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i693

for.body.i.i689:                                  ; preds = %for.inc.i.i692.for.body.i.i689_crit_edge, %if.end.i.i688.for.body.i.i689_crit_edge
  %entry1.038.i.i = phi ptr [ %entry1.0.i.i690, %for.inc.i.i692.for.body.i.i689_crit_edge ], [ %entry1.036.i.i, %if.end.i.i688.for.body.i.i689_crit_edge ]
  %dev_addr1.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %dev_addr1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dev_addr1.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv.i.i687)
  %cmp.i.i.i = icmp eq i64 %39, %conv.i.i687
  br i1 %cmp.i.i.i, label %exact_match.exit.i.i, label %for.body.i.i689.for.inc.i.i692_crit_edge

for.body.i.i689.for.inc.i.i692_crit_edge:         ; preds = %for.body.i.i689
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i692

exact_match.exit.i.i:                             ; preds = %for.body.i.i689
  %dev2.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev2.i.i.i, align 8
  %cmp3.i.i.i = icmp eq ptr %41, %32
  br i1 %cmp3.i.i.i, label %if.end12.i.i, label %exact_match.exit.i.i.for.inc.i.i692_crit_edge

exact_match.exit.i.i.for.inc.i.i692_crit_edge:    ; preds = %exact_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i692

if.end12.i.i:                                     ; preds = %exact_match.exit.i.i
  %map_err_type.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %map_err_type.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %map_err_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp13.i.i = icmp eq i32 %43, 1
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end12.i.i.for.inc.i.i692_crit_edge

if.end12.i.i.for.inc.i.i692_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i692

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_err_type.i.i.le = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.038.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %map_err_type.i.i.le to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %map_err_type.i.i.le, align 8
  br label %for.end.i.i693

for.inc.i.i692:                                   ; preds = %if.end12.i.i.for.inc.i.i692_crit_edge, %exact_match.exit.i.i.for.inc.i.i692_crit_edge, %for.body.i.i689.for.inc.i.i692_crit_edge
  %45 = ptrtoint ptr %entry1.038.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %entry1.0.i.i690 = load ptr, ptr %entry1.038.i.i, align 4
  %cmp.not.i.i691 = icmp eq ptr %entry1.0.i.i690, %arrayidx.i.i.i
  br i1 %cmp.not.i.i691, label %for.inc.i.i692.for.end.i.i693_crit_edge, label %for.inc.i.i692.for.body.i.i689_crit_edge

for.inc.i.i692.for.body.i.i689_crit_edge:         ; preds = %for.inc.i.i692
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i689

for.inc.i.i692.for.end.i.i693_crit_edge:          ; preds = %for.inc.i.i692
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i693

for.end.i.i693:                                   ; preds = %for.inc.i.i692.for.end.i.i693_crit_edge, %if.then15.i.i, %if.end.i.i688.for.end.i.i693_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call4.i.i.i) #9
  br label %dma_mapping_error.exit

dma_mapping_error.exit:                           ; preds = %for.end.i.i693, %dma_debug_disabled.exit.i.i.dma_mapping_error.exit_crit_edge, %if.then.dma_mapping_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %cmp.i.not = icmp eq i32 %conv, -1
  %46 = load i32, ptr @error_count, align 4
  %add = add i32 %46, 1
  store i32 %add, ptr @error_count, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %49 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %cmp.i.not, label %do.body, label %do.body50

do.body:                                          ; preds = %dma_mapping_error.exit
  br i1 %tobool.not.i, label %do.body.land.lhs.true_crit_edge, label %if.end.i, !prof !252

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i:                                         ; preds = %do.body
  %50 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %50, null
  %tobool5.not.i = icmp eq ptr %48, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end41_crit_edge, label %if.end15.i

if.end8.i.if.end41_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %52, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end41_crit_edge, label %do.body.i

if.end15.i.if.end41_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool21.not.i = icmp eq ptr %54, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %54, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end41

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %52, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true

driver_filter.exit:                               ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 6
  %55 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver.i, align 4
  %cmp.i694 = icmp eq ptr %56, %50
  br i1 %cmp.i694, label %driver_filter.exit.land.lhs.true_crit_edge, label %driver_filter.exit.if.end41_crit_edge

driver_filter.exit.if.end41_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

driver_filter.exit.land.lhs.true_crit_edge:       ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %driver_filter.exit.land.lhs.true_crit_edge, %do.body29.i, %do.body.land.lhs.true_crit_edge
  %57 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool9.not = icmp eq i32 %57, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %58 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not = icmp eq i32 %58, 0
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %tobool19.not = icmp eq ptr %60, null
  br i1 %tobool19.not, label %do.end.cond.end28_crit_edge, label %cond.end

do.end.cond.end28_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.end:                                         ; preds = %do.end
  %call21 = tail call ptr @dev_driver_string(ptr noundef nonnull %60) #9
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load ptr, ptr %dev, align 8
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %cond.end.cond.end28_crit_edge, label %cond.true24

cond.end.cond.end28_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.true24:                                      ; preds = %cond.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %.pr, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i695 = icmp eq ptr %63, null
  br i1 %tobool.not.i695, label %if.end.i696, label %cond.true24.cond.end28_crit_edge

cond.true24.cond.end28_crit_edge:                 ; preds = %cond.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

if.end.i696:                                      ; preds = %cond.true24
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pr, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %if.end.i696, %cond.true24.cond.end28_crit_edge, %cond.end.cond.end28_crit_edge, %do.end.cond.end28_crit_edge
  %cond1010 = phi ptr [ %call21, %cond.end.cond.end28_crit_edge ], [ %call21, %cond.true24.cond.end28_crit_edge ], [ %call21, %if.end.i696 ], [ @.str.8, %do.end.cond.end28_crit_edge ]
  %cond29 = phi ptr [ @.str.8, %cond.end.cond.end28_crit_edge ], [ %63, %cond.true24.cond.end28_crit_edge ], [ %65, %if.end.i696 ], [ @.str.8, %do.end.cond.end28_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 961, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef %cond1010, ptr noundef %cond29) #9
  br label %if.end41

if.end41:                                         ; preds = %cond.end28, %driver_filter.exit.if.end41_crit_edge, %do.body29.i.thread, %if.end15.i.if.end41_crit_edge, %if.end8.i.if.end41_crit_edge
  %.pr1011 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1011)
  %tobool42.not = icmp eq i32 %.pr1011, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true43:                                  ; preds = %if.end41
  %.pr1013 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1013)
  %cmp44.not = icmp eq i32 %.pr1013, 0
  br i1 %cmp44.not, label %land.lhs.true43.cleanup_crit_edge, label %if.then46

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %.pr1013, -1
  store i32 %sub, ptr @show_num_errors, align 4
  br label %cleanup

do.body50:                                        ; preds = %dma_mapping_error.exit
  br i1 %tobool.not.i, label %do.body50.land.lhs.true55_crit_edge, label %if.end.i703, !prof !252

do.body50.land.lhs.true55_crit_edge:              ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

if.end.i703:                                      ; preds = %do.body50
  %66 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i700 = icmp eq ptr %66, null
  %tobool5.not.i701 = icmp eq ptr %48, null
  %or.cond.i702 = or i1 %tobool5.not.i701, %tobool4.not.i700
  br i1 %or.cond.i702, label %if.end8.i709, label %driver_filter.exit723

if.end8.i709:                                     ; preds = %if.end.i703
  %tobool4.not.not49.i707 = xor i1 %tobool4.not.i700, true
  %brmerge50.i708 = select i1 %tobool5.not.i701, i1 true, i1 %tobool4.not.not49.i707
  br i1 %brmerge50.i708, label %if.end8.i709.if.end104_crit_edge, label %if.end15.i712

if.end8.i709.if.end104_crit_edge:                 ; preds = %if.end8.i709
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end15.i712:                                    ; preds = %if.end8.i709
  %driver16.i710 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 6
  %67 = ptrtoint ptr %driver16.i710 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver16.i710, align 4
  %tobool17.not.i711 = icmp eq ptr %68, null
  br i1 %tobool17.not.i711, label %if.end15.i712.if.end104_crit_edge, label %do.body.i715

if.end15.i712.if.end104_crit_edge:                ; preds = %if.end15.i712
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.body.i715:                                     ; preds = %if.end15.i712
  %call.i713 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool21.not.i714 = icmp eq ptr %70, null
  br i1 %tobool21.not.i714, label %do.body.i715.do.body29.i721.thread_crit_edge, label %land.lhs.true22.i718

do.body.i715.do.body29.i721.thread_crit_edge:     ; preds = %do.body.i715
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i721.thread

land.lhs.true22.i718:                             ; preds = %do.body.i715
  %call24.i716 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %70, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i716)
  %cmp25.i717 = icmp eq i32 %call24.i716, 0
  br i1 %cmp25.i717, label %do.body29.i721, label %land.lhs.true22.i718.do.body29.i721.thread_crit_edge

land.lhs.true22.i718.do.body29.i721.thread_crit_edge: ; preds = %land.lhs.true22.i718
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i721.thread

do.body29.i721.thread:                            ; preds = %land.lhs.true22.i718.do.body29.i721.thread_crit_edge, %do.body.i715.do.body29.i721.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i713) #9
  br label %if.end104

do.body29.i721:                                   ; preds = %land.lhs.true22.i718
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %68, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i713) #9
  br label %land.lhs.true55

driver_filter.exit723:                            ; preds = %if.end.i703
  %driver.i704 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 6
  %71 = ptrtoint ptr %driver.i704 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver.i704, align 4
  %cmp.i705 = icmp eq ptr %72, %66
  br i1 %cmp.i705, label %driver_filter.exit723.land.lhs.true55_crit_edge, label %driver_filter.exit723.if.end104_crit_edge

driver_filter.exit723.if.end104_crit_edge:        ; preds = %driver_filter.exit723
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

driver_filter.exit723.land.lhs.true55_crit_edge:  ; preds = %driver_filter.exit723
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %driver_filter.exit723.land.lhs.true55_crit_edge, %do.body29.i721, %do.body50.land.lhs.true55_crit_edge
  %73 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool56.not = icmp eq i32 %73, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %land.lhs.true55.do.end73_crit_edge

land.lhs.true55.do.end73_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

lor.lhs.false57:                                  ; preds = %land.lhs.true55
  %74 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp58.not = icmp eq i32 %74, 0
  br i1 %cmp58.not, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false57.do.end73_crit_edge

lor.lhs.false57.do.end73_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end73:                                         ; preds = %lor.lhs.false57.do.end73_crit_edge, %land.lhs.true55.do.end73_crit_edge
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 8
  %tobool75.not = icmp eq ptr %76, null
  br i1 %tobool75.not, label %do.end73.cond.end88_crit_edge, label %cond.end80

do.end73.cond.end88_crit_edge:                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end88

cond.end80:                                       ; preds = %do.end73
  %call78 = tail call ptr @dev_driver_string(ptr noundef nonnull %76) #9
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr1018 = load ptr, ptr %dev, align 8
  %tobool83.not = icmp eq ptr %.pr1018, null
  br i1 %tobool83.not, label %cond.end80.cond.end88_crit_edge, label %cond.true84

cond.end80.cond.end88_crit_edge:                  ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end88

cond.true84:                                      ; preds = %cond.end80
  %init_name.i724 = getelementptr inbounds %struct.device, ptr %.pr1018, i32 0, i32 3
  %78 = ptrtoint ptr %init_name.i724 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_name.i724, align 8
  %tobool.not.i725 = icmp eq ptr %79, null
  br i1 %tobool.not.i725, label %if.end.i726, label %cond.true84.cond.end88_crit_edge

cond.true84.cond.end88_crit_edge:                 ; preds = %cond.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end88

if.end.i726:                                      ; preds = %cond.true84
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %.pr1018 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %.pr1018, align 4
  br label %cond.end88

cond.end88:                                       ; preds = %if.end.i726, %cond.true84.cond.end88_crit_edge, %cond.end80.cond.end88_crit_edge, %do.end73.cond.end88_crit_edge
  %cond811021 = phi ptr [ %call78, %cond.end80.cond.end88_crit_edge ], [ %call78, %cond.true84.cond.end88_crit_edge ], [ %call78, %if.end.i726 ], [ @.str.8, %do.end73.cond.end88_crit_edge ]
  %cond89 = phi ptr [ @.str.8, %cond.end80.cond.end88_crit_edge ], [ %79, %cond.true84.cond.end88_crit_edge ], [ %81, %if.end.i726 ], [ @.str.8, %do.end73.cond.end88_crit_edge ]
  %82 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %dev_addr.i.i, align 16
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %84 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %size, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 967, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %cond811021, ptr noundef %cond89, i64 noundef %83, i64 noundef %85) #9
  br label %if.end104

if.end104:                                        ; preds = %cond.end88, %driver_filter.exit723.if.end104_crit_edge, %do.body29.i721.thread, %if.end15.i712.if.end104_crit_edge, %if.end8.i709.if.end104_crit_edge
  %.pr1022 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1022)
  %tobool105.not = icmp eq i32 %.pr1022, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true106:                                 ; preds = %if.end104
  %.pr1024 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1024)
  %cmp107.not = icmp eq i32 %.pr1024, 0
  br i1 %cmp107.not, label %land.lhs.true106.cleanup_crit_edge, label %if.then109

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  %sub110 = add i32 %.pr1024, -1
  store i32 %sub110, ptr @show_num_errors, align 4
  br label %cleanup

if.end115:                                        ; preds = %bucket_find_exact.exit
  %86 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %size4.i.i, align 8
  %size117 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %size117 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %size117, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %89)
  %cmp118.not = icmp eq i64 %87, %89
  br i1 %cmp118.not, label %if.end115.if.end187_crit_edge, label %do.body121

if.end115.if.end187_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

do.body121:                                       ; preds = %if.end115
  %90 = load i32, ptr @error_count, align 4
  %add122 = add i32 %90, 1
  store i32 %add122, ptr @error_count, align 4
  %91 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i.i, align 8
  %93 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i730 = icmp eq i8 %93, 0
  br i1 %tobool.not.i730, label %do.body121.land.lhs.true126_crit_edge, label %if.end.i734, !prof !252

do.body121.land.lhs.true126_crit_edge:            ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true126

if.end.i734:                                      ; preds = %do.body121
  %94 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i731 = icmp eq ptr %94, null
  %tobool5.not.i732 = icmp eq ptr %92, null
  %or.cond.i733 = or i1 %tobool5.not.i732, %tobool4.not.i731
  br i1 %or.cond.i733, label %if.end8.i740, label %driver_filter.exit754

if.end8.i740:                                     ; preds = %if.end.i734
  %tobool4.not.not49.i738 = xor i1 %tobool4.not.i731, true
  %brmerge50.i739 = select i1 %tobool5.not.i732, i1 true, i1 %tobool4.not.not49.i738
  br i1 %brmerge50.i739, label %if.end8.i740.if.end177_crit_edge, label %if.end15.i743

if.end8.i740.if.end177_crit_edge:                 ; preds = %if.end8.i740
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

if.end15.i743:                                    ; preds = %if.end8.i740
  %driver16.i741 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 6
  %95 = ptrtoint ptr %driver16.i741 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver16.i741, align 4
  %tobool17.not.i742 = icmp eq ptr %96, null
  br i1 %tobool17.not.i742, label %if.end15.i743.if.end177_crit_edge, label %do.body.i746

if.end15.i743.if.end177_crit_edge:                ; preds = %if.end15.i743
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

do.body.i746:                                     ; preds = %if.end15.i743
  %call.i744 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %tobool21.not.i745 = icmp eq ptr %98, null
  br i1 %tobool21.not.i745, label %do.body.i746.do.body29.i752.thread_crit_edge, label %land.lhs.true22.i749

do.body.i746.do.body29.i752.thread_crit_edge:     ; preds = %do.body.i746
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i752.thread

land.lhs.true22.i749:                             ; preds = %do.body.i746
  %call24.i747 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %98, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i747)
  %cmp25.i748 = icmp eq i32 %call24.i747, 0
  br i1 %cmp25.i748, label %do.body29.i752, label %land.lhs.true22.i749.do.body29.i752.thread_crit_edge

land.lhs.true22.i749.do.body29.i752.thread_crit_edge: ; preds = %land.lhs.true22.i749
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i752.thread

do.body29.i752.thread:                            ; preds = %land.lhs.true22.i749.do.body29.i752.thread_crit_edge, %do.body.i746.do.body29.i752.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i744) #9
  br label %if.end177

do.body29.i752:                                   ; preds = %land.lhs.true22.i749
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %96, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i744) #9
  br label %land.lhs.true126

driver_filter.exit754:                            ; preds = %if.end.i734
  %driver.i735 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 6
  %99 = ptrtoint ptr %driver.i735 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver.i735, align 4
  %cmp.i736 = icmp eq ptr %100, %94
  br i1 %cmp.i736, label %driver_filter.exit754.land.lhs.true126_crit_edge, label %driver_filter.exit754.if.end177_crit_edge

driver_filter.exit754.if.end177_crit_edge:        ; preds = %driver_filter.exit754
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

driver_filter.exit754.land.lhs.true126_crit_edge: ; preds = %driver_filter.exit754
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true126

land.lhs.true126:                                 ; preds = %driver_filter.exit754.land.lhs.true126_crit_edge, %do.body29.i752, %do.body121.land.lhs.true126_crit_edge
  %101 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool127.not = icmp eq i32 %101, 0
  br i1 %tobool127.not, label %lor.lhs.false128, label %land.lhs.true126.do.end144_crit_edge

land.lhs.true126.do.end144_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end144

lor.lhs.false128:                                 ; preds = %land.lhs.true126
  %102 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp129.not = icmp eq i32 %102, 0
  br i1 %cmp129.not, label %lor.lhs.false128.if.end187_crit_edge, label %lor.lhs.false128.do.end144_crit_edge

lor.lhs.false128.do.end144_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end144

lor.lhs.false128.if.end187_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

do.end144:                                        ; preds = %lor.lhs.false128.do.end144_crit_edge, %land.lhs.true126.do.end144_crit_edge
  %103 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i, align 8
  %tobool146.not = icmp eq ptr %104, null
  br i1 %tobool146.not, label %do.end144.dump_entry_trace.exit_crit_edge, label %cond.end151

do.end144.dump_entry_trace.exit_crit_edge:        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit

cond.end151:                                      ; preds = %do.end144
  %call149 = tail call ptr @dev_driver_string(ptr noundef nonnull %104) #9
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr1029 = load ptr, ptr %dev.i.i, align 8
  %tobool154.not = icmp eq ptr %.pr1029, null
  br i1 %tobool154.not, label %cond.end151.dump_entry_trace.exit_crit_edge, label %cond.true155

cond.end151.dump_entry_trace.exit_crit_edge:      ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit

cond.true155:                                     ; preds = %cond.end151
  %init_name.i755 = getelementptr inbounds %struct.device, ptr %.pr1029, i32 0, i32 3
  %106 = ptrtoint ptr %init_name.i755 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i755, align 8
  %tobool.not.i756 = icmp eq ptr %107, null
  br i1 %tobool.not.i756, label %if.end.i757, label %cond.true155.dump_entry_trace.exit_crit_edge

cond.true155.dump_entry_trace.exit_crit_edge:     ; preds = %cond.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit

if.end.i757:                                      ; preds = %cond.true155
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %.pr1029 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %.pr1029, align 4
  br label %dump_entry_trace.exit

dump_entry_trace.exit:                            ; preds = %if.end.i757, %cond.true155.dump_entry_trace.exit_crit_edge, %cond.end151.dump_entry_trace.exit_crit_edge, %do.end144.dump_entry_trace.exit_crit_edge
  %cond1521032 = phi ptr [ %call149, %cond.end151.dump_entry_trace.exit_crit_edge ], [ %call149, %cond.true155.dump_entry_trace.exit_crit_edge ], [ %call149, %if.end.i757 ], [ @.str.8, %do.end144.dump_entry_trace.exit_crit_edge ]
  %cond160 = phi ptr [ @.str.8, %cond.end151.dump_entry_trace.exit_crit_edge ], [ %107, %cond.true155.dump_entry_trace.exit_crit_edge ], [ %109, %if.end.i757 ], [ @.str.8, %do.end144.dump_entry_trace.exit_crit_edge ]
  %110 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %dev_addr.i.i, align 16
  %112 = ptrtoint ptr %size117 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %size117, align 8
  %114 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %size4.i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 977, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef %cond1521032, ptr noundef %cond160, i64 noundef %111, i64 noundef %113, i64 noundef %115) #9
  %call.i761 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %116 = ptrtoint ptr %stack_len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stack_len.i, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i, i32 noundef %117, i32 noundef 0) #9
  br label %if.end177

if.end177:                                        ; preds = %dump_entry_trace.exit, %driver_filter.exit754.if.end177_crit_edge, %do.body29.i752.thread, %if.end15.i743.if.end177_crit_edge, %if.end8.i740.if.end177_crit_edge
  %.pr1033 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1033)
  %tobool178.not = icmp eq i32 %.pr1033, 0
  br i1 %tobool178.not, label %land.lhs.true179, label %if.end177.if.end187_crit_edge

if.end177.if.end187_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

land.lhs.true179:                                 ; preds = %if.end177
  %.pr1035 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1035)
  %cmp180.not = icmp eq i32 %.pr1035, 0
  br i1 %cmp180.not, label %land.lhs.true179.if.end187_crit_edge, label %if.then182

land.lhs.true179.if.end187_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then182:                                       ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #11
  %sub183 = add i32 %.pr1035, -1
  store i32 %sub183, ptr @show_num_errors, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then182, %land.lhs.true179.if.end187_crit_edge, %if.end177.if.end187_crit_edge, %lor.lhs.false128.if.end187_crit_edge, %if.end115.if.end187_crit_edge
  %118 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type6.i.i, align 32
  %type188 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %type188 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type188, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp189.not = icmp eq i32 %119, %121
  br i1 %cmp189.not, label %if.else260, label %do.body192

do.body192:                                       ; preds = %if.end187
  %122 = load i32, ptr @error_count, align 4
  %add193 = add i32 %122, 1
  store i32 %add193, ptr @error_count, align 4
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 8
  %125 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i763 = icmp eq i8 %125, 0
  br i1 %tobool.not.i763, label %do.body192.land.lhs.true197_crit_edge, label %if.end.i767, !prof !252

do.body192.land.lhs.true197_crit_edge:            ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true197

if.end.i767:                                      ; preds = %do.body192
  %126 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i764 = icmp eq ptr %126, null
  %tobool5.not.i765 = icmp eq ptr %124, null
  %or.cond.i766 = or i1 %tobool5.not.i765, %tobool4.not.i764
  br i1 %or.cond.i766, label %if.end8.i773, label %driver_filter.exit787

if.end8.i773:                                     ; preds = %if.end.i767
  %tobool4.not.not49.i771 = xor i1 %tobool4.not.i764, true
  %brmerge50.i772 = select i1 %tobool5.not.i765, i1 true, i1 %tobool4.not.not49.i771
  br i1 %brmerge50.i772, label %if.end8.i773.if.end250_crit_edge, label %if.end15.i776

if.end8.i773.if.end250_crit_edge:                 ; preds = %if.end8.i773
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.end15.i776:                                    ; preds = %if.end8.i773
  %driver16.i774 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 6
  %127 = ptrtoint ptr %driver16.i774 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %driver16.i774, align 4
  %tobool17.not.i775 = icmp eq ptr %128, null
  br i1 %tobool17.not.i775, label %if.end15.i776.if.end250_crit_edge, label %do.body.i779

if.end15.i776.if.end250_crit_edge:                ; preds = %if.end15.i776
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

do.body.i779:                                     ; preds = %if.end15.i776
  %call.i777 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %tobool21.not.i778 = icmp eq ptr %130, null
  br i1 %tobool21.not.i778, label %do.body.i779.do.body29.i785.thread_crit_edge, label %land.lhs.true22.i782

do.body.i779.do.body29.i785.thread_crit_edge:     ; preds = %do.body.i779
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i785.thread

land.lhs.true22.i782:                             ; preds = %do.body.i779
  %call24.i780 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %130, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i780)
  %cmp25.i781 = icmp eq i32 %call24.i780, 0
  br i1 %cmp25.i781, label %do.body29.i785, label %land.lhs.true22.i782.do.body29.i785.thread_crit_edge

land.lhs.true22.i782.do.body29.i785.thread_crit_edge: ; preds = %land.lhs.true22.i782
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i785.thread

do.body29.i785.thread:                            ; preds = %land.lhs.true22.i782.do.body29.i785.thread_crit_edge, %do.body.i779.do.body29.i785.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i777) #9
  br label %if.end250

do.body29.i785:                                   ; preds = %land.lhs.true22.i782
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %128, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i777) #9
  br label %land.lhs.true197

driver_filter.exit787:                            ; preds = %if.end.i767
  %driver.i768 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 6
  %131 = ptrtoint ptr %driver.i768 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %driver.i768, align 4
  %cmp.i769 = icmp eq ptr %132, %126
  br i1 %cmp.i769, label %driver_filter.exit787.land.lhs.true197_crit_edge, label %driver_filter.exit787.if.end250_crit_edge

driver_filter.exit787.if.end250_crit_edge:        ; preds = %driver_filter.exit787
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

driver_filter.exit787.land.lhs.true197_crit_edge: ; preds = %driver_filter.exit787
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true197

land.lhs.true197:                                 ; preds = %driver_filter.exit787.land.lhs.true197_crit_edge, %do.body29.i785, %do.body192.land.lhs.true197_crit_edge
  %133 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool198.not = icmp eq i32 %133, 0
  br i1 %tobool198.not, label %lor.lhs.false199, label %land.lhs.true197.do.end215_crit_edge

land.lhs.true197.do.end215_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215

lor.lhs.false199:                                 ; preds = %land.lhs.true197
  %134 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp200.not = icmp eq i32 %134, 0
  br i1 %cmp200.not, label %lor.lhs.false199.if.end338_crit_edge, label %lor.lhs.false199.do.end215_crit_edge

lor.lhs.false199.do.end215_crit_edge:             ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215

lor.lhs.false199.if.end338_crit_edge:             ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

do.end215:                                        ; preds = %lor.lhs.false199.do.end215_crit_edge, %land.lhs.true197.do.end215_crit_edge
  %135 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i, align 8
  %tobool217.not = icmp eq ptr %136, null
  br i1 %tobool217.not, label %do.end215.dump_entry_trace.exit799_crit_edge, label %cond.end222

do.end215.dump_entry_trace.exit799_crit_edge:     ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit799

cond.end222:                                      ; preds = %do.end215
  %call220 = tail call ptr @dev_driver_string(ptr noundef nonnull %136) #9
  %137 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr1040 = load ptr, ptr %dev.i.i, align 8
  %tobool225.not = icmp eq ptr %.pr1040, null
  br i1 %tobool225.not, label %cond.end222.dump_entry_trace.exit799_crit_edge, label %cond.true226

cond.end222.dump_entry_trace.exit799_crit_edge:   ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit799

cond.true226:                                     ; preds = %cond.end222
  %init_name.i788 = getelementptr inbounds %struct.device, ptr %.pr1040, i32 0, i32 3
  %138 = ptrtoint ptr %init_name.i788 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_name.i788, align 8
  %tobool.not.i789 = icmp eq ptr %139, null
  br i1 %tobool.not.i789, label %if.end.i790, label %cond.true226.dump_entry_trace.exit799_crit_edge

cond.true226.dump_entry_trace.exit799_crit_edge:  ; preds = %cond.true226
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit799

if.end.i790:                                      ; preds = %cond.true226
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %.pr1040 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %.pr1040, align 4
  br label %dump_entry_trace.exit799

dump_entry_trace.exit799:                         ; preds = %if.end.i790, %cond.true226.dump_entry_trace.exit799_crit_edge, %cond.end222.dump_entry_trace.exit799_crit_edge, %do.end215.dump_entry_trace.exit799_crit_edge
  %cond2231043 = phi ptr [ %call220, %cond.end222.dump_entry_trace.exit799_crit_edge ], [ %call220, %cond.true226.dump_entry_trace.exit799_crit_edge ], [ %call220, %if.end.i790 ], [ @.str.8, %do.end215.dump_entry_trace.exit799_crit_edge ]
  %cond231 = phi ptr [ @.str.8, %cond.end222.dump_entry_trace.exit799_crit_edge ], [ %139, %cond.true226.dump_entry_trace.exit799_crit_edge ], [ %141, %if.end.i790 ], [ @.str.8, %do.end215.dump_entry_trace.exit799_crit_edge ]
  %142 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %dev_addr.i.i, align 16
  %144 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %size4.i.i, align 8
  %146 = ptrtoint ptr %type188 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type188, align 32
  %arrayidx = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx, align 4
  %150 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type6.i.i, align 32
  %arrayidx236 = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx236, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 986, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %cond2231043, ptr noundef %cond231, i64 noundef %143, i64 noundef %145, ptr noundef %149, ptr noundef %153) #9
  %call.i794 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i795 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i796 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %154 = ptrtoint ptr %stack_len.i796 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %stack_len.i796, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i795, i32 noundef %155, i32 noundef 0) #9
  br label %if.end250

if.end250:                                        ; preds = %dump_entry_trace.exit799, %driver_filter.exit787.if.end250_crit_edge, %do.body29.i785.thread, %if.end15.i776.if.end250_crit_edge, %if.end8.i773.if.end250_crit_edge
  %.pr1044 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1044)
  %tobool251.not = icmp eq i32 %.pr1044, 0
  br i1 %tobool251.not, label %land.lhs.true252, label %if.end250.if.end338_crit_edge

if.end250.if.end338_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

land.lhs.true252:                                 ; preds = %if.end250
  %.pr1046 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1046)
  %cmp253.not = icmp eq i32 %.pr1046, 0
  br i1 %cmp253.not, label %land.lhs.true252.if.end338_crit_edge, label %land.lhs.true252.if.end338.sink.split_crit_edge

land.lhs.true252.if.end338.sink.split_crit_edge:  ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338.sink.split

land.lhs.true252.if.end338_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

if.else260:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp262 = icmp eq i32 %119, 2
  br i1 %cmp262, label %phys_addr.exit816, label %if.else260.if.end338_crit_edge

if.else260.if.end338_crit_edge:                   ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

phys_addr.exit816:                                ; preds = %if.else260
  %pfn.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 8
  %156 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pfn.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %158 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %157, %158
  %add.ptr.idx.i = mul i32 %sub.i, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx.i, 36
  %add3.i = add i32 %sub.ptr.div.i, %158
  %shl4.i = shl i32 %add3.i, 12
  %offset5.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 9
  %159 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %offset5.i, align 4
  %add6.i = add i32 %shl4.i, %160
  %pfn.i805 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 8
  %161 = ptrtoint ptr %pfn.i805 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pfn.i805, align 16
  %163 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i806 = sub i32 %162, %163
  %add.ptr.idx.i807 = mul i32 %sub.i806, 36
  %sub.ptr.div.i808 = sdiv exact i32 %add.ptr.idx.i807, 36
  %add3.i809 = add i32 %sub.ptr.div.i808, %163
  %shl4.i812 = shl i32 %add3.i809, 12
  %offset5.i813 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 9
  %164 = ptrtoint ptr %offset5.i813 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offset5.i813, align 4
  %add6.i814 = add i32 %shl4.i812, %165
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %add6.i814)
  %cmp267.not = icmp eq i32 %add6.i, %add6.i814
  br i1 %cmp267.not, label %phys_addr.exit816.if.end338_crit_edge, label %do.body270

phys_addr.exit816.if.end338_crit_edge:            ; preds = %phys_addr.exit816
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

do.body270:                                       ; preds = %phys_addr.exit816
  %166 = load i32, ptr @error_count, align 4
  %add271 = add i32 %166, 1
  store i32 %add271, ptr @error_count, align 4
  %167 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i.i, align 8
  %169 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i817 = icmp eq i8 %169, 0
  br i1 %tobool.not.i817, label %do.body270.land.lhs.true275_crit_edge, label %if.end.i821, !prof !252

do.body270.land.lhs.true275_crit_edge:            ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true275

if.end.i821:                                      ; preds = %do.body270
  %170 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i818 = icmp eq ptr %170, null
  %tobool5.not.i819 = icmp eq ptr %168, null
  %or.cond.i820 = or i1 %tobool5.not.i819, %tobool4.not.i818
  br i1 %or.cond.i820, label %if.end8.i827, label %driver_filter.exit841

if.end8.i827:                                     ; preds = %if.end.i821
  %tobool4.not.not49.i825 = xor i1 %tobool4.not.i818, true
  %brmerge50.i826 = select i1 %tobool5.not.i819, i1 true, i1 %tobool4.not.not49.i825
  br i1 %brmerge50.i826, label %if.end8.i827.if.end327_crit_edge, label %if.end15.i830

if.end8.i827.if.end327_crit_edge:                 ; preds = %if.end8.i827
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

if.end15.i830:                                    ; preds = %if.end8.i827
  %driver16.i828 = getelementptr inbounds %struct.device, ptr %168, i32 0, i32 6
  %171 = ptrtoint ptr %driver16.i828 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %driver16.i828, align 4
  %tobool17.not.i829 = icmp eq ptr %172, null
  br i1 %tobool17.not.i829, label %if.end15.i830.if.end327_crit_edge, label %do.body.i833

if.end15.i830.if.end327_crit_edge:                ; preds = %if.end15.i830
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

do.body.i833:                                     ; preds = %if.end15.i830
  %call.i831 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %tobool21.not.i832 = icmp eq ptr %174, null
  br i1 %tobool21.not.i832, label %do.body.i833.do.body29.i839.thread_crit_edge, label %land.lhs.true22.i836

do.body.i833.do.body29.i839.thread_crit_edge:     ; preds = %do.body.i833
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i839.thread

land.lhs.true22.i836:                             ; preds = %do.body.i833
  %call24.i834 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %174, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i834)
  %cmp25.i835 = icmp eq i32 %call24.i834, 0
  br i1 %cmp25.i835, label %do.body29.i839, label %land.lhs.true22.i836.do.body29.i839.thread_crit_edge

land.lhs.true22.i836.do.body29.i839.thread_crit_edge: ; preds = %land.lhs.true22.i836
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i839.thread

do.body29.i839.thread:                            ; preds = %land.lhs.true22.i836.do.body29.i839.thread_crit_edge, %do.body.i833.do.body29.i839.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i831) #9
  br label %if.end327

do.body29.i839:                                   ; preds = %land.lhs.true22.i836
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %172, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i831) #9
  br label %land.lhs.true275

driver_filter.exit841:                            ; preds = %if.end.i821
  %driver.i822 = getelementptr inbounds %struct.device, ptr %168, i32 0, i32 6
  %175 = ptrtoint ptr %driver.i822 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %driver.i822, align 4
  %cmp.i823 = icmp eq ptr %176, %170
  br i1 %cmp.i823, label %driver_filter.exit841.land.lhs.true275_crit_edge, label %driver_filter.exit841.if.end327_crit_edge

driver_filter.exit841.if.end327_crit_edge:        ; preds = %driver_filter.exit841
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

driver_filter.exit841.land.lhs.true275_crit_edge: ; preds = %driver_filter.exit841
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true275

land.lhs.true275:                                 ; preds = %driver_filter.exit841.land.lhs.true275_crit_edge, %do.body29.i839, %do.body270.land.lhs.true275_crit_edge
  %177 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool276.not = icmp eq i32 %177, 0
  br i1 %tobool276.not, label %lor.lhs.false277, label %land.lhs.true275.do.end293_crit_edge

land.lhs.true275.do.end293_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end293

lor.lhs.false277:                                 ; preds = %land.lhs.true275
  %178 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp278.not = icmp eq i32 %178, 0
  br i1 %cmp278.not, label %lor.lhs.false277.if.end338_crit_edge, label %lor.lhs.false277.do.end293_crit_edge

lor.lhs.false277.do.end293_crit_edge:             ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end293

lor.lhs.false277.if.end338_crit_edge:             ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

do.end293:                                        ; preds = %lor.lhs.false277.do.end293_crit_edge, %land.lhs.true275.do.end293_crit_edge
  %179 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i.i, align 8
  %tobool295.not = icmp eq ptr %180, null
  br i1 %tobool295.not, label %do.end293.cond.end308_crit_edge, label %cond.end300

do.end293.cond.end308_crit_edge:                  ; preds = %do.end293
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end308

cond.end300:                                      ; preds = %do.end293
  %call298 = tail call ptr @dev_driver_string(ptr noundef nonnull %180) #9
  %181 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pr1051 = load ptr, ptr %dev.i.i, align 8
  %tobool303.not = icmp eq ptr %.pr1051, null
  br i1 %tobool303.not, label %cond.end300.cond.end308_crit_edge, label %cond.true304

cond.end300.cond.end308_crit_edge:                ; preds = %cond.end300
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end308

cond.true304:                                     ; preds = %cond.end300
  %init_name.i842 = getelementptr inbounds %struct.device, ptr %.pr1051, i32 0, i32 3
  %182 = ptrtoint ptr %init_name.i842 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %init_name.i842, align 8
  %tobool.not.i843 = icmp eq ptr %183, null
  br i1 %tobool.not.i843, label %if.end.i844, label %cond.true304.cond.end308_crit_edge

cond.true304.cond.end308_crit_edge:               ; preds = %cond.true304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end308

if.end.i844:                                      ; preds = %cond.true304
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %.pr1051 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %.pr1051, align 4
  br label %cond.end308

cond.end308:                                      ; preds = %if.end.i844, %cond.true304.cond.end308_crit_edge, %cond.end300.cond.end308_crit_edge, %do.end293.cond.end308_crit_edge
  %cond3011054 = phi ptr [ %call298, %cond.end300.cond.end308_crit_edge ], [ %call298, %cond.true304.cond.end308_crit_edge ], [ %call298, %if.end.i844 ], [ @.str.8, %do.end293.cond.end308_crit_edge ]
  %cond309 = phi ptr [ @.str.8, %cond.end300.cond.end308_crit_edge ], [ %183, %cond.true304.cond.end308_crit_edge ], [ %185, %if.end.i844 ], [ @.str.8, %do.end293.cond.end308_crit_edge ]
  %186 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %dev_addr.i.i, align 16
  %188 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %size4.i.i, align 8
  %190 = ptrtoint ptr %type188 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %type188, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %cmp.i848 = icmp eq i32 %191, 3
  %192 = ptrtoint ptr %pfn.i805 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pfn.i805, align 16
  br i1 %cmp.i848, label %cond.end308.phys_addr.exit860_crit_edge, label %if.end.i854

cond.end308.phys_addr.exit860_crit_edge:          ; preds = %cond.end308
  call void @__sanitizer_cov_trace_pc() #11
  br label %phys_addr.exit860

if.end.i854:                                      ; preds = %cond.end308
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %194 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i850 = sub i32 %193, %194
  %add.ptr.idx.i851 = mul i32 %sub.i850, 36
  %sub.ptr.div.i852 = sdiv exact i32 %add.ptr.idx.i851, 36
  %add3.i853 = add i32 %sub.ptr.div.i852, %194
  br label %phys_addr.exit860

phys_addr.exit860:                                ; preds = %if.end.i854, %cond.end308.phys_addr.exit860_crit_edge
  %add3.sink.i855 = phi i32 [ %add3.i853, %if.end.i854 ], [ %193, %cond.end308.phys_addr.exit860_crit_edge ]
  %shl4.i856 = shl i32 %add3.sink.i855, 12
  %195 = ptrtoint ptr %offset5.i813 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %offset5.i813, align 4
  %add6.i858 = add i32 %shl4.i856, %196
  %retval.0.i859 = zext i32 %add6.i858 to i64
  %197 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %198)
  %cmp.i862 = icmp eq i32 %198, 3
  %199 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %pfn.i, align 16
  br i1 %cmp.i862, label %phys_addr.exit860.dump_entry_trace.exit881_crit_edge, label %if.end.i868

phys_addr.exit860.dump_entry_trace.exit881_crit_edge: ; preds = %phys_addr.exit860
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit881

if.end.i868:                                      ; preds = %phys_addr.exit860
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %201 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i864 = sub i32 %200, %201
  %add.ptr.idx.i865 = mul i32 %sub.i864, 36
  %sub.ptr.div.i866 = sdiv exact i32 %add.ptr.idx.i865, 36
  %add3.i867 = add i32 %sub.ptr.div.i866, %201
  br label %dump_entry_trace.exit881

dump_entry_trace.exit881:                         ; preds = %if.end.i868, %phys_addr.exit860.dump_entry_trace.exit881_crit_edge
  %add3.sink.i869 = phi i32 [ %add3.i867, %if.end.i868 ], [ %200, %phys_addr.exit860.dump_entry_trace.exit881_crit_edge ]
  %shl4.i870 = shl i32 %add3.sink.i869, 12
  %202 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %offset5.i, align 4
  %add6.i872 = add i32 %shl4.i870, %203
  %retval.0.i873 = zext i32 %add6.i872 to i64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 996, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %cond3011054, ptr noundef %cond309, i64 noundef %187, i64 noundef %189, i64 noundef %retval.0.i859, i64 noundef %retval.0.i873) #9
  %call.i876 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i877 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i878 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %204 = ptrtoint ptr %stack_len.i878 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %stack_len.i878, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i877, i32 noundef %205, i32 noundef 0) #9
  br label %if.end327

if.end327:                                        ; preds = %dump_entry_trace.exit881, %driver_filter.exit841.if.end327_crit_edge, %do.body29.i839.thread, %if.end15.i830.if.end327_crit_edge, %if.end8.i827.if.end327_crit_edge
  %.pr1055 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1055)
  %tobool328.not = icmp eq i32 %.pr1055, 0
  br i1 %tobool328.not, label %land.lhs.true329, label %if.end327.if.end338_crit_edge

if.end327.if.end338_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

land.lhs.true329:                                 ; preds = %if.end327
  %.pr1057 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1057)
  %cmp330.not = icmp eq i32 %.pr1057, 0
  br i1 %cmp330.not, label %land.lhs.true329.if.end338_crit_edge, label %land.lhs.true329.if.end338.sink.split_crit_edge

land.lhs.true329.if.end338.sink.split_crit_edge:  ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338.sink.split

land.lhs.true329.if.end338_crit_edge:             ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

if.end338.sink.split:                             ; preds = %land.lhs.true329.if.end338.sink.split_crit_edge, %land.lhs.true252.if.end338.sink.split_crit_edge
  %.pr1057.sink = phi i32 [ %.pr1046, %land.lhs.true252.if.end338.sink.split_crit_edge ], [ %.pr1057, %land.lhs.true329.if.end338.sink.split_crit_edge ]
  %sub333 = add i32 %.pr1057.sink, -1
  store i32 %sub333, ptr @show_num_errors, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.end338.sink.split, %land.lhs.true329.if.end338_crit_edge, %if.end327.if.end338_crit_edge, %lor.lhs.false277.if.end338_crit_edge, %phys_addr.exit816.if.end338_crit_edge, %if.else260.if.end338_crit_edge, %land.lhs.true252.if.end338_crit_edge, %if.end250.if.end338_crit_edge, %lor.lhs.false199.if.end338_crit_edge
  %206 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sg_call_ents20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool339.not = icmp eq i32 %207, 0
  br i1 %tobool339.not, label %if.end338.if.end415_crit_edge, label %land.lhs.true340

if.end338.if.end415_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

land.lhs.true340:                                 ; preds = %if.end338
  %208 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %209)
  %cmp342 = icmp eq i32 %209, 1
  br i1 %cmp342, label %land.lhs.true344, label %land.lhs.true340.if.end415_crit_edge

land.lhs.true340.if.end415_crit_edge:             ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

land.lhs.true344:                                 ; preds = %land.lhs.true340
  %sg_call_ents346 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 6
  %210 = ptrtoint ptr %sg_call_ents346 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sg_call_ents346, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %211)
  %cmp347.not = icmp eq i32 %207, %211
  br i1 %cmp347.not, label %land.lhs.true344.if.end415_crit_edge, label %do.body350

land.lhs.true344.if.end415_crit_edge:             ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

do.body350:                                       ; preds = %land.lhs.true344
  %212 = load i32, ptr @error_count, align 4
  %add351 = add i32 %212, 1
  store i32 %add351, ptr @error_count, align 4
  %213 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev.i.i, align 8
  %215 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i882 = icmp eq i8 %215, 0
  br i1 %tobool.not.i882, label %do.body350.land.lhs.true355_crit_edge, label %if.end.i886, !prof !252

do.body350.land.lhs.true355_crit_edge:            ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true355

if.end.i886:                                      ; preds = %do.body350
  %216 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i883 = icmp eq ptr %216, null
  %tobool5.not.i884 = icmp eq ptr %214, null
  %or.cond.i885 = or i1 %tobool5.not.i884, %tobool4.not.i883
  br i1 %or.cond.i885, label %if.end8.i892, label %driver_filter.exit906

if.end8.i892:                                     ; preds = %if.end.i886
  %tobool4.not.not49.i890 = xor i1 %tobool4.not.i883, true
  %brmerge50.i891 = select i1 %tobool5.not.i884, i1 true, i1 %tobool4.not.not49.i890
  br i1 %brmerge50.i891, label %if.end8.i892.if.end405_crit_edge, label %if.end15.i895

if.end8.i892.if.end405_crit_edge:                 ; preds = %if.end8.i892
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end405

if.end15.i895:                                    ; preds = %if.end8.i892
  %driver16.i893 = getelementptr inbounds %struct.device, ptr %214, i32 0, i32 6
  %217 = ptrtoint ptr %driver16.i893 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %driver16.i893, align 4
  %tobool17.not.i894 = icmp eq ptr %218, null
  br i1 %tobool17.not.i894, label %if.end15.i895.if.end405_crit_edge, label %do.body.i898

if.end15.i895.if.end405_crit_edge:                ; preds = %if.end15.i895
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end405

do.body.i898:                                     ; preds = %if.end15.i895
  %call.i896 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %tobool21.not.i897 = icmp eq ptr %220, null
  br i1 %tobool21.not.i897, label %do.body.i898.do.body29.i904.thread_crit_edge, label %land.lhs.true22.i901

do.body.i898.do.body29.i904.thread_crit_edge:     ; preds = %do.body.i898
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i904.thread

land.lhs.true22.i901:                             ; preds = %do.body.i898
  %call24.i899 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %220, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i899)
  %cmp25.i900 = icmp eq i32 %call24.i899, 0
  br i1 %cmp25.i900, label %do.body29.i904, label %land.lhs.true22.i901.do.body29.i904.thread_crit_edge

land.lhs.true22.i901.do.body29.i904.thread_crit_edge: ; preds = %land.lhs.true22.i901
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i904.thread

do.body29.i904.thread:                            ; preds = %land.lhs.true22.i901.do.body29.i904.thread_crit_edge, %do.body.i898.do.body29.i904.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i896) #9
  br label %if.end405

do.body29.i904:                                   ; preds = %land.lhs.true22.i901
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %218, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i896) #9
  br label %land.lhs.true355

driver_filter.exit906:                            ; preds = %if.end.i886
  %driver.i887 = getelementptr inbounds %struct.device, ptr %214, i32 0, i32 6
  %221 = ptrtoint ptr %driver.i887 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %driver.i887, align 4
  %cmp.i888 = icmp eq ptr %222, %216
  br i1 %cmp.i888, label %driver_filter.exit906.land.lhs.true355_crit_edge, label %driver_filter.exit906.if.end405_crit_edge

driver_filter.exit906.if.end405_crit_edge:        ; preds = %driver_filter.exit906
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end405

driver_filter.exit906.land.lhs.true355_crit_edge: ; preds = %driver_filter.exit906
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true355

land.lhs.true355:                                 ; preds = %driver_filter.exit906.land.lhs.true355_crit_edge, %do.body29.i904, %do.body350.land.lhs.true355_crit_edge
  %223 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool356.not = icmp eq i32 %223, 0
  br i1 %tobool356.not, label %lor.lhs.false357, label %land.lhs.true355.do.end373_crit_edge

land.lhs.true355.do.end373_crit_edge:             ; preds = %land.lhs.true355
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end373

lor.lhs.false357:                                 ; preds = %land.lhs.true355
  %224 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp358.not = icmp eq i32 %224, 0
  br i1 %cmp358.not, label %lor.lhs.false357.if.end415_crit_edge, label %lor.lhs.false357.do.end373_crit_edge

lor.lhs.false357.do.end373_crit_edge:             ; preds = %lor.lhs.false357
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end373

lor.lhs.false357.if.end415_crit_edge:             ; preds = %lor.lhs.false357
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

do.end373:                                        ; preds = %lor.lhs.false357.do.end373_crit_edge, %land.lhs.true355.do.end373_crit_edge
  %225 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i.i, align 8
  %tobool375.not = icmp eq ptr %226, null
  br i1 %tobool375.not, label %do.end373.dump_entry_trace.exit918_crit_edge, label %cond.end380

do.end373.dump_entry_trace.exit918_crit_edge:     ; preds = %do.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit918

cond.end380:                                      ; preds = %do.end373
  %call378 = tail call ptr @dev_driver_string(ptr noundef nonnull %226) #9
  %227 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %.pr1062 = load ptr, ptr %dev.i.i, align 8
  %tobool383.not = icmp eq ptr %.pr1062, null
  br i1 %tobool383.not, label %cond.end380.dump_entry_trace.exit918_crit_edge, label %cond.true384

cond.end380.dump_entry_trace.exit918_crit_edge:   ; preds = %cond.end380
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit918

cond.true384:                                     ; preds = %cond.end380
  %init_name.i907 = getelementptr inbounds %struct.device, ptr %.pr1062, i32 0, i32 3
  %228 = ptrtoint ptr %init_name.i907 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %init_name.i907, align 8
  %tobool.not.i908 = icmp eq ptr %229, null
  br i1 %tobool.not.i908, label %if.end.i909, label %cond.true384.dump_entry_trace.exit918_crit_edge

cond.true384.dump_entry_trace.exit918_crit_edge:  ; preds = %cond.true384
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit918

if.end.i909:                                      ; preds = %cond.true384
  call void @__sanitizer_cov_trace_pc() #11
  %230 = ptrtoint ptr %.pr1062 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %.pr1062, align 4
  br label %dump_entry_trace.exit918

dump_entry_trace.exit918:                         ; preds = %if.end.i909, %cond.true384.dump_entry_trace.exit918_crit_edge, %cond.end380.dump_entry_trace.exit918_crit_edge, %do.end373.dump_entry_trace.exit918_crit_edge
  %cond3811065 = phi ptr [ %call378, %cond.end380.dump_entry_trace.exit918_crit_edge ], [ %call378, %cond.true384.dump_entry_trace.exit918_crit_edge ], [ %call378, %if.end.i909 ], [ @.str.8, %do.end373.dump_entry_trace.exit918_crit_edge ]
  %cond389 = phi ptr [ @.str.8, %cond.end380.dump_entry_trace.exit918_crit_edge ], [ %229, %cond.true384.dump_entry_trace.exit918_crit_edge ], [ %231, %if.end.i909 ], [ @.str.8, %do.end373.dump_entry_trace.exit918_crit_edge ]
  %232 = ptrtoint ptr %sg_call_ents346 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %sg_call_ents346, align 8
  %234 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %sg_call_ents20.i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1004, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef %cond3811065, ptr noundef %cond389, i32 noundef %233, i32 noundef %235) #9
  %call.i913 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i914 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i915 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %236 = ptrtoint ptr %stack_len.i915 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %stack_len.i915, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i914, i32 noundef %237, i32 noundef 0) #9
  br label %if.end405

if.end405:                                        ; preds = %dump_entry_trace.exit918, %driver_filter.exit906.if.end405_crit_edge, %do.body29.i904.thread, %if.end15.i895.if.end405_crit_edge, %if.end8.i892.if.end405_crit_edge
  %.pr1066 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1066)
  %tobool406.not = icmp eq i32 %.pr1066, 0
  br i1 %tobool406.not, label %land.lhs.true407, label %if.end405.if.end415_crit_edge

if.end405.if.end415_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

land.lhs.true407:                                 ; preds = %if.end405
  %.pr1068 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1068)
  %cmp408.not = icmp eq i32 %.pr1068, 0
  br i1 %cmp408.not, label %land.lhs.true407.if.end415_crit_edge, label %if.then410

land.lhs.true407.if.end415_crit_edge:             ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415

if.then410:                                       ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #11
  %sub411 = add i32 %.pr1068, -1
  store i32 %sub411, ptr @show_num_errors, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.then410, %land.lhs.true407.if.end415_crit_edge, %if.end405.if.end415_crit_edge, %lor.lhs.false357.if.end415_crit_edge, %land.lhs.true344.if.end415_crit_edge, %land.lhs.true340.if.end415_crit_edge, %if.end338.if.end415_crit_edge
  %238 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %direction13.i.i, align 4
  %direction416 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 5
  %240 = ptrtoint ptr %direction416 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %direction416, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %241)
  %cmp417.not = icmp eq i32 %239, %241
  br i1 %cmp417.not, label %if.end415.if.end489_crit_edge, label %do.body420

if.end415.if.end489_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end489

do.body420:                                       ; preds = %if.end415
  %242 = load i32, ptr @error_count, align 4
  %add421 = add i32 %242, 1
  store i32 %add421, ptr @error_count, align 4
  %243 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev.i.i, align 8
  %245 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i919 = icmp eq i8 %245, 0
  br i1 %tobool.not.i919, label %do.body420.land.lhs.true425_crit_edge, label %if.end.i923, !prof !252

do.body420.land.lhs.true425_crit_edge:            ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true425

if.end.i923:                                      ; preds = %do.body420
  %246 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i920 = icmp eq ptr %246, null
  %tobool5.not.i921 = icmp eq ptr %244, null
  %or.cond.i922 = or i1 %tobool5.not.i921, %tobool4.not.i920
  br i1 %or.cond.i922, label %if.end8.i929, label %driver_filter.exit943

if.end8.i929:                                     ; preds = %if.end.i923
  %tobool4.not.not49.i927 = xor i1 %tobool4.not.i920, true
  %brmerge50.i928 = select i1 %tobool5.not.i921, i1 true, i1 %tobool4.not.not49.i927
  br i1 %brmerge50.i928, label %if.end8.i929.if.end479_crit_edge, label %if.end15.i932

if.end8.i929.if.end479_crit_edge:                 ; preds = %if.end8.i929
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end479

if.end15.i932:                                    ; preds = %if.end8.i929
  %driver16.i930 = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 6
  %247 = ptrtoint ptr %driver16.i930 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %driver16.i930, align 4
  %tobool17.not.i931 = icmp eq ptr %248, null
  br i1 %tobool17.not.i931, label %if.end15.i932.if.end479_crit_edge, label %do.body.i935

if.end15.i932.if.end479_crit_edge:                ; preds = %if.end15.i932
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end479

do.body.i935:                                     ; preds = %if.end15.i932
  %call.i933 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %tobool21.not.i934 = icmp eq ptr %250, null
  br i1 %tobool21.not.i934, label %do.body.i935.do.body29.i941.thread_crit_edge, label %land.lhs.true22.i938

do.body.i935.do.body29.i941.thread_crit_edge:     ; preds = %do.body.i935
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i941.thread

land.lhs.true22.i938:                             ; preds = %do.body.i935
  %call24.i936 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %250, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i936)
  %cmp25.i937 = icmp eq i32 %call24.i936, 0
  br i1 %cmp25.i937, label %do.body29.i941, label %land.lhs.true22.i938.do.body29.i941.thread_crit_edge

land.lhs.true22.i938.do.body29.i941.thread_crit_edge: ; preds = %land.lhs.true22.i938
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i941.thread

do.body29.i941.thread:                            ; preds = %land.lhs.true22.i938.do.body29.i941.thread_crit_edge, %do.body.i935.do.body29.i941.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i933) #9
  br label %if.end479

do.body29.i941:                                   ; preds = %land.lhs.true22.i938
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %248, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i933) #9
  br label %land.lhs.true425

driver_filter.exit943:                            ; preds = %if.end.i923
  %driver.i924 = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 6
  %251 = ptrtoint ptr %driver.i924 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %driver.i924, align 4
  %cmp.i925 = icmp eq ptr %252, %246
  br i1 %cmp.i925, label %driver_filter.exit943.land.lhs.true425_crit_edge, label %driver_filter.exit943.if.end479_crit_edge

driver_filter.exit943.if.end479_crit_edge:        ; preds = %driver_filter.exit943
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end479

driver_filter.exit943.land.lhs.true425_crit_edge: ; preds = %driver_filter.exit943
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true425

land.lhs.true425:                                 ; preds = %driver_filter.exit943.land.lhs.true425_crit_edge, %do.body29.i941, %do.body420.land.lhs.true425_crit_edge
  %253 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool426.not = icmp eq i32 %253, 0
  br i1 %tobool426.not, label %lor.lhs.false427, label %land.lhs.true425.do.end443_crit_edge

land.lhs.true425.do.end443_crit_edge:             ; preds = %land.lhs.true425
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end443

lor.lhs.false427:                                 ; preds = %land.lhs.true425
  %254 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp428.not = icmp eq i32 %254, 0
  br i1 %cmp428.not, label %lor.lhs.false427.if.end489_crit_edge, label %lor.lhs.false427.do.end443_crit_edge

lor.lhs.false427.do.end443_crit_edge:             ; preds = %lor.lhs.false427
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end443

lor.lhs.false427.if.end489_crit_edge:             ; preds = %lor.lhs.false427
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end489

do.end443:                                        ; preds = %lor.lhs.false427.do.end443_crit_edge, %land.lhs.true425.do.end443_crit_edge
  %255 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i.i, align 8
  %tobool445.not = icmp eq ptr %256, null
  br i1 %tobool445.not, label %do.end443.dump_entry_trace.exit955_crit_edge, label %cond.end450

do.end443.dump_entry_trace.exit955_crit_edge:     ; preds = %do.end443
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit955

cond.end450:                                      ; preds = %do.end443
  %call448 = tail call ptr @dev_driver_string(ptr noundef nonnull %256) #9
  %257 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %.pr1073 = load ptr, ptr %dev.i.i, align 8
  %tobool453.not = icmp eq ptr %.pr1073, null
  br i1 %tobool453.not, label %cond.end450.dump_entry_trace.exit955_crit_edge, label %cond.true454

cond.end450.dump_entry_trace.exit955_crit_edge:   ; preds = %cond.end450
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit955

cond.true454:                                     ; preds = %cond.end450
  %init_name.i944 = getelementptr inbounds %struct.device, ptr %.pr1073, i32 0, i32 3
  %258 = ptrtoint ptr %init_name.i944 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %init_name.i944, align 8
  %tobool.not.i945 = icmp eq ptr %259, null
  br i1 %tobool.not.i945, label %if.end.i946, label %cond.true454.dump_entry_trace.exit955_crit_edge

cond.true454.dump_entry_trace.exit955_crit_edge:  ; preds = %cond.true454
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit955

if.end.i946:                                      ; preds = %cond.true454
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %.pr1073 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %.pr1073, align 4
  br label %dump_entry_trace.exit955

dump_entry_trace.exit955:                         ; preds = %if.end.i946, %cond.true454.dump_entry_trace.exit955_crit_edge, %cond.end450.dump_entry_trace.exit955_crit_edge, %do.end443.dump_entry_trace.exit955_crit_edge
  %cond4511076 = phi ptr [ %call448, %cond.end450.dump_entry_trace.exit955_crit_edge ], [ %call448, %cond.true454.dump_entry_trace.exit955_crit_edge ], [ %call448, %if.end.i946 ], [ @.str.8, %do.end443.dump_entry_trace.exit955_crit_edge ]
  %cond459 = phi ptr [ @.str.8, %cond.end450.dump_entry_trace.exit955_crit_edge ], [ %259, %cond.true454.dump_entry_trace.exit955_crit_edge ], [ %261, %if.end.i946 ], [ @.str.8, %do.end443.dump_entry_trace.exit955_crit_edge ]
  %262 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %dev_addr.i.i, align 16
  %264 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %size4.i.i, align 8
  %266 = ptrtoint ptr %direction416 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %direction416, align 4
  %arrayidx463 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %267
  %268 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx463, align 4
  %270 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %direction13.i.i, align 4
  %arrayidx465 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %271
  %272 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx465, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef nonnull @.str.80, ptr noundef %cond4511076, ptr noundef %cond459, i64 noundef %263, i64 noundef %265, ptr noundef %269, ptr noundef %273) #9
  %call.i950 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i951 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i952 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %274 = ptrtoint ptr %stack_len.i952 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %stack_len.i952, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i951, i32 noundef %275, i32 noundef 0) #9
  br label %if.end479

if.end479:                                        ; preds = %dump_entry_trace.exit955, %driver_filter.exit943.if.end479_crit_edge, %do.body29.i941.thread, %if.end15.i932.if.end479_crit_edge, %if.end8.i929.if.end479_crit_edge
  %.pr1077 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1077)
  %tobool480.not = icmp eq i32 %.pr1077, 0
  br i1 %tobool480.not, label %land.lhs.true481, label %if.end479.if.end489_crit_edge

if.end479.if.end489_crit_edge:                    ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end489

land.lhs.true481:                                 ; preds = %if.end479
  %.pr1079 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1079)
  %cmp482.not = icmp eq i32 %.pr1079, 0
  br i1 %cmp482.not, label %land.lhs.true481.if.end489_crit_edge, label %if.then484

land.lhs.true481.if.end489_crit_edge:             ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end489

if.then484:                                       ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #11
  %sub485 = add i32 %.pr1079, -1
  store i32 %sub485, ptr @show_num_errors, align 4
  br label %if.end489

if.end489:                                        ; preds = %if.then484, %land.lhs.true481.if.end489_crit_edge, %if.end479.if.end489_crit_edge, %lor.lhs.false427.if.end489_crit_edge, %if.end415.if.end489_crit_edge
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 10
  %276 = ptrtoint ptr %map_err_type to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %map_err_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %277)
  %cmp490 = icmp eq i32 %277, 1
  br i1 %cmp490, label %do.body493, label %if.end489.if.end560_crit_edge

if.end489.if.end560_crit_edge:                    ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

do.body493:                                       ; preds = %if.end489
  %278 = load i32, ptr @error_count, align 4
  %add494 = add i32 %278, 1
  store i32 %add494, ptr @error_count, align 4
  %279 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i.i, align 8
  %281 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool.not.i956 = icmp eq i8 %281, 0
  br i1 %tobool.not.i956, label %do.body493.land.lhs.true498_crit_edge, label %if.end.i960, !prof !252

do.body493.land.lhs.true498_crit_edge:            ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true498

if.end.i960:                                      ; preds = %do.body493
  %282 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i957 = icmp eq ptr %282, null
  %tobool5.not.i958 = icmp eq ptr %280, null
  %or.cond.i959 = or i1 %tobool5.not.i958, %tobool4.not.i957
  br i1 %or.cond.i959, label %if.end8.i966, label %driver_filter.exit980

if.end8.i966:                                     ; preds = %if.end.i960
  %tobool4.not.not49.i964 = xor i1 %tobool4.not.i957, true
  %brmerge50.i965 = select i1 %tobool5.not.i958, i1 true, i1 %tobool4.not.not49.i964
  br i1 %brmerge50.i965, label %if.end8.i966.if.end550_crit_edge, label %if.end15.i969

if.end8.i966.if.end550_crit_edge:                 ; preds = %if.end8.i966
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end550

if.end15.i969:                                    ; preds = %if.end8.i966
  %driver16.i967 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 6
  %283 = ptrtoint ptr %driver16.i967 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %driver16.i967, align 4
  %tobool17.not.i968 = icmp eq ptr %284, null
  br i1 %tobool17.not.i968, label %if.end15.i969.if.end550_crit_edge, label %do.body.i972

if.end15.i969.if.end550_crit_edge:                ; preds = %if.end15.i969
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end550

do.body.i972:                                     ; preds = %if.end15.i969
  %call.i970 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %tobool21.not.i971 = icmp eq ptr %286, null
  br i1 %tobool21.not.i971, label %do.body.i972.do.body29.i978.thread_crit_edge, label %land.lhs.true22.i975

do.body.i972.do.body29.i978.thread_crit_edge:     ; preds = %do.body.i972
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i978.thread

land.lhs.true22.i975:                             ; preds = %do.body.i972
  %call24.i973 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %286, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i973)
  %cmp25.i974 = icmp eq i32 %call24.i973, 0
  br i1 %cmp25.i974, label %do.body29.i978, label %land.lhs.true22.i975.do.body29.i978.thread_crit_edge

land.lhs.true22.i975.do.body29.i978.thread_crit_edge: ; preds = %land.lhs.true22.i975
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i978.thread

do.body29.i978.thread:                            ; preds = %land.lhs.true22.i975.do.body29.i978.thread_crit_edge, %do.body.i972.do.body29.i978.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i970) #9
  br label %if.end550

do.body29.i978:                                   ; preds = %land.lhs.true22.i975
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %284, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i970) #9
  br label %land.lhs.true498

driver_filter.exit980:                            ; preds = %if.end.i960
  %driver.i961 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 6
  %287 = ptrtoint ptr %driver.i961 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %driver.i961, align 4
  %cmp.i962 = icmp eq ptr %288, %282
  br i1 %cmp.i962, label %driver_filter.exit980.land.lhs.true498_crit_edge, label %driver_filter.exit980.if.end550_crit_edge

driver_filter.exit980.if.end550_crit_edge:        ; preds = %driver_filter.exit980
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end550

driver_filter.exit980.land.lhs.true498_crit_edge: ; preds = %driver_filter.exit980
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true498

land.lhs.true498:                                 ; preds = %driver_filter.exit980.land.lhs.true498_crit_edge, %do.body29.i978, %do.body493.land.lhs.true498_crit_edge
  %289 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool499.not = icmp eq i32 %289, 0
  br i1 %tobool499.not, label %lor.lhs.false500, label %land.lhs.true498.do.end516_crit_edge

land.lhs.true498.do.end516_crit_edge:             ; preds = %land.lhs.true498
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end516

lor.lhs.false500:                                 ; preds = %land.lhs.true498
  %290 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp501.not = icmp eq i32 %290, 0
  br i1 %cmp501.not, label %lor.lhs.false500.if.end560_crit_edge, label %lor.lhs.false500.do.end516_crit_edge

lor.lhs.false500.do.end516_crit_edge:             ; preds = %lor.lhs.false500
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end516

lor.lhs.false500.if.end560_crit_edge:             ; preds = %lor.lhs.false500
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

do.end516:                                        ; preds = %lor.lhs.false500.do.end516_crit_edge, %land.lhs.true498.do.end516_crit_edge
  %291 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev.i.i, align 8
  %tobool518.not = icmp eq ptr %292, null
  br i1 %tobool518.not, label %do.end516.dump_entry_trace.exit992_crit_edge, label %cond.end523

do.end516.dump_entry_trace.exit992_crit_edge:     ; preds = %do.end516
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit992

cond.end523:                                      ; preds = %do.end516
  %call521 = tail call ptr @dev_driver_string(ptr noundef nonnull %292) #9
  %293 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %.pr1084 = load ptr, ptr %dev.i.i, align 8
  %tobool526.not = icmp eq ptr %.pr1084, null
  br i1 %tobool526.not, label %cond.end523.dump_entry_trace.exit992_crit_edge, label %cond.true527

cond.end523.dump_entry_trace.exit992_crit_edge:   ; preds = %cond.end523
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit992

cond.true527:                                     ; preds = %cond.end523
  %init_name.i981 = getelementptr inbounds %struct.device, ptr %.pr1084, i32 0, i32 3
  %294 = ptrtoint ptr %init_name.i981 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %init_name.i981, align 8
  %tobool.not.i982 = icmp eq ptr %295, null
  br i1 %tobool.not.i982, label %if.end.i983, label %cond.true527.dump_entry_trace.exit992_crit_edge

cond.true527.dump_entry_trace.exit992_crit_edge:  ; preds = %cond.true527
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit992

if.end.i983:                                      ; preds = %cond.true527
  call void @__sanitizer_cov_trace_pc() #11
  %296 = ptrtoint ptr %.pr1084 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %.pr1084, align 4
  br label %dump_entry_trace.exit992

dump_entry_trace.exit992:                         ; preds = %if.end.i983, %cond.true527.dump_entry_trace.exit992_crit_edge, %cond.end523.dump_entry_trace.exit992_crit_edge, %do.end516.dump_entry_trace.exit992_crit_edge
  %cond5241087 = phi ptr [ %call521, %cond.end523.dump_entry_trace.exit992_crit_edge ], [ %call521, %cond.true527.dump_entry_trace.exit992_crit_edge ], [ %call521, %if.end.i983 ], [ @.str.8, %do.end516.dump_entry_trace.exit992_crit_edge ]
  %cond532 = phi ptr [ @.str.8, %cond.end523.dump_entry_trace.exit992_crit_edge ], [ %295, %cond.true527.dump_entry_trace.exit992_crit_edge ], [ %297, %if.end.i983 ], [ @.str.8, %do.end516.dump_entry_trace.exit992_crit_edge ]
  %298 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %dev_addr.i.i, align 16
  %300 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %size4.i.i, align 8
  %302 = ptrtoint ptr %type188 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %type188, align 32
  %arrayidx536 = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %303
  %304 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx536, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1032, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %cond5241087, ptr noundef %cond532, i64 noundef %299, i64 noundef %301, ptr noundef %305) #9
  %call.i987 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i988 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 12
  %stack_len.i989 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 11
  %306 = ptrtoint ptr %stack_len.i989 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %stack_len.i989, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i988, i32 noundef %307, i32 noundef 0) #9
  br label %if.end550

if.end550:                                        ; preds = %dump_entry_trace.exit992, %driver_filter.exit980.if.end550_crit_edge, %do.body29.i978.thread, %if.end15.i969.if.end550_crit_edge, %if.end8.i966.if.end550_crit_edge
  %.pr1088 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1088)
  %tobool551.not = icmp eq i32 %.pr1088, 0
  br i1 %tobool551.not, label %land.lhs.true552, label %if.end550.if.end560_crit_edge

if.end550.if.end560_crit_edge:                    ; preds = %if.end550
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

land.lhs.true552:                                 ; preds = %if.end550
  %.pr1092 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1092)
  %cmp553.not = icmp eq i32 %.pr1092, 0
  br i1 %cmp553.not, label %land.lhs.true552.if.end560_crit_edge, label %if.then555

land.lhs.true552.if.end560_crit_edge:             ; preds = %land.lhs.true552
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

if.then555:                                       ; preds = %land.lhs.true552
  call void @__sanitizer_cov_trace_pc() #11
  %sub556 = add i32 %.pr1092, -1
  store i32 %sub556, ptr @show_num_errors, align 4
  br label %if.end560

if.end560:                                        ; preds = %if.then555, %land.lhs.true552.if.end560_crit_edge, %if.end550.if.end560_crit_edge, %lor.lhs.false500.if.end560_crit_edge, %if.end489.if.end560_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %retval.0.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end560.hash_bucket_del.exit_crit_edge

if.end560.hash_bucket_del.exit_crit_edge:         ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bucket_del.exit

if.end.i.i.i:                                     ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i.i, i32 0, i32 1
  %308 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %prev.i.i.i, align 4
  %310 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %retval.0.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %309, ptr %prev1.i.i.i.i, align 4
  %313 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile ptr %311, ptr %309, align 4
  br label %hash_bucket_del.exit

hash_bucket_del.exit:                             ; preds = %if.end.i.i.i, %if.end560.hash_bucket_del.exit_crit_edge
  %314 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i.i, i32 0, i32 1
  %315 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pfn.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 8
  %316 = ptrtoint ptr %pfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %pfn.i.i.i, align 16
  %shl.i.i.i = shl i32 %317, 5
  %offset.i.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 9
  %318 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %offset.i.i.i, align 4
  %shr.i.i.i = lshr i32 %319, 7
  %add.i.i.i = add i32 %shr.i.i.i, %shl.i.i.i
  %320 = ptrtoint ptr %direction416 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %direction416, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %321)
  %cmp.i.i994 = icmp eq i32 %321, 1
  br i1 %cmp.i.i994, label %hash_bucket_del.exit.active_cacheline_remove.exit.i_crit_edge, label %do.body2.i.i

hash_bucket_del.exit.active_cacheline_remove.exit.i_crit_edge: ; preds = %hash_bucket_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %active_cacheline_remove.exit.i

do.body2.i.i:                                     ; preds = %hash_bucket_del.exit
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @radix_lock) #9
  %call.i.i.i.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  %or.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 4
  %call.1.i.i.i.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i.i.i)
  %tobool.not.1.i.i.i.i = icmp eq i32 %call.1.i.i.i.i, 0
  %or.1.i.i.i.i = select i1 %tobool.not.1.i.i.i.i, i32 0, i32 2
  %overlap.1.1.i.i.i.i = or i32 %or.1.i.i.i.i, %or.i.i.i.i
  %call.2.i.i.i.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i.i.i)
  %tobool.not.2.i.i.i.i = icmp ne i32 %call.2.i.i.i.i, 0
  %or.2.i.i.i.i = zext i1 %tobool.not.2.i.i.i.i to i32
  %overlap.1.2.i.i.i.i = or i32 %overlap.1.1.i.i.i.i, %or.2.i.i.i.i
  %dec.i.i.i = add nsw i32 %overlap.1.2.i.i.i.i, -1
  %call1.i.i.i = tail call fastcc i32 @active_cacheline_set_overlap(i32 noundef %add.i.i.i, i32 noundef %dec.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overlap.1.2.i.i.i.i)
  %cmp9.i.i = icmp eq i32 %overlap.1.2.i.i.i.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %do.body2.i.i.if.end13.i.i_crit_edge

do.body2.i.i.if.end13.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i.i = tail call ptr @radix_tree_delete(ptr noundef nonnull @dma_active_cacheline, i32 noundef %add.i.i.i) #9
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %do.body2.i.i.if.end13.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @radix_lock, i32 noundef %call5.i.i) #9
  br label %active_cacheline_remove.exit.i

active_cacheline_remove.exit.i:                   ; preds = %if.end13.i.i, %hash_bucket_del.exit.active_cacheline_remove.exit.i_crit_edge
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @free_entries_lock) #9
  %322 = load ptr, ptr @free_entries, align 4
  %call.i.i.i995 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @free_entries, ptr noundef %322) #9
  br i1 %call.i.i.i995, label %if.end.i.i.i996, label %active_cacheline_remove.exit.i.dma_entry_free.exit_crit_edge

active_cacheline_remove.exit.i.dma_entry_free.exit_crit_edge: ; preds = %active_cacheline_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_entry_free.exit

if.end.i.i.i996:                                  ; preds = %active_cacheline_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %retval.0.i.i, ptr %prev1.i.i.i, align 4
  %324 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %322, ptr %retval.0.i.i, align 4
  %325 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @free_entries, ptr %prev.i.i, align 4
  store volatile ptr %retval.0.i.i, ptr @free_entries, align 4
  br label %dma_entry_free.exit

dma_entry_free.exit:                              ; preds = %if.end.i.i.i996, %active_cacheline_remove.exit.i.dma_entry_free.exit_crit_edge
  %326 = load i32, ptr @num_free_entries, align 4
  %add.i = add i32 %326, 1
  store i32 %add.i, ptr @num_free_entries, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @free_entries_lock, i32 noundef %call3.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %dma_entry_free.exit, %if.then109, %land.lhs.true106.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %if.then46, %land.lhs.true43.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %mapped_ents, i32 noundef %direction, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %for.cond.preheader, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp77 = icmp sgt i32 %nents, 0
  br i1 %cmp77, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond12.preheader_crit_edge

for.cond.preheader.for.cond12.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond12.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond12.preheader:                             ; preds = %for.inc.for.cond12.preheader_crit_edge, %for.cond.preheader.for.cond12.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped_ents)
  %cmp1381 = icmp sgt i32 %mapped_ents, 0
  br i1 %cmp1381, label %for.body14.lr.ph, label %for.cond12.preheader.cleanup_crit_edge

for.cond12.preheader.cleanup_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %tobool5.not.i.i = icmp eq ptr %dev, null
  %driver.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  br label %for.body14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %s.078 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %sg, %for.cond.preheader.for.body_crit_edge ]
  %1 = ptrtoint ptr %s.078 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s.078, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !252

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %s.078, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  tail call fastcc void @check_for_stack(ptr noundef %dev, ptr noundef %3, i32 noundef %5)
  %6 = ptrtoint ptr %s.078 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s.078, align 4
  %and.i.i61 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.i.not.i62 = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.i.not.i62, label %sg_page.exit65, label %do.body2.i63, !prof !252

do.body2.i63:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit65:                                   ; preds = %sg_page.exit
  %and.i64 = and i32 %7, -4
  %8 = inttoptr i32 %and.i64 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shr.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %shr.i, label %sg_page.exit65.sg_virt.exit_crit_edge [
    i32 2, label %sg_page.exit65.for.inc_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

sg_page.exit65.for.inc_crit_edge:                 ; preds = %sg_page.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sg_page.exit65.sg_virt.exit_crit_edge:            ; preds = %sg_page.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sg_virt.exit

is_highmem_idx.exit:                              ; preds = %sg_page.exit65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not = icmp eq i32 %12, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.for.inc_crit_edge, label %is_highmem_idx.exit.sg_virt.exit_crit_edge

is_highmem_idx.exit.sg_virt.exit_crit_edge:       ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sg_virt.exit

is_highmem_idx.exit.for.inc_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sg_virt.exit:                                     ; preds = %is_highmem_idx.exit.sg_virt.exit_crit_edge, %sg_page.exit65.sg_virt.exit_crit_edge
  %call1.i = tail call ptr @page_address(ptr noundef %8) #9
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %14
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.078, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  tail call fastcc void @check_for_illegal_area(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %sg_virt.exit, %is_highmem_idx.exit.for.inc_crit_edge, %sg_page.exit65.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %call11 = tail call ptr @sg_next(ptr noundef %s.078) #9
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.inc.for.cond12.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond12.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond12.preheader

for.body14:                                       ; preds = %check_sg_segment.exit.for.body14_crit_edge, %for.body14.lr.ph
  %i.183 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc26, %check_sg_segment.exit.for.body14_crit_edge ]
  %s.182 = phi ptr [ %sg, %for.body14.lr.ph ], [ %call27, %check_sg_segment.exit.for.body14_crit_edge ]
  %call15 = tail call fastcc ptr @dma_entry_alloc()
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.body14.cleanup_crit_edge, label %if.end18

for.body14.cleanup_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %for.body14
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 32
  %dev19 = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 1
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev19, align 8
  %19 = ptrtoint ptr %s.182 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s.182, align 4
  %and.i.i67 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.i.not.i68 = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.i.not.i68, label %sg_page.exit71, label %do.body2.i69, !prof !252

do.body2.i69:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit71:                                   ; preds = %if.end18
  %and.i70 = and i32 %20, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.sub = sub i32 %and.i70, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %22
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 8
  %23 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %pfn, align 16
  %offset21 = getelementptr inbounds %struct.scatterlist, ptr %s.182, i32 0, i32 1
  %24 = ptrtoint ptr %offset21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset21, align 4
  %offset22 = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 9
  %26 = ptrtoint ptr %offset22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %offset22, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.182, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length, align 4
  %conv = zext i32 %28 to i64
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 3
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %size, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.182, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address, align 4
  %conv23 = zext i32 %31 to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 2
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv23, ptr %dev_addr, align 16
  %direction24 = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 5
  %33 = ptrtoint ptr %direction24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %direction, ptr %direction24, align 4
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 6
  %34 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %nents, ptr %sg_call_ents, align 8
  %sg_mapped_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %call15, i32 0, i32 7
  %35 = ptrtoint ptr %sg_mapped_ents to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mapped_ents, ptr %sg_mapped_ents, align 4
  %36 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %sg_page.exit71.if.end.i135.i_crit_edge, label %land.lhs.true.i.i

sg_page.exit71.if.end.i135.i_crit_edge:           ; preds = %sg_page.exit71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i135.i

land.lhs.true.i.i:                                ; preds = %sg_page.exit71
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.i.i = icmp eq i32 %39, 0
  %spec.select.i = select i1 %tobool2.not.i.i, i32 65536, i32 %39
  %segment_boundary_mask.i.i = getelementptr inbounds %struct.device_dma_parameters, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %segment_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %segment_boundary_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i133.i = icmp eq i32 %41, 0
  br i1 %tobool2.not.i133.i, label %land.lhs.true.i.i.if.end.i135.i_crit_edge, label %land.lhs.true.i.i.dma_get_seg_boundary.exit.i_crit_edge

land.lhs.true.i.i.dma_get_seg_boundary.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_get_seg_boundary.exit.i

land.lhs.true.i.i.if.end.i135.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i135.i

if.end.i135.i:                                    ; preds = %land.lhs.true.i.i.if.end.i135.i_crit_edge, %sg_page.exit71.if.end.i135.i_crit_edge
  %retval.0.i177.i = phi i32 [ %spec.select.i, %land.lhs.true.i.i.if.end.i135.i_crit_edge ], [ 65536, %sg_page.exit71.if.end.i135.i_crit_edge ]
  br label %dma_get_seg_boundary.exit.i

dma_get_seg_boundary.exit.i:                      ; preds = %if.end.i135.i, %land.lhs.true.i.i.dma_get_seg_boundary.exit.i_crit_edge
  %retval.0.i176.i = phi i32 [ %retval.0.i177.i, %if.end.i135.i ], [ %spec.select.i, %land.lhs.true.i.i.dma_get_seg_boundary.exit.i_crit_edge ]
  %retval.0.i136.i = phi i32 [ -1, %if.end.i135.i ], [ %41, %land.lhs.true.i.i.dma_get_seg_boundary.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i136.i to i64
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %s.182, i32 0, i32 2
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %retval.0.i176.i)
  %cmp.i = icmp ugt i32 %43, %retval.0.i176.i
  br i1 %cmp.i, label %do.body.i, label %dma_get_seg_boundary.exit.i.if.end43.i_crit_edge

dma_get_seg_boundary.exit.i.if.end43.i_crit_edge: ; preds = %dma_get_seg_boundary.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.body.i:                                        ; preds = %dma_get_seg_boundary.exit.i
  %44 = load i32, ptr @error_count, align 4
  %add.i = add i32 %44, 1
  store i32 %add.i, ptr @error_count, align 4
  %45 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i137.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i137.i, label %do.body.i.land.lhs.true.i_crit_edge, label %if.end.i138.i, !prof !252

do.body.i.land.lhs.true.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end.i138.i:                                    ; preds = %do.body.i
  %46 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i.i = icmp eq ptr %46, null
  %or.cond.i.i = or i1 %tobool5.not.i.i, %tobool4.not.i.i
  br i1 %or.cond.i.i, label %if.end8.i.i, label %driver_filter.exit.i

if.end8.i.i:                                      ; preds = %if.end.i138.i
  %tobool4.not.not49.i.i = xor i1 %tobool4.not.i.i, true
  %brmerge50.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %tobool4.not.not49.i.i
  br i1 %brmerge50.i.i, label %if.end8.i.i.if.end34.i_crit_edge, label %if.end15.i.i

if.end8.i.i.if.end34.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.end15.i.i:                                     ; preds = %if.end8.i.i
  %47 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %48, null
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end34.i_crit_edge, label %do.body.i.i

if.end15.i.i.if.end34.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

do.body.i.i:                                      ; preds = %if.end15.i.i
  %call.i.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool21.not.i.i = icmp eq ptr %50, null
  br i1 %tobool21.not.i.i, label %do.body.i.i.do.body29.i.thread.i_crit_edge, label %land.lhs.true22.i.i

do.body.i.i.do.body29.i.thread.i_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread.i

land.lhs.true22.i.i:                              ; preds = %do.body.i.i
  %call24.i.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %50, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp25.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %cmp25.i.i, label %do.body29.i.i, label %land.lhs.true22.i.i.do.body29.i.thread.i_crit_edge

land.lhs.true22.i.i.do.body29.i.thread.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread.i

do.body29.i.thread.i:                             ; preds = %land.lhs.true22.i.i.do.body29.i.thread.i_crit_edge, %do.body.i.i.do.body29.i.thread.i_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i.i) #9
  br label %if.end34.i

do.body29.i.i:                                    ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %48, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i.i) #9
  br label %land.lhs.true.i

driver_filter.exit.i:                             ; preds = %if.end.i138.i
  %51 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %52, %46
  br i1 %cmp.i.i, label %driver_filter.exit.i.land.lhs.true.i_crit_edge, label %driver_filter.exit.i.if.end34.i_crit_edge

driver_filter.exit.i.if.end34.i_crit_edge:        ; preds = %driver_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

driver_filter.exit.i.land.lhs.true.i_crit_edge:   ; preds = %driver_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %driver_filter.exit.i.land.lhs.true.i_crit_edge, %do.body29.i.i, %do.body.i.land.lhs.true.i_crit_edge
  %53 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i72 = icmp eq i32 %53, 0
  br i1 %tobool.not.i72, label %lor.lhs.false.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %54 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp5.not.i = icmp eq i32 %54, 0
  br i1 %cmp5.not.i, label %lor.lhs.false.i.if.end43.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i.if.end43.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  br i1 %tobool5.not.i.i, label %do.end.i.cond.end20.i_crit_edge, label %cond.true17.i

do.end.i.cond.end20.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end20.i

cond.true17.i:                                    ; preds = %do.end.i
  %call15.i = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i140.i = icmp eq ptr %56, null
  br i1 %tobool.not.i140.i, label %if.end.i141.i, label %cond.true17.i.cond.end20.i_crit_edge

cond.true17.i.cond.end20.i_crit_edge:             ; preds = %cond.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end20.i

if.end.i141.i:                                    ; preds = %cond.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %if.end.i141.i, %cond.true17.i.cond.end20.i_crit_edge, %do.end.i.cond.end20.i_crit_edge
  %cond184.i = phi ptr [ %call15.i, %cond.true17.i.cond.end20.i_crit_edge ], [ %call15.i, %if.end.i141.i ], [ @.str.8, %do.end.i.cond.end20.i_crit_edge ]
  %cond21.i = phi ptr [ %56, %cond.true17.i.cond.end20.i_crit_edge ], [ %58, %if.end.i141.i ], [ @.str.8, %do.end.i.cond.end20.i_crit_edge ]
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef nonnull @.str.82, ptr noundef %cond184.i, ptr noundef %cond21.i, i32 noundef %60, i32 noundef %retval.0.i176.i) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %cond.end20.i, %driver_filter.exit.i.if.end34.i_crit_edge, %do.body29.i.thread.i, %if.end15.i.i.if.end34.i_crit_edge, %if.end8.i.i.if.end34.i_crit_edge
  %.pr.i = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool35.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true36.i, label %if.end34.i.if.end43.i_crit_edge

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

land.lhs.true36.i:                                ; preds = %if.end34.i
  %.pr186.i = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr186.i)
  %cmp37.not.i = icmp eq i32 %.pr186.i, 0
  br i1 %cmp37.not.i, label %land.lhs.true36.i.if.end43.i_crit_edge, label %if.then39.i

land.lhs.true36.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then39.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %.pr186.i, -1
  store i32 %sub.i, ptr @show_num_errors, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %land.lhs.true36.i.if.end43.i_crit_edge, %if.end34.i.if.end43.i_crit_edge, %lor.lhs.false.i.if.end43.i_crit_edge, %dma_get_seg_boundary.exit.i.if.end43.i_crit_edge
  %61 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_address, align 4
  %conv44.i = zext i32 %62 to i64
  %63 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length, align 4
  %conv45.i = zext i32 %64 to i64
  %add46.i = add nsw i64 %conv44.i, -1
  %sub47.i = add nsw i64 %add46.i, %conv45.i
  %xor.i = xor i64 %sub47.i, %conv44.i
  %neg.i = xor i64 %conv.i, -1
  %and.i73 = and i64 %xor.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i73)
  %tobool48.not.i = icmp eq i64 %and.i73, 0
  br i1 %tobool48.not.i, label %if.end43.i.check_sg_segment.exit_crit_edge, label %do.body50.i

if.end43.i.check_sg_segment.exit_crit_edge:       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_sg_segment.exit

do.body50.i:                                      ; preds = %if.end43.i
  %65 = load i32, ptr @error_count, align 4
  %add51.i = add i32 %65, 1
  store i32 %add51.i, ptr @error_count, align 4
  %66 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i144.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i144.i, label %do.body50.i.land.lhs.true54.i_crit_edge, label %if.end.i148.i, !prof !252

do.body50.i.land.lhs.true54.i_crit_edge:          ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true54.i

if.end.i148.i:                                    ; preds = %do.body50.i
  %67 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i145.i = icmp eq ptr %67, null
  %or.cond.i147.i = or i1 %tobool5.not.i.i, %tobool4.not.i145.i
  br i1 %or.cond.i147.i, label %if.end8.i154.i, label %driver_filter.exit168.i

if.end8.i154.i:                                   ; preds = %if.end.i148.i
  %tobool4.not.not49.i152.i = xor i1 %tobool4.not.i145.i, true
  %brmerge50.i153.i = select i1 %tobool5.not.i.i, i1 true, i1 %tobool4.not.not49.i152.i
  br i1 %brmerge50.i153.i, label %if.end8.i154.i.if.end98.i_crit_edge, label %if.end15.i157.i

if.end8.i154.i.if.end98.i_crit_edge:              ; preds = %if.end8.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.end15.i157.i:                                  ; preds = %if.end8.i154.i
  %68 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver.i.i, align 4
  %tobool17.not.i156.i = icmp eq ptr %69, null
  br i1 %tobool17.not.i156.i, label %if.end15.i157.i.if.end98.i_crit_edge, label %do.body.i160.i

if.end15.i157.i.if.end98.i_crit_edge:             ; preds = %if.end15.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

do.body.i160.i:                                   ; preds = %if.end15.i157.i
  %call.i158.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool21.not.i159.i = icmp eq ptr %71, null
  br i1 %tobool21.not.i159.i, label %do.body.i160.i.do.body29.i166.thread.i_crit_edge, label %land.lhs.true22.i163.i

do.body.i160.i.do.body29.i166.thread.i_crit_edge: ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i166.thread.i

land.lhs.true22.i163.i:                           ; preds = %do.body.i160.i
  %call24.i161.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %71, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i161.i)
  %cmp25.i162.i = icmp eq i32 %call24.i161.i, 0
  br i1 %cmp25.i162.i, label %do.body29.i166.i, label %land.lhs.true22.i163.i.do.body29.i166.thread.i_crit_edge

land.lhs.true22.i163.i.do.body29.i166.thread.i_crit_edge: ; preds = %land.lhs.true22.i163.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i166.thread.i

do.body29.i166.thread.i:                          ; preds = %land.lhs.true22.i163.i.do.body29.i166.thread.i_crit_edge, %do.body.i160.i.do.body29.i166.thread.i_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i158.i) #9
  br label %if.end98.i

do.body29.i166.i:                                 ; preds = %land.lhs.true22.i163.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %69, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i158.i) #9
  br label %land.lhs.true54.i

driver_filter.exit168.i:                          ; preds = %if.end.i148.i
  %72 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver.i.i, align 4
  %cmp.i150.i = icmp eq ptr %73, %67
  br i1 %cmp.i150.i, label %driver_filter.exit168.i.land.lhs.true54.i_crit_edge, label %driver_filter.exit168.i.if.end98.i_crit_edge

driver_filter.exit168.i.if.end98.i_crit_edge:     ; preds = %driver_filter.exit168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

driver_filter.exit168.i.land.lhs.true54.i_crit_edge: ; preds = %driver_filter.exit168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %driver_filter.exit168.i.land.lhs.true54.i_crit_edge, %do.body29.i166.i, %do.body50.i.land.lhs.true54.i_crit_edge
  %74 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool55.not.i = icmp eq i32 %74, 0
  br i1 %tobool55.not.i, label %lor.lhs.false56.i, label %land.lhs.true54.i.do.end72.i_crit_edge

land.lhs.true54.i.do.end72.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72.i

lor.lhs.false56.i:                                ; preds = %land.lhs.true54.i
  %75 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp57.not.i = icmp eq i32 %75, 0
  br i1 %cmp57.not.i, label %lor.lhs.false56.i.check_sg_segment.exit_crit_edge, label %lor.lhs.false56.i.do.end72.i_crit_edge

lor.lhs.false56.i.do.end72.i_crit_edge:           ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72.i

lor.lhs.false56.i.check_sg_segment.exit_crit_edge: ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_sg_segment.exit

do.end72.i:                                       ; preds = %lor.lhs.false56.i.do.end72.i_crit_edge, %land.lhs.true54.i.do.end72.i_crit_edge
  br i1 %tobool5.not.i.i, label %do.end72.i.cond.end83.i_crit_edge, label %cond.true80.i

do.end72.i.cond.end83.i_crit_edge:                ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end83.i

cond.true80.i:                                    ; preds = %do.end72.i
  %call75.i = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %76 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i170.i = icmp eq ptr %77, null
  br i1 %tobool.not.i170.i, label %if.end.i171.i, label %cond.true80.i.cond.end83.i_crit_edge

cond.true80.i.cond.end83.i_crit_edge:             ; preds = %cond.true80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end83.i

if.end.i171.i:                                    ; preds = %cond.true80.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %if.end.i171.i, %cond.true80.i.cond.end83.i_crit_edge, %do.end72.i.cond.end83.i_crit_edge
  %cond78192.i = phi ptr [ %call75.i, %cond.true80.i.cond.end83.i_crit_edge ], [ %call75.i, %if.end.i171.i ], [ @.str.8, %do.end72.i.cond.end83.i_crit_edge ]
  %cond84.i = phi ptr [ %77, %cond.true80.i.cond.end83.i_crit_edge ], [ %79, %if.end.i171.i ], [ @.str.8, %do.end72.i.cond.end83.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1173, i32 noundef 9, ptr noundef nonnull @.str.83, ptr noundef %cond78192.i, ptr noundef %cond84.i, i64 noundef %conv44.i, i64 noundef %sub47.i, i64 noundef %conv.i) #9
  br label %if.end98.i

if.end98.i:                                       ; preds = %cond.end83.i, %driver_filter.exit168.i.if.end98.i_crit_edge, %do.body29.i166.thread.i, %if.end15.i157.i.if.end98.i_crit_edge, %if.end8.i154.i.if.end98.i_crit_edge
  %.pr193.i = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr193.i)
  %tobool99.not.i = icmp eq i32 %.pr193.i, 0
  br i1 %tobool99.not.i, label %land.lhs.true100.i, label %if.end98.i.check_sg_segment.exit_crit_edge

if.end98.i.check_sg_segment.exit_crit_edge:       ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_sg_segment.exit

land.lhs.true100.i:                               ; preds = %if.end98.i
  %.pr195.i = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr195.i)
  %cmp101.not.i = icmp eq i32 %.pr195.i, 0
  br i1 %cmp101.not.i, label %land.lhs.true100.i.check_sg_segment.exit_crit_edge, label %if.then103.i

land.lhs.true100.i.check_sg_segment.exit_crit_edge: ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_sg_segment.exit

if.then103.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub104.i = add i32 %.pr195.i, -1
  store i32 %sub104.i, ptr @show_num_errors, align 4
  br label %check_sg_segment.exit

check_sg_segment.exit:                            ; preds = %if.then103.i, %land.lhs.true100.i.check_sg_segment.exit_crit_edge, %if.end98.i.check_sg_segment.exit_crit_edge, %lor.lhs.false56.i.check_sg_segment.exit_crit_edge, %if.end43.i.check_sg_segment.exit_crit_edge
  tail call fastcc void @add_dma_entry(ptr noundef nonnull %call15, i32 noundef %attrs)
  %inc26 = add nuw nsw i32 %i.183, 1
  %call27 = tail call ptr @sg_next(ptr noundef %s.182) #9
  %exitcond84.not = icmp eq i32 %inc26, %mapped_ents
  br i1 %exitcond84.not, label %check_sg_segment.exit.cleanup_crit_edge, label %check_sg_segment.exit.for.body14_crit_edge

check_sg_segment.exit.for.body14_crit_edge:       ; preds = %check_sg_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

check_sg_segment.exit.cleanup_crit_edge:          ; preds = %check_sg_segment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %check_sg_segment.exit.cleanup_crit_edge, %for.body14.cleanup_crit_edge, %for.cond12.preheader.cleanup_crit_edge, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_unmap_sg(ptr noundef %dev, ptr noundef %sglist, i32 noundef %nelems, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup16_crit_edge, !prof !253

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nelems)
  %cmp35 = icmp sgt i32 %nelems, 0
  %or.cond39 = and i1 %.b2.i, %cmp35
  br i1 %or.cond39, label %for.body.lr.ph, label %dma_debug_disabled.exit.cleanup16_crit_edge, !prof !255

dma_debug_disabled.exit.cleanup16_crit_edge:      ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %dma_debug_disabled.exit
  %dev2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %sg_mapped_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 7
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 8
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 9
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mapped_ents.037 = phi i32 [ 0, %for.body.lr.ph ], [ %mapped_ents.1, %for.inc.for.body_crit_edge ]
  %s.036 = phi ptr [ %sglist, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %1 = call ptr @memset(ptr %ref, i32 255, i32 128)
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ref, align 128
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.036, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %dev_addr, align 16
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.036, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  %conv3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv3, ptr %size, align 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 32
  %11 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dir, ptr %direction, align 4
  %12 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nelems, ptr %sg_call_ents, align 8
  %13 = ptrtoint ptr %sg_mapped_ents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sg_mapped_ents, align 4
  %14 = ptrtoint ptr %s.036 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s.036, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !252

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %15, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %and.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %17
  %18 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %pfn, align 16
  %offset5 = getelementptr inbounds %struct.scatterlist, ptr %s.036, i32 0, i32 1
  %19 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset5, align 4
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped_ents.037)
  %tobool6.not = icmp eq i32 %mapped_ents.037, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038, i32 %mapped_ents.037)
  %cmp7.not = icmp slt i32 %i.038, %mapped_ents.037
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp7.not
  %22 = call ptr @memset(ptr %map_err_type, i32 0, i32 28)
  br i1 %or.cond, label %if.end10, label %cleanup

if.end10:                                         ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038)
  %tobool11.not = icmp eq i32 %i.038, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call fastcc i32 @get_nr_mapped_entries(ptr noundef nonnull %ref)
  br label %for.inc

cleanup:                                          ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  br label %cleanup16

for.inc:                                          ; preds = %if.then12, %if.end10.for.inc_crit_edge
  %mapped_ents.1 = phi i32 [ %mapped_ents.037, %if.end10.for.inc_crit_edge ], [ %call13, %if.then12 ]
  call fastcc void @check_unmap(ptr noundef nonnull %ref)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  %inc = add nuw nsw i32 %i.038, 1
  %call15 = call ptr @sg_next(ptr noundef %s.036) #9
  %exitcond.not = icmp eq i32 %inc, %nelems
  br i1 %exitcond.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %cleanup, %dma_debug_disabled.exit.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_nr_mapped_entries(ptr nocapture noundef readonly %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %0 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_addr.i.i, align 16
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 13
  %conv.i.i = and i32 %3, 16383
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.074.i.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not75.i.i = icmp eq ptr %entry1.074.i.i, %arrayidx.i
  br i1 %cmp.not75.i.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %size4.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type6.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction13.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents20.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %5 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dev_addr.i.i, align 16
  %dev.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.079.i.i = phi ptr [ %entry1.074.i.i, %for.body.lr.ph.i.i ], [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ret.078.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ret.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %matches.077.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %matches.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %last_lvl.076.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %last_lvl.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dev_addr1.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev_addr1.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dev_addr1.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i.i = icmp eq i64 %6, %8
  br i1 %cmp.i.i, label %exact_match.exit.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

exact_match.exit.i:                               ; preds = %for.body.i.i
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2.i.i, align 8
  %cmp3.i.i = icmp eq ptr %10, %12
  br i1 %cmp3.i.i, label %if.end.i.i, label %exact_match.exit.i.for.inc.i.i_crit_edge

exact_match.exit.i.for.inc.i.i_crit_edge:         ; preds = %exact_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %exact_match.exit.i
  %size.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size.i.i, align 8
  %15 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp5.i.i = icmp eq i64 %14, %16
  %spec.select.i.i = zext i1 %cmp5.i.i to i32
  %type.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i, align 32
  %19 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp7.i.i = icmp eq i32 %18, %20
  %inc9.i.i = select i1 %cmp5.i.i, i32 2, i32 1
  %match_lvl.1.i.i = select i1 %cmp7.i.i, i32 %inc9.i.i, i32 %spec.select.i.i
  %direction.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %direction.i.i, align 4
  %23 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp14.i.i = icmp eq i32 %22, %24
  %inc16.i.i = zext i1 %cmp14.i.i to i32
  %match_lvl.2.i.i = add nuw nsw i32 %match_lvl.1.i.i, %inc16.i.i
  %sg_call_ents.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %sg_call_ents.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_call_ents.i.i, align 8
  %27 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_call_ents20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp21.i.i = icmp eq i32 %26, %28
  %inc23.i.i = zext i1 %cmp21.i.i to i32
  %match_lvl.3.i.i = add nuw nsw i32 %match_lvl.2.i.i, %inc23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %match_lvl.3.i.i)
  %cmp27.i.i = icmp eq i32 %match_lvl.3.i.i, 4
  br i1 %cmp27.i.i, label %if.end.i.i.bucket_find_exact.exit_crit_edge, label %if.else.i.i

if.end.i.i.bucket_find_exact.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_find_exact.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %matches.077.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i)
  %cmp29.i.i = icmp sgt i32 %match_lvl.3.i.i, %last_lvl.076.i.i
  %29 = tail call i32 @llvm.smax.i32(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i) #9
  %spec.select69.i.i = select i1 %cmp29.i.i, ptr %entry1.079.i.i, ptr %ret.078.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %last_lvl.1.i.i = phi i32 [ %last_lvl.076.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %29, %if.else.i.i ], [ %last_lvl.076.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %matches.1.i.i = phi i32 [ %matches.077.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %add.i.i, %if.else.i.i ], [ %matches.077.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %ret.1.i.i = phi ptr [ %ret.078.i.i, %exact_match.exit.i.for.inc.i.i_crit_edge ], [ %spec.select69.i.i, %if.else.i.i ], [ %ret.078.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %30 = ptrtoint ptr %entry1.079.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %entry1.0.i.i = load ptr, ptr %entry1.079.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %matches.1.i.i)
  %cmp38.i.i = icmp eq i32 %matches.1.i.i, 1
  br i1 %cmp38.i.i, label %for.end.i.i.bucket_find_exact.exit_crit_edge, label %for.end.i.i.if.end_crit_edge

for.end.i.i.if.end_crit_edge:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.end.i.i.bucket_find_exact.exit_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_find_exact.exit

bucket_find_exact.exit:                           ; preds = %for.end.i.i.bucket_find_exact.exit_crit_edge, %if.end.i.i.bucket_find_exact.exit_crit_edge
  %retval.0.i.i = phi ptr [ %ret.1.i.i, %for.end.i.i.bucket_find_exact.exit_crit_edge ], [ %entry1.079.i.i, %if.end.i.i.bucket_find_exact.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %bucket_find_exact.exit.if.end_crit_edge, label %if.then

bucket_find_exact.exit.if.end_crit_edge:          ; preds = %bucket_find_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %bucket_find_exact.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sg_mapped_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %sg_mapped_ents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sg_mapped_ents, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bucket_find_exact.exit.if.end_crit_edge, %for.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mapped_ents.0 = phi i32 [ %32, %if.then ], [ 0, %bucket_find_exact.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %for.end.i.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  ret i32 %mapped_ents.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_alloc_coherent(ptr noundef %dev, i32 noundef %size, i32 noundef %dma_addr, ptr noundef %virt, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  %cmp = icmp ne ptr %virt, null
  %1 = and i1 %cmp, %.b2.i
  br i1 %1, label %if.end10, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !256

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %dma_debug_disabled.exit
  %call11 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %virt) #9
  br i1 %call11, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %2 = ptrtoint ptr %virt to i32
  %cmp12 = icmp ugt ptr %virt, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %3 = load ptr, ptr @high_memory, align 4
  %cmp14 = icmp ugt ptr %3, %virt
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %sub = add i32 %2, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %4, %shr
  %call16 = tail call i32 @pfn_valid(i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end19_crit_edge

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true15.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %call20 = tail call fastcc ptr @dma_entry_alloc()
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 32
  %dev24 = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 1
  %6 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev24, align 8
  %7 = ptrtoint ptr %virt to i32
  %and = and i32 %7, 4095
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 9
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset, align 4
  %conv = zext i32 %size to i64
  %size25 = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 3
  %9 = ptrtoint ptr %size25 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %size25, align 8
  %conv26 = zext i32 %dma_addr to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 2
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv26, ptr %dev_addr, align 16
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 5
  %11 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %direction, align 4
  %call27 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %virt) #9
  br i1 %call27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @vmalloc_to_pfn(ptr noundef nonnull %virt) #9
  br label %if.end36

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %sub30 = add i32 %7, 1073741824
  %shr31 = lshr i32 %sub30, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add34 = add i32 %12, %shr31
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28
  %add34.sink = phi i32 [ %call29, %if.then28 ], [ %add34, %if.else ]
  %13 = getelementptr inbounds %struct.dma_debug_entry, ptr %call20, i32 0, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add34.sink, ptr %13, align 16
  tail call fastcc void @add_dma_entry(ptr noundef nonnull %call20, i32 noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_to_pfn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_free_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef %virt, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %0 = call ptr @memset(ptr %ref, i32 0, i32 128)
  %dev1 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %conv = zext i32 %addr to i64
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %dev_addr, align 16
  %size2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %conv3 = zext i32 %size to i64
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv3, ptr %size2, align 8
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 32
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 9
  %5 = ptrtoint ptr %virt to i32
  %and = and i32 %5, 4095
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %offset, align 4
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %virt) #9
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp ugt ptr %virt, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %7 = load ptr, ptr @high_memory, align 4
  %cmp6 = icmp ugt ptr %7, %virt
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %8, %shr
  %call9 = tail call i32 @pfn_valid(i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call10 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %virt) #9
  br i1 %call10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @vmalloc_to_pfn(ptr noundef %virt) #9
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub13 = add i32 %5, 1073741824
  %shr14 = lshr i32 %sub13, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add17 = add i32 %9, %shr14
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  %add17.sink = phi i32 [ %call12, %if.then11 ], [ %add17, %if.else ]
  %10 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add17.sink, ptr %10, align 16
  %12 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %if.end19.cleanup_crit_edge, !prof !253

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %if.end19
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end24, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @check_unmap(ptr noundef nonnull %ref)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %dma_debug_disabled.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_map_resource(ptr noundef %dev, i32 noundef %addr, i32 noundef %size, i32 noundef %direction, i32 noundef %dma_addr, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  %call3 = tail call fastcc ptr @dma_entry_alloc()
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 32
  %dev7 = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev7, align 8
  %shr = lshr i32 %addr, 12
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 8
  %3 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %pfn, align 16
  %and = and i32 %addr, 4095
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 9
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %offset, align 4
  %conv = zext i32 %size to i64
  %size8 = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %size8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %size8, align 8
  %conv9 = zext i32 %dma_addr to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv9, ptr %dev_addr, align 16
  %direction10 = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %direction10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %direction, ptr %direction10, align 4
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %call3, i32 0, i32 10
  %8 = ptrtoint ptr %map_err_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %map_err_type, align 8
  tail call fastcc void @add_dma_entry(ptr noundef nonnull %call3, i32 noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_unmap_resource(ptr noundef %dev, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %0 = call ptr @memset(ptr %ref, i32 0, i32 128)
  %dev1 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %conv = zext i32 %dma_addr to i64
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %dev_addr, align 16
  %size2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %conv3 = zext i32 %size to i64
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv3, ptr %size2, align 8
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 32
  %direction4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %5 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %direction, ptr %direction4, align 4
  %6 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @check_unmap(ptr noundef nonnull %ref)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %dma_handle, i32 noundef %size, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %0 = call ptr @memset(ptr %ref, i32 255, i32 128)
  %1 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 32
  %dev2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %conv = zext i32 %dma_handle to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %dev_addr, align 16
  %conv3 = zext i32 %size to i64
  %size4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %5 = ptrtoint ptr %size4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv3, ptr %size4, align 8
  %direction5 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %6 = ptrtoint ptr %direction5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %direction, ptr %direction5, align 4
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %7 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sg_call_ents, align 8
  call fastcc void @check_sync(ptr noundef %dev, ptr noundef nonnull %ref, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_sync(ptr noundef %dev, ptr nocapture noundef readonly %ref, i1 noundef zeroext %to_cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %0 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_addr.i.i, align 16
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 13
  %conv.i.i = and i32 %3, 16383
  %arrayidx.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i
  %lock.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %dev.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge

land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_get_max_seg_size.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  br label %dma_get_max_seg_size.exit.i

dma_get_max_seg_size.exit.i:                      ; preds = %if.end.i.i, %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 65536, %if.end.i.i ], [ %9, %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge ]
  %10 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %index.sroa.4.0.copyload.i = load i64, ptr %dev_addr.i.i, align 16
  %size4.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type6.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction13.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents20.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %dma_get_max_seg_size.exit.i
  %bucket.0 = phi ptr [ %arrayidx.i, %dma_get_max_seg_size.exit.i ], [ %arrayidx.i.i, %if.end.i.while.body.i_crit_edge ]
  %flags.0 = phi i32 [ %call4.i, %dma_get_max_seg_size.exit.i ], [ %call4.i.i, %if.end.i.while.body.i_crit_edge ]
  %range.030.i = phi i32 [ 0, %dma_get_max_seg_size.exit.i ], [ %add.i, %if.end.i.while.body.i_crit_edge ]
  %index.sroa.4.029.i = phi i64 [ %index.sroa.4.0.copyload.i, %dma_get_max_seg_size.exit.i ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %bucket.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.074.i.i = load ptr, ptr %bucket.0, align 4
  %cmp.not75.i.i = icmp eq ptr %entry1.074.i.i, %bucket.0
  br i1 %cmp.not75.i.i, label %while.body.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %while.body.i
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.079.i.i = phi ptr [ %entry1.074.i.i, %for.body.lr.ph.i.i ], [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ret.078.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ret.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %matches.077.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %matches.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %last_lvl.076.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %last_lvl.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dev1.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i.i, align 8
  %cmp.not.i17.i = icmp eq ptr %13, %15
  br i1 %cmp.not.i17.i, label %if.end.i18.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i18.i:                                     ; preds = %for.body.i.i
  %dev_addr.i.i465 = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %dev_addr.i.i465 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dev_addr.i.i465, align 16
  %18 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dev_addr.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp3.not.i.i = icmp ugt i64 %17, %19
  br i1 %cmp3.not.i.i, label %if.end.i18.i.for.inc.i.i_crit_edge, label %land.lhs.true.i21.i

if.end.i18.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i21.i:                              ; preds = %if.end.i18.i
  %size.i19.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %size.i19.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size.i19.i, align 8
  %add.i20.i = add i64 %21, %17
  %22 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size4.i.i, align 8
  %add7.i.i = add i64 %23, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i20.i, i64 %add7.i.i)
  %cmp8.not.i.i = icmp ult i64 %add.i20.i, %add7.i.i
  br i1 %cmp8.not.i.i, label %land.lhs.true.i21.i.for.inc.i.i_crit_edge, label %if.end.i14.i

land.lhs.true.i21.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i14.i:                                     ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp5.i.i = icmp eq i64 %21, %23
  %spec.select.i.i = zext i1 %cmp5.i.i to i32
  %type.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i.i, align 32
  %26 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp7.i.i = icmp eq i32 %25, %27
  %inc9.i.i = select i1 %cmp5.i.i, i32 2, i32 1
  %match_lvl.1.i.i = select i1 %cmp7.i.i, i32 %inc9.i.i, i32 %spec.select.i.i
  %direction.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %direction.i.i, align 4
  %30 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp14.i.i = icmp eq i32 %29, %31
  %inc16.i.i = zext i1 %cmp14.i.i to i32
  %match_lvl.2.i.i = add nuw nsw i32 %match_lvl.1.i.i, %inc16.i.i
  %sg_call_ents.i.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry1.079.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %sg_call_ents.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_call_ents.i.i, align 8
  %34 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_call_ents20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp21.i.i = icmp eq i32 %33, %35
  %inc23.i.i = zext i1 %cmp21.i.i to i32
  %match_lvl.3.i.i = add nuw nsw i32 %match_lvl.2.i.i, %inc23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %match_lvl.3.i.i)
  %cmp27.i.i = icmp eq i32 %match_lvl.3.i.i, 4
  br i1 %cmp27.i.i, label %if.end.i14.i.__hash_bucket_find.exit.i_crit_edge, label %if.else.i.i

if.end.i14.i.__hash_bucket_find.exit.i_crit_edge: ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hash_bucket_find.exit.i

if.else.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %matches.077.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i)
  %cmp29.i.i = icmp sgt i32 %match_lvl.3.i.i, %last_lvl.076.i.i
  %36 = tail call i32 @llvm.smax.i32(i32 %match_lvl.3.i.i, i32 %last_lvl.076.i.i) #9
  %spec.select69.i.i = select i1 %cmp29.i.i, ptr %entry1.079.i.i, ptr %ret.078.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %land.lhs.true.i21.i.for.inc.i.i_crit_edge, %if.end.i18.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %last_lvl.1.i.i = phi i32 [ %36, %if.else.i.i ], [ %last_lvl.076.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %last_lvl.076.i.i, %land.lhs.true.i21.i.for.inc.i.i_crit_edge ], [ %last_lvl.076.i.i, %if.end.i18.i.for.inc.i.i_crit_edge ]
  %matches.1.i.i = phi i32 [ %add.i.i, %if.else.i.i ], [ %matches.077.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %matches.077.i.i, %land.lhs.true.i21.i.for.inc.i.i_crit_edge ], [ %matches.077.i.i, %if.end.i18.i.for.inc.i.i_crit_edge ]
  %ret.1.i.i = phi ptr [ %spec.select69.i.i, %if.else.i.i ], [ %ret.078.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %ret.078.i.i, %land.lhs.true.i21.i.for.inc.i.i_crit_edge ], [ %ret.078.i.i, %if.end.i18.i.for.inc.i.i_crit_edge ]
  %37 = ptrtoint ptr %entry1.079.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %entry1.0.i.i = load ptr, ptr %entry1.079.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %bucket.0
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %matches.1.i.i)
  %cmp38.i.i = icmp eq i32 %matches.1.i.i, 1
  br i1 %cmp38.i.i, label %for.end.i.i.__hash_bucket_find.exit.i_crit_edge, label %for.end.i.i.if.end.i_crit_edge

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.end.i.i.__hash_bucket_find.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hash_bucket_find.exit.i

__hash_bucket_find.exit.i:                        ; preds = %for.end.i.i.__hash_bucket_find.exit.i_crit_edge, %if.end.i14.i.__hash_bucket_find.exit.i_crit_edge
  %retval.0.i15.i = phi ptr [ %ret.1.i.i, %for.end.i.i.__hash_bucket_find.exit.i_crit_edge ], [ %entry1.079.i.i, %if.end.i14.i.__hash_bucket_find.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i15.i, null
  br i1 %tobool.not.i, label %__hash_bucket_find.exit.i.if.end.i_crit_edge, label %if.end39

__hash_bucket_find.exit.i.if.end.i_crit_edge:     ; preds = %__hash_bucket_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %__hash_bucket_find.exit.i.if.end.i_crit_edge, %for.end.i.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.hash_bucket, ptr %bucket.0, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %flags.0) #9
  %add.i = add i32 %range.030.i, 8192
  %sub.i = add i64 %index.sroa.4.029.i, -8192
  %38 = trunc i64 %sub.i to i32
  %39 = lshr i32 %38, 13
  %conv.i.i.i = and i32 %39, 16383
  %arrayidx.i.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i
  %lock.i16.i = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %conv.i.i.i, i32 1
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i16.i) #9
  %cmp.not.i = icmp ugt i32 %add.i, %retval.0.i.i
  br i1 %cmp.not.i, label %do.body, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body:                                          ; preds = %if.end.i
  %40 = load i32, ptr @error_count, align 4
  %add = add i32 %40, 1
  store i32 %add, ptr @error_count, align 4
  %41 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i466 = icmp eq i8 %41, 0
  br i1 %tobool.not.i466, label %do.body.land.lhs.true_crit_edge, label %if.end.i467, !prof !252

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i467:                                      ; preds = %do.body
  %42 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  %tobool5.not.i = icmp eq ptr %dev, null
  %or.cond.i = or i1 %tobool5.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end8.i, label %driver_filter.exit

if.end8.i:                                        ; preds = %if.end.i467
  %tobool4.not.not49.i = xor i1 %tobool4.not.i, true
  %brmerge50.i = select i1 %tobool5.not.i, i1 true, i1 %tobool4.not.not49.i
  br i1 %brmerge50.i, label %if.end8.i.if.end31_crit_edge, label %if.end15.i

if.end8.i.if.end31_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end15.i:                                       ; preds = %if.end8.i
  %driver16.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %43 = ptrtoint ptr %driver16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver16.i, align 4
  %tobool17.not.i = icmp eq ptr %44, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end31_crit_edge, label %do.body.i

if.end15.i.if.end31_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body.i:                                        ; preds = %if.end15.i
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool21.not.i = icmp eq ptr %46, null
  br i1 %tobool21.not.i, label %do.body.i.do.body29.i.thread_crit_edge, label %land.lhs.true22.i

do.body.i.do.body29.i.thread_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

land.lhs.true22.i:                                ; preds = %do.body.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %46, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.i, label %do.body29.i, label %land.lhs.true22.i.do.body29.i.thread_crit_edge

land.lhs.true22.i.do.body29.i.thread_crit_edge:   ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i.thread

do.body29.i.thread:                               ; preds = %land.lhs.true22.i.do.body29.i.thread_crit_edge, %do.body.i.do.body29.i.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %if.end31

do.body29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %44, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i) #9
  br label %land.lhs.true

driver_filter.exit:                               ; preds = %if.end.i467
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %47 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver.i, align 4
  %cmp.i = icmp eq ptr %48, %42
  br i1 %cmp.i, label %driver_filter.exit.land.lhs.true_crit_edge, label %driver_filter.exit.if.end31_crit_edge

driver_filter.exit.if.end31_crit_edge:            ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

driver_filter.exit.land.lhs.true_crit_edge:       ; preds = %driver_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %driver_filter.exit.land.lhs.true_crit_edge, %do.body29.i, %do.body.land.lhs.true_crit_edge
  %49 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not = icmp eq i32 %49, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %50 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not = icmp eq i32 %50, 0
  br i1 %cmp.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %tobool12.not = icmp eq ptr %dev, null
  br i1 %tobool12.not, label %do.end.cond.end18_crit_edge, label %cond.true15

do.end.cond.end18_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.true15:                                      ; preds = %do.end
  %call13 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i469 = icmp eq ptr %52, null
  br i1 %tobool.not.i469, label %if.end.i470, label %cond.true15.cond.end18_crit_edge

cond.true15.cond.end18_crit_edge:                 ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

if.end.i470:                                      ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %if.end.i470, %cond.true15.cond.end18_crit_edge, %do.end.cond.end18_crit_edge
  %cond671 = phi ptr [ %call13, %cond.true15.cond.end18_crit_edge ], [ %call13, %if.end.i470 ], [ @.str.8, %do.end.cond.end18_crit_edge ]
  %cond19 = phi ptr [ %52, %cond.true15.cond.end18_crit_edge ], [ %54, %if.end.i470 ], [ @.str.8, %do.end.cond.end18_crit_edge ]
  %55 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %dev_addr.i.i, align 16
  %57 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size4.i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1092, i32 noundef 9, ptr noundef nonnull @.str.84, ptr noundef %cond671, ptr noundef %cond19, i64 noundef %56, i64 noundef %58) #9
  br label %if.end31

if.end31:                                         ; preds = %cond.end18, %driver_filter.exit.if.end31_crit_edge, %do.body29.i.thread, %if.end15.i.if.end31_crit_edge, %if.end8.i.if.end31_crit_edge
  %.pr = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool32.not = icmp eq i32 %.pr, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true33:                                  ; preds = %if.end31
  %.pr673 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr673)
  %cmp34.not = icmp eq i32 %.pr673, 0
  br i1 %cmp34.not, label %land.lhs.true33.out_crit_edge, label %land.lhs.true33.out.sink.split_crit_edge

land.lhs.true33.out.sink.split_crit_edge:         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

land.lhs.true33.out_crit_edge:                    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %__hash_bucket_find.exit.i
  %59 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size4.i.i, align 8
  %size41 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 3
  %61 = ptrtoint ptr %size41 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %size41, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp42 = icmp ugt i64 %60, %62
  br i1 %cmp42, label %do.body44, label %if.end39.if.end102_crit_edge

if.end39.if.end102_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.body44:                                        ; preds = %if.end39
  %63 = load i32, ptr @error_count, align 4
  %add45 = add i32 %63, 1
  store i32 %add45, ptr @error_count, align 4
  %64 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i473 = icmp eq i8 %64, 0
  br i1 %tobool.not.i473, label %do.body44.land.lhs.true47_crit_edge, label %if.end.i477, !prof !252

do.body44.land.lhs.true47_crit_edge:              ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true47

if.end.i477:                                      ; preds = %do.body44
  %65 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i474 = icmp eq ptr %65, null
  %tobool5.not.i475 = icmp eq ptr %dev, null
  %or.cond.i476 = or i1 %tobool5.not.i475, %tobool4.not.i474
  br i1 %or.cond.i476, label %if.end8.i483, label %driver_filter.exit497

if.end8.i483:                                     ; preds = %if.end.i477
  %tobool4.not.not49.i481 = xor i1 %tobool4.not.i474, true
  %brmerge50.i482 = select i1 %tobool5.not.i475, i1 true, i1 %tobool4.not.not49.i481
  br i1 %brmerge50.i482, label %if.end8.i483.if.end93_crit_edge, label %if.end15.i486

if.end8.i483.if.end93_crit_edge:                  ; preds = %if.end8.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end15.i486:                                    ; preds = %if.end8.i483
  %driver16.i484 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %66 = ptrtoint ptr %driver16.i484 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver16.i484, align 4
  %tobool17.not.i485 = icmp eq ptr %67, null
  br i1 %tobool17.not.i485, label %if.end15.i486.if.end93_crit_edge, label %do.body.i489

if.end15.i486.if.end93_crit_edge:                 ; preds = %if.end15.i486
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.body.i489:                                     ; preds = %if.end15.i486
  %call.i487 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool21.not.i488 = icmp eq ptr %69, null
  br i1 %tobool21.not.i488, label %do.body.i489.do.body29.i495.thread_crit_edge, label %land.lhs.true22.i492

do.body.i489.do.body29.i495.thread_crit_edge:     ; preds = %do.body.i489
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i495.thread

land.lhs.true22.i492:                             ; preds = %do.body.i489
  %call24.i490 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %69, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i490)
  %cmp25.i491 = icmp eq i32 %call24.i490, 0
  br i1 %cmp25.i491, label %do.body29.i495, label %land.lhs.true22.i492.do.body29.i495.thread_crit_edge

land.lhs.true22.i492.do.body29.i495.thread_crit_edge: ; preds = %land.lhs.true22.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i495.thread

do.body29.i495.thread:                            ; preds = %land.lhs.true22.i492.do.body29.i495.thread_crit_edge, %do.body.i489.do.body29.i495.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i487) #9
  br label %if.end93

do.body29.i495:                                   ; preds = %land.lhs.true22.i492
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %67, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i487) #9
  br label %land.lhs.true47

driver_filter.exit497:                            ; preds = %if.end.i477
  %driver.i478 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %70 = ptrtoint ptr %driver.i478 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver.i478, align 4
  %cmp.i479 = icmp eq ptr %71, %65
  br i1 %cmp.i479, label %driver_filter.exit497.land.lhs.true47_crit_edge, label %driver_filter.exit497.if.end93_crit_edge

driver_filter.exit497.if.end93_crit_edge:         ; preds = %driver_filter.exit497
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

driver_filter.exit497.land.lhs.true47_crit_edge:  ; preds = %driver_filter.exit497
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true47

land.lhs.true47:                                  ; preds = %driver_filter.exit497.land.lhs.true47_crit_edge, %do.body29.i495, %do.body44.land.lhs.true47_crit_edge
  %72 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool48.not = icmp eq i32 %72, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %land.lhs.true47.do.end64_crit_edge

land.lhs.true47.do.end64_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

lor.lhs.false49:                                  ; preds = %land.lhs.true47
  %73 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp50.not = icmp eq i32 %73, 0
  br i1 %cmp50.not, label %lor.lhs.false49.if.end102_crit_edge, label %lor.lhs.false49.do.end64_crit_edge

lor.lhs.false49.do.end64_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

lor.lhs.false49.if.end102_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.end64:                                         ; preds = %lor.lhs.false49.do.end64_crit_edge, %land.lhs.true47.do.end64_crit_edge
  %tobool65.not = icmp eq ptr %dev, null
  br i1 %tobool65.not, label %do.end64.dump_entry_trace.exit_crit_edge, label %cond.true72

do.end64.dump_entry_trace.exit_crit_edge:         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit

cond.true72:                                      ; preds = %do.end64
  %call67 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i498 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %74 = ptrtoint ptr %init_name.i498 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i498, align 8
  %tobool.not.i499 = icmp eq ptr %75, null
  br i1 %tobool.not.i499, label %if.end.i500, label %cond.true72.dump_entry_trace.exit_crit_edge

cond.true72.dump_entry_trace.exit_crit_edge:      ; preds = %cond.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit

if.end.i500:                                      ; preds = %cond.true72
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  br label %dump_entry_trace.exit

dump_entry_trace.exit:                            ; preds = %if.end.i500, %cond.true72.dump_entry_trace.exit_crit_edge, %do.end64.dump_entry_trace.exit_crit_edge
  %cond70679 = phi ptr [ %call67, %cond.true72.dump_entry_trace.exit_crit_edge ], [ %call67, %if.end.i500 ], [ @.str.8, %do.end64.dump_entry_trace.exit_crit_edge ]
  %cond76 = phi ptr [ %75, %cond.true72.dump_entry_trace.exit_crit_edge ], [ %77, %if.end.i500 ], [ @.str.8, %do.end64.dump_entry_trace.exit_crit_edge ]
  %dev_addr77 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 2
  %78 = ptrtoint ptr %dev_addr77 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %dev_addr77, align 16
  %80 = ptrtoint ptr %size41 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size41, align 8
  %82 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %size4.i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1103, i32 noundef 9, ptr noundef nonnull @.str.85, ptr noundef %cond70679, ptr noundef %cond76, i64 noundef %79, i64 noundef %81, i64 noundef %83) #9
  %call.i504 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 12
  %stack_len.i = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 11
  %84 = ptrtoint ptr %stack_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stack_len.i, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i, i32 noundef %85, i32 noundef 0) #9
  br label %if.end93

if.end93:                                         ; preds = %dump_entry_trace.exit, %driver_filter.exit497.if.end93_crit_edge, %do.body29.i495.thread, %if.end15.i486.if.end93_crit_edge, %if.end8.i483.if.end93_crit_edge
  %.pr680 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr680)
  %tobool94.not = icmp eq i32 %.pr680, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end93.if.end102_crit_edge

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

land.lhs.true95:                                  ; preds = %if.end93
  %.pr684 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr684)
  %cmp96.not = icmp eq i32 %.pr684, 0
  br i1 %cmp96.not, label %land.lhs.true95.if.end102_crit_edge, label %if.then97

land.lhs.true95.if.end102_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  %sub98 = add i32 %.pr684, -1
  store i32 %sub98, ptr @show_num_errors, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %land.lhs.true95.if.end102_crit_edge, %if.end93.if.end102_crit_edge, %lor.lhs.false49.if.end102_crit_edge, %if.end39.if.end102_crit_edge
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 5
  %86 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp103 = icmp eq i32 %87, 0
  br i1 %cmp103, label %if.end102.out_crit_edge, label %if.end105

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end105:                                        ; preds = %if.end102
  %88 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %87)
  %cmp108.not = icmp eq i32 %89, %87
  br i1 %cmp108.not, label %if.end105.if.end170_crit_edge, label %do.body110

if.end105.if.end170_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

do.body110:                                       ; preds = %if.end105
  %90 = load i32, ptr @error_count, align 4
  %add111 = add i32 %90, 1
  store i32 %add111, ptr @error_count, align 4
  %91 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i506 = icmp eq i8 %91, 0
  br i1 %tobool.not.i506, label %do.body110.land.lhs.true113_crit_edge, label %if.end.i510, !prof !252

do.body110.land.lhs.true113_crit_edge:            ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true113

if.end.i510:                                      ; preds = %do.body110
  %92 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i507 = icmp eq ptr %92, null
  %tobool5.not.i508 = icmp eq ptr %dev, null
  %or.cond.i509 = or i1 %tobool5.not.i508, %tobool4.not.i507
  br i1 %or.cond.i509, label %if.end8.i516, label %driver_filter.exit530

if.end8.i516:                                     ; preds = %if.end.i510
  %tobool4.not.not49.i514 = xor i1 %tobool4.not.i507, true
  %brmerge50.i515 = select i1 %tobool5.not.i508, i1 true, i1 %tobool4.not.not49.i514
  br i1 %brmerge50.i515, label %if.end8.i516.if.end161_crit_edge, label %if.end15.i519

if.end8.i516.if.end161_crit_edge:                 ; preds = %if.end8.i516
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.end15.i519:                                    ; preds = %if.end8.i516
  %driver16.i517 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %93 = ptrtoint ptr %driver16.i517 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver16.i517, align 4
  %tobool17.not.i518 = icmp eq ptr %94, null
  br i1 %tobool17.not.i518, label %if.end15.i519.if.end161_crit_edge, label %do.body.i522

if.end15.i519.if.end161_crit_edge:                ; preds = %if.end15.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

do.body.i522:                                     ; preds = %if.end15.i519
  %call.i520 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %tobool21.not.i521 = icmp eq ptr %96, null
  br i1 %tobool21.not.i521, label %do.body.i522.do.body29.i528.thread_crit_edge, label %land.lhs.true22.i525

do.body.i522.do.body29.i528.thread_crit_edge:     ; preds = %do.body.i522
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i528.thread

land.lhs.true22.i525:                             ; preds = %do.body.i522
  %call24.i523 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %96, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i523)
  %cmp25.i524 = icmp eq i32 %call24.i523, 0
  br i1 %cmp25.i524, label %do.body29.i528, label %land.lhs.true22.i525.do.body29.i528.thread_crit_edge

land.lhs.true22.i525.do.body29.i528.thread_crit_edge: ; preds = %land.lhs.true22.i525
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i528.thread

do.body29.i528.thread:                            ; preds = %land.lhs.true22.i525.do.body29.i528.thread_crit_edge, %do.body.i522.do.body29.i528.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i520) #9
  br label %if.end161

do.body29.i528:                                   ; preds = %land.lhs.true22.i525
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %94, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i520) #9
  br label %land.lhs.true113

driver_filter.exit530:                            ; preds = %if.end.i510
  %driver.i511 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %97 = ptrtoint ptr %driver.i511 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %driver.i511, align 4
  %cmp.i512 = icmp eq ptr %98, %92
  br i1 %cmp.i512, label %driver_filter.exit530.land.lhs.true113_crit_edge, label %driver_filter.exit530.if.end161_crit_edge

driver_filter.exit530.if.end161_crit_edge:        ; preds = %driver_filter.exit530
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

driver_filter.exit530.land.lhs.true113_crit_edge: ; preds = %driver_filter.exit530
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true113

land.lhs.true113:                                 ; preds = %driver_filter.exit530.land.lhs.true113_crit_edge, %do.body29.i528, %do.body110.land.lhs.true113_crit_edge
  %99 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool114.not = icmp eq i32 %99, 0
  br i1 %tobool114.not, label %lor.lhs.false115, label %land.lhs.true113.do.end130_crit_edge

land.lhs.true113.do.end130_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end130

lor.lhs.false115:                                 ; preds = %land.lhs.true113
  %100 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp116.not = icmp eq i32 %100, 0
  br i1 %cmp116.not, label %lor.lhs.false115.if.end170_crit_edge, label %lor.lhs.false115.do.end130_crit_edge

lor.lhs.false115.do.end130_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end130

lor.lhs.false115.if.end170_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

do.end130:                                        ; preds = %lor.lhs.false115.do.end130_crit_edge, %land.lhs.true113.do.end130_crit_edge
  %tobool131.not = icmp eq ptr %dev, null
  br i1 %tobool131.not, label %do.end130.dump_entry_trace.exit542_crit_edge, label %cond.true138

do.end130.dump_entry_trace.exit542_crit_edge:     ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit542

cond.true138:                                     ; preds = %do.end130
  %call133 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i531 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %101 = ptrtoint ptr %init_name.i531 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i531, align 8
  %tobool.not.i532 = icmp eq ptr %102, null
  br i1 %tobool.not.i532, label %if.end.i533, label %cond.true138.dump_entry_trace.exit542_crit_edge

cond.true138.dump_entry_trace.exit542_crit_edge:  ; preds = %cond.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit542

if.end.i533:                                      ; preds = %cond.true138
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  br label %dump_entry_trace.exit542

dump_entry_trace.exit542:                         ; preds = %if.end.i533, %cond.true138.dump_entry_trace.exit542_crit_edge, %do.end130.dump_entry_trace.exit542_crit_edge
  %cond136691 = phi ptr [ %call133, %cond.true138.dump_entry_trace.exit542_crit_edge ], [ %call133, %if.end.i533 ], [ @.str.8, %do.end130.dump_entry_trace.exit542_crit_edge ]
  %cond142 = phi ptr [ %102, %cond.true138.dump_entry_trace.exit542_crit_edge ], [ %104, %if.end.i533 ], [ @.str.8, %do.end130.dump_entry_trace.exit542_crit_edge ]
  %105 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %dev_addr.i.i, align 16
  %107 = ptrtoint ptr %size41 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %size41, align 8
  %109 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %direction, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx, align 4
  %113 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %direction13.i.i, align 4
  %arrayidx147 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx147, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1116, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef %cond136691, ptr noundef %cond142, i64 noundef %106, i64 noundef %108, ptr noundef %112, ptr noundef %116) #9
  %call.i537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i538 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 12
  %stack_len.i539 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 11
  %117 = ptrtoint ptr %stack_len.i539 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %stack_len.i539, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i538, i32 noundef %118, i32 noundef 0) #9
  br label %if.end161

if.end161:                                        ; preds = %dump_entry_trace.exit542, %driver_filter.exit530.if.end161_crit_edge, %do.body29.i528.thread, %if.end15.i519.if.end161_crit_edge, %if.end8.i516.if.end161_crit_edge
  %.pr692 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr692)
  %tobool162.not = icmp eq i32 %.pr692, 0
  br i1 %tobool162.not, label %land.lhs.true163, label %if.end161.if.end170_crit_edge

if.end161.if.end170_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

land.lhs.true163:                                 ; preds = %if.end161
  %.pr694 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr694)
  %cmp164.not = icmp eq i32 %.pr694, 0
  br i1 %cmp164.not, label %land.lhs.true163.if.end170_crit_edge, label %if.then165

land.lhs.true163.if.end170_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then165:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  %sub166 = add i32 %.pr694, -1
  store i32 %sub166, ptr @show_num_errors, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then165, %land.lhs.true163.if.end170_crit_edge, %if.end161.if.end170_crit_edge, %lor.lhs.false115.if.end170_crit_edge, %if.end105.if.end170_crit_edge
  %119 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %direction, align 4
  br i1 %to_cpu, label %land.lhs.true172, label %land.lhs.true242

land.lhs.true172:                                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp174 = icmp eq i32 %120, 2
  br i1 %cmp174, label %land.lhs.true172.if.end310_crit_edge, label %land.lhs.true175

land.lhs.true172.if.end310_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

land.lhs.true175:                                 ; preds = %land.lhs.true172
  %121 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp177 = icmp eq i32 %122, 1
  br i1 %cmp177, label %land.lhs.true175.if.end310_crit_edge, label %do.body179

land.lhs.true175.if.end310_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.body179:                                       ; preds = %land.lhs.true175
  %123 = load i32, ptr @error_count, align 4
  %add180 = add i32 %123, 1
  store i32 %add180, ptr @error_count, align 4
  %124 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i543 = icmp eq i8 %124, 0
  br i1 %tobool.not.i543, label %do.body179.land.lhs.true182_crit_edge, label %if.end.i547, !prof !252

do.body179.land.lhs.true182_crit_edge:            ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true182

if.end.i547:                                      ; preds = %do.body179
  %125 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i544 = icmp eq ptr %125, null
  %tobool5.not.i545 = icmp eq ptr %dev, null
  %or.cond.i546 = or i1 %tobool5.not.i545, %tobool4.not.i544
  br i1 %or.cond.i546, label %if.end8.i553, label %driver_filter.exit567

if.end8.i553:                                     ; preds = %if.end.i547
  %tobool4.not.not49.i551 = xor i1 %tobool4.not.i544, true
  %brmerge50.i552 = select i1 %tobool5.not.i545, i1 true, i1 %tobool4.not.not49.i551
  br i1 %brmerge50.i552, label %if.end8.i553.if.end231_crit_edge, label %if.end15.i556

if.end8.i553.if.end231_crit_edge:                 ; preds = %if.end8.i553
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

if.end15.i556:                                    ; preds = %if.end8.i553
  %driver16.i554 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %126 = ptrtoint ptr %driver16.i554 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %driver16.i554, align 4
  %tobool17.not.i555 = icmp eq ptr %127, null
  br i1 %tobool17.not.i555, label %if.end15.i556.if.end231_crit_edge, label %do.body.i559

if.end15.i556.if.end231_crit_edge:                ; preds = %if.end15.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

do.body.i559:                                     ; preds = %if.end15.i556
  %call.i557 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %tobool21.not.i558 = icmp eq ptr %129, null
  br i1 %tobool21.not.i558, label %do.body.i559.do.body29.i565.thread_crit_edge, label %land.lhs.true22.i562

do.body.i559.do.body29.i565.thread_crit_edge:     ; preds = %do.body.i559
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i565.thread

land.lhs.true22.i562:                             ; preds = %do.body.i559
  %call24.i560 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %129, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i560)
  %cmp25.i561 = icmp eq i32 %call24.i560, 0
  br i1 %cmp25.i561, label %do.body29.i565, label %land.lhs.true22.i562.do.body29.i565.thread_crit_edge

land.lhs.true22.i562.do.body29.i565.thread_crit_edge: ; preds = %land.lhs.true22.i562
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i565.thread

do.body29.i565.thread:                            ; preds = %land.lhs.true22.i562.do.body29.i565.thread_crit_edge, %do.body.i559.do.body29.i565.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i557) #9
  br label %if.end231

do.body29.i565:                                   ; preds = %land.lhs.true22.i562
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %127, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i557) #9
  br label %land.lhs.true182

driver_filter.exit567:                            ; preds = %if.end.i547
  %driver.i548 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %130 = ptrtoint ptr %driver.i548 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %driver.i548, align 4
  %cmp.i549 = icmp eq ptr %131, %125
  br i1 %cmp.i549, label %driver_filter.exit567.land.lhs.true182_crit_edge, label %driver_filter.exit567.if.end231_crit_edge

driver_filter.exit567.if.end231_crit_edge:        ; preds = %driver_filter.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

driver_filter.exit567.land.lhs.true182_crit_edge: ; preds = %driver_filter.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true182

land.lhs.true182:                                 ; preds = %driver_filter.exit567.land.lhs.true182_crit_edge, %do.body29.i565, %do.body179.land.lhs.true182_crit_edge
  %132 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool183.not = icmp eq i32 %132, 0
  br i1 %tobool183.not, label %lor.lhs.false184, label %land.lhs.true182.do.end199_crit_edge

land.lhs.true182.do.end199_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end199

lor.lhs.false184:                                 ; preds = %land.lhs.true182
  %133 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp185.not = icmp eq i32 %133, 0
  br i1 %cmp185.not, label %lor.lhs.false184.if.end310_crit_edge, label %lor.lhs.false184.do.end199_crit_edge

lor.lhs.false184.do.end199_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end199

lor.lhs.false184.if.end310_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.end199:                                        ; preds = %lor.lhs.false184.do.end199_crit_edge, %land.lhs.true182.do.end199_crit_edge
  %tobool200.not = icmp eq ptr %dev, null
  br i1 %tobool200.not, label %do.end199.dump_entry_trace.exit579_crit_edge, label %cond.true207

do.end199.dump_entry_trace.exit579_crit_edge:     ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit579

cond.true207:                                     ; preds = %do.end199
  %call202 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i568 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %134 = ptrtoint ptr %init_name.i568 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_name.i568, align 8
  %tobool.not.i569 = icmp eq ptr %135, null
  br i1 %tobool.not.i569, label %if.end.i570, label %cond.true207.dump_entry_trace.exit579_crit_edge

cond.true207.dump_entry_trace.exit579_crit_edge:  ; preds = %cond.true207
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit579

if.end.i570:                                      ; preds = %cond.true207
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  br label %dump_entry_trace.exit579

dump_entry_trace.exit579:                         ; preds = %if.end.i570, %cond.true207.dump_entry_trace.exit579_crit_edge, %do.end199.dump_entry_trace.exit579_crit_edge
  %cond205700 = phi ptr [ %call202, %cond.true207.dump_entry_trace.exit579_crit_edge ], [ %call202, %if.end.i570 ], [ @.str.8, %do.end199.dump_entry_trace.exit579_crit_edge ]
  %cond211 = phi ptr [ %135, %cond.true207.dump_entry_trace.exit579_crit_edge ], [ %137, %if.end.i570 ], [ @.str.8, %do.end199.dump_entry_trace.exit579_crit_edge ]
  %138 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %dev_addr.i.i, align 16
  %140 = ptrtoint ptr %size41 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %size41, align 8
  %142 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %direction, align 4
  %arrayidx215 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx215, align 4
  %146 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %direction13.i.i, align 4
  %arrayidx217 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx217, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1127, i32 noundef 9, ptr noundef nonnull @.str.87, ptr noundef %cond205700, ptr noundef %cond211, i64 noundef %139, i64 noundef %141, ptr noundef %145, ptr noundef %149) #9
  %call.i574 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i575 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 12
  %stack_len.i576 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 11
  %150 = ptrtoint ptr %stack_len.i576 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %stack_len.i576, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i575, i32 noundef %151, i32 noundef 0) #9
  br label %if.end231

if.end231:                                        ; preds = %dump_entry_trace.exit579, %driver_filter.exit567.if.end231_crit_edge, %do.body29.i565.thread, %if.end15.i556.if.end231_crit_edge, %if.end8.i553.if.end231_crit_edge
  %.pr701 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr701)
  %tobool232.not = icmp eq i32 %.pr701, 0
  br i1 %tobool232.not, label %land.lhs.true233, label %if.end231.if.end310_crit_edge

if.end231.if.end310_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

land.lhs.true233:                                 ; preds = %if.end231
  %.pr703 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr703)
  %cmp234.not = icmp eq i32 %.pr703, 0
  br i1 %cmp234.not, label %land.lhs.true233.if.end310_crit_edge, label %land.lhs.true233.if.end310.sink.split_crit_edge

land.lhs.true233.if.end310.sink.split_crit_edge:  ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310.sink.split

land.lhs.true233.if.end310_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

land.lhs.true242:                                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp244 = icmp eq i32 %120, 1
  br i1 %cmp244, label %land.lhs.true242.if.end310_crit_edge, label %land.lhs.true245

land.lhs.true242.if.end310_crit_edge:             ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

land.lhs.true245:                                 ; preds = %land.lhs.true242
  %152 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %direction13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %153)
  %cmp247 = icmp eq i32 %153, 2
  br i1 %cmp247, label %land.lhs.true245.if.end310_crit_edge, label %do.body249

land.lhs.true245.if.end310_crit_edge:             ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.body249:                                       ; preds = %land.lhs.true245
  %154 = load i32, ptr @error_count, align 4
  %add250 = add i32 %154, 1
  store i32 %add250, ptr @error_count, align 4
  %155 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i580 = icmp eq i8 %155, 0
  br i1 %tobool.not.i580, label %do.body249.land.lhs.true252_crit_edge, label %if.end.i584, !prof !252

do.body249.land.lhs.true252_crit_edge:            ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true252

if.end.i584:                                      ; preds = %do.body249
  %156 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i581 = icmp eq ptr %156, null
  %tobool5.not.i582 = icmp eq ptr %dev, null
  %or.cond.i583 = or i1 %tobool5.not.i582, %tobool4.not.i581
  br i1 %or.cond.i583, label %if.end8.i590, label %driver_filter.exit604

if.end8.i590:                                     ; preds = %if.end.i584
  %tobool4.not.not49.i588 = xor i1 %tobool4.not.i581, true
  %brmerge50.i589 = select i1 %tobool5.not.i582, i1 true, i1 %tobool4.not.not49.i588
  br i1 %brmerge50.i589, label %if.end8.i590.if.end301_crit_edge, label %if.end15.i593

if.end8.i590.if.end301_crit_edge:                 ; preds = %if.end8.i590
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

if.end15.i593:                                    ; preds = %if.end8.i590
  %driver16.i591 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %157 = ptrtoint ptr %driver16.i591 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %driver16.i591, align 4
  %tobool17.not.i592 = icmp eq ptr %158, null
  br i1 %tobool17.not.i592, label %if.end15.i593.if.end301_crit_edge, label %do.body.i596

if.end15.i593.if.end301_crit_edge:                ; preds = %if.end15.i593
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

do.body.i596:                                     ; preds = %if.end15.i593
  %call.i594 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %tobool21.not.i595 = icmp eq ptr %160, null
  br i1 %tobool21.not.i595, label %do.body.i596.do.body29.i602.thread_crit_edge, label %land.lhs.true22.i599

do.body.i596.do.body29.i602.thread_crit_edge:     ; preds = %do.body.i596
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i602.thread

land.lhs.true22.i599:                             ; preds = %do.body.i596
  %call24.i597 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %160, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i597)
  %cmp25.i598 = icmp eq i32 %call24.i597, 0
  br i1 %cmp25.i598, label %do.body29.i602, label %land.lhs.true22.i599.do.body29.i602.thread_crit_edge

land.lhs.true22.i599.do.body29.i602.thread_crit_edge: ; preds = %land.lhs.true22.i599
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i602.thread

do.body29.i602.thread:                            ; preds = %land.lhs.true22.i599.do.body29.i602.thread_crit_edge, %do.body.i596.do.body29.i602.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i594) #9
  br label %if.end301

do.body29.i602:                                   ; preds = %land.lhs.true22.i599
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %158, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i594) #9
  br label %land.lhs.true252

driver_filter.exit604:                            ; preds = %if.end.i584
  %driver.i585 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %161 = ptrtoint ptr %driver.i585 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %driver.i585, align 4
  %cmp.i586 = icmp eq ptr %162, %156
  br i1 %cmp.i586, label %driver_filter.exit604.land.lhs.true252_crit_edge, label %driver_filter.exit604.if.end301_crit_edge

driver_filter.exit604.if.end301_crit_edge:        ; preds = %driver_filter.exit604
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

driver_filter.exit604.land.lhs.true252_crit_edge: ; preds = %driver_filter.exit604
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true252

land.lhs.true252:                                 ; preds = %driver_filter.exit604.land.lhs.true252_crit_edge, %do.body29.i602, %do.body249.land.lhs.true252_crit_edge
  %163 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool253.not = icmp eq i32 %163, 0
  br i1 %tobool253.not, label %lor.lhs.false254, label %land.lhs.true252.do.end269_crit_edge

land.lhs.true252.do.end269_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end269

lor.lhs.false254:                                 ; preds = %land.lhs.true252
  %164 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp255.not = icmp eq i32 %164, 0
  br i1 %cmp255.not, label %lor.lhs.false254.if.end310_crit_edge, label %lor.lhs.false254.do.end269_crit_edge

lor.lhs.false254.do.end269_crit_edge:             ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end269

lor.lhs.false254.if.end310_crit_edge:             ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.end269:                                        ; preds = %lor.lhs.false254.do.end269_crit_edge, %land.lhs.true252.do.end269_crit_edge
  %tobool270.not = icmp eq ptr %dev, null
  br i1 %tobool270.not, label %do.end269.dump_entry_trace.exit616_crit_edge, label %cond.true277

do.end269.dump_entry_trace.exit616_crit_edge:     ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit616

cond.true277:                                     ; preds = %do.end269
  %call272 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #9
  %init_name.i605 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %165 = ptrtoint ptr %init_name.i605 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %init_name.i605, align 8
  %tobool.not.i606 = icmp eq ptr %166, null
  br i1 %tobool.not.i606, label %if.end.i607, label %cond.true277.dump_entry_trace.exit616_crit_edge

cond.true277.dump_entry_trace.exit616_crit_edge:  ; preds = %cond.true277
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit616

if.end.i607:                                      ; preds = %cond.true277
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  br label %dump_entry_trace.exit616

dump_entry_trace.exit616:                         ; preds = %if.end.i607, %cond.true277.dump_entry_trace.exit616_crit_edge, %do.end269.dump_entry_trace.exit616_crit_edge
  %cond275709 = phi ptr [ %call272, %cond.true277.dump_entry_trace.exit616_crit_edge ], [ %call272, %if.end.i607 ], [ @.str.8, %do.end269.dump_entry_trace.exit616_crit_edge ]
  %cond281 = phi ptr [ %166, %cond.true277.dump_entry_trace.exit616_crit_edge ], [ %168, %if.end.i607 ], [ @.str.8, %do.end269.dump_entry_trace.exit616_crit_edge ]
  %169 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %dev_addr.i.i, align 16
  %171 = ptrtoint ptr %size41 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %size41, align 8
  %173 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %direction, align 4
  %arrayidx285 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx285, align 4
  %177 = ptrtoint ptr %direction13.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %direction13.i.i, align 4
  %arrayidx287 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %178
  %179 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx287, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1137, i32 noundef 9, ptr noundef nonnull @.str.88, ptr noundef %cond275709, ptr noundef %cond281, i64 noundef %170, i64 noundef %172, ptr noundef %176, ptr noundef %180) #9
  %call.i611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i612 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 12
  %stack_len.i613 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 11
  %181 = ptrtoint ptr %stack_len.i613 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %stack_len.i613, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i612, i32 noundef %182, i32 noundef 0) #9
  br label %if.end301

if.end301:                                        ; preds = %dump_entry_trace.exit616, %driver_filter.exit604.if.end301_crit_edge, %do.body29.i602.thread, %if.end15.i593.if.end301_crit_edge, %if.end8.i590.if.end301_crit_edge
  %.pr710 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr710)
  %tobool302.not = icmp eq i32 %.pr710, 0
  br i1 %tobool302.not, label %land.lhs.true303, label %if.end301.if.end310_crit_edge

if.end301.if.end310_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

land.lhs.true303:                                 ; preds = %if.end301
  %.pr712 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr712)
  %cmp304.not = icmp eq i32 %.pr712, 0
  br i1 %cmp304.not, label %land.lhs.true303.if.end310_crit_edge, label %land.lhs.true303.if.end310.sink.split_crit_edge

land.lhs.true303.if.end310.sink.split_crit_edge:  ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310.sink.split

land.lhs.true303.if.end310_crit_edge:             ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.end310.sink.split:                             ; preds = %land.lhs.true303.if.end310.sink.split_crit_edge, %land.lhs.true233.if.end310.sink.split_crit_edge
  %.pr703.sink = phi i32 [ %.pr703, %land.lhs.true233.if.end310.sink.split_crit_edge ], [ %.pr712, %land.lhs.true303.if.end310.sink.split_crit_edge ]
  %sub236 = add i32 %.pr703.sink, -1
  store i32 %sub236, ptr @show_num_errors, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.end310.sink.split, %land.lhs.true303.if.end310_crit_edge, %if.end301.if.end310_crit_edge, %lor.lhs.false254.if.end310_crit_edge, %land.lhs.true245.if.end310_crit_edge, %land.lhs.true242.if.end310_crit_edge, %land.lhs.true233.if.end310_crit_edge, %if.end231.if.end310_crit_edge, %lor.lhs.false184.if.end310_crit_edge, %land.lhs.true175.if.end310_crit_edge, %land.lhs.true172.if.end310_crit_edge
  %183 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sg_call_ents20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool311.not = icmp eq i32 %184, 0
  br i1 %tobool311.not, label %if.end310.out_crit_edge, label %land.lhs.true312

if.end310.out_crit_edge:                          ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true312:                                 ; preds = %if.end310
  %185 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %type6.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp313 = icmp eq i32 %186, 1
  br i1 %cmp313, label %land.lhs.true314, label %land.lhs.true312.out_crit_edge

land.lhs.true312.out_crit_edge:                   ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true314:                                 ; preds = %land.lhs.true312
  %sg_call_ents316 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 6
  %187 = ptrtoint ptr %sg_call_ents316 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sg_call_ents316, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %188)
  %cmp317.not = icmp eq i32 %184, %188
  br i1 %cmp317.not, label %land.lhs.true314.out_crit_edge, label %do.body319

land.lhs.true314.out_crit_edge:                   ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body319:                                       ; preds = %land.lhs.true314
  %189 = load i32, ptr @error_count, align 4
  %add320 = add i32 %189, 1
  store i32 %add320, ptr @error_count, align 4
  %190 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i, align 8
  %192 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i617 = icmp eq i8 %192, 0
  br i1 %tobool.not.i617, label %do.body319.land.lhs.true323_crit_edge, label %if.end.i621, !prof !252

do.body319.land.lhs.true323_crit_edge:            ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true323

if.end.i621:                                      ; preds = %do.body319
  %193 = load ptr, ptr @current_driver, align 4
  %tobool4.not.i618 = icmp eq ptr %193, null
  %tobool5.not.i619 = icmp eq ptr %191, null
  %or.cond.i620 = or i1 %tobool5.not.i619, %tobool4.not.i618
  br i1 %or.cond.i620, label %if.end8.i627, label %driver_filter.exit641

if.end8.i627:                                     ; preds = %if.end.i621
  %tobool4.not.not49.i625 = xor i1 %tobool4.not.i618, true
  %brmerge50.i626 = select i1 %tobool5.not.i619, i1 true, i1 %tobool4.not.not49.i625
  br i1 %brmerge50.i626, label %if.end8.i627.if.end372_crit_edge, label %if.end15.i630

if.end8.i627.if.end372_crit_edge:                 ; preds = %if.end8.i627
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end372

if.end15.i630:                                    ; preds = %if.end8.i627
  %driver16.i628 = getelementptr inbounds %struct.device, ptr %191, i32 0, i32 6
  %194 = ptrtoint ptr %driver16.i628 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %driver16.i628, align 4
  %tobool17.not.i629 = icmp eq ptr %195, null
  br i1 %tobool17.not.i629, label %if.end15.i630.if.end372_crit_edge, label %do.body.i633

if.end15.i630.if.end372_crit_edge:                ; preds = %if.end15.i630
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end372

do.body.i633:                                     ; preds = %if.end15.i630
  %call.i631 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %tobool21.not.i632 = icmp eq ptr %197, null
  br i1 %tobool21.not.i632, label %do.body.i633.do.body29.i639.thread_crit_edge, label %land.lhs.true22.i636

do.body.i633.do.body29.i639.thread_crit_edge:     ; preds = %do.body.i633
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i639.thread

land.lhs.true22.i636:                             ; preds = %do.body.i633
  %call24.i634 = tail call i32 @strncmp(ptr noundef nonnull @current_driver_name, ptr noundef nonnull %197, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i634)
  %cmp25.i635 = icmp eq i32 %call24.i634, 0
  br i1 %cmp25.i635, label %do.body29.i639, label %land.lhs.true22.i636.do.body29.i639.thread_crit_edge

land.lhs.true22.i636.do.body29.i639.thread_crit_edge: ; preds = %land.lhs.true22.i636
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29.i639.thread

do.body29.i639.thread:                            ; preds = %land.lhs.true22.i636.do.body29.i639.thread_crit_edge, %do.body.i633.do.body29.i639.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i631) #9
  br label %if.end372

do.body29.i639:                                   ; preds = %land.lhs.true22.i636
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %195, ptr @current_driver, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call.i631) #9
  br label %land.lhs.true323

driver_filter.exit641:                            ; preds = %if.end.i621
  %driver.i622 = getelementptr inbounds %struct.device, ptr %191, i32 0, i32 6
  %198 = ptrtoint ptr %driver.i622 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %driver.i622, align 4
  %cmp.i623 = icmp eq ptr %199, %193
  br i1 %cmp.i623, label %driver_filter.exit641.land.lhs.true323_crit_edge, label %driver_filter.exit641.if.end372_crit_edge

driver_filter.exit641.if.end372_crit_edge:        ; preds = %driver_filter.exit641
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end372

driver_filter.exit641.land.lhs.true323_crit_edge: ; preds = %driver_filter.exit641
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true323

land.lhs.true323:                                 ; preds = %driver_filter.exit641.land.lhs.true323_crit_edge, %do.body29.i639, %do.body319.land.lhs.true323_crit_edge
  %200 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool324.not = icmp eq i32 %200, 0
  br i1 %tobool324.not, label %lor.lhs.false325, label %land.lhs.true323.do.end340_crit_edge

land.lhs.true323.do.end340_crit_edge:             ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end340

lor.lhs.false325:                                 ; preds = %land.lhs.true323
  %201 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp326.not = icmp eq i32 %201, 0
  br i1 %cmp326.not, label %lor.lhs.false325.out_crit_edge, label %lor.lhs.false325.do.end340_crit_edge

lor.lhs.false325.do.end340_crit_edge:             ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end340

lor.lhs.false325.out_crit_edge:                   ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end340:                                        ; preds = %lor.lhs.false325.do.end340_crit_edge, %land.lhs.true323.do.end340_crit_edge
  %202 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i, align 8
  %tobool342.not = icmp eq ptr %203, null
  br i1 %tobool342.not, label %do.end340.dump_entry_trace.exit653_crit_edge, label %cond.end347

do.end340.dump_entry_trace.exit653_crit_edge:     ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit653

cond.end347:                                      ; preds = %do.end340
  %call345 = tail call ptr @dev_driver_string(ptr noundef nonnull %203) #9
  %204 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %.pr717 = load ptr, ptr %dev.i, align 8
  %tobool350.not = icmp eq ptr %.pr717, null
  br i1 %tobool350.not, label %cond.end347.dump_entry_trace.exit653_crit_edge, label %cond.true351

cond.end347.dump_entry_trace.exit653_crit_edge:   ; preds = %cond.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit653

cond.true351:                                     ; preds = %cond.end347
  %init_name.i642 = getelementptr inbounds %struct.device, ptr %.pr717, i32 0, i32 3
  %205 = ptrtoint ptr %init_name.i642 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %init_name.i642, align 8
  %tobool.not.i643 = icmp eq ptr %206, null
  br i1 %tobool.not.i643, label %if.end.i644, label %cond.true351.dump_entry_trace.exit653_crit_edge

cond.true351.dump_entry_trace.exit653_crit_edge:  ; preds = %cond.true351
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump_entry_trace.exit653

if.end.i644:                                      ; preds = %cond.true351
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %.pr717 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %.pr717, align 4
  br label %dump_entry_trace.exit653

dump_entry_trace.exit653:                         ; preds = %if.end.i644, %cond.true351.dump_entry_trace.exit653_crit_edge, %cond.end347.dump_entry_trace.exit653_crit_edge, %do.end340.dump_entry_trace.exit653_crit_edge
  %cond348720 = phi ptr [ %call345, %cond.end347.dump_entry_trace.exit653_crit_edge ], [ %call345, %cond.true351.dump_entry_trace.exit653_crit_edge ], [ %call345, %if.end.i644 ], [ @.str.8, %do.end340.dump_entry_trace.exit653_crit_edge ]
  %cond356 = phi ptr [ @.str.8, %cond.end347.dump_entry_trace.exit653_crit_edge ], [ %206, %cond.true351.dump_entry_trace.exit653_crit_edge ], [ %208, %if.end.i644 ], [ @.str.8, %do.end340.dump_entry_trace.exit653_crit_edge ]
  %209 = ptrtoint ptr %sg_call_ents316 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sg_call_ents316, align 8
  %211 = ptrtoint ptr %sg_call_ents20.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %sg_call_ents20.i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1144, i32 noundef 9, ptr noundef nonnull @.str.89, ptr noundef %cond348720, ptr noundef %cond356, i32 noundef %210, i32 noundef %212) #9
  %call.i648 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %stack_entries.i649 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 12
  %stack_len.i650 = getelementptr inbounds %struct.dma_debug_entry, ptr %retval.0.i15.i, i32 0, i32 11
  %213 = ptrtoint ptr %stack_len.i650 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %stack_len.i650, align 4
  tail call void @stack_trace_print(ptr noundef %stack_entries.i649, i32 noundef %214, i32 noundef 0) #9
  br label %if.end372

if.end372:                                        ; preds = %dump_entry_trace.exit653, %driver_filter.exit641.if.end372_crit_edge, %do.body29.i639.thread, %if.end15.i630.if.end372_crit_edge, %if.end8.i627.if.end372_crit_edge
  %.pr721 = load i32, ptr @show_all_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr721)
  %tobool373.not = icmp eq i32 %.pr721, 0
  br i1 %tobool373.not, label %land.lhs.true374, label %if.end372.out_crit_edge

if.end372.out_crit_edge:                          ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true374:                                 ; preds = %if.end372
  %.pr723 = load i32, ptr @show_num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr723)
  %cmp375.not = icmp eq i32 %.pr723, 0
  br i1 %cmp375.not, label %land.lhs.true374.out_crit_edge, label %land.lhs.true374.out.sink.split_crit_edge

land.lhs.true374.out.sink.split_crit_edge:        ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

land.lhs.true374.out_crit_edge:                   ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out.sink.split:                                   ; preds = %land.lhs.true374.out.sink.split_crit_edge, %land.lhs.true33.out.sink.split_crit_edge
  %.pr723.sink = phi i32 [ %.pr673, %land.lhs.true33.out.sink.split_crit_edge ], [ %.pr723, %land.lhs.true374.out.sink.split_crit_edge ]
  %flags.1663.ph = phi i32 [ %call4.i.i, %land.lhs.true33.out.sink.split_crit_edge ], [ %flags.0, %land.lhs.true374.out.sink.split_crit_edge ]
  %bucket.1661.ph = phi ptr [ %arrayidx.i.i, %land.lhs.true33.out.sink.split_crit_edge ], [ %bucket.0, %land.lhs.true374.out.sink.split_crit_edge ]
  %sub377 = add i32 %.pr723.sink, -1
  store i32 %sub377, ptr @show_num_errors, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %land.lhs.true374.out_crit_edge, %if.end372.out_crit_edge, %lor.lhs.false325.out_crit_edge, %land.lhs.true314.out_crit_edge, %land.lhs.true312.out_crit_edge, %if.end310.out_crit_edge, %if.end102.out_crit_edge, %land.lhs.true33.out_crit_edge, %if.end31.out_crit_edge, %lor.lhs.false.out_crit_edge
  %flags.1663 = phi i32 [ %flags.0, %if.end310.out_crit_edge ], [ %flags.0, %land.lhs.true312.out_crit_edge ], [ %flags.0, %land.lhs.true314.out_crit_edge ], [ %flags.0, %land.lhs.true374.out_crit_edge ], [ %flags.0, %if.end372.out_crit_edge ], [ %flags.0, %if.end102.out_crit_edge ], [ %call4.i.i, %if.end31.out_crit_edge ], [ %call4.i.i, %land.lhs.true33.out_crit_edge ], [ %call4.i.i, %lor.lhs.false.out_crit_edge ], [ %flags.0, %lor.lhs.false325.out_crit_edge ], [ %flags.1663.ph, %out.sink.split ]
  %bucket.1661 = phi ptr [ %bucket.0, %if.end310.out_crit_edge ], [ %bucket.0, %land.lhs.true312.out_crit_edge ], [ %bucket.0, %land.lhs.true314.out_crit_edge ], [ %bucket.0, %land.lhs.true374.out_crit_edge ], [ %bucket.0, %if.end372.out_crit_edge ], [ %bucket.0, %if.end102.out_crit_edge ], [ %arrayidx.i.i, %if.end31.out_crit_edge ], [ %arrayidx.i.i, %land.lhs.true33.out_crit_edge ], [ %arrayidx.i.i, %lor.lhs.false.out_crit_edge ], [ %bucket.0, %lor.lhs.false325.out_crit_edge ], [ %bucket.1661.ph, %out.sink.split ]
  %lock.i654 = getelementptr inbounds %struct.hash_bucket, ptr %bucket.1661, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i654, i32 noundef %flags.1663) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_sync_single_for_device(ptr noundef %dev, i32 noundef %dma_handle, i32 noundef %size, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %0 = call ptr @memset(ptr %ref, i32 255, i32 128)
  %1 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup_crit_edge, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  br i1 %.b2.i, label %if.end, label %dma_debug_disabled.exit.cleanup_crit_edge, !prof !252

dma_debug_disabled.exit.cleanup_crit_edge:        ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 32
  %dev2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %conv = zext i32 %dma_handle to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %dev_addr, align 16
  %conv3 = zext i32 %size to i64
  %size4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %5 = ptrtoint ptr %size4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv3, ptr %size4, align 8
  %direction5 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %6 = ptrtoint ptr %direction5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %direction, ptr %direction5, align 4
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %7 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sg_call_ents, align 8
  call fastcc void @check_sync(ptr noundef %dev, ptr noundef nonnull %ref, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_debug_disabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_sync_sg_for_cpu(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup16_crit_edge, !prof !253

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nelems)
  %cmp33 = icmp sgt i32 %nelems, 0
  %or.cond = and i1 %.b2.i, %cmp33
  br i1 %or.cond, label %for.body.lr.ph, label %dma_debug_disabled.exit.cleanup16_crit_edge, !prof !255

dma_debug_disabled.exit.cleanup16_crit_edge:      ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %dma_debug_disabled.exit
  %dev2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %sg_mapped_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 7
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 8
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 9
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mapped_ents.035 = phi i32 [ 0, %for.body.lr.ph ], [ %mapped_ents.1, %for.inc.for.body_crit_edge ]
  %s.034 = phi ptr [ %sg, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %1 = call ptr @memset(ptr %ref, i32 255, i32 128)
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ref, align 128
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %dev_addr, align 16
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  %conv3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv3, ptr %size, align 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 32
  %11 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %direction, ptr %direction4, align 4
  %12 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nelems, ptr %sg_call_ents, align 8
  %13 = ptrtoint ptr %sg_mapped_ents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sg_mapped_ents, align 4
  %14 = ptrtoint ptr %s.034 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s.034, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !252

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %15, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %and.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %17
  %18 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %pfn, align 16
  %offset6 = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 1
  %19 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset6, align 4
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036)
  %tobool7.not = icmp eq i32 %i.036, 0
  %22 = call ptr @memset(ptr %map_err_type, i32 0, i32 28)
  br i1 %tobool7.not, label %if.then8, label %sg_page.exit.if.end10_crit_edge

sg_page.exit.if.end10_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call fastcc i32 @get_nr_mapped_entries(ptr noundef nonnull %ref)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sg_page.exit.if.end10_crit_edge
  %mapped_ents.1 = phi i32 [ %mapped_ents.035, %sg_page.exit.if.end10_crit_edge ], [ %call9, %if.then8 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.036, i32 %mapped_ents.1)
  %cmp11.not = icmp slt i32 %i.036, %mapped_ents.1
  br i1 %cmp11.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  br label %cleanup16

for.inc:                                          ; preds = %if.end10
  call fastcc void @check_sync(ptr noundef %dev, ptr noundef nonnull %ref, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  %inc = add nuw nsw i32 %i.036, 1
  %call15 = tail call ptr @sg_next(ptr noundef %s.034) #9
  %exitcond.not = icmp eq i32 %inc, %nelems
  br i1 %exitcond.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %cleanup, %dma_debug_disabled.exit.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_dma_sync_sg_for_device(ptr noundef %dev, ptr noundef %sg, i32 noundef %nelems, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %ref = alloca %struct.dma_debug_entry, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @global_disable, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dma_debug_disabled.exit, label %entry.cleanup16_crit_edge, !prof !253

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

dma_debug_disabled.exit:                          ; preds = %entry
  %.b2.i = load i1, ptr @dma_debug_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nelems)
  %cmp33 = icmp sgt i32 %nelems, 0
  %or.cond = and i1 %.b2.i, %cmp33
  br i1 %or.cond, label %for.body.lr.ph, label %dma_debug_disabled.exit.cleanup16_crit_edge, !prof !255

dma_debug_disabled.exit.cleanup16_crit_edge:      ; preds = %dma_debug_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %dma_debug_disabled.exit
  %dev2 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 2
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 3
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 4
  %direction4 = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 5
  %sg_call_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 6
  %sg_mapped_ents = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 7
  %pfn = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 8
  %offset = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 9
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %ref, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mapped_ents.035 = phi i32 [ 0, %for.body.lr.ph ], [ %mapped_ents.1, %for.inc.for.body_crit_edge ]
  %s.034 = phi ptr [ %sg, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ref) #9
  %1 = call ptr @memset(ptr %ref, i32 255, i32 128)
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ref, align 128
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %dev_addr, align 16
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  %conv3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv3, ptr %size, align 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 32
  %11 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %direction, ptr %direction4, align 4
  %12 = ptrtoint ptr %sg_call_ents to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nelems, ptr %sg_call_ents, align 8
  %13 = ptrtoint ptr %sg_mapped_ents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sg_mapped_ents, align 4
  %14 = ptrtoint ptr %s.034 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s.034, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !252

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !254
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %15, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %and.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %17
  %18 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %pfn, align 16
  %offset6 = getelementptr inbounds %struct.scatterlist, ptr %s.034, i32 0, i32 1
  %19 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset6, align 4
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036)
  %tobool7.not = icmp eq i32 %i.036, 0
  %22 = call ptr @memset(ptr %map_err_type, i32 0, i32 28)
  br i1 %tobool7.not, label %if.then8, label %sg_page.exit.if.end10_crit_edge

sg_page.exit.if.end10_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call fastcc i32 @get_nr_mapped_entries(ptr noundef nonnull %ref)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sg_page.exit.if.end10_crit_edge
  %mapped_ents.1 = phi i32 [ %mapped_ents.035, %sg_page.exit.if.end10_crit_edge ], [ %call9, %if.then8 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.036, i32 %mapped_ents.1)
  %cmp11.not = icmp slt i32 %i.036, %mapped_ents.1
  br i1 %cmp11.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  br label %cleanup16

for.inc:                                          ; preds = %if.end10
  call fastcc void @check_sync(ptr noundef %dev, ptr noundef nonnull %ref, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ref) #9
  %inc = add nuw nsw i32 %i.036, 1
  %call15 = tail call ptr @sg_next(ptr noundef %s.034) #9
  %exitcond.not = icmp eq i32 %inc, %nelems
  br i1 %exitcond.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %cleanup, %dma_debug_disabled.exit.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_debug_driver_setup(ptr nocapture noundef readonly %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %str.addr.010 = phi ptr [ %str, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %str.addr.010 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.010, align 1
  %arrayidx = getelementptr [64 x i8], ptr @current_driver_name, i32 0, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %arrayidx, align 1
  %3 = load i8, ptr %str.addr.010, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp ne i8 %3, 0
  %inc = add nuw nsw i32 %i.09, 1
  %incdec.ptr = getelementptr i8, ptr %str.addr.010, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.09)
  %cmp = icmp ult i32 %i.09, 62
  %or.cond = select i1 %cmp1, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %4 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.end.if.end4_crit_edge, label %do.end

for.end.if.end4_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @current_driver_name) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %for.end.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_read(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 65)
  %1 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 65, ptr noundef nonnull @.str.31, ptr noundef nonnull @current_driver_name) #9
  call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call) #9
  %call11 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_write(ptr nocapture noundef readnone %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %1 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %1, i32 -1226833920) #14, !srcloc !257
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !252

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #9
  %3 = call i32 @llvm.read_register.i32(metadata !241) #9
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !258
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !259
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %1) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !259
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %1, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !252

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @driver_name_lock) #9
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %conv5 = zext i8 %9 to i32
  %arrayidx6 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %12 = and i8 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp8.not = icmp eq i8 %12, 0
  br i1 %cmp8.not, label %if.then10, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then10:                                        ; preds = %if.end
  %13 = load i8, ptr @current_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.then10.if.end18_crit_edge, label %do.end15

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then10.if.end18_crit_edge
  store i8 0, ptr @current_driver_name, align 1
  store ptr null, ptr @current_driver, align 4
  br label %do.body48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx22 = getelementptr [64 x i8], ptr %buf, i32 0, i32 %i.074
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr [64 x i8], ptr @current_driver_name, i32 0, i32 %i.074
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx23, align 1
  %conv25 = zext i8 %15 to i32
  %arrayidx26 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv25
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %.fr73 = freeze i8 %18
  %19 = and i8 %.fr73, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp29.not.not = icmp eq i8 %19, 0
  br i1 %cmp29.not.not, label %switch.early.test, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

switch.early.test:                                ; preds = %for.body
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %15, label %for.inc [
    i8 32, label %switch.early.test.for.end_crit_edge
    i8 0, label %switch.early.test.for.end_crit_edge75
  ]

switch.early.test.for.end_crit_edge75:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

switch.early.test.for.end_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %switch.early.test
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.early.test.for.end_crit_edge, %switch.early.test.for.end_crit_edge75, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.074, %switch.early.test.for.end_crit_edge ], [ %i.074, %switch.early.test.for.end_crit_edge75 ], [ %i.074, %for.body.for.end_crit_edge ], [ 63, %for.inc.for.end_crit_edge ]
  %arrayidx42 = getelementptr [64 x i8], ptr @current_driver_name, i32 0, i32 %i.0.lcssa
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx42, align 1
  store ptr null, ptr @current_driver, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @current_driver_name) #12
  br label %do.body48

do.body48:                                        ; preds = %for.end, %if.end18
  call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @driver_name_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %do.body48 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dump_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %idx.052 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %idx.052
  %lock = getelementptr [16384 x %struct.hash_bucket], ptr @dma_entry_hash, i32 0, i32 %idx.052, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry2.049 = load ptr, ptr %arrayidx, align 4
  %cmp13.not50 = icmp eq ptr %entry2.049, %arrayidx
  br i1 %cmp13.not50, label %for.body.for.end_crit_edge, label %for.body.for.body15_crit_edge

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body15:                                       ; preds = %phys_addr.exit.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %entry2.051 = phi ptr [ %entry2.0, %phys_addr.exit.for.body15_crit_edge ], [ %entry2.049, %for.body.for.body15_crit_edge ]
  %dev = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body15.dev_name.exit_crit_edge

for.body15.dev_name.exit_crit_edge:               ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %for.body15.dev_name.exit_crit_edge ]
  %call18 = tail call ptr @dev_driver_string(ptr noundef %2) #9
  %type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 32
  %arrayidx19 = getelementptr [4 x ptr], ptr @type2name, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i = icmp eq i32 %8, 3
  %pfn.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 8
  %11 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pfn.i, align 16
  br i1 %cmp.i, label %dev_name.exit.phys_addr.exit_crit_edge, label %if.end.i47

dev_name.exit.phys_addr.exit_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %phys_addr.exit

if.end.i47:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %12, %13
  %add.ptr.idx.i = mul i32 %sub.i, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx.i, 36
  %add3.i = add i32 %sub.ptr.div.i, %13
  br label %phys_addr.exit

phys_addr.exit:                                   ; preds = %if.end.i47, %dev_name.exit.phys_addr.exit_crit_edge
  %add3.sink.i = phi i32 [ %add3.i, %if.end.i47 ], [ %12, %dev_name.exit.phys_addr.exit_crit_edge ]
  %shl4.i = shl i32 %add3.sink.i, 12
  %offset5.i = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 9
  %14 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset5.i, align 4
  %add6.i = add i32 %shl4.i, %15
  %retval.0.i48 = zext i32 %add6.i to i64
  %dev_addr = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 2
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dev_addr, align 16
  %size = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 3
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  %direction = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 5
  %20 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %direction, align 4
  %arrayidx21 = getelementptr [4 x ptr], ptr @dir2name, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %map_err_type = getelementptr inbounds %struct.dma_debug_entry, ptr %entry2.051, i32 0, i32 10
  %24 = ptrtoint ptr %map_err_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %map_err_type, align 8
  %arrayidx22 = getelementptr [3 x ptr], ptr @maperr2str, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i, ptr noundef %call18, ptr noundef %10, i32 noundef %idx.052, i64 noundef %retval.0.i48, i32 noundef %12, i64 noundef %17, i64 noundef %19, ptr noundef %23, ptr noundef %27) #9
  %28 = ptrtoint ptr %entry2.051 to i32
  call void @__asan_load4_noabort(i32 %28)
  %entry2.0 = load ptr, ptr %entry2.051, align 4
  %cmp13.not = icmp eq ptr %entry2.0, %arrayidx
  br i1 %cmp13.not, label %phys_addr.exit.for.end_crit_edge, label %phys_addr.exit.for.body15_crit_edge

phys_addr.exit.for.body15_crit_edge:              ; preds = %phys_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

phys_addr.exit.for.end_crit_edge:                 ; preds = %phys_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %phys_addr.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %inc = add nuw nsw i32 %idx.052, 1
  %exitcond.not = icmp eq i32 %inc, 16384
  br i1 %exitcond.not, label %for.end30, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @active_cacheline_set_overlap(i32 noundef %cln, i32 noundef returned %overlap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %overlap)
  %0 = icmp ugt i32 %overlap, 7
  br i1 %0, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %and = and i32 %overlap, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @radix_tree_tag_set(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 2) #9
  br label %for.inc

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call ptr @radix_tree_tag_clear(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 2) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3
  %and.1 = and i32 %overlap, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.else.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call.1 = tail call ptr @radix_tree_tag_set(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 1) #9
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call4.1 = tail call ptr @radix_tree_tag_clear(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then3.1
  %and.2 = and i32 %overlap, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.else.2, label %if.then3.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.2 = tail call ptr @radix_tree_tag_set(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 0) #9
  br label %cleanup

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call4.2 = tail call ptr @radix_tree_tag_clear(ptr noundef nonnull @dma_active_cacheline, i32 noundef %cln, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.2, %if.then3.2, %entry.cleanup_crit_edge
  ret i32 %overlap
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tag_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !156, !158, !159, !160, !161, !162, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !191, !192, !193, !195, !197, !198, !200, !201, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !239, !240}
!llvm.named.register.sp = !{!241}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/dma/debug.c", i32 416, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @debug_dma_dump_mappings._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @debug_dma_dump_mappings._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_debug__232_812_dma_debug_fs_init1s, !9, !"__initcall__kmod_debug__232_812_dma_debug_fs_init1s", i1 false, i1 false}
!9 = !{!"../kernel/dma/debug.c", i32 812, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/dma/debug.c", i32 873, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dma_debug_add_bus._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dma_debug_add_bus._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_debug__233_918_dma_debug_init1, !16, !"__initcall__kmod_debug__233_918_dma_debug_init1", i1 false, i1 false}
!16 = !{!"../kernel/dma/debug.c", i32 918, i32 1}
!17 = !{ptr @__setup_dma_debug_cmdline, !18, !"__setup_dma_debug_cmdline", i1 false, i1 false}
!18 = !{!"../kernel/dma/debug.c", i32 942, i32 1}
!19 = !{ptr @__setup_dma_debug_entries_cmdline, !20, !"__setup_dma_debug_entries_cmdline", i1 false, i1 false}
!20 = !{!"../kernel/dma/debug.c", i32 943, i32 1}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/dma/debug.c", i32 1184, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/dma/debug.c", i32 1188, i32 3}
!26 = !{ptr @__ksymtab_debug_dma_map_single, !27, !"__ksymtab_debug_dma_map_single", i1 false, i1 false}
!27 = !{!"../kernel/dma/debug.c", i32 1191, i32 1}
!28 = !{ptr @__ksymtab_debug_dma_mapping_error, !29, !"__ksymtab_debug_dma_mapping_error", i1 false, i1 false}
!29 = !{!"../kernel/dma/debug.c", i32 1265, i32 1}
!30 = !{ptr @__setup_dma_debug_driver_setup, !31, !"__setup_dma_debug_driver_setup", i1 false, i1 false}
!31 = !{!"../kernel/dma/debug.c", i32 1593, i32 1}
!32 = !{ptr @dma_entry_hash, !33, !"dma_entry_hash", i1 false, i1 false}
!33 = !{!"../kernel/dma/debug.c", i32 92, i32 27}
!34 = !{ptr @error_count, !35, !"error_count", i1 false, i1 false}
!35 = !{!"../kernel/dma/debug.c", i32 110, i32 12}
!36 = !{ptr @show_all_errors, !37, !"show_all_errors", i1 false, i1 false}
!37 = !{!"../kernel/dma/debug.c", i32 113, i32 12}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/dma/debug.c", i32 140, i32 23}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/dma/debug.c", i32 141, i32 19}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/dma/debug.c", i32 142, i32 25}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/dma/debug.c", i32 143, i32 25}
!46 = !{ptr @type2name, !47, !"type2name", i1 false, i1 false}
!47 = !{!"../kernel/dma/debug.c", i32 139, i32 20}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/dma/debug.c", i32 147, i32 24}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/dma/debug.c", i32 148, i32 21}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/dma/debug.c", i32 149, i32 22}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/dma/debug.c", i32 150, i32 16}
!56 = !{ptr @dir2name, !57, !"dir2name", i1 false, i1 false}
!57 = !{!"../kernel/dma/debug.c", i32 146, i32 20}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/dma/debug.c", i32 134, i32 35}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/dma/debug.c", i32 135, i32 26}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/dma/debug.c", i32 136, i32 22}
!64 = !{ptr @maperr2str, !65, !"maperr2str", i1 false, i1 false}
!65 = !{!"../kernel/dma/debug.c", i32 133, i32 26}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/dma/debug.c", i32 798, i32 45}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/dma/debug.c", i32 800, i32 22}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/dma/debug.c", i32 801, i32 21}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/dma/debug.c", i32 802, i32 21}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/dma/debug.c", i32 803, i32 21}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/dma/debug.c", i32 804, i32 21}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/dma/debug.c", i32 805, i32 21}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/dma/debug.c", i32 806, i32 21}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/dma/debug.c", i32 807, i32 22}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/dma/debug.c", i32 808, i32 22}
!86 = !{ptr @global_disable, !87, !"global_disable", i1 false, i1 false}
!87 = !{!"../kernel/dma/debug.c", i32 99, i32 13}
!88 = !{ptr @num_free_entries, !89, !"num_free_entries", i1 false, i1 false}
!89 = !{!"../kernel/dma/debug.c", i32 117, i32 12}
!90 = !{ptr @min_free_entries, !91, !"min_free_entries", i1 false, i1 false}
!91 = !{!"../kernel/dma/debug.c", i32 118, i32 12}
!92 = !{ptr @nr_total_entries, !93, !"nr_total_entries", i1 false, i1 false}
!93 = !{!"../kernel/dma/debug.c", i32 119, i32 12}
!94 = !{ptr @filter_fops, !95, !"filter_fops", i1 false, i1 false}
!95 = !{!"../kernel/dma/debug.c", i32 763, i32 37}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/dma/debug.c", i32 693, i32 41}
!98 = !{ptr @current_driver_name, !99, !"current_driver_name", i1 false, i1 false}
!99 = !{!"../kernel/dma/debug.c", i32 128, i32 30}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/dma/debug.c", i32 131, i32 8}
!102 = !{ptr @driver_name_lock, !101, !"driver_name_lock", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/dma/debug.c", i32 736, i32 4}
!105 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @filter_write._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @filter_write._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/dma/debug.c", i32 754, i32 2}
!110 = !{ptr @filter_write._entry.35, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @filter_write._entry_ptr.37, !109, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!114 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!119 = !{ptr @current_driver, !120, !"current_driver", i1 false, i1 false}
!120 = !{!"../kernel/dma/debug.c", i32 129, i32 30}
!121 = !{ptr @dump_fops, !122, !"dump_fops", i1 false, i1 false}
!122 = !{!"../kernel/dma/debug.c", i32 794, i32 1}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/dma/debug.c", i32 781, i32 8}
!125 = distinct !{null, !126, !"dma_debug_initialized", i1 false, i1 false}
!126 = !{!"../kernel/dma/debug.c", i32 102, i32 13}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/dma/debug.c", i32 848, i32 3}
!129 = !{ptr @dma_debug_init.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../kernel/dma/debug.c", i32 894, i32 3}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/dma/debug.c", i32 901, i32 3}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dma_debug_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @dma_debug_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/dma/debug.c", i32 903, i32 3}
!139 = !{ptr @dma_debug_init._entry.46, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dma_debug_init._entry_ptr.48, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/dma/debug.c", i32 906, i32 3}
!143 = !{ptr @dma_debug_init._entry.49, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dma_debug_init._entry_ptr.51, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/dma/debug.c", i32 915, i32 2}
!147 = !{ptr @dma_debug_init._entry.52, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @dma_debug_init._entry_ptr.54, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @nr_prealloc_entries, !150, !"nr_prealloc_entries", i1 false, i1 false}
!150 = !{!"../kernel/dma/debug.c", i32 122, i32 12}
!151 = !{ptr @free_entries, !152, !"free_entries", i1 false, i1 false}
!152 = !{!"../kernel/dma/debug.c", i32 94, i32 8}
!153 = !{ptr @__setup_str_dma_debug_cmdline, !18, !"__setup_str_dma_debug_cmdline", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/dma/debug.c", i32 925, i32 19}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/dma/debug.c", i32 926, i32 3}
!158 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @dma_debug_cmdline._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @dma_debug_cmdline._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @__setup_str_dma_debug_entries_cmdline, !20, !"__setup_str_dma_debug_entries_cmdline", i1 false, i1 false}
!162 = !{ptr @show_num_errors, !163, !"show_num_errors", i1 false, i1 false}
!163 = !{!"../kernel/dma/debug.c", i32 115, i32 12}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/dma/debug.c", i32 170, i32 3}
!166 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @dump_entry_trace._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @dump_entry_trace._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../kernel/dma/debug.c", i32 635, i32 4}
!171 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @dma_entry_alloc._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @dma_entry_alloc._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/dma/debug.c", i32 96, i32 8}
!176 = !{ptr @free_entries_lock, !175, !"free_entries_lock", i1 false, i1 false}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../kernel/dma/debug.c", i32 614, i32 3}
!179 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @__dma_entry_alloc_check_leak._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @__dma_entry_alloc_check_leak._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/dma/debug.c", i32 1053, i32 4}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/dma/debug.c", i32 1063, i32 4}
!186 = !{ptr @.str.67, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/dma/debug.c", i32 1073, i32 3}
!188 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/dma/debug.c", i32 567, i32 3}
!190 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @add_dma_entry._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @add_dma_entry._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/dma/debug.c", i32 570, i32 3}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/dma/debug.c", i32 452, i32 8}
!197 = !{ptr @radix_lock, !196, !"radix_lock", i1 false, i1 false}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/dma/debug.c", i32 451, i32 8}
!200 = !{ptr @dma_active_cacheline, !199, !"dma_active_cacheline", i1 false, i1 false}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../kernel/dma/debug.c", i32 498, i32 2}
!203 = !{ptr @.str.73, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/dma/debug.c", i32 959, i32 4}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../kernel/dma/debug.c", i32 963, i32 4}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/dma/debug.c", i32 973, i32 3}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/dma/debug.c", i32 981, i32 3}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/dma/debug.c", i32 989, i32 3}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/dma/debug.c", i32 1001, i32 3}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/dma/debug.c", i32 1012, i32 3}
!218 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../kernel/dma/debug.c", i32 1027, i32 3}
!220 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/dma/debug.c", i32 1162, i32 3}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../kernel/dma/debug.c", i32 1172, i32 3}
!224 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/dma/debug.c", i32 1089, i32 3}
!226 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/dma/debug.c", i32 1097, i32 3}
!228 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/dma/debug.c", i32 1110, i32 3}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/dma/debug.c", i32 1121, i32 3}
!232 = !{ptr @.str.88, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../kernel/dma/debug.c", i32 1131, i32 3}
!234 = !{ptr @.str.89, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/dma/debug.c", i32 1141, i32 3}
!236 = !{ptr @__setup_str_dma_debug_driver_setup, !31, !"__setup_str_dma_debug_driver_setup", i1 false, i1 false}
!237 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../kernel/dma/debug.c", i32 1587, i32 3}
!239 = !{ptr @dma_debug_driver_setup._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @dma_debug_driver_setup._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{!"sp"}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i8 0, i8 2}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{!"branch_weights", i32 2146410443, i32 1073205}
!254 = !{i64 2153399316, i64 2153399808, i64 2153399353, i64 2153399409, i64 2153399443, i64 2153399467, i64 2153399508, i64 2153399529, i64 2153399557, i64 2153399591}
!255 = !{!"branch_weights", i32 2000, i32 2002}
!256 = !{!"branch_weights", i32 4000000, i32 4001}
!257 = !{i64 2152792945, i64 2152792970}
!258 = !{i64 5288500}
!259 = !{i64 5288697}
!260 = !{i64 2152773930}
