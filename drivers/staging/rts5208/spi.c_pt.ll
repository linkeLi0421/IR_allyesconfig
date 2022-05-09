; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/spi.c_pt.bc'
source_filename = "../drivers/staging/rts5208/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/rts5208/spi.c\00", [34 x i8] zeroinitializer }, align 32
@spi_get_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_get_status\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: err_code = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_set_parameter.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_set_parameter\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@spi_set_parameter.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.6, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_clock = %d, \00", [47 x i8] zeroinitializer }, align 32
@spi_set_parameter.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.7, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div = %d, \00", [17 x i8] zeroinitializer }, align 32
@spi_set_parameter.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.8, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_en = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 384, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 440, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 463, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 464, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 465, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [33 x i8] c"../drivers/staging/rts5208/spi.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 466, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_erase_eeprom_chip(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_init_eeprom(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -122) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 19) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call.i = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3.not = icmp sgt i32 %call.i, -1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 18) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -124) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call6 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_init_eeprom(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %0 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 2, i32 30
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -617, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -618, i8 noundef zeroext -1, i8 noundef zeroext 39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %.) #7
  br label %switch_clock.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %.) #7
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp.not = icmp eq i32 %retval1.0.i, 0
  br i1 %cmp.not, label %if.end11, label %switch_clock.exit.cleanup_crit_edge

switch_clock.exit.cleanup_crit_edge:              ; preds = %switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %switch_clock.exit
  %call12 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %__here, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here:                                           ; preds = %if.end19
  %4 = tail call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@spi_init_eeprom, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %call88 = tail call i32 @schedule_timeout(i32 noundef 1) #7
  %call91 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -622, i8 noundef zeroext -1, i8 noundef zeroext 67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %__here.cleanup_crit_edge

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -620, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %__here.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %switch_clock.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 1, %switch_clock.exit.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call91, %__here.cleanup_crit_edge ], [ %call95, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_erase_eeprom_byte(ptr noundef %chip, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_init_eeprom(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -122) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 19) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call.i = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3.not = icmp sgt i32 %call.i, -1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 7) #7
  %conv = trunc i16 %addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %conv) #7
  %2 = lshr i16 %addr, 8
  %conv7 = trunc i16 %2 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %conv7) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext 70) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call8 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ %call13, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_read_eeprom(ptr noundef %chip, i16 noundef zeroext %addr, ptr noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !36
  %call = tail call fastcc i32 @spi_init_eeprom(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 6) #7
  %conv = trunc i16 %addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %conv) #7
  %2 = lshr i16 %addr, 8
  %conv3 = trunc i16 %2 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %conv3) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext 70) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -123) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call4 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %__here

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here:                                           ; preds = %if.end
  %3 = tail call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@spi_read_eeprom, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call73 = tail call i32 @schedule_timeout(i32 noundef 0) #7
  %call76 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -632, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %__here.cleanup_crit_edge

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %__here
  %tobool80.not = icmp eq ptr %val, null
  br i1 %tobool80.not, label %if.end79.if.end82_crit_edge, label %if.then81

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %val, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end79.if.end82_crit_edge
  %call83 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %__here.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call76, %__here.cleanup_crit_edge ], [ %call83, %if.end82 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_write_eeprom(ptr noundef %chip, i16 noundef zeroext %addr, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_init_eeprom(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -122) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 19) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call.i = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3.not = icmp sgt i32 %call.i, -1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 5) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %val) #7
  %conv = trunc i16 %addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %conv) #7
  %2 = lshr i16 %addr, 8
  %conv7 = trunc i16 %2 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -637, i8 noundef zeroext -1, i8 noundef zeroext %conv7) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext 78) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call8 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ %call13, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_get_status(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_get_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_get_status, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %err_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %4 = ptrtoint ptr %err_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %err_code, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_get_status.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 1)
  %err_code5 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef %err_code5, i32 noundef %8, ptr noundef %srb) #7
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %sub = add i32 %10, -1
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %11 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %resid_len.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_set_parameter(ptr nocapture noundef readonly %srb, ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %0 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code2.i, align 4
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %1 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cmnd6 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %3 = ptrtoint ptr %cmnd6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmnd6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %arrayidx4 = getelementptr i8, ptr %4, i32 9
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %or = or i32 %shl, %conv5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr i8, ptr %4, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %or.sink = phi i32 [ %conv8, %if.else ], [ %or, %if.then ]
  %11 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.sink, ptr %11, align 4
  %cmnd10 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd10, align 4
  %arrayidx11 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 1
  %conv13 = zext i8 %16 to i16
  %shl14 = shl nuw i16 %conv13, 8
  %arrayidx16 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i16
  %or18 = or i16 %shl14, %conv17
  %clk_div = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 2
  %19 = ptrtoint ptr %clk_div to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %or18, ptr %clk_div, align 2
  %20 = load ptr, ptr %cmnd10, align 4
  %arrayidx21 = getelementptr i8, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21, align 1
  %write_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 1
  %23 = ptrtoint ptr %write_en to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %write_en, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_set_parameter.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_set_parameter, %if.then25)) #7
          to label %do.body28 [label %if.then25], !srcloc !38

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_set_parameter.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_set_parameter.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_set_parameter, %if.then40)) #7
          to label %do.body46 [label %if.then40], !srcloc !38

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev.i110 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_set_parameter.__UNIQUE_ID_ddebug294, ptr noundef %dev.i110, ptr noundef nonnull @.str.6, i32 noundef %33) #7
  br label %do.body46

do.body46:                                        ; preds = %if.then40, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_set_parameter.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_set_parameter, %if.then58)) #7
          to label %do.body65 [label %if.then58], !srcloc !38

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev.i111 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %clk_div to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %clk_div, align 2
  %conv61 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_set_parameter.__UNIQUE_ID_ddebug295, ptr noundef %dev.i111, ptr noundef nonnull @.str.7, i32 noundef %conv61) #7
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_set_parameter.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_set_parameter, %if.then77)) #7
          to label %do.end83 [label %if.then77], !srcloc !38

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i112 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %write_en to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_en, align 1
  %conv80 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_set_parameter.__UNIQUE_ID_ddebug296, ptr noundef %dev.i112, ptr noundef nonnull @.str.8, i32 noundef %conv80) #7
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %do.body65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_read_flash_id(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %0 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code2.i, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %1 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %2, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i16
  %shl = shl nuw i16 %conv2, 8
  %arrayidx4 = getelementptr i8, ptr %2, i32 8
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i16
  %or = or i16 %shl, %conv5
  %conv7 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %or)
  %cmp = icmp ugt i16 %or, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %err_code2.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @spi_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9.not = icmp eq i32 %call, 0
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %9 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %arrayidx14 = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %13) #7
  %14 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmnd, align 4
  %arrayidx16 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -637, i8 noundef zeroext -1, i8 noundef zeroext %17) #7
  %18 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmnd, align 4
  %arrayidx18 = getelementptr i8, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %21) #7
  %22 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmnd, align 4
  %arrayidx20 = getelementptr i8, ptr %23, i32 6
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %25) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  %26 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmnd, align 4
  %arrayidx22 = getelementptr i8, ptr %27, i32 7
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -633, i8 noundef zeroext -1, i8 noundef zeroext %29) #7
  %30 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmnd, align 4
  %arrayidx24 = getelementptr i8, ptr %31, i32 8
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx24, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext %33) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %cmp26 = icmp eq i16 %or, 0
  %34 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmnd, align 4
  %arrayidx30 = getelementptr i8, ptr %35, i32 9
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  %. = select i1 %tobool.not, i8 -128, i8 -127
  %.111 = select i1 %tobool.not, i8 -125, i8 -123
  %.sink = select i1 %cmp26, i8 %., i8 %.111
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext %.sink) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call41 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %38 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end12
  br i1 %cmp26, label %if.end45.cleanup_crit_edge, label %if.end8.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end45
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv7, i32 noundef 3264) #10
  %tobool50.not = icmp eq ptr %call9.i, null
  br i1 %tobool50.not, label %if.end8.i.cleanup_crit_edge, label %if.end52

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end8.i
  %call54 = tail call i32 @rtsx_read_ppbuf(ptr noundef %chip, ptr noundef nonnull %call9.i, i32 noundef %conv7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %err_code2.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %41, ptr noundef %srb) #7
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %42 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %resid_len.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then57, %if.end8.i.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then44, %if.then11, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then11 ], [ 1, %if.then44 ], [ 1, %if.then57 ], [ 10, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end58 ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_set_init_para(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_div = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %clk_div to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %clk_div, align 2
  %2 = lshr i16 %1, 8
  %conv3 = trunc i16 %2 to i8
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -617, i8 noundef zeroext -1, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %clk_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %clk_div, align 2
  %conv5 = trunc i16 %4 to i8
  %call6 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -618, i8 noundef zeroext -1, i8 noundef zeroext %conv5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %spi_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 4
  %5 = ptrtoint ptr %spi_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spi_clock, align 4
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %7 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %6) #7
  br label %switch_clock.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %6) #7
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp.not = icmp eq i32 %retval1.0.i, 0
  br i1 %cmp.not, label %if.end13, label %switch_clock.exit.cleanup_crit_edge

switch_clock.exit.cleanup_crit_edge:              ; preds = %switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %switch_clock.exit
  %call14 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %__here, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 212
  %13 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 ptrtoint (ptr blockaddress(@spi_set_init_para, %__here) to i32), ptr %task_state_change, align 4
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %14, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %call92 = tail call i32 @schedule_timeout(i32 noundef 1) #7
  %call95 = tail call fastcc i32 @spi_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96.not = icmp ne i32 %call95, 0
  %. = zext i1 %cmp96.not to i32
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %switch_clock.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 1, %switch_clock.exit.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %., %__here ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_read_flash(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %2 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %err_code2.i, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %3 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr i8, ptr %4, i32 5
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %arrayidx9 = getelementptr i8, ptr %4, i32 6
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %arrayidx13 = getelementptr i8, ptr %4, i32 7
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %arrayidx18 = getelementptr i8, ptr %4, i32 8
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %arrayidx23 = getelementptr i8, ptr %4, i32 9
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %call = tail call fastcc i32 @spi_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup67

if.end:                                           ; preds = %entry
  %conv15 = zext i8 %14 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %conv19 = zext i8 %16 to i16
  %or20 = or i16 %shl16, %conv19
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv6 = zext i8 %10 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %conv10 = zext i8 %12 to i32
  %or11 = or i32 %or, %conv10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup67_crit_edge, label %while.cond.preheader

if.end.cleanup67_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or20)
  %tobool28.not129 = icmp eq i16 %or20, 0
  br i1 %tobool28.not129, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38.not = icmp eq i8 %18, 0
  %. = select i1 %tobool38.not, i16 -638, i16 -639
  %.136 = select i1 %tobool38.not, i16 -637, i16 -638
  %.137 = select i1 %tobool38.not, i16 -636, i16 -637
  %.138 = select i1 %tobool38.not, i8 -1, i8 -9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %len.0132 = phi i16 [ %or20, %while.body.lr.ph ], [ %sub65, %cleanup.while.body_crit_edge ]
  %addr.0130 = phi i32 [ %or11, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %conv29 = trunc i32 %addr.0130 to i8
  %21 = trunc i32 %addr.0130 to i16
  %22 = and i16 %21, 255
  %conv31 = sub nuw nsw i16 256, %22
  %23 = call i16 @llvm.umin.i16(i16 %conv31, i16 %len.0132)
  %24 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ci, align 4
  call void @trans_dma_enable(i32 noundef 2, ptr noundef %chip, i32 noundef 256, i8 noundef zeroext 16) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %6) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %., i8 noundef zeroext -1, i8 noundef zeroext %conv29) #7
  %shr45 = lshr i32 %addr.0130, 8
  %conv46 = trunc i32 %shr45 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %.136, i8 noundef zeroext -1, i8 noundef zeroext %conv46) #7
  %shr47 = lshr i32 %addr.0130, 16
  %conv48 = trunc i32 %shr47 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %.137, i8 noundef zeroext -1, i8 noundef zeroext %conv48) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext %.138) #7
  %conv50 = zext i16 %23 to i32
  %25 = lshr i16 %23, 8
  %conv52 = trunc i16 %25 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -633, i8 noundef zeroext -1, i8 noundef zeroext %conv52) #7
  %conv53 = trunc i16 %23 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext %conv53) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -123) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  %call55 = call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef %conv50, i32 noundef 0, i32 noundef 2, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %26 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup67

cleanup:                                          ; preds = %while.body
  %call61 = call i32 @rtsx_stor_access_xfer_buf(ptr noundef nonnull %call7.i, i32 noundef %conv50, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 0) #7
  %add = add i32 %addr.0130, %conv50
  %sub65 = sub i16 %len.0132, %23
  %tobool28.not = icmp eq i16 %sub65, 0
  br i1 %tobool28.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %27 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %resid_len.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup67

cleanup67:                                        ; preds = %while.end, %cleanup.thread, %if.end.cleanup67_crit_edge, %if.then
  %retval.2 = phi i32 [ 1, %if.then ], [ 0, %while.end ], [ 10, %if.end.cleanup67_crit_edge ], [ 1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trans_dma_enable(i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_send_cmd_no_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_write_flash(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %2 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %err_code2.i, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %3 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx5 = getelementptr i8, ptr %4, i32 5
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %arrayidx9 = getelementptr i8, ptr %4, i32 6
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %or11 = or i32 %or, %conv10
  %arrayidx13 = getelementptr i8, ptr %4, i32 7
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv15 = zext i8 %14 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %arrayidx18 = getelementptr i8, ptr %4, i32 8
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %16 to i16
  %or20 = or i16 %shl16, %conv19
  %arrayidx23 = getelementptr i8, ptr %4, i32 9
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %call = tail call fastcc i32 @spi_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup148

if.end:                                           ; preds = %entry
  %20 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.else144 [
    i8 0, label %if.then28
    i8 1, label %if.then53
    i8 2, label %if.then99
  ]

if.then28:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then28.cleanup148_crit_edge, label %while.cond.preheader

if.then28.cleanup148_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

while.cond.preheader:                             ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or20)
  %tobool32.not273 = icmp eq i16 %or20, 0
  br i1 %tobool32.not273, label %while.cond.preheader.if.end147.sink.split_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end147.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %len.0275 = phi i16 [ %or20, %while.body.lr.ph ], [ %dec, %if.end49.while.body_crit_edge ]
  %addr.0274 = phi i32 [ %or11, %while.body.lr.ph ], [ %inc, %if.end49.while.body_crit_edge ]
  %call33 = call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup148

if.end37:                                         ; preds = %while.body
  %call38 = call i32 @rtsx_stor_access_xfer_buf(ptr noundef nonnull %call7.i, i32 noundef 1, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 1) #7
  %22 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i, align 8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1536, i8 noundef zeroext -1, i8 noundef zeroext %24) #7
  call fastcc void @sf_program(ptr noundef %chip, i8 noundef zeroext %6, i8 noundef zeroext 1, i32 noundef %addr.0274, i16 noundef zeroext 1)
  %call40 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %25 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup148

if.end44:                                         ; preds = %if.end37
  %call45 = call fastcc i32 @sf_polling_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup148

if.end49:                                         ; preds = %if.end44
  %inc = add nuw nsw i32 %addr.0274, 1
  %dec = add i16 %len.0275, -1
  %tobool32.not = icmp eq i16 %dec, 0
  br i1 %tobool32.not, label %if.end49.if.end147.sink.split_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end49.if.end147.sink.split_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.sink.split

if.then53:                                        ; preds = %if.end
  %call54 = tail call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end58, label %if.then53.cleanup148_crit_edge

if.then53.cleanup148_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

if.end58:                                         ; preds = %if.then53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i253 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4) #11
  %tobool60.not = icmp eq ptr %call7.i253, null
  br i1 %tobool60.not, label %if.end58.cleanup148_crit_edge, label %while.cond63.preheader

if.end58.cleanup148_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

while.cond63.preheader:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or20)
  %tobool64.not270 = icmp eq i16 %or20, 0
  br i1 %tobool64.not270, label %while.cond63.preheader.while.end84_crit_edge, label %while.body65.lr.ph

while.cond63.preheader.while.end84_crit_edge:     ; preds = %while.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end84

while.body65.lr.ph:                               ; preds = %while.cond63.preheader
  %ci67 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  br label %while.body65

while.cond63:                                     ; preds = %if.end77
  %dec83 = add i16 %len.1271, -1
  %tobool64.not = icmp eq i16 %dec83, 0
  br i1 %tobool64.not, label %while.cond63.while.end84_crit_edge, label %while.cond63.while.body65_crit_edge

while.cond63.while.body65_crit_edge:              ; preds = %while.cond63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body65

while.cond63.while.end84_crit_edge:               ; preds = %while.cond63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end84

while.body65:                                     ; preds = %while.cond63.while.body65_crit_edge, %while.body65.lr.ph
  %tobool69.not272 = phi i1 [ false, %while.body65.lr.ph ], [ true, %while.cond63.while.body65_crit_edge ]
  %len.1271 = phi i16 [ %or20, %while.body65.lr.ph ], [ %dec83, %while.cond63.while.body65_crit_edge ]
  %call66 = call i32 @rtsx_stor_access_xfer_buf(ptr noundef nonnull %call7.i253, i32 noundef 1, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 1) #7
  %27 = ptrtoint ptr %ci67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ci67, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %28 = ptrtoint ptr %call7.i253 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call7.i253, align 8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1536, i8 noundef zeroext -1, i8 noundef zeroext %29) #7
  br i1 %tobool69.not272, label %if.else71, label %if.then70

if.then70:                                        ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @sf_program(ptr noundef %chip, i8 noundef zeroext %6, i8 noundef zeroext 1, i32 noundef %or11, i16 noundef zeroext 1)
  br label %if.end72

if.else71:                                        ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %6) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -633, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -126) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  %call73 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i253) #7
  %call.i257 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %30 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup148

if.end77:                                         ; preds = %if.end72
  %call78 = call fastcc i32 @sf_polling_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %while.cond63, label %if.then81

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i253) #7
  br label %cleanup148

while.end84:                                      ; preds = %while.cond63.while.end84_crit_edge, %while.cond63.preheader.while.end84_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i253) #7
  %call85 = call fastcc i32 @sf_disable_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %cleanup, label %while.end84.cleanup148_crit_edge

while.end84.cleanup148_crit_edge:                 ; preds = %while.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

cleanup:                                          ; preds = %while.end84
  %call90 = call fastcc i32 @sf_polling_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %cleanup.if.end147_crit_edge, label %cleanup.cleanup148_crit_edge

cleanup.cleanup148_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

cleanup.if.end147_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then99:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i254 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 256) #11
  %tobool101.not = icmp eq ptr %call7.i254, null
  br i1 %tobool101.not, label %if.then99.cleanup148_crit_edge, label %while.cond104.preheader

if.then99.cleanup148_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup148

while.cond104.preheader:                          ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or20)
  %tobool105.not267 = icmp eq i16 %or20, 0
  br i1 %tobool105.not267, label %while.cond104.preheader.if.end147.sink.split_crit_edge, label %while.body106.lr.ph

while.cond104.preheader.if.end147.sink.split_crit_edge: ; preds = %while.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.sink.split

while.body106.lr.ph:                              ; preds = %while.cond104.preheader
  %ci121 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  br label %while.body106

while.body106:                                    ; preds = %cleanup140.while.body106_crit_edge, %while.body106.lr.ph
  %len.2269 = phi i16 [ %or20, %while.body106.lr.ph ], [ %sub138, %cleanup140.while.body106_crit_edge ]
  %addr.1268 = phi i32 [ %or11, %while.body106.lr.ph ], [ %add, %cleanup140.while.body106_crit_edge ]
  %32 = trunc i32 %addr.1268 to i16
  %33 = and i16 %32, 255
  %conv109 = sub nuw nsw i16 256, %33
  %34 = call i16 @llvm.umin.i16(i16 %conv109, i16 %len.2269)
  %call116 = call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117.not = icmp eq i32 %call116, 0
  br i1 %cmp117.not, label %if.end120, label %if.then119

if.then119:                                       ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i254) #7
  br label %cleanup148

if.end120:                                        ; preds = %while.body106
  %35 = ptrtoint ptr %ci121 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ci121, align 4
  call void @trans_dma_enable(i32 noundef 1, ptr noundef %chip, i32 noundef 256, i8 noundef zeroext 16) #7
  call fastcc void @sf_program(ptr noundef %chip, i8 noundef zeroext %6, i8 noundef zeroext 1, i32 noundef %addr.1268, i16 noundef zeroext %34)
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  %conv122 = zext i16 %34 to i32
  %call123 = call i32 @rtsx_stor_access_xfer_buf(ptr noundef nonnull %call7.i254, i32 noundef %conv122, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 1) #7
  %call125 = call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %call7.i254, i32 noundef %conv122, i32 noundef 0, i32 noundef 1, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i254) #7
  %call.i259 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %36 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup148

if.end129:                                        ; preds = %if.end120
  %call130 = call fastcc i32 @sf_polling_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131.not = icmp eq i32 %call130, 0
  br i1 %cmp131.not, label %cleanup140, label %if.then133

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i254) #7
  br label %cleanup148

cleanup140:                                       ; preds = %if.end129
  %add = add i32 %addr.1268, %conv122
  %sub138 = sub i16 %len.2269, %34
  %tobool105.not = icmp eq i16 %sub138, 0
  br i1 %tobool105.not, label %cleanup140.if.end147.sink.split_crit_edge, label %cleanup140.while.body106_crit_edge

cleanup140.while.body106_crit_edge:               ; preds = %cleanup140
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body106

cleanup140.if.end147.sink.split_crit_edge:        ; preds = %cleanup140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.sink.split

if.else144:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %err_code2.i, align 4
  br label %cleanup148

if.end147.sink.split:                             ; preds = %cleanup140.if.end147.sink.split_crit_edge, %while.cond104.preheader.if.end147.sink.split_crit_edge, %if.end49.if.end147.sink.split_crit_edge, %while.cond.preheader.if.end147.sink.split_crit_edge
  %call7.i254.sink = phi ptr [ %call7.i, %while.cond.preheader.if.end147.sink.split_crit_edge ], [ %call7.i254, %while.cond104.preheader.if.end147.sink.split_crit_edge ], [ %call7.i, %if.end49.if.end147.sink.split_crit_edge ], [ %call7.i254, %cleanup140.if.end147.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i254.sink) #7
  br label %if.end147

if.end147:                                        ; preds = %if.end147.sink.split, %cleanup.if.end147_crit_edge
  br label %cleanup148

cleanup148:                                       ; preds = %if.end147, %if.else144, %if.then133, %if.then128, %if.then119, %if.then99.cleanup148_crit_edge, %cleanup.cleanup148_crit_edge, %while.end84.cleanup148_crit_edge, %if.then81, %if.then76, %if.end58.cleanup148_crit_edge, %if.then53.cleanup148_crit_edge, %if.then48, %if.then43, %if.then36, %if.then28.cleanup148_crit_edge, %if.then
  %retval.3 = phi i32 [ 1, %if.then ], [ 1, %if.then36 ], [ 1, %if.then43 ], [ 1, %if.then48 ], [ 0, %if.end147 ], [ 1, %cleanup.cleanup148_crit_edge ], [ 1, %if.else144 ], [ 10, %if.then28.cleanup148_crit_edge ], [ 3, %if.then99.cleanup148_crit_edge ], [ 1, %while.end84.cleanup148_crit_edge ], [ 10, %if.end58.cleanup148_crit_edge ], [ 1, %if.then53.cleanup148_crit_edge ], [ 1, %if.then81 ], [ 1, %if.then76 ], [ 1, %if.then119 ], [ 1, %if.then128 ], [ 1, %if.then133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext %ins) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %write_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %write_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %ins) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %3 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sf_program(ptr noundef %chip, i8 noundef zeroext %ins, i8 noundef zeroext %addr_mode, i32 noundef %addr, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %ins) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  %conv = trunc i16 %len to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext %conv) #7
  %0 = lshr i16 %len, 8
  %conv2 = trunc i16 %0 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -633, i8 noundef zeroext -1, i8 noundef zeroext %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr_mode)
  %tobool.not = icmp eq i8 %addr_mode, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = trunc i32 %addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %conv3) #7
  %shr4 = lshr i32 %addr, 8
  %conv5 = trunc i32 %shr4 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %conv5) #7
  %shr6 = lshr i32 %addr, 16
  %conv7 = trunc i32 %shr6 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -637, i8 noundef zeroext -1, i8 noundef zeroext %conv7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ -124, %if.then ], [ -126, %entry.if.end_crit_edge ]
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext %.sink) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf_polling_status(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 5) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -122) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %1 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %err_code2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf_disable_write(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %write_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %write_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext 4) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %3 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_erase_flash(ptr nocapture noundef readonly %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %0 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code2.i, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %1 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %2, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %2, i32 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx5 = getelementptr i8, ptr %2, i32 5
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %arrayidx9 = getelementptr i8, ptr %2, i32 6
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %or11 = or i32 %or, %conv10
  %arrayidx13 = getelementptr i8, ptr %2, i32 9
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %call = tail call fastcc i32 @spi_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %12, label %if.else43 [
    i8 0, label %if.then18
    i8 1, label %if.then32
  ]

if.then18:                                        ; preds = %if.end
  %call19 = tail call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.then18
  %call24 = tail call fastcc i32 @sf_erase(ptr noundef %chip, i8 noundef zeroext %4, i8 noundef zeroext 1, i32 noundef %or11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end23.if.end45_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then32:                                        ; preds = %if.end
  %call33 = tail call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end37, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.then32
  %call38 = tail call fastcc i32 @sf_erase(ptr noundef %chip, i8 noundef zeroext %4, i8 noundef zeroext 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end37.if.end45_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %err_code2.i, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end37.if.end45_crit_edge, %if.end23.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.else43, %if.end37.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end45 ], [ 1, %if.else43 ], [ 1, %if.then18.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ], [ 1, %if.then32.cleanup_crit_edge ], [ 1, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf_erase(ptr noundef %chip, i8 noundef zeroext %ins, i8 noundef zeroext %addr_mode, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %ins) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr_mode)
  %tobool.not = icmp eq i8 %addr_mode, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -639, i8 noundef zeroext -1, i8 noundef zeroext %conv) #7
  %shr = lshr i32 %addr, 8
  %conv2 = trunc i32 %shr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -638, i8 noundef zeroext -1, i8 noundef zeroext %conv2) #7
  %shr3 = lshr i32 %addr, 16
  %conv4 = trunc i32 %shr3 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -637, i8 noundef zeroext -1, i8 noundef zeroext %conv4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ -127, %if.then ], [ -128, %entry.if.end_crit_edge ]
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext %.sink) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %1 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %err_code2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_write_flash_status(ptr nocapture noundef readonly %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 5
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %call = tail call fastcc i32 @spi_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @sf_enable_write(ptr noundef %chip, i8 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -640, i8 noundef zeroext -1, i8 noundef zeroext %3) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -635, i8 noundef zeroext -1, i8 noundef zeroext -9) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -633, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -634, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1536, i8 noundef zeroext -1, i8 noundef zeroext %5) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -624, i8 noundef zeroext -1, i8 noundef zeroext -126) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -624, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call10 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 17, i8 noundef zeroext 17) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %entry.cleanup.sink.split_crit_edge
  %err_code2.i35 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 43, i32 3
  %9 = ptrtoint ptr %err_code2.i35 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %err_code2.i35, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @select_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_ssc_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_normal_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -622, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -620, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/spi.c", i32 384, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/rts5208/spi.c", i32 440, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @spi_get_status.__UNIQUE_ID_ddebug290, !4, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rts5208/spi.c", i32 463, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @spi_set_parameter.__UNIQUE_ID_ddebug293, !9, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rts5208/spi.c", i32 464, i32 2}
!14 = !{ptr @spi_set_parameter.__UNIQUE_ID_ddebug294, !13, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rts5208/spi.c", i32 465, i32 2}
!17 = !{ptr @spi_set_parameter.__UNIQUE_ID_ddebug295, !16, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rts5208/spi.c", i32 466, i32 2}
!20 = !{ptr @spi_set_parameter.__UNIQUE_ID_ddebug296, !19, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/staging/rts5208/spi.c", i32 253, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/rts5208/spi.c", i32 74, i32 2}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2155177098}
!36 = !{!"auto-init"}
!37 = !{i64 2155182559}
!38 = !{i64 2148293641, i64 2148293646, i64 2148293659, i64 2148293703, i64 2148293737, i64 2148293758}
!39 = !{i64 2155171440}
