; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nandsim.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nandsim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nandsim_operations = type { i32, [6 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.82, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.76 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.76 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.82 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nandsim = type { %struct.nand_chip, %struct.nand_controller, [32 x %struct.mtd_partition], i32, i32, [8 x i8], i32, i32, i32, ptr, [1 x i32], i16, i16, ptr, ptr, %union.ns_mem, %struct.anon.83, %struct.anon.84, %struct.anon.85, ptr, ptr, ptr, [16 x ptr], i32, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%union.ns_mem = type { ptr }
%struct.anon.83 = type { i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.84 = type { i32, i8, i32, i32, i32, i32, i32 }
%struct.anon.85 = type { i32, i32, i32, i32 }
%struct.weak_block = type { %struct.list_head, i32, i32, i32 }
%struct.weak_page = type { %struct.list_head, i32, i32, i32 }
%struct.grave_page = type { %struct.list_head, i32, i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.80, i32 }
%union.anon.80 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.81, i8 }
%union.anon.81 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.73 = type { ptr }

@__param_str_id_bytes = internal constant [17 x i8] c"nandsim.id_bytes\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_id_bytes = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_byte, ptr @id_bytes }, align 4
@__param_id_bytes = internal constant %struct.kernel_param { ptr @__param_str_id_bytes, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_id_bytes } }, section "__param", align 4
@__UNIQUE_ID_id_bytestype265 = internal constant [40 x i8] c"nandsim.parmtype=id_bytes:array of byte\00", section ".modinfo", align 1
@__param_str_first_id_byte = internal constant [22 x i8] c"nandsim.first_id_byte\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@id_bytes = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\989\FF\FF\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@__param_first_id_byte = internal constant %struct.kernel_param { ptr @__param_str_first_id_byte, ptr null, ptr @param_ops_byte, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @id_bytes } }, section "__param", align 4
@__UNIQUE_ID_first_id_bytetype266 = internal constant [36 x i8] c"nandsim.parmtype=first_id_byte:byte\00", section ".modinfo", align 1
@__param_str_second_id_byte = internal constant [23 x i8] c"nandsim.second_id_byte\00", align 1
@__param_second_id_byte = internal constant %struct.kernel_param { ptr @__param_str_second_id_byte, ptr null, ptr @param_ops_byte, i16 256, i8 -1, i8 0, %union.anon.68 { ptr getelementptr inbounds (i8, ptr @id_bytes, i64 1) } }, section "__param", align 4
@__UNIQUE_ID_second_id_bytetype267 = internal constant [37 x i8] c"nandsim.parmtype=second_id_byte:byte\00", section ".modinfo", align 1
@__param_str_third_id_byte = internal constant [22 x i8] c"nandsim.third_id_byte\00", align 1
@__param_third_id_byte = internal constant %struct.kernel_param { ptr @__param_str_third_id_byte, ptr null, ptr @param_ops_byte, i16 256, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @id_bytes, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_third_id_bytetype268 = internal constant [36 x i8] c"nandsim.parmtype=third_id_byte:byte\00", section ".modinfo", align 1
@__param_str_fourth_id_byte = internal constant [23 x i8] c"nandsim.fourth_id_byte\00", align 1
@__param_fourth_id_byte = internal constant %struct.kernel_param { ptr @__param_str_fourth_id_byte, ptr null, ptr @param_ops_byte, i16 256, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @id_bytes, i64 3) } }, section "__param", align 4
@__UNIQUE_ID_fourth_id_bytetype269 = internal constant [37 x i8] c"nandsim.parmtype=fourth_id_byte:byte\00", section ".modinfo", align 1
@__param_str_access_delay = internal constant [21 x i8] c"nandsim.access_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@access_delay = internal global { i32, [28 x i8] } { i32 25, [28 x i8] zeroinitializer }, align 32
@__param_access_delay = internal constant %struct.kernel_param { ptr @__param_str_access_delay, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @access_delay } }, section "__param", align 4
@__UNIQUE_ID_access_delaytype270 = internal constant [35 x i8] c"nandsim.parmtype=access_delay:uint\00", section ".modinfo", align 1
@__param_str_programm_delay = internal constant [23 x i8] c"nandsim.programm_delay\00", align 1
@programm_delay = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_programm_delay = internal constant %struct.kernel_param { ptr @__param_str_programm_delay, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @programm_delay } }, section "__param", align 4
@__UNIQUE_ID_programm_delaytype271 = internal constant [37 x i8] c"nandsim.parmtype=programm_delay:uint\00", section ".modinfo", align 1
@__param_str_erase_delay = internal constant [20 x i8] c"nandsim.erase_delay\00", align 1
@erase_delay = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_erase_delay = internal constant %struct.kernel_param { ptr @__param_str_erase_delay, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @erase_delay } }, section "__param", align 4
@__UNIQUE_ID_erase_delaytype272 = internal constant [34 x i8] c"nandsim.parmtype=erase_delay:uint\00", section ".modinfo", align 1
@__param_str_output_cycle = internal constant [21 x i8] c"nandsim.output_cycle\00", align 1
@output_cycle = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_output_cycle = internal constant %struct.kernel_param { ptr @__param_str_output_cycle, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @output_cycle } }, section "__param", align 4
@__UNIQUE_ID_output_cycletype273 = internal constant [35 x i8] c"nandsim.parmtype=output_cycle:uint\00", section ".modinfo", align 1
@__param_str_input_cycle = internal constant [20 x i8] c"nandsim.input_cycle\00", align 1
@input_cycle = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_input_cycle = internal constant %struct.kernel_param { ptr @__param_str_input_cycle, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @input_cycle } }, section "__param", align 4
@__UNIQUE_ID_input_cycletype274 = internal constant [34 x i8] c"nandsim.parmtype=input_cycle:uint\00", section ".modinfo", align 1
@__param_str_bus_width = internal constant [18 x i8] c"nandsim.bus_width\00", align 1
@bus_width = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_bus_width = internal constant %struct.kernel_param { ptr @__param_str_bus_width, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @bus_width } }, section "__param", align 4
@__UNIQUE_ID_bus_widthtype275 = internal constant [32 x i8] c"nandsim.parmtype=bus_width:uint\00", section ".modinfo", align 1
@__param_str_do_delays = internal constant [18 x i8] c"nandsim.do_delays\00", align 1
@do_delays = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_do_delays = internal constant %struct.kernel_param { ptr @__param_str_do_delays, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @do_delays } }, section "__param", align 4
@__UNIQUE_ID_do_delaystype276 = internal constant [32 x i8] c"nandsim.parmtype=do_delays:uint\00", section ".modinfo", align 1
@__param_str_log = internal constant [12 x i8] c"nandsim.log\00", align 1
@log = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_log = internal constant %struct.kernel_param { ptr @__param_str_log, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @log } }, section "__param", align 4
@__UNIQUE_ID_logtype277 = internal constant [26 x i8] c"nandsim.parmtype=log:uint\00", section ".modinfo", align 1
@__param_str_dbg = internal constant [12 x i8] c"nandsim.dbg\00", align 1
@dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg = internal constant %struct.kernel_param { ptr @__param_str_dbg, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @dbg } }, section "__param", align 4
@__UNIQUE_ID_dbgtype278 = internal constant [26 x i8] c"nandsim.parmtype=dbg:uint\00", section ".modinfo", align 1
@__param_str_parts = internal constant [14 x i8] c"nandsim.parts\00", align 1
@__param_arr_parts = internal constant %struct.kparam_array { i32 32, i32 4, ptr @parts_num, ptr @param_ops_ulong, ptr @parts }, align 4
@__param_parts = internal constant %struct.kernel_param { ptr @__param_str_parts, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_parts } }, section "__param", align 4
@__UNIQUE_ID_partstype279 = internal constant [38 x i8] c"nandsim.parmtype=parts:array of ulong\00", section ".modinfo", align 1
@__param_str_badblocks = internal constant [18 x i8] c"nandsim.badblocks\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@badblocks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_badblocks = internal constant %struct.kernel_param { ptr @__param_str_badblocks, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @badblocks } }, section "__param", align 4
@__UNIQUE_ID_badblockstype280 = internal constant [33 x i8] c"nandsim.parmtype=badblocks:charp\00", section ".modinfo", align 1
@__param_str_weakblocks = internal constant [19 x i8] c"nandsim.weakblocks\00", align 1
@weakblocks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_weakblocks = internal constant %struct.kernel_param { ptr @__param_str_weakblocks, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @weakblocks } }, section "__param", align 4
@__UNIQUE_ID_weakblockstype281 = internal constant [34 x i8] c"nandsim.parmtype=weakblocks:charp\00", section ".modinfo", align 1
@__param_str_weakpages = internal constant [18 x i8] c"nandsim.weakpages\00", align 1
@weakpages = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_weakpages = internal constant %struct.kernel_param { ptr @__param_str_weakpages, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @weakpages } }, section "__param", align 4
@__UNIQUE_ID_weakpagestype282 = internal constant [33 x i8] c"nandsim.parmtype=weakpages:charp\00", section ".modinfo", align 1
@__param_str_bitflips = internal constant [17 x i8] c"nandsim.bitflips\00", align 1
@bitflips = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bitflips = internal constant %struct.kernel_param { ptr @__param_str_bitflips, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @bitflips } }, section "__param", align 4
@__UNIQUE_ID_bitflipstype283 = internal constant [31 x i8] c"nandsim.parmtype=bitflips:uint\00", section ".modinfo", align 1
@__param_str_gravepages = internal constant [19 x i8] c"nandsim.gravepages\00", align 1
@gravepages = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_gravepages = internal constant %struct.kernel_param { ptr @__param_str_gravepages, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @gravepages } }, section "__param", align 4
@__UNIQUE_ID_gravepagestype284 = internal constant [34 x i8] c"nandsim.parmtype=gravepages:charp\00", section ".modinfo", align 1
@__param_str_overridesize = internal constant [21 x i8] c"nandsim.overridesize\00", align 1
@overridesize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_overridesize = internal constant %struct.kernel_param { ptr @__param_str_overridesize, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @overridesize } }, section "__param", align 4
@__UNIQUE_ID_overridesizetype285 = internal constant [35 x i8] c"nandsim.parmtype=overridesize:uint\00", section ".modinfo", align 1
@__param_str_cache_file = internal constant [19 x i8] c"nandsim.cache_file\00", align 1
@cache_file = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_cache_file = internal constant %struct.kernel_param { ptr @__param_str_cache_file, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @cache_file } }, section "__param", align 4
@__UNIQUE_ID_cache_filetype286 = internal constant [34 x i8] c"nandsim.parmtype=cache_file:charp\00", section ".modinfo", align 1
@__param_str_bbt = internal constant [12 x i8] c"nandsim.bbt\00", align 1
@bbt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bbt = internal constant %struct.kernel_param { ptr @__param_str_bbt, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @bbt } }, section "__param", align 4
@__UNIQUE_ID_bbttype287 = internal constant [26 x i8] c"nandsim.parmtype=bbt:uint\00", section ".modinfo", align 1
@__param_str_bch = internal constant [12 x i8] c"nandsim.bch\00", align 1
@bch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bch = internal constant %struct.kernel_param { ptr @__param_str_bch, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @bch } }, section "__param", align 4
@__UNIQUE_ID_bchtype288 = internal constant [26 x i8] c"nandsim.parmtype=bch:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_id_bytes289 = internal constant [76 x i8] c"nandsim.parm=id_bytes:The ID bytes returned by NAND Flash 'read ID' command\00", section ".modinfo", align 1
@__UNIQUE_ID_first_id_byte290 = internal constant [112 x i8] c"nandsim.parm=first_id_byte:The first byte returned by NAND Flash 'read ID' command (manufacturer ID) (obsolete)\00", section ".modinfo", align 1
@__UNIQUE_ID_second_id_byte291 = internal constant [106 x i8] c"nandsim.parm=second_id_byte:The second byte returned by NAND Flash 'read ID' command (chip ID) (obsolete)\00", section ".modinfo", align 1
@__UNIQUE_ID_third_id_byte292 = internal constant [94 x i8] c"nandsim.parm=third_id_byte:The third byte returned by NAND Flash 'read ID' command (obsolete)\00", section ".modinfo", align 1
@__UNIQUE_ID_fourth_id_byte293 = internal constant [96 x i8] c"nandsim.parm=fourth_id_byte:The fourth byte returned by NAND Flash 'read ID' command (obsolete)\00", section ".modinfo", align 1
@__UNIQUE_ID_access_delay294 = internal constant [67 x i8] c"nandsim.parm=access_delay:Initial page access delay (microseconds)\00", section ".modinfo", align 1
@__UNIQUE_ID_programm_delay295 = internal constant [62 x i8] c"nandsim.parm=programm_delay:Page programm delay (microseconds\00", section ".modinfo", align 1
@__UNIQUE_ID_erase_delay296 = internal constant [59 x i8] c"nandsim.parm=erase_delay:Sector erase delay (milliseconds)\00", section ".modinfo", align 1
@__UNIQUE_ID_output_cycle297 = internal constant [70 x i8] c"nandsim.parm=output_cycle:Word output (from flash) time (nanoseconds)\00", section ".modinfo", align 1
@__UNIQUE_ID_input_cycle298 = internal constant [66 x i8] c"nandsim.parm=input_cycle:Word input (to flash) time (nanoseconds)\00", section ".modinfo", align 1
@__UNIQUE_ID_bus_width299 = internal constant [55 x i8] c"nandsim.parm=bus_width:Chip's bus width (8- or 16-bit)\00", section ".modinfo", align 1
@__UNIQUE_ID_do_delays300 = internal constant [73 x i8] c"nandsim.parm=do_delays:Simulate NAND delays using busy-waits if not zero\00", section ".modinfo", align 1
@__UNIQUE_ID_log301 = internal constant [45 x i8] c"nandsim.parm=log:Perform logging if not zero\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg302 = internal constant [54 x i8] c"nandsim.parm=dbg:Output debug information if not zero\00", section ".modinfo", align 1
@__UNIQUE_ID_parts303 = internal constant [73 x i8] c"nandsim.parm=parts:Partition sizes (in erase blocks) separated by commas\00", section ".modinfo", align 1
@__UNIQUE_ID_badblocks304 = internal constant [87 x i8] c"nandsim.parm=badblocks:Erase blocks that are initially marked bad, separated by commas\00", section ".modinfo", align 1
@__UNIQUE_ID_weakblocks305 = internal constant [169 x i8] c"nandsim.parm=weakblocks:Weak erase blocks [: remaining erase cycles (defaults to 3)] separated by commas e.g. 113:2 means eb 113 can be erased only twice before failing\00", section ".modinfo", align 1
@__UNIQUE_ID_weakpages306 = internal constant [158 x i8] c"nandsim.parm=weakpages:Weak pages [: maximum writes (defaults to 3)] separated by commas e.g. 1401:2 means page 1401 can be written only twice before failing\00", section ".modinfo", align 1
@__UNIQUE_ID_bitflips307 = internal constant [84 x i8] c"nandsim.parm=bitflips:Maximum number of random bit flips per page (zero by default)\00", section ".modinfo", align 1
@__UNIQUE_ID_gravepages308 = internal constant [165 x i8] c"nandsim.parm=gravepages:Pages that lose data [: maximum reads (defaults to 3)] separated by commas e.g. 1401:2 means page 1401 can be read only twice before failing\00", section ".modinfo", align 1
@__UNIQUE_ID_overridesize309 = internal constant [196 x i8] c"nandsim.parm=overridesize:Specifies the NAND Flash size overriding the ID bytes. The size is specified in erase blocks and as the exponent of a power of two e.g. 5 means a size of 32 erase blocks\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_file310 = internal constant [74 x i8] c"nandsim.parm=cache_file:File to use to cache nand pages instead of memory\00", section ".modinfo", align 1
@__UNIQUE_ID_bbt311 = internal constant [81 x i8] c"nandsim.parm=bbt:0 OOB, 1 BBT with marker in OOB, 2 BBT with marker in data area\00", section ".modinfo", align 1
@__UNIQUE_ID_bch312 = internal constant [95 x i8] c"nandsim.parm=bch:Enable BCH ecc and set how many bits should be correctable in 512-byte blocks\00", section ".modinfo", align 1
@__initcall__kmod_nandsim__353_2417_ns_init_module6 = internal global ptr @ns_init_module, section ".initcall6.init", align 4
@nsmtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/nand/raw/nandsim.c\00", [33 x i8] zeroinitializer }, align 32
@erase_block_wear = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@grave_pages = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @grave_pages, ptr @grave_pages }, [24 x i8] zeroinitializer }, align 32
@weak_pages = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @weak_pages, ptr @weak_pages }, [24 x i8] zeroinitializer }, align 32
@weak_blocks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @weak_blocks, ptr @weak_blocks }, [24 x i8] zeroinitializer }, align 32
@__exitcall_ns_cleanup_module = internal global ptr @ns_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file354 = internal constant [42 x i8] c"nandsim.file=drivers/mtd/nand/raw/nandsim\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [20 x i8] c"nandsim.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [34 x i8] c"nandsim.author=Artem B. Bityuckiy\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [45 x i8] c"nandsim.description=The NAND flash simulator\00", section ".modinfo", align 1
@parts_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@parts = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@ns_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[nandsim] error: wrong bus width (%d), use only 8 or 16\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns_init_module\00", [17 x i8] zeroinitializer }, align 32
@ns_init_module._entry_ptr = internal global ptr @ns_init_module._entry, section ".printk_index", align 4
@ns_init_module._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[nandsim] error: unable to allocate core structures.\0A\00", [40 x i8] zeroinitializer }, align 32
@ns_init_module._entry_ptr.5 = internal global ptr @ns_init_module._entry.3, section ".printk_index", align 4
@ns_init_module._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 2291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[nandsim] error: bbt has to be 0..2\0A\00", [57 x i8] zeroinitializer }, align 32
@ns_init_module._entry_ptr.8 = internal global ptr @ns_init_module._entry.6, section ".printk_index", align 4
@ns_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @ns_attach_chip, ptr null, ptr @ns_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@ns_init_module._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[nandsim] error: Could not scan NAND Simulator device\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_init_module._entry_ptr.11 = internal global ptr @ns_init_module._entry.9, section ".printk_index", align 4
@ns_init_module._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[nandsim] error: overridesize is too big\0A\00", [52 x i8] zeroinitializer }, align 32
@ns_init_module._entry_ptr.14 = internal global ptr @ns_init_module._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ns_parse_weakblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[nandsim] error: invalid weakblocks.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ns_parse_weakblocks\00", [44 x i8] zeroinitializer }, align 32
@ns_parse_weakblocks._entry_ptr = internal global ptr @ns_parse_weakblocks._entry, section ".printk_index", align 4
@ns_parse_weakblocks._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[nandsim] error: unable to allocate memory.\0A\00", [49 x i8] zeroinitializer }, align 32
@ns_parse_weakblocks._entry_ptr.19 = internal global ptr @ns_parse_weakblocks._entry.17, section ".printk_index", align 4
@ns_parse_weakpages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[nandsim] error: invalid weakpages.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns_parse_weakpages\00", [45 x i8] zeroinitializer }, align 32
@ns_parse_weakpages._entry_ptr = internal global ptr @ns_parse_weakpages._entry, section ".printk_index", align 4
@ns_parse_weakpages._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_parse_weakpages._entry_ptr.23 = internal global ptr @ns_parse_weakpages._entry.22, section ".printk_index", align 4
@ns_parse_gravepages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[nandsim] error: invalid gravepagess.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ns_parse_gravepages\00", [44 x i8] zeroinitializer }, align 32
@ns_parse_gravepages._entry_ptr = internal global ptr @ns_parse_gravepages._entry, section ".printk_index", align 4
@ns_parse_gravepages._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.25, ptr @.str, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_parse_gravepages._entry_ptr.27 = internal global ptr @ns_parse_gravepages._entry.26, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@ns_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 2230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[nandsim] error: BCH not available on small page devices\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns_attach_chip\00", [17 x i8] zeroinitializer }, align 32
@ns_attach_chip._entry_ptr = internal global ptr @ns_attach_chip._entry, section ".printk_index", align 4
@ns_attach_chip._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[nandsim] error: Invalid BCH value %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ns_attach_chip._entry_ptr.33 = internal global ptr @ns_attach_chip._entry.31, section ".printk_index", align 4
@ns_attach_chip._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[nandsim] Using %u-bit/%u bytes BCH ECC\0A\00", [53 x i8] zeroinitializer }, align 32
@ns_attach_chip._entry_ptr.36 = internal global ptr @ns_attach_chip._entry.34, section ".printk_index", align 4
@ns_nand_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 1941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[nandsim] error: write_byte: chip is disabled, ignore write\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns_nand_write_byte\00", [45 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr = internal global ptr @ns_nand_write_byte._entry, section ".printk_index", align 4
@ns_nand_write_byte._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str, i32 1945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013[nandsim] error: write_byte: ALE and CLE pins are high simultaneously, ignore write\0A\00", [41 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.41 = internal global ptr @ns_nand_write_byte._entry.39, section ".printk_index", align 4
@ns_nand_write_byte.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.38, ptr @.str, ptr @.str.43, i8 1, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nandsim\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" log: reset chip\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[nandsim] log: reset chip\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str, i32 1962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[nandsim] error: write_byte: unknown command %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.47 = internal global ptr @ns_nand_write_byte._entry.45, section ".printk_index", align 4
@ns_nand_write_byte._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\014[nandsim] warning: write_byte: command (%#x) wasn't expected, expected state is %s, ignore previous states\0A\00", [50 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.50 = internal global ptr @ns_nand_write_byte._entry.48, section ".printk_index", align 4
@ns_nand_write_byte.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.38, ptr @.str, ptr @.str.51, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c" debug: command byte corresponding to %s state accepted\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[nandsim] debug: command byte corresponding to %s state accepted\0A\00", [62 x i8] zeroinitializer }, align 32
@ns_nand_write_byte.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.38, ptr @.str, ptr @.str.53, i8 1, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c" debug: write_byte: operation isn't known yet, identify it\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[nandsim] debug: write_byte: operation isn't known yet, identify it\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.38, ptr @.str, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013[nandsim] error: write_byte: address (%#x) isn't expected, expected state is %s, switch to STATE_READY\0A\00", [54 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.57 = internal global ptr @ns_nand_write_byte._entry.55, section ".printk_index", align 4
@ns_nand_write_byte._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.38, ptr @.str, i32 2042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[nandsim] error: write_byte: no more address bytes expected\0A\00", [33 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.60 = internal global ptr @ns_nand_write_byte._entry.58, section ".printk_index", align 4
@ns_nand_write_byte.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.38, ptr @.str, ptr @.str.61, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c" debug: write_byte: address byte %#x was accepted (%d bytes input, %d expected)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"[nandsim] debug: write_byte: address byte %#x was accepted (%d bytes input, %d expected)\0A\00", [38 x i8] zeroinitializer }, align 32
@ns_nand_write_byte.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.38, ptr @.str, ptr @.str.63, i8 2, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" debug: address (%#x, %#x) is accepted\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[nandsim] debug: address (%#x, %#x) is accepted\0A\00", [47 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.38, ptr @.str, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013[nandsim] error: write_byte: data input (%#x) isn't expected, state is %s, switch to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.67 = internal global ptr @ns_nand_write_byte._entry.65, section ".printk_index", align 4
@ns_nand_write_byte._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.38, ptr @.str, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014[nandsim] warning: write_byte: %u input bytes has already been accepted, ignore write\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_nand_write_byte._entry_ptr.70 = internal global ptr @ns_nand_write_byte._entry.68, section ".printk_index", align 4
@ns_switch_to_ready_state.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.71, ptr @.str, ptr @.str.72, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ns_switch_to_ready_state\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" debug: switch_to_ready_state: switch to %s state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[nandsim] debug: switch_to_ready_state: switch to %s state\0A\00", [36 x i8] zeroinitializer }, align 32
@ns_switch_state.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.74, ptr @.str, ptr @.str.75, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns_switch_state\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c" debug: switch_state: operation is known, switch to the next state, state: %s, nxstate: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"[nandsim] debug: switch_state: operation is known, switch to the next state, state: %s, nxstate: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_switch_state.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.74, ptr @.str, ptr @.str.77, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c" debug: switch_state: operation is unknown, try to find it\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[nandsim] debug: switch_state: operation is unknown, try to find it\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_switch_state.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.74, ptr @.str, ptr @.str.79, i8 1, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c" debug: switch_state: double the column number for 16x device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[nandsim] debug: switch_state: double the column number for 16x device\0A\00", [56 x i8] zeroinitializer }, align 32
@ns_switch_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014[nandsim] warning: switch_state: not all bytes were processed, %d left\0A\00", [54 x i8] zeroinitializer }, align 32
@ns_switch_state._entry_ptr = internal global ptr @ns_switch_state._entry, section ".printk_index", align 4
@ns_switch_state.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.74, ptr @.str, ptr @.str.82, i8 1, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c" debug: switch_state: operation complete, switch to STATE_READY state\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[nandsim] debug: switch_state: operation complete, switch to STATE_READY state\0A\00", [48 x i8] zeroinitializer }, align 32
@ns_switch_state.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.74, ptr @.str, ptr @.str.84, i8 1, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c" debug: switch_state: the next state is data I/O, switch, state: %s, nxstate: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"[nandsim] debug: switch_state: the next state is data I/O, switch, state: %s, nxstate: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_switch_state._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.74, ptr @.str, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[nandsim] error: switch_state: BUG! unknown data state\0A\00", [38 x i8] zeroinitializer }, align 32
@ns_switch_state._entry_ptr.88 = internal global ptr @ns_switch_state._entry.86, section ".printk_index", align 4
@ns_switch_state._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.74, ptr @.str, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[nandsim] error: switch_state: BUG! unknown address state\0A\00", [35 x i8] zeroinitializer }, align 32
@ns_switch_state._entry_ptr.91 = internal global ptr @ns_switch_state._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_CMD_READ0\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_CMD_READ1\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"STATE_CMD_PAGEPROG\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STATE_CMD_READOOB\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STATE_CMD_READSTART\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_CMD_ERASE1\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_CMD_STATUS\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_CMD_SEQIN\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_CMD_READID\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_CMD_ERASE2\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_CMD_RESET\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_CMD_RNDOUT\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATE_CMD_RNDOUTSTART\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_ADDR_PAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STATE_ADDR_SEC\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATE_ADDR_ZERO\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STATE_ADDR_COLUMN\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STATE_DATAIN\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STATE_DATAOUT\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATE_DATAOUT_ID\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STATE_DATAOUT_STATUS\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STATE_READY\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STATE_UNKNOWN\00", [18 x i8] zeroinitializer }, align 32
@ns_get_state_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[nandsim] error: get_state_name: unknown state, BUG\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_get_state_name\00", [46 x i8] zeroinitializer }, align 32
@ns_get_state_name._entry_ptr = internal global ptr @ns_get_state_name._entry, section ".printk_index", align 4
@ns_get_state_by_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[nandsim] error: get_state_by_command: unknown command, BUG\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ns_get_state_by_command\00", [40 x i8] zeroinitializer }, align 32
@ns_get_state_by_command._entry_ptr = internal global ptr @ns_get_state_by_command._entry, section ".printk_index", align 4
@ops = internal global { [13 x %struct.nandsim_operations], [84 x i8] } { [13 x %struct.nandsim_operations] [%struct.nandsim_operations { i32 2, [6 x i32] [i32 4194305, i32 1048592, i32 4096, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 64, [6 x i32] [i32 5242882, i32 1048592, i32 4096, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 2, [6 x i32] [i32 6291461, i32 1048592, i32 4096, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 -1, [6 x i32] [i32 9, i32 16, i32 256, i32 2097156, i32 0, i32 0] }, %struct.nandsim_operations { i32 2, [6 x i32] [i32 1, i32 4194313, i32 16, i32 256, i32 2097156, i32 0] }, %struct.nandsim_operations { i32 2, [6 x i32] [i32 2, i32 5242889, i32 16, i32 256, i32 2097156, i32 0] }, %struct.nandsim_operations { i32 2, [6 x i32] [i32 5, i32 6291465, i32 16, i32 256, i32 2097156, i32 0] }, %struct.nandsim_operations { i32 -1, [6 x i32] [i32 6, i32 32, i32 3145739, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 -1, [6 x i32] [i32 7, i32 12288, i32 0, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 -1, [6 x i32] [i32 10, i32 64, i32 8192, i32 0, i32 0, i32 0] }, %struct.nandsim_operations { i32 136, [6 x i32] [i32 1, i32 16, i32 1048579, i32 4096, i32 0, i32 0] }, %struct.nandsim_operations { i32 136, [6 x i32] [i32 13, i32 48, i32 1048590, i32 4096, i32 0, i32 0] }, %struct.nandsim_operations zeroinitializer], [84 x i8] zeroinitializer }, align 32
@ns_find_operation.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.119, ptr @.str, ptr @.str.120, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_find_operation\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c" debug: find_operation: operation found, index: %d, state: %s, nxstate %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"[nandsim] debug: find_operation: operation found, index: %d, state: %s, nxstate %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_find_operation.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.119, ptr @.str, ptr @.str.122, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c" debug: find_operation: no operation found, try again with state %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"[nandsim] debug: find_operation: no operation found, try again with state %s\0A\00", [50 x i8] zeroinitializer }, align 32
@ns_find_operation.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.119, ptr @.str, ptr @.str.124, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" debug: find_operation: no operations found\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[nandsim] debug: find_operation: no operations found\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_find_operation.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.119, ptr @.str, ptr @.str.126, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c" debug: find_operation: BUG, operation must be known if address is input\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"[nandsim] debug: find_operation: BUG, operation must be known if address is input\0A\00", [45 x i8] zeroinitializer }, align 32
@ns_find_operation.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.119, ptr @.str, ptr @.str.128, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" debug: find_operation: there is still ambiguity\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[nandsim] debug: find_operation: there is still ambiguity\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014[nandsim] warning: do_state_action: wrong page number (%#x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns_do_state_action\00", [45 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr = internal global ptr @ns_do_state_action._entry, section ".printk_index", align 4
@ns_do_state_action._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[nandsim] error: do_state_action: column number is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.134 = internal global ptr @ns_do_state_action._entry.132, section ".printk_index", align 4
@ns_do_state_action.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.135, i8 1, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c" debug: do_state_action: (ACTION_CPY:) copy %d bytes to int buf, raw offset %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"[nandsim] debug: do_state_action: (ACTION_CPY:) copy %d bytes to int buf, raw offset %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.137, i8 1, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" log: read page %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[nandsim] log: read page %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.139, i8 1, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" log: read page %d (second half)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[nandsim] log: read page %d (second half)\0A\00", [53 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.141, i8 1, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" log: read OOB of page %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[nandsim] log: read OOB of page %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ns_do_state_action._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.131, ptr @.str, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013[nandsim] error: do_state_action: device is write-protected, ignore sector erase\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.145 = internal global ptr @ns_do_state_action._entry.143, section ".printk_index", align 4
@ns_do_state_action._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.131, ptr @.str, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[nandsim] error: do_state_action: wrong sector address (%#x)\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.148 = internal global ptr @ns_do_state_action._entry.146, section ".printk_index", align 4
@ns_do_state_action.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.149, i8 1, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c" debug: do_state_action: erase sector at address %#x, off = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[nandsim] debug: do_state_action: erase sector at address %#x, off = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.151, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" log: erase sector %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[nandsim] log: erase sector %u\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.131, ptr @.str, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014[nandsim] warning: simulating erase failure in erase block %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.155 = internal global ptr @ns_do_state_action._entry.153, section ".printk_index", align 4
@ns_do_state_action._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.131, ptr @.str, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014[nandsim] warning: do_state_action: device is write-protected, programm\0A\00", [53 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.158 = internal global ptr @ns_do_state_action._entry.156, section ".printk_index", align 4
@ns_do_state_action._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.131, ptr @.str, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013[nandsim] error: do_state_action: too few bytes were input (%d instead of %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.161 = internal global ptr @ns_do_state_action._entry.159, section ".printk_index", align 4
@ns_do_state_action.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.162, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c" debug: do_state_action: copy %d bytes from int buf to (%#x, %#x), raw off = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"[nandsim] debug: do_state_action: copy %d bytes from int buf to (%#x, %#x), raw off = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.164, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" log: programm page %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[nandsim] log: programm page %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.131, ptr @.str, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014[nandsim] warning: simulating write failure in page %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.168 = internal global ptr @ns_do_state_action._entry.166, section ".printk_index", align 4
@ns_do_state_action.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.169, i8 1, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" debug: do_state_action: set internal offset to 0\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[nandsim] debug: do_state_action: set internal offset to 0\0A\00", [36 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.131, ptr @.str, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013[nandsim] error: do_state_action: BUG! can't skip half of page for non-512byte page size 8x chips\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_do_state_action._entry_ptr.173 = internal global ptr @ns_do_state_action._entry.171, section ".printk_index", align 4
@ns_do_state_action.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.174, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c" debug: do_state_action: set internal offset to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[nandsim] debug: do_state_action: set internal offset to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ns_do_state_action.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.174, i8 1, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ns_do_state_action.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.131, ptr @.str, ptr @.str.176, i8 1, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" debug: do_state_action: BUG! unknown action\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[nandsim] debug: do_state_action: BUG! unknown action\0A\00", [41 x i8] zeroinitializer }, align 32
@ns_read_page.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.178, ptr @.str, ptr @.str.179, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ns_read_page\00", [19 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" debug: read_page: page %d not written\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[nandsim] debug: read_page: page %d not written\0A\00", [47 x i8] zeroinitializer }, align 32
@ns_read_page.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.178, ptr @.str, ptr @.str.181, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c" debug: read_page: page %d written, reading from %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[nandsim] debug: read_page: page %d written, reading from %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.178, ptr @.str, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[nandsim] error: read_page: read error for page %d ret %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_read_page._entry_ptr = internal global ptr @ns_read_page._entry, section ".printk_index", align 4
@ns_read_page.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.178, ptr @.str, ptr @.str.184, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" debug: read_page: page %d not allocated\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[nandsim] debug: read_page: page %d not allocated\0A\00", [45 x i8] zeroinitializer }, align 32
@ns_read_page.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.178, ptr @.str, ptr @.str.186, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c" debug: read_page: page %d allocated, reading from %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[nandsim] debug: read_page: page %d allocated, reading from %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_do_read_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014[nandsim] warning: simulating read error in page %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns_do_read_error\00", [47 x i8] zeroinitializer }, align 32
@ns_do_read_error._entry_ptr = internal global ptr @ns_do_read_error._entry, section ".printk_index", align 4
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ns_do_bit_flips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\014[nandsim] warning: read_page: flipping bit %d in page %d reading from %d ecc: corrected=%u failed=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns_do_bit_flips\00", [16 x i8] zeroinitializer }, align 32
@ns_do_bit_flips._entry_ptr = internal global ptr @ns_do_bit_flips._entry, section ".printk_index", align 4
@ns_erase_sector.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.193, ptr @.str, ptr @.str.194, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns_erase_sector\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" debug: erase_sector: freeing page %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[nandsim] debug: erase_sector: freeing page %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ns_erase_sector.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.193, ptr @.str, ptr @.str.194, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@total_wear = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ns_update_wear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[nandsim] error: Erase counter total overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns_update_wear\00", [17 x i8] zeroinitializer }, align 32
@ns_update_wear._entry_ptr = internal global ptr @ns_update_wear._entry, section ".printk_index", align 4
@ns_update_wear._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.197, ptr @.str, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[nandsim] error: Erase counter overflow for erase block %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_update_wear._entry_ptr.200 = internal global ptr @ns_update_wear._entry.198, section ".printk_index", align 4
@ns_prog_page.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.201, ptr @.str, ptr @.str.202, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ns_prog_page\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" debug: prog_page: writing page %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[nandsim] debug: prog_page: writing page %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ns_prog_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.201, ptr @.str, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[nandsim] error: prog_page: read error for page %d ret %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_prog_page._entry_ptr = internal global ptr @ns_prog_page._entry, section ".printk_index", align 4
@ns_prog_page._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.201, ptr @.str, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[nandsim] error: prog_page: write error for page %d ret %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@ns_prog_page._entry_ptr.207 = internal global ptr @ns_prog_page._entry.205, section ".printk_index", align 4
@ns_prog_page._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.201, ptr @.str, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_prog_page._entry_ptr.209 = internal global ptr @ns_prog_page._entry.208, section ".printk_index", align 4
@ns_prog_page.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.201, ptr @.str, ptr @.str.210, i8 1, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" debug: prog_page: allocating page %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[nandsim] debug: prog_page: allocating page %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ns_prog_page._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.201, ptr @.str, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[nandsim] error: prog_page: error allocating memory for page %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ns_prog_page._entry_ptr.214 = internal global ptr @ns_prog_page._entry.212, section ".printk_index", align 4
@ns_nand_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str, i32 2126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[nandsim] error: read_buf: chip is disabled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns_nand_read_buf\00", [47 x i8] zeroinitializer }, align 32
@ns_nand_read_buf._entry_ptr = internal global ptr @ns_nand_read_buf._entry, section ".printk_index", align 4
@ns_nand_read_buf._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[nandsim] error: read_buf: ALE or CLE pin is high\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_nand_read_buf._entry_ptr.219 = internal global ptr @ns_nand_read_buf._entry.217, section ".printk_index", align 4
@ns_nand_read_buf._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.216, ptr @.str, i32 2135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014[nandsim] warning: read_buf: unexpected data output cycle, current state is %s\0A\00", [46 x i8] zeroinitializer }, align 32
@ns_nand_read_buf._entry_ptr.222 = internal global ptr @ns_nand_read_buf._entry.220, section ".printk_index", align 4
@ns_nand_read_buf._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.216, ptr @.str, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[nandsim] error: read_buf: too many bytes to read\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_nand_read_buf._entry_ptr.225 = internal global ptr @ns_nand_read_buf._entry.223, section ".printk_index", align 4
@ns_nand_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str, i32 1881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[nandsim] error: read_byte: chip is disabled, return %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_nand_read_byte\00", [46 x i8] zeroinitializer }, align 32
@ns_nand_read_byte._entry_ptr = internal global ptr @ns_nand_read_byte._entry, section ".printk_index", align 4
@ns_nand_read_byte._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[nandsim] error: read_byte: ALE or CLE pin is high, return %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@ns_nand_read_byte._entry_ptr.230 = internal global ptr @ns_nand_read_byte._entry.228, section ".printk_index", align 4
@ns_nand_read_byte._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.227, ptr @.str, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014[nandsim] warning: read_byte: unexpected data output cycle, state is %s return %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_nand_read_byte._entry_ptr.233 = internal global ptr @ns_nand_read_byte._entry.231, section ".printk_index", align 4
@ns_nand_read_byte.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.227, ptr @.str, ptr @.str.234, i8 1, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" debug: read_byte: return %#x status\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[nandsim] debug: read_byte: return %#x status\0A\00", [49 x i8] zeroinitializer }, align 32
@ns_nand_read_byte._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.227, ptr @.str, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014[nandsim] warning: read_byte: no more data to output, return %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@ns_nand_read_byte._entry_ptr.238 = internal global ptr @ns_nand_read_byte._entry.236, section ".printk_index", align 4
@ns_nand_read_byte.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.227, ptr @.str, ptr @.str.239, i8 1, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" debug: read_byte: read ID byte %d, total = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[nandsim] debug: read_byte: read ID byte %d, total = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_nand_read_byte.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.227, ptr @.str, ptr @.str.241, i8 1, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" debug: read_byte: all bytes were read\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[nandsim] debug: read_byte: all bytes were read\0A\00", [47 x i8] zeroinitializer }, align 32
@ns_nand_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013[nandsim] error: write_buf: data input isn't expected, state is %s, switch to STATE_READY\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_nand_write_buf\00", [46 x i8] zeroinitializer }, align 32
@ns_nand_write_buf._entry_ptr = internal global ptr @ns_nand_write_buf._entry, section ".printk_index", align 4
@ns_nand_write_buf._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[nandsim] error: write_buf: too many input bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_nand_write_buf._entry_ptr.247 = internal global ptr @ns_nand_write_buf._entry.245, section ".printk_index", align 4
@ns_nand_write_buf.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.244, ptr @.str, ptr @.str.248, i8 2, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" debug: write_buf: %d bytes were written\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[nandsim] debug: write_buf: %d bytes were written\0A\00", [45 x i8] zeroinitializer }, align 32
@wear_eb_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ns_setup_wear_reporting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[nandsim] error: Too many erase blocks for wear reporting\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ns_setup_wear_reporting\00", [40 x i8] zeroinitializer }, align 32
@ns_setup_wear_reporting._entry_ptr = internal global ptr @ns_setup_wear_reporting._entry, section ".printk_index", align 4
@ns_setup_wear_reporting._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_setup_wear_reporting._entry_ptr.253 = internal global ptr @ns_setup_wear_reporting._entry.252, section ".printk_index", align 4
@ns_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[nandsim] error: init_nandsim: nandsim is already initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ns_init\00", [24 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr = internal global ptr @ns_init._entry, section ".printk_index", align 4
@ns_init._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.255, ptr @.str, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[nandsim] error: init_nandsim: unknown page size %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.258 = internal global ptr @ns_init._entry.256, section ".printk_index", align 4
@ns_init._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.255, ptr @.str, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[nandsim] error: too many partitions.\0A\00", [55 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.261 = internal global ptr @ns_init._entry.259, section ".printk_index", align 4
@ns_init._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.255, ptr @.str, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[nandsim] error: bad partition size.\0A\00", [56 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.264 = internal global ptr @ns_init._entry.262, section ".printk_index", align 4
@ns_init._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.255, ptr @.str, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.266 = internal global ptr @ns_init._entry.265, section ".printk_index", align 4
@ns_init._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.255, ptr @.str, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.268 = internal global ptr @ns_init._entry.267, section ".printk_index", align 4
@ns_init._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.255, ptr @.str, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.270 = internal global ptr @ns_init._entry.269, section ".printk_index", align 4
@ns_init._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.255, ptr @.str, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014[nandsim] warning: 16-bit flashes support wasn't tested\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.273 = internal global ptr @ns_init._entry.271, section ".printk_index", align 4
@ns_init._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.255, ptr @.str, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flash size: %llu MiB\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.276 = internal global ptr @ns_init._entry.274, section ".printk_index", align 4
@ns_init._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.255, ptr @.str, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"page size: %u bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.279 = internal global ptr @ns_init._entry.277, section ".printk_index", align 4
@ns_init._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.255, ptr @.str, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OOB area size: %u bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.282 = internal global ptr @ns_init._entry.280, section ".printk_index", align 4
@ns_init._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.255, ptr @.str, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sector size: %u KiB\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.285 = internal global ptr @ns_init._entry.283, section ".printk_index", align 4
@ns_init._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.255, ptr @.str, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pages number: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.288 = internal global ptr @ns_init._entry.286, section ".printk_index", align 4
@ns_init._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.255, ptr @.str, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pages per sector: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.291 = internal global ptr @ns_init._entry.289, section ".printk_index", align 4
@ns_init._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.255, ptr @.str, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bus width: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.294 = internal global ptr @ns_init._entry.292, section ".printk_index", align 4
@ns_init._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.255, ptr @.str, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bits in sector size: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.297 = internal global ptr @ns_init._entry.295, section ".printk_index", align 4
@ns_init._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.255, ptr @.str, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bits in page size: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.300 = internal global ptr @ns_init._entry.298, section ".printk_index", align 4
@ns_init._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.255, ptr @.str, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bits in OOB size: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.303 = internal global ptr @ns_init._entry.301, section ".printk_index", align 4
@ns_init._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.255, ptr @.str, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"flash size with OOB: %llu KiB\0A\00", [33 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.306 = internal global ptr @ns_init._entry.304, section ".printk_index", align 4
@ns_init._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.255, ptr @.str, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"page address bytes: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.309 = internal global ptr @ns_init._entry.307, section ".printk_index", align 4
@ns_init._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.255, ptr @.str, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sector address bytes: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.312 = internal global ptr @ns_init._entry.310, section ".printk_index", align 4
@ns_init._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.255, ptr @.str, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"options: %#x\0A\00", [18 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.315 = internal global ptr @ns_init._entry.313, section ".printk_index", align 4
@ns_init._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.255, ptr @.str, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013[nandsim] error: init_nandsim: unable to allocate %u bytes for the internal buffer\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_init._entry_ptr.318 = internal global ptr @ns_init._entry.316, section ".printk_index", align 4
@.str.319 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NAND simulator partition %d\00", [36 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.321, ptr @.str, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[nandsim] error: alloc_device: cache file not readable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns_alloc_device\00", [16 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr = internal global ptr @ns_alloc_device._entry, section ".printk_index", align 4
@ns_alloc_device._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.321, ptr @.str, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[nandsim] error: alloc_device: cache file not writeable\0A\00", [37 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr.324 = internal global ptr @ns_alloc_device._entry.322, section ".printk_index", align 4
@ns_alloc_device._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.321, ptr @.str, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013[nandsim] error: alloc_device: unable to allocate pages written array\0A\00", [55 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr.327 = internal global ptr @ns_alloc_device._entry.325, section ".printk_index", align 4
@ns_alloc_device._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.321, ptr @.str, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[nandsim] error: alloc_device: unable to allocate file buf\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr.330 = internal global ptr @ns_alloc_device._entry.328, section ".printk_index", align 4
@ns_alloc_device._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.321, ptr @.str, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[nandsim] error: alloc_device: unable to allocate page array\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr.333 = internal global ptr @ns_alloc_device._entry.331, section ".printk_index", align 4
@ns_alloc_device._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.321, ptr @.str, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[nandsim] error: cache_create: unable to create kmem_cache\0A\00", [34 x i8] zeroinitializer }, align 32
@ns_alloc_device._entry_ptr.336 = internal global ptr @ns_alloc_device._entry.334, section ".printk_index", align 4
@ns_parse_badblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.338, ptr @.str, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[nandsim] error: invalid badblocks.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns_parse_badblocks\00", [45 x i8] zeroinitializer }, align 32
@ns_parse_badblocks._entry_ptr = internal global ptr @ns_parse_badblocks._entry, section ".printk_index", align 4
@ns_parse_badblocks._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.338, ptr @.str, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ns_parse_badblocks._entry_ptr.340 = internal global ptr @ns_parse_badblocks._entry.339, section ".printk_index", align 4
@.str.341 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nandsim_wear_report\00", [44 x i8] zeroinitializer }, align 32
@ns_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ns_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ns_debugfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.343, ptr @.str, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013[nandsim] error: cannot create \22nandsim_wear_report\22 debugfs entry\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_debugfs_create\00", [46 x i8] zeroinitializer }, align 32
@ns_debugfs_create._entry_ptr = internal global ptr @ns_debugfs_create._entry, section ".printk_index", align 4
@.str.344 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Total numbers of erases:  %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Number of erase blocks:   %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Average number of erases: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Maximum number of erases: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Minimum number of erases: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Number of ebs with erase counts from %lu to %lu : %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.350 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.351 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.352 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.353 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 5, i64 16, i64 48, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 224, i64 255]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 12288]
@__sancov_gen_cov_switch_values.355 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 5, i64 16, i64 48, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 224, i64 255]
@__sancov_gen_cov_switch_values.356 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.357 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 5, i64 16, i64 48, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 224, i64 255]
@__sancov_gen_cov_switch_values.358 = internal global [6 x i64] [i64 4, i64 32, i64 256, i64 4096, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.359 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.360 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 32, i64 48, i64 64, i64 256, i64 4096, i64 8192, i64 12288, i64 268435456]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.362 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.363 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 8192]
@___asan_gen_.364 = private unnamed_addr constant [9 x i8] c"id_bytes\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 99, i32 15 }
@___asan_gen_.367 = private unnamed_addr constant [13 x i8] c"access_delay\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 79, i32 13 }
@___asan_gen_.370 = private unnamed_addr constant [15 x i8] c"programm_delay\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 80, i32 13 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"erase_delay\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 81, i32 13 }
@___asan_gen_.376 = private unnamed_addr constant [13 x i8] c"output_cycle\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 82, i32 13 }
@___asan_gen_.379 = private unnamed_addr constant [12 x i8] c"input_cycle\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 83, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant [10 x i8] c"bus_width\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 84, i32 13 }
@___asan_gen_.385 = private unnamed_addr constant [10 x i8] c"do_delays\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 85, i32 13 }
@___asan_gen_.388 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 86, i32 13 }
@___asan_gen_.391 = private unnamed_addr constant [4 x i8] c"dbg\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 87, i32 13 }
@___asan_gen_.394 = private unnamed_addr constant [10 x i8] c"badblocks\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 90, i32 14 }
@___asan_gen_.397 = private unnamed_addr constant [11 x i8] c"weakblocks\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 91, i32 14 }
@___asan_gen_.400 = private unnamed_addr constant [10 x i8] c"weakpages\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 92, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant [9 x i8] c"bitflips\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 93, i32 21 }
@___asan_gen_.406 = private unnamed_addr constant [11 x i8] c"gravepages\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 94, i32 14 }
@___asan_gen_.409 = private unnamed_addr constant [13 x i8] c"overridesize\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 95, i32 21 }
@___asan_gen_.412 = private unnamed_addr constant [11 x i8] c"cache_file\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 96, i32 14 }
@___asan_gen_.415 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 97, i32 21 }
@___asan_gen_.418 = private unnamed_addr constant [4 x i8] c"bch\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 98, i32 21 }
@___asan_gen_.421 = private unnamed_addr constant [6 x i8] c"nsmtd\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 435, i32 25 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2429, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"erase_block_wear\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 430, i32 23 }
@___asan_gen_.430 = private unnamed_addr constant [12 x i8] c"grave_pages\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 428, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant [11 x i8] c"weak_pages\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 419, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant [12 x i8] c"weak_blocks\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 410, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant [10 x i8] c"parts_num\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 89, i32 21 }
@___asan_gen_.442 = private unnamed_addr constant [6 x i8] c"parts\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 88, i32 22 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2264, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2270, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2291, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [18 x i8] c"ns_controller_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2248, i32 41 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2336, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2348, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 842, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 854, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 893, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 905, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 944, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 956, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1105, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2230, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2235, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2243, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1941, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1945, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1955, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1962, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1985, i32 5 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1992, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2004, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2034, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2042, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2051, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2055, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2066, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2075, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1162, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1737, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1761, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1775, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1789, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1794, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1808, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1832, i32 5 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1862, i32 5 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1021, i32 11 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1023, i32 11 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1025, i32 11 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1027, i32 11 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1029, i32 11 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1031, i32 11 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1033, i32 11 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1035, i32 11 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1037, i32 11 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1039, i32 11 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1041, i32 11 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1043, i32 11 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1045, i32 11 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1047, i32 11 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1049, i32 11 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1051, i32 11 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1053, i32 11 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1055, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1057, i32 11 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1059, i32 11 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1061, i32 11 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1063, i32 11 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1065, i32 11 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1068, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1135, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 367, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1272, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1281, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1287, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1294, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1298, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1585, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1598, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1604, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1608, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1610, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1612, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1625, i32 4 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1631, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1641, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1643, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1653, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1665, i32 4 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1671, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1681, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1683, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1689, i32 4 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1696, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1702, i32 4 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1706, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1716, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1433, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1439, i32 4 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1447, i32 5 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1457, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1460, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1401, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.980, i32 717, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1416, i32 4 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1481, i32 5 }
@___asan_gen_.1000 = private unnamed_addr constant [11 x i8] c"total_wear\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 432, i32 22 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1008, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1011, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1511, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1521, i32 5 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1532, i32 5 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1539, i32 5 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1548, i32 3 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1557, i32 4 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2126, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2130, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2134, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2150, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1881, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1885, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1889, i32 3 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1896, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1902, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1917, i32 4 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 1926, i32 3 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2099, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2107, i32 3 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 2116, i32 3 }
@___asan_gen_.1147 = private unnamed_addr constant [14 x i8] c"wear_eb_count\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 431, i32 21 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 987, i32 3 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 992, i32 3 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 646, i32 3 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 674, i32 3 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 698, i32 3 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 707, i32 4 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 712, i32 4 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 723, i32 4 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 729, i32 4 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 739, i32 3 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 741, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 743, i32 2 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 744, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 745, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 746, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 747, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 748, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 749, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 750, i32 2 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 751, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 752, i32 2 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 754, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 755, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 756, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 765, i32 3 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 629, i32 31 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 543, i32 4 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 548, i32 4 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 556, i32 4 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 562, i32 4 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 580, i32 3 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 589, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 813, i32 4 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 818, i32 4 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 512, i32 33 }
@___asan_gen_.1351 = private unnamed_addr constant [8 x i8] c"ns_fops\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 488, i32 1 }
@___asan_gen_.1354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 515, i32 3 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 471, i32 16 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 472, i32 16 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 473, i32 16 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 474, i32 16 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 475, i32 16 }
@___asan_gen_.1378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1379 = private constant [34 x i8] c"../drivers/mtd/nand/raw/nandsim.c\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1379, i32 480, i32 17 }
@llvm.compiler.used = appending global [507 x ptr] [ptr @__UNIQUE_ID_access_delay294, ptr @__UNIQUE_ID_access_delaytype270, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_badblocks304, ptr @__UNIQUE_ID_badblockstype280, ptr @__UNIQUE_ID_bbt311, ptr @__UNIQUE_ID_bbttype287, ptr @__UNIQUE_ID_bch312, ptr @__UNIQUE_ID_bchtype288, ptr @__UNIQUE_ID_bitflips307, ptr @__UNIQUE_ID_bitflipstype283, ptr @__UNIQUE_ID_bus_width299, ptr @__UNIQUE_ID_bus_widthtype275, ptr @__UNIQUE_ID_cache_file310, ptr @__UNIQUE_ID_cache_filetype286, ptr @__UNIQUE_ID_dbg302, ptr @__UNIQUE_ID_dbgtype278, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_do_delays300, ptr @__UNIQUE_ID_do_delaystype276, ptr @__UNIQUE_ID_erase_delay296, ptr @__UNIQUE_ID_erase_delaytype272, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_first_id_byte290, ptr @__UNIQUE_ID_first_id_bytetype266, ptr @__UNIQUE_ID_fourth_id_byte293, ptr @__UNIQUE_ID_fourth_id_bytetype269, ptr @__UNIQUE_ID_gravepages308, ptr @__UNIQUE_ID_gravepagestype284, ptr @__UNIQUE_ID_id_bytes289, ptr @__UNIQUE_ID_id_bytestype265, ptr @__UNIQUE_ID_input_cycle298, ptr @__UNIQUE_ID_input_cycletype274, ptr @__UNIQUE_ID_license355, ptr @__UNIQUE_ID_log301, ptr @__UNIQUE_ID_logtype277, ptr @__UNIQUE_ID_output_cycle297, ptr @__UNIQUE_ID_output_cycletype273, ptr @__UNIQUE_ID_overridesize309, ptr @__UNIQUE_ID_overridesizetype285, ptr @__UNIQUE_ID_parts303, ptr @__UNIQUE_ID_partstype279, ptr @__UNIQUE_ID_programm_delay295, ptr @__UNIQUE_ID_programm_delaytype271, ptr @__UNIQUE_ID_second_id_byte291, ptr @__UNIQUE_ID_second_id_bytetype267, ptr @__UNIQUE_ID_third_id_byte292, ptr @__UNIQUE_ID_third_id_bytetype268, ptr @__UNIQUE_ID_weakblocks305, ptr @__UNIQUE_ID_weakblockstype281, ptr @__UNIQUE_ID_weakpages306, ptr @__UNIQUE_ID_weakpagestype282, ptr @__exitcall_ns_cleanup_module, ptr @__initcall__kmod_nandsim__353_2417_ns_init_module6, ptr @__param_access_delay, ptr @__param_badblocks, ptr @__param_bbt, ptr @__param_bch, ptr @__param_bitflips, ptr @__param_bus_width, ptr @__param_cache_file, ptr @__param_dbg, ptr @__param_do_delays, ptr @__param_erase_delay, ptr @__param_first_id_byte, ptr @__param_fourth_id_byte, ptr @__param_gravepages, ptr @__param_id_bytes, ptr @__param_input_cycle, ptr @__param_log, ptr @__param_output_cycle, ptr @__param_overridesize, ptr @__param_parts, ptr @__param_programm_delay, ptr @__param_second_id_byte, ptr @__param_third_id_byte, ptr @__param_weakblocks, ptr @__param_weakpages, ptr @ns_alloc_device._entry, ptr @ns_alloc_device._entry.322, ptr @ns_alloc_device._entry.325, ptr @ns_alloc_device._entry.328, ptr @ns_alloc_device._entry.331, ptr @ns_alloc_device._entry.334, ptr @ns_alloc_device._entry_ptr, ptr @ns_alloc_device._entry_ptr.324, ptr @ns_alloc_device._entry_ptr.327, ptr @ns_alloc_device._entry_ptr.330, ptr @ns_alloc_device._entry_ptr.333, ptr @ns_alloc_device._entry_ptr.336, ptr @ns_attach_chip._entry, ptr @ns_attach_chip._entry.31, ptr @ns_attach_chip._entry.34, ptr @ns_attach_chip._entry_ptr, ptr @ns_attach_chip._entry_ptr.33, ptr @ns_attach_chip._entry_ptr.36, ptr @ns_cleanup_module, ptr @ns_debugfs_create._entry, ptr @ns_debugfs_create._entry_ptr, ptr @ns_do_bit_flips._entry, ptr @ns_do_bit_flips._entry_ptr, ptr @ns_do_read_error._entry, ptr @ns_do_read_error._entry_ptr, ptr @ns_do_state_action._entry, ptr @ns_do_state_action._entry.132, ptr @ns_do_state_action._entry.143, ptr @ns_do_state_action._entry.146, ptr @ns_do_state_action._entry.153, ptr @ns_do_state_action._entry.156, ptr @ns_do_state_action._entry.159, ptr @ns_do_state_action._entry.166, ptr @ns_do_state_action._entry.171, ptr @ns_do_state_action._entry_ptr, ptr @ns_do_state_action._entry_ptr.134, ptr @ns_do_state_action._entry_ptr.145, ptr @ns_do_state_action._entry_ptr.148, ptr @ns_do_state_action._entry_ptr.155, ptr @ns_do_state_action._entry_ptr.158, ptr @ns_do_state_action._entry_ptr.161, ptr @ns_do_state_action._entry_ptr.168, ptr @ns_do_state_action._entry_ptr.173, ptr @ns_get_state_by_command._entry, ptr @ns_get_state_by_command._entry_ptr, ptr @ns_get_state_name._entry, ptr @ns_get_state_name._entry_ptr, ptr @ns_init._entry, ptr @ns_init._entry.256, ptr @ns_init._entry.259, ptr @ns_init._entry.262, ptr @ns_init._entry.265, ptr @ns_init._entry.267, ptr @ns_init._entry.269, ptr @ns_init._entry.271, ptr @ns_init._entry.274, ptr @ns_init._entry.277, ptr @ns_init._entry.280, ptr @ns_init._entry.283, ptr @ns_init._entry.286, ptr @ns_init._entry.289, ptr @ns_init._entry.292, ptr @ns_init._entry.295, ptr @ns_init._entry.298, ptr @ns_init._entry.301, ptr @ns_init._entry.304, ptr @ns_init._entry.307, ptr @ns_init._entry.310, ptr @ns_init._entry.313, ptr @ns_init._entry.316, ptr @ns_init._entry_ptr, ptr @ns_init._entry_ptr.258, ptr @ns_init._entry_ptr.261, ptr @ns_init._entry_ptr.264, ptr @ns_init._entry_ptr.266, ptr @ns_init._entry_ptr.268, ptr @ns_init._entry_ptr.270, ptr @ns_init._entry_ptr.273, ptr @ns_init._entry_ptr.276, ptr @ns_init._entry_ptr.279, ptr @ns_init._entry_ptr.282, ptr @ns_init._entry_ptr.285, ptr @ns_init._entry_ptr.288, ptr @ns_init._entry_ptr.291, ptr @ns_init._entry_ptr.294, ptr @ns_init._entry_ptr.297, ptr @ns_init._entry_ptr.300, ptr @ns_init._entry_ptr.303, ptr @ns_init._entry_ptr.306, ptr @ns_init._entry_ptr.309, ptr @ns_init._entry_ptr.312, ptr @ns_init._entry_ptr.315, ptr @ns_init._entry_ptr.318, ptr @ns_init_module._entry, ptr @ns_init_module._entry.12, ptr @ns_init_module._entry.3, ptr @ns_init_module._entry.6, ptr @ns_init_module._entry.9, ptr @ns_init_module._entry_ptr, ptr @ns_init_module._entry_ptr.11, ptr @ns_init_module._entry_ptr.14, ptr @ns_init_module._entry_ptr.5, ptr @ns_init_module._entry_ptr.8, ptr @ns_nand_read_buf._entry, ptr @ns_nand_read_buf._entry.217, ptr @ns_nand_read_buf._entry.220, ptr @ns_nand_read_buf._entry.223, ptr @ns_nand_read_buf._entry_ptr, ptr @ns_nand_read_buf._entry_ptr.219, ptr @ns_nand_read_buf._entry_ptr.222, ptr @ns_nand_read_buf._entry_ptr.225, ptr @ns_nand_read_byte._entry, ptr @ns_nand_read_byte._entry.228, ptr @ns_nand_read_byte._entry.231, ptr @ns_nand_read_byte._entry.236, ptr @ns_nand_read_byte._entry_ptr, ptr @ns_nand_read_byte._entry_ptr.230, ptr @ns_nand_read_byte._entry_ptr.233, ptr @ns_nand_read_byte._entry_ptr.238, ptr @ns_nand_write_buf._entry, ptr @ns_nand_write_buf._entry.245, ptr @ns_nand_write_buf._entry_ptr, ptr @ns_nand_write_buf._entry_ptr.247, ptr @ns_nand_write_byte._entry, ptr @ns_nand_write_byte._entry.39, ptr @ns_nand_write_byte._entry.45, ptr @ns_nand_write_byte._entry.48, ptr @ns_nand_write_byte._entry.55, ptr @ns_nand_write_byte._entry.58, ptr @ns_nand_write_byte._entry.65, ptr @ns_nand_write_byte._entry.68, ptr @ns_nand_write_byte._entry_ptr, ptr @ns_nand_write_byte._entry_ptr.41, ptr @ns_nand_write_byte._entry_ptr.47, ptr @ns_nand_write_byte._entry_ptr.50, ptr @ns_nand_write_byte._entry_ptr.57, ptr @ns_nand_write_byte._entry_ptr.60, ptr @ns_nand_write_byte._entry_ptr.67, ptr @ns_nand_write_byte._entry_ptr.70, ptr @ns_parse_badblocks._entry, ptr @ns_parse_badblocks._entry.339, ptr @ns_parse_badblocks._entry_ptr, ptr @ns_parse_badblocks._entry_ptr.340, ptr @ns_parse_gravepages._entry, ptr @ns_parse_gravepages._entry.26, ptr @ns_parse_gravepages._entry_ptr, ptr @ns_parse_gravepages._entry_ptr.27, ptr @ns_parse_weakblocks._entry, ptr @ns_parse_weakblocks._entry.17, ptr @ns_parse_weakblocks._entry_ptr, ptr @ns_parse_weakblocks._entry_ptr.19, ptr @ns_parse_weakpages._entry, ptr @ns_parse_weakpages._entry.22, ptr @ns_parse_weakpages._entry_ptr, ptr @ns_parse_weakpages._entry_ptr.23, ptr @ns_prog_page._entry, ptr @ns_prog_page._entry.205, ptr @ns_prog_page._entry.208, ptr @ns_prog_page._entry.212, ptr @ns_prog_page._entry_ptr, ptr @ns_prog_page._entry_ptr.207, ptr @ns_prog_page._entry_ptr.209, ptr @ns_prog_page._entry_ptr.214, ptr @ns_read_page._entry, ptr @ns_read_page._entry_ptr, ptr @ns_setup_wear_reporting._entry, ptr @ns_setup_wear_reporting._entry.252, ptr @ns_setup_wear_reporting._entry_ptr, ptr @ns_setup_wear_reporting._entry_ptr.253, ptr @ns_switch_state._entry, ptr @ns_switch_state._entry.86, ptr @ns_switch_state._entry.89, ptr @ns_switch_state._entry_ptr, ptr @ns_switch_state._entry_ptr.88, ptr @ns_switch_state._entry_ptr.91, ptr @ns_update_wear._entry, ptr @ns_update_wear._entry.198, ptr @ns_update_wear._entry_ptr, ptr @ns_update_wear._entry_ptr.200, ptr @id_bytes, ptr @access_delay, ptr @programm_delay, ptr @erase_delay, ptr @output_cycle, ptr @input_cycle, ptr @bus_width, ptr @do_delays, ptr @log, ptr @dbg, ptr @badblocks, ptr @weakblocks, ptr @weakpages, ptr @bitflips, ptr @gravepages, ptr @overridesize, ptr @cache_file, ptr @bbt, ptr @bch, ptr @nsmtd, ptr @.str, ptr @erase_block_wear, ptr @grave_pages, ptr @weak_pages, ptr @weak_blocks, ptr @parts_num, ptr @parts, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @ns_controller_ops, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @nand_controller_init.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @ops, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @total_wear, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.232, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.246, ptr @.str.248, ptr @.str.249, ptr @wear_eb_count, ptr @.str.250, ptr @.str.251, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @.str.260, ptr @.str.263, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.281, ptr @.str.284, ptr @.str.287, ptr @.str.290, ptr @.str.293, ptr @.str.296, ptr @.str.299, ptr @.str.302, ptr @.str.305, ptr @.str.308, ptr @.str.311, ptr @.str.314, ptr @.str.317, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.323, ptr @.str.326, ptr @.str.329, ptr @.str.332, ptr @.str.335, ptr @.str.337, ptr @.str.338, ptr @.str.341, ptr @ns_fops, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349], section "llvm.metadata"
@0 = internal global [339 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_bytes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programm_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_cycle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_cycle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_delays to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @badblocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weakblocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weakpages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitflips to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gravepages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overridesize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsmtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_block_wear to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grave_pages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weak_pages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weak_blocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parts_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_module._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_module._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_module._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_module._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_weakblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_weakblocks._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_weakpages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_weakpages._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_gravepages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_gravepages._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_attach_chip._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_attach_chip._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_byte._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_switch_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_switch_state._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_switch_state._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_get_state_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_get_state_by_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_state_action._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_read_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_do_bit_flips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_wear to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_update_wear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_update_wear._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_prog_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_prog_page._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_prog_page._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_prog_page._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_buf._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_buf._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_buf._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_byte._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_byte._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_read_byte._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_nand_write_buf._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_eb_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_setup_wear_reporting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_setup_wear_reporting._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_alloc_device._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_badblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_parse_badblocks._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_debugfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_init_module() #0 section ".init.text" align 64 {
entry:
  %g.i = alloca ptr, align 4
  %w.i284 = alloca ptr, align 4
  %w.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bus_width, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end [
    i32 8, label %entry.if.end_crit_edge
    i32 16, label %entry.if.end_crit_edge399
  ]

entry.if.end_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #14
  br label %cleanup215

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge399
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3800) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end10, label %if.end15

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup215

if.end15:                                         ; preds = %if.end
  store ptr %call7.i.i, ptr @nsmtd, align 4
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 34
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %priv1.i, align 8
  %options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 8
  %or = or i32 %5, 65536
  store i32 %or, ptr %options, align 8
  %6 = load i32, ptr @bbt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %6, label %do.end25 [
    i32 2, label %sw.bb
    i32 1, label %if.end15.sw.bb19_crit_edge
    i32 0, label %if.end15.sw.epilog_crit_edge
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15.sw.bb19_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bbt_options, align 8
  %or18 = or i32 %9, 262144
  store i32 %or18, ptr %bbt_options, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb, %if.end15.sw.bb19_crit_edge
  %bbt_options20 = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %bbt_options20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bbt_options20, align 8
  %or21 = or i32 %11, 131072
  store i32 %or21, ptr %bbt_options20, align 8
  br label %sw.epilog

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %free_ns_struct

sw.epilog:                                        ; preds = %sw.bb19, %if.end15.sw.epilog_crit_edge
  %12 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 6), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp30.not = icmp eq i8 %12, -1
  br i1 %cmp30.not, label %lor.lhs.false, label %sw.epilog.if.end62_crit_edge

sw.epilog.if.end62_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

lor.lhs.false:                                    ; preds = %sw.epilog
  %13 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp33.not = icmp eq i8 %13, -1
  br i1 %cmp33.not, label %if.else, label %lor.lhs.false.if.end62_crit_edge

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp37.not = icmp eq i8 %14, -1
  br i1 %cmp37.not, label %lor.lhs.false39, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

lor.lhs.false39:                                  ; preds = %if.else
  %15 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp41.not = icmp eq i8 %15, -1
  br i1 %cmp41.not, label %if.else46, label %lor.lhs.false39.if.end62_crit_edge

lor.lhs.false39.if.end62_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.else46:                                        ; preds = %lor.lhs.false39
  %16 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp48.not = icmp eq i8 %16, -1
  br i1 %cmp48.not, label %lor.lhs.false50, label %if.else46.if.end62_crit_edge

if.else46.if.end62_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

lor.lhs.false50:                                  ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  %17 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @id_bytes, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp52.not = icmp eq i8 %17, -1
  %spec.select = select i1 %cmp52.not, i32 2, i32 4
  br label %if.end62

if.end62:                                         ; preds = %lor.lhs.false50, %if.else46.if.end62_crit_edge, %lor.lhs.false39.if.end62_crit_edge, %if.else.if.end62_crit_edge, %lor.lhs.false.if.end62_crit_edge, %sw.epilog.if.end62_crit_edge
  %.sink = phi i32 [ 8, %lor.lhs.false.if.end62_crit_edge ], [ 8, %sw.epilog.if.end62_crit_edge ], [ 6, %lor.lhs.false39.if.end62_crit_edge ], [ 6, %if.else.if.end62_crit_edge ], [ 4, %if.else46.if.end62_crit_edge ], [ %spec.select, %lor.lhs.false50 ]
  %idbytes45 = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 16, i32 13
  %18 = ptrtoint ptr %idbytes45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %idbytes45, align 8
  %wp = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp63 = icmp eq i32 %20, 0
  %conv66 = select i1 %cmp63, i8 -64, i8 64
  %status = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv66, ptr %status, align 4
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %nxstate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435456, ptr %nxstate, align 8
  %options67 = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %options67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %options67, align 8
  %or68 = or i32 %24, 2
  store i32 %or68, ptr %options67, align 8
  %ids = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 5
  %25 = load i64, ptr @id_bytes, align 8
  %26 = ptrtoint ptr %ids to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %ids, align 8
  %27 = load i32, ptr @bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp69 = icmp eq i32 %27, 16
  br i1 %cmp69, label %if.then71, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %busw = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %busw to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %busw, align 4
  %29 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %options, align 8
  %or73 = or i32 %30, 2
  store i32 %or73, ptr %options, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end62.if.end74_crit_edge
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 55
  %31 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w.i) #11
  %32 = load ptr, ptr @weakblocks, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end74.if.end78_crit_edge, label %if.end.i

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.end.i:                                         ; preds = %if.end74
  %33 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %w.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %list_add.exit.i.do.body.i_crit_edge, %if.end.i
  %34 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %w.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %37)
  %cmp.i = icmp ne i8 %37, 48
  %call.i = call i32 @simple_strtoul(ptr noundef %35, ptr noundef nonnull %w.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i.ns_parse_weakblocks.exit_crit_edge, label %if.end10.i

do.body.i.ns_parse_weakblocks.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_weakblocks.exit

if.end10.i:                                       ; preds = %do.body.i
  %38 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %w.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %41)
  %cmp12.i = icmp eq i8 %41, 58
  br i1 %cmp12.i, label %if.then14.i, label %if.end10.i.if.end16.i_crit_edge

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %39, i32 1
  %42 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %w.i, align 4
  %call15.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef nonnull %w.i, i32 noundef 0) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end16.i_crit_edge
  %max_erases.0.i = phi i32 [ %call15.i, %if.then14.i ], [ 3, %if.end10.i.if.end16.i_crit_edge ]
  %43 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %w.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %46)
  %cmp18.i = icmp eq i8 %46, 44
  br i1 %cmp18.i, label %if.then20.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr i8, ptr %44, i32 1
  %47 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr21.i, ptr %w.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end22.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 20) #15
  %tobool24.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool24.not.i, label %if.end22.i.ns_parse_weakblocks.exit_crit_edge, label %if.end34.i

if.end22.i.ns_parse_weakblocks.exit_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_weakblocks.exit

if.end34.i:                                       ; preds = %if.end22.i
  %erase_block_no35.i = getelementptr inbounds %struct.weak_block, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %erase_block_no35.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i, ptr %erase_block_no35.i, align 8
  %max_erases36.i = getelementptr inbounds %struct.weak_block, ptr %call7.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %max_erases36.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %max_erases.0.i, ptr %max_erases36.i, align 4
  %51 = load ptr, ptr @weak_blocks, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @weak_blocks, ptr noundef %51) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.i.list_add.exit.i_crit_edge

if.end34.i.list_add.exit.i_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @weak_blocks, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @weak_blocks, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end34.i.list_add.exit.i_crit_edge
  %55 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %w.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %tobool38.not.i = icmp eq i8 %58, 0
  br i1 %tobool38.not.i, label %list_add.exit.i.if.end78_crit_edge, label %list_add.exit.i.do.body.i_crit_edge

list_add.exit.i.do.body.i_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

list_add.exit.i.if.end78_crit_edge:               ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

ns_parse_weakblocks.exit:                         ; preds = %if.end22.i.ns_parse_weakblocks.exit_crit_edge, %do.body.i.ns_parse_weakblocks.exit_crit_edge
  %.str.18.sink.i = phi ptr [ @.str.15, %do.body.i.ns_parse_weakblocks.exit_crit_edge ], [ @.str.18, %if.end22.i.ns_parse_weakblocks.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.body.i.ns_parse_weakblocks.exit_crit_edge ], [ -12, %if.end22.i.ns_parse_weakblocks.exit_crit_edge ]
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w.i) #11
  br label %free_ns_struct

if.end78:                                         ; preds = %list_add.exit.i.if.end78_crit_edge, %if.end74.if.end78_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w.i284) #11
  %59 = load ptr, ptr @weakpages, align 4
  %tobool.not.i285 = icmp eq ptr %59, null
  br i1 %tobool.not.i285, label %if.end78.if.end82_crit_edge, label %if.end.i286

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.end.i286:                                      ; preds = %if.end78
  %60 = ptrtoint ptr %w.i284 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %w.i284, align 4
  br label %do.body.i291

do.body.i291:                                     ; preds = %list_add.exit.i310.do.body.i291_crit_edge, %if.end.i286
  %61 = ptrtoint ptr %w.i284 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %w.i284, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %64)
  %cmp.i287 = icmp ne i8 %64, 48
  %call.i288 = call i32 @simple_strtoul(ptr noundef %62, ptr noundef nonnull %w.i284, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool3.not.i289 = icmp eq i32 %call.i288, 0
  %or.cond.i290 = select i1 %cmp.i287, i1 %tobool3.not.i289, i1 false
  br i1 %or.cond.i290, label %do.body.i291.ns_parse_weakpages.exit_crit_edge, label %if.end10.i293

do.body.i291.ns_parse_weakpages.exit_crit_edge:   ; preds = %do.body.i291
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_weakpages.exit

if.end10.i293:                                    ; preds = %do.body.i291
  %65 = ptrtoint ptr %w.i284 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %w.i284, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %68)
  %cmp12.i292 = icmp eq i8 %68, 58
  br i1 %cmp12.i292, label %if.then14.i296, label %if.end10.i293.if.end16.i298_crit_edge

if.end10.i293.if.end16.i298_crit_edge:            ; preds = %if.end10.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i298

if.then14.i296:                                   ; preds = %if.end10.i293
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i294 = getelementptr i8, ptr %66, i32 1
  %69 = ptrtoint ptr %w.i284 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i294, ptr %w.i284, align 4
  %call15.i295 = call i32 @simple_strtoul(ptr noundef %add.ptr.i294, ptr noundef nonnull %w.i284, i32 noundef 0) #11
  br label %if.end16.i298

if.end16.i298:                                    ; preds = %if.then14.i296, %if.end10.i293.if.end16.i298_crit_edge
  %max_writes.0.i = phi i32 [ %call15.i295, %if.then14.i296 ], [ 3, %if.end10.i293.if.end16.i298_crit_edge ]
  %70 = ptrtoint ptr %w.i284 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %w.i284, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %73)
  %cmp18.i297 = icmp eq i8 %73, 44
  br i1 %cmp18.i297, label %if.then20.i300, label %if.end16.i298.if.end22.i303_crit_edge

if.end16.i298.if.end22.i303_crit_edge:            ; preds = %if.end16.i298
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i303

if.then20.i300:                                   ; preds = %if.end16.i298
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i299 = getelementptr i8, ptr %71, i32 1
  %74 = ptrtoint ptr %w.i284 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr21.i299, ptr %w.i284, align 4
  br label %if.end22.i303

if.end22.i303:                                    ; preds = %if.then20.i300, %if.end16.i298.if.end22.i303_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i301 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 20) #15
  %tobool24.not.i302 = icmp eq ptr %call7.i.i.i301, null
  br i1 %tobool24.not.i302, label %if.end22.i303.ns_parse_weakpages.exit_crit_edge, label %if.end34.i305

if.end22.i303.ns_parse_weakpages.exit_crit_edge:  ; preds = %if.end22.i303
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_weakpages.exit

if.end34.i305:                                    ; preds = %if.end22.i303
  %page_no35.i = getelementptr inbounds %struct.weak_page, ptr %call7.i.i.i301, i32 0, i32 1
  %76 = ptrtoint ptr %page_no35.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call.i288, ptr %page_no35.i, align 8
  %max_writes36.i = getelementptr inbounds %struct.weak_page, ptr %call7.i.i.i301, i32 0, i32 2
  %77 = ptrtoint ptr %max_writes36.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %max_writes.0.i, ptr %max_writes36.i, align 4
  %78 = load ptr, ptr @weak_pages, align 4
  %call.i.i.i304 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i301, ptr noundef nonnull @weak_pages, ptr noundef %78) #11
  br i1 %call.i.i.i304, label %if.end.i.i.i308, label %if.end34.i305.list_add.exit.i310_crit_edge

if.end34.i305.list_add.exit.i310_crit_edge:       ; preds = %if.end34.i305
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i310

if.end.i.i.i308:                                  ; preds = %if.end34.i305
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i306 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i306 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i301, ptr %prev1.i.i.i306, align 4
  %80 = ptrtoint ptr %call7.i.i.i301 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %call7.i.i.i301, align 8
  %prev3.i.i.i307 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i301, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i307 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @weak_pages, ptr %prev3.i.i.i307, align 4
  store volatile ptr %call7.i.i.i301, ptr @weak_pages, align 4
  br label %list_add.exit.i310

list_add.exit.i310:                               ; preds = %if.end.i.i.i308, %if.end34.i305.list_add.exit.i310_crit_edge
  %82 = ptrtoint ptr %w.i284 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %w.i284, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %tobool38.not.i309 = icmp eq i8 %85, 0
  br i1 %tobool38.not.i309, label %list_add.exit.i310.if.end82_crit_edge, label %list_add.exit.i310.do.body.i291_crit_edge

list_add.exit.i310.do.body.i291_crit_edge:        ; preds = %list_add.exit.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i291

list_add.exit.i310.if.end82_crit_edge:            ; preds = %list_add.exit.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

ns_parse_weakpages.exit:                          ; preds = %if.end22.i303.ns_parse_weakpages.exit_crit_edge, %do.body.i291.ns_parse_weakpages.exit_crit_edge
  %.str.18.sink.i311 = phi ptr [ @.str.20, %do.body.i291.ns_parse_weakpages.exit_crit_edge ], [ @.str.18, %if.end22.i303.ns_parse_weakpages.exit_crit_edge ]
  %retval.0.ph.i312 = phi i32 [ -22, %do.body.i291.ns_parse_weakpages.exit_crit_edge ], [ -12, %if.end22.i303.ns_parse_weakpages.exit_crit_edge ]
  %call31.i313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink.i311) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w.i284) #11
  br label %free_wb_list

if.end82:                                         ; preds = %list_add.exit.i310.if.end82_crit_edge, %if.end78.if.end82_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w.i284) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %g.i) #11
  %86 = load ptr, ptr @gravepages, align 4
  %tobool.not.i316 = icmp eq ptr %86, null
  br i1 %tobool.not.i316, label %if.end82.if.end86_crit_edge, label %if.end.i317

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.end.i317:                                      ; preds = %if.end82
  %87 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %g.i, align 4
  br label %do.body.i322

do.body.i322:                                     ; preds = %list_add.exit.i342.do.body.i322_crit_edge, %if.end.i317
  %88 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %g.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %91)
  %cmp.i318 = icmp ne i8 %91, 48
  %call.i319 = call i32 @simple_strtoul(ptr noundef %89, ptr noundef nonnull %g.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool3.not.i320 = icmp eq i32 %call.i319, 0
  %or.cond.i321 = select i1 %cmp.i318, i1 %tobool3.not.i320, i1 false
  br i1 %or.cond.i321, label %do.body.i322.ns_parse_gravepages.exit_crit_edge, label %if.end10.i324

do.body.i322.ns_parse_gravepages.exit_crit_edge:  ; preds = %do.body.i322
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_gravepages.exit

if.end10.i324:                                    ; preds = %do.body.i322
  %92 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %g.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %95)
  %cmp12.i323 = icmp eq i8 %95, 58
  br i1 %cmp12.i323, label %if.then14.i327, label %if.end10.i324.if.end16.i329_crit_edge

if.end10.i324.if.end16.i329_crit_edge:            ; preds = %if.end10.i324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i329

if.then14.i327:                                   ; preds = %if.end10.i324
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i325 = getelementptr i8, ptr %93, i32 1
  %96 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr.i325, ptr %g.i, align 4
  %call15.i326 = call i32 @simple_strtoul(ptr noundef %add.ptr.i325, ptr noundef nonnull %g.i, i32 noundef 0) #11
  br label %if.end16.i329

if.end16.i329:                                    ; preds = %if.then14.i327, %if.end10.i324.if.end16.i329_crit_edge
  %max_reads.0.i = phi i32 [ %call15.i326, %if.then14.i327 ], [ 3, %if.end10.i324.if.end16.i329_crit_edge ]
  %97 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %g.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %100)
  %cmp18.i328 = icmp eq i8 %100, 44
  br i1 %cmp18.i328, label %if.then20.i331, label %if.end16.i329.if.end22.i334_crit_edge

if.end16.i329.if.end22.i334_crit_edge:            ; preds = %if.end16.i329
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i334

if.then20.i331:                                   ; preds = %if.end16.i329
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i330 = getelementptr i8, ptr %98, i32 1
  %101 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr21.i330, ptr %g.i, align 4
  br label %if.end22.i334

if.end22.i334:                                    ; preds = %if.then20.i331, %if.end16.i329.if.end22.i334_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i332 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 20) #15
  %tobool24.not.i333 = icmp eq ptr %call7.i.i.i332, null
  br i1 %tobool24.not.i333, label %if.end22.i334.ns_parse_gravepages.exit_crit_edge, label %if.end34.i337

if.end22.i334.ns_parse_gravepages.exit_crit_edge: ; preds = %if.end22.i334
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_parse_gravepages.exit

if.end34.i337:                                    ; preds = %if.end22.i334
  %page_no35.i335 = getelementptr inbounds %struct.grave_page, ptr %call7.i.i.i332, i32 0, i32 1
  %103 = ptrtoint ptr %page_no35.i335 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i319, ptr %page_no35.i335, align 8
  %max_reads36.i = getelementptr inbounds %struct.grave_page, ptr %call7.i.i.i332, i32 0, i32 2
  %104 = ptrtoint ptr %max_reads36.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %max_reads.0.i, ptr %max_reads36.i, align 4
  %105 = load ptr, ptr @grave_pages, align 4
  %call.i.i.i336 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i332, ptr noundef nonnull @grave_pages, ptr noundef %105) #11
  br i1 %call.i.i.i336, label %if.end.i.i.i340, label %if.end34.i337.list_add.exit.i342_crit_edge

if.end34.i337.list_add.exit.i342_crit_edge:       ; preds = %if.end34.i337
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i342

if.end.i.i.i340:                                  ; preds = %if.end34.i337
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i338 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i.i332, ptr %prev1.i.i.i338, align 4
  %107 = ptrtoint ptr %call7.i.i.i332 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %call7.i.i.i332, align 8
  %prev3.i.i.i339 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i332, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @grave_pages, ptr %prev3.i.i.i339, align 4
  store volatile ptr %call7.i.i.i332, ptr @grave_pages, align 4
  br label %list_add.exit.i342

list_add.exit.i342:                               ; preds = %if.end.i.i.i340, %if.end34.i337.list_add.exit.i342_crit_edge
  %109 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %g.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %110, align 1
  %tobool38.not.i341 = icmp eq i8 %112, 0
  br i1 %tobool38.not.i341, label %list_add.exit.i342.if.end86_crit_edge, label %list_add.exit.i342.do.body.i322_crit_edge

list_add.exit.i342.do.body.i322_crit_edge:        ; preds = %list_add.exit.i342
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i322

list_add.exit.i342.if.end86_crit_edge:            ; preds = %list_add.exit.i342
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

ns_parse_gravepages.exit:                         ; preds = %if.end22.i334.ns_parse_gravepages.exit_crit_edge, %do.body.i322.ns_parse_gravepages.exit_crit_edge
  %.str.18.sink.i343 = phi ptr [ @.str.24, %do.body.i322.ns_parse_gravepages.exit_crit_edge ], [ @.str.18, %if.end22.i334.ns_parse_gravepages.exit_crit_edge ]
  %retval.0.ph.i344 = phi i32 [ -22, %do.body.i322.ns_parse_gravepages.exit_crit_edge ], [ -12, %if.end22.i334.ns_parse_gravepages.exit_crit_edge ]
  %call31.i345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink.i343) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g.i) #11
  br label %free_wp_list

if.end86:                                         ; preds = %list_add.exit.i342.if.end86_crit_edge, %if.end82.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g.i) #11
  %base = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %base, ptr noundef nonnull @.str.28, ptr noundef nonnull @nand_controller_init.__key) #11
  %ops = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @ns_controller_ops, ptr %ops, align 4
  %controller = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 32
  %114 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %base, ptr %controller, align 4
  %call.i348 = call i32 @nand_scan_with_ids(ptr noundef %call7.i.i, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348)
  %tobool90.not = icmp eq i32 %call.i348, 0
  br i1 %tobool90.not, label %if.end100, label %do.end95

do.end95:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %free_gp_list

if.end100:                                        ; preds = %if.end86
  %115 = load i32, ptr @overridesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool101.not = icmp eq i32 %115, 0
  br i1 %tobool101.not, label %if.end100.if.end131_crit_edge, label %if.then102

if.end100.if.end131_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then102:                                       ; preds = %if.end100
  %116 = load ptr, ptr @nsmtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %erasesize, align 8
  %conv103 = zext i32 %118 to i64
  %sh_prom = zext i32 %115 to i64
  %shl = shl i64 %conv103, %sh_prom
  %shr = lshr i64 %shl, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv103)
  %cmp109.not = icmp eq i64 %shr, %conv103
  br i1 %cmp109.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.mtd_info, ptr %116, i32 0, i32 2
  %119 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %shl, ptr %size, align 8
  %shl121 = shl nuw i32 1, %115
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %120 = ptrtoint ptr %eraseblocks_per_lun to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %shl121, ptr %eraseblocks_per_lun, align 8
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %call7.i.i, i32 0, i32 1, i32 7
  %121 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %122 to i64
  %conv2.i = zext i32 %shl121 to i64
  %mul.i = mul nuw i64 %conv.i, %conv2.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %123 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %124 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %126 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %127 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %erasesize, align 8
  %129 = call i32 @llvm.cttz.i32(i32 %128, i1 true), !range !829
  %130 = add nuw nsw i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %iszero = icmp eq i32 %128, 0
  %ffs = select i1 %iszero, i32 0, i32 %130
  %add = add i32 %115, -1
  %sub = add i32 %add, %ffs
  %chip_shift = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 19
  %131 = ptrtoint ptr %chip_shift to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %sub, ptr %chip_shift, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 17
  %132 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %page_shift, align 4
  %sh_prom125 = zext i32 %133 to i64
  %shr126 = lshr i64 %mul8.i, %sh_prom125
  %134 = trunc i64 %shr126 to i32
  %conv128 = add i32 %134, -1
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 20
  %135 = ptrtoint ptr %pagemask to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv128, ptr %pagemask, align 8
  br label %if.end131

cleanup:                                          ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %cleanup_nand

if.end131:                                        ; preds = %cleanup.thread, %if.end100.if.end131_crit_edge
  %136 = load ptr, ptr @nsmtd, align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %size.i, align 8
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %136, i32 0, i32 3
  %139 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %138)
  %cmp164.i.i.i = icmp ult i64 %138, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !830

if.then168.i.i.i:                                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i.i = trunc i64 %138 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %140
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %141 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %140, i64 %138) #16, !srcloc !831
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %141, 1
  %extract.t25.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t25.i, %if.else174.i.i.i ]
  store i32 %dividend.addr.0.i.i.off0.i, ptr @wear_eb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %dividend.addr.0.i.i.off0.i)
  %142 = icmp ult i32 %dividend.addr.0.i.i.off0.i, 1073741824
  br i1 %142, label %if.end8.i.i.i, label %do.end.i

do.end.i:                                         ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #14
  br label %cleanup_nand

if.end8.i.i.i:                                    ; preds = %div_u64.exit.i
  %mul.i349 = shl nuw i32 %dividend.addr.0.i.i.off0.i, 2
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i349, i32 noundef 3520) #17
  store ptr %call9.i.i.i, ptr @erase_block_wear, align 4
  %tobool.not.i353 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i353, label %do.end11.i, label %if.end135

do.end11.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #14
  br label %cleanup_nand

if.end135:                                        ; preds = %if.end8.i.i.i
  %143 = load ptr, ptr @nsmtd, align 4
  %call136 = call fastcc i32 @ns_init(ptr noundef %143) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.free_ebw_crit_edge

if.end135.free_ebw_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ebw

if.end139:                                        ; preds = %if.end135
  %call140 = call i32 @nand_create_bbt(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.free_ns_object_crit_edge

if.end139.free_ns_object_crit_edge:               ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_object

if.end143:                                        ; preds = %if.end139
  %144 = load ptr, ptr @nsmtd, align 4
  %call144 = call fastcc i32 @ns_parse_badblocks(ptr noundef nonnull %call7.i.i, ptr noundef %144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.free_ns_object_crit_edge

if.end143.free_ns_object_crit_edge:               ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_object

if.end147:                                        ; preds = %if.end143
  %145 = load ptr, ptr @nsmtd, align 4
  %partitions = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 2
  %nbparts = getelementptr inbounds %struct.nandsim, ptr %call7.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %nbparts to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nbparts, align 8
  %call148 = call i32 @mtd_device_parse_register(ptr noundef %145, ptr noundef null, ptr noundef null, ptr noundef %partitions, i32 noundef %147) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.free_ns_object_crit_edge

if.end147.free_ns_object_crit_edge:               ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_object

if.end151:                                        ; preds = %if.end147
  %call152 = call fastcc i32 @ns_debugfs_create(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end151.cleanup215_crit_edge, label %unregister_mtd

if.end151.cleanup215_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

unregister_mtd:                                   ; preds = %if.end151
  %148 = load ptr, ptr @nsmtd, align 4
  %call156 = call i32 @mtd_device_unregister(ptr noundef %148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %unregister_mtd.free_ns_object_crit_edge, label %do.end169, !prof !830

unregister_mtd.free_ns_object_crit_edge:          ; preds = %unregister_mtd
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_object

do.end169:                                        ; preds = %unregister_mtd
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2389, i32 noundef 9, ptr noundef null) #11
  br label %free_ns_object

free_ns_object:                                   ; preds = %do.end169, %unregister_mtd.free_ns_object_crit_edge, %if.end147.free_ns_object_crit_edge, %if.end143.free_ns_object_crit_edge, %if.end139.free_ns_object_crit_edge
  %ret.1 = phi i32 [ %call140, %if.end139.free_ns_object_crit_edge ], [ %call144, %if.end143.free_ns_object_crit_edge ], [ %call148, %if.end147.free_ns_object_crit_edge ], [ %call152, %do.end169 ], [ %call152, %unregister_mtd.free_ns_object_crit_edge ]
  call fastcc void @ns_free(ptr noundef nonnull %call7.i.i)
  br label %free_ebw

free_ebw:                                         ; preds = %free_ns_object, %if.end135.free_ebw_crit_edge
  %ret.2 = phi i32 [ %call136, %if.end135.free_ebw_crit_edge ], [ %ret.1, %free_ns_object ]
  %149 = load ptr, ptr @erase_block_wear, align 4
  call void @kfree(ptr noundef %149) #11
  br label %cleanup_nand

cleanup_nand:                                     ; preds = %free_ebw, %do.end11.i, %do.end.i, %cleanup
  %ret.3 = phi i32 [ -22, %cleanup ], [ %ret.2, %free_ebw ], [ -12, %do.end.i ], [ -12, %do.end11.i ]
  call void @nand_cleanup(ptr noundef nonnull %call7.i.i) #11
  br label %free_gp_list

free_gp_list:                                     ; preds = %cleanup_nand, %do.end95
  %ret.4 = phi i32 [ %call.i348, %do.end95 ], [ %ret.3, %cleanup_nand ]
  %150 = load ptr, ptr @grave_pages, align 4
  %cmp.i355.not385 = icmp eq ptr %150, @grave_pages
  br i1 %cmp.i355.not385, label %free_gp_list.free_wp_list_crit_edge, label %free_gp_list.for.body_crit_edge

free_gp_list.for.body_crit_edge:                  ; preds = %free_gp_list
  br label %for.body

free_gp_list.free_wp_list_crit_edge:              ; preds = %free_gp_list
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_wp_list

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %free_gp_list.for.body_crit_edge
  %pos.0386 = phi ptr [ %n.0388, %list_del.exit.for.body_crit_edge ], [ %150, %free_gp_list.for.body_crit_edge ]
  %151 = ptrtoint ptr %pos.0386 to i32
  call void @__asan_load4_noabort(i32 %151)
  %n.0388 = load ptr, ptr %pos.0386, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0386) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0386, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i, align 4
  %154 = ptrtoint ptr %pos.0386 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pos.0386, align 4
  %prev1.i.i.i357 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i357, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %158 = ptrtoint ptr %pos.0386 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0386, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0386, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %pos.0386) #11
  %cmp.i355.not = icmp eq ptr %n.0388, @grave_pages
  br i1 %cmp.i355.not, label %list_del.exit.free_wp_list_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.free_wp_list_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_wp_list

free_wp_list:                                     ; preds = %list_del.exit.free_wp_list_crit_edge, %free_gp_list.free_wp_list_crit_edge, %ns_parse_gravepages.exit
  %ret.5 = phi i32 [ %retval.0.ph.i344, %ns_parse_gravepages.exit ], [ %ret.4, %free_gp_list.free_wp_list_crit_edge ], [ %ret.4, %list_del.exit.free_wp_list_crit_edge ]
  %160 = load ptr, ptr @weak_pages, align 4
  %cmp.i358.not390 = icmp eq ptr %160, @weak_pages
  br i1 %cmp.i358.not390, label %free_wp_list.free_wb_list_crit_edge, label %free_wp_list.for.body195_crit_edge

free_wp_list.for.body195_crit_edge:               ; preds = %free_wp_list
  br label %for.body195

free_wp_list.free_wb_list_crit_edge:              ; preds = %free_wp_list
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_wb_list

for.body195:                                      ; preds = %list_del.exit365.for.body195_crit_edge, %free_wp_list.for.body195_crit_edge
  %pos.1391 = phi ptr [ %n.1393, %list_del.exit365.for.body195_crit_edge ], [ %160, %free_wp_list.for.body195_crit_edge ]
  %161 = ptrtoint ptr %pos.1391 to i32
  call void @__asan_load4_noabort(i32 %161)
  %n.1393 = load ptr, ptr %pos.1391, align 4
  %call.i.i360 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1391) #11
  br i1 %call.i.i360, label %if.end.i.i363, label %for.body195.list_del.exit365_crit_edge

for.body195.list_del.exit365_crit_edge:           ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit365

if.end.i.i363:                                    ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i361 = getelementptr inbounds %struct.list_head, ptr %pos.1391, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i361 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i361, align 4
  %164 = ptrtoint ptr %pos.1391 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pos.1391, align 4
  %prev1.i.i.i362 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i362 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev1.i.i.i362, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %165, ptr %163, align 4
  br label %list_del.exit365

list_del.exit365:                                 ; preds = %if.end.i.i363, %for.body195.list_del.exit365_crit_edge
  %168 = ptrtoint ptr %pos.1391 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1391, align 4
  %prev.i364 = getelementptr inbounds %struct.list_head, ptr %pos.1391, i32 0, i32 1
  %169 = ptrtoint ptr %prev.i364 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i364, align 4
  call void @kfree(ptr noundef %pos.1391) #11
  %cmp.i358.not = icmp eq ptr %n.1393, @weak_pages
  br i1 %cmp.i358.not, label %list_del.exit365.free_wb_list_crit_edge, label %list_del.exit365.for.body195_crit_edge

list_del.exit365.for.body195_crit_edge:           ; preds = %list_del.exit365
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body195

list_del.exit365.free_wb_list_crit_edge:          ; preds = %list_del.exit365
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_wb_list

free_wb_list:                                     ; preds = %list_del.exit365.free_wb_list_crit_edge, %free_wp_list.free_wb_list_crit_edge, %ns_parse_weakpages.exit
  %ret.6 = phi i32 [ %retval.0.ph.i312, %ns_parse_weakpages.exit ], [ %ret.5, %free_wp_list.free_wb_list_crit_edge ], [ %ret.5, %list_del.exit365.free_wb_list_crit_edge ]
  %170 = load ptr, ptr @weak_blocks, align 4
  %cmp.i366.not395 = icmp eq ptr %170, @weak_blocks
  br i1 %cmp.i366.not395, label %free_wb_list.free_ns_struct_crit_edge, label %free_wb_list.for.body208_crit_edge

free_wb_list.for.body208_crit_edge:               ; preds = %free_wb_list
  br label %for.body208

free_wb_list.free_ns_struct_crit_edge:            ; preds = %free_wb_list
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_struct

for.body208:                                      ; preds = %list_del.exit373.for.body208_crit_edge, %free_wb_list.for.body208_crit_edge
  %pos.2396 = phi ptr [ %n.2398, %list_del.exit373.for.body208_crit_edge ], [ %170, %free_wb_list.for.body208_crit_edge ]
  %171 = ptrtoint ptr %pos.2396 to i32
  call void @__asan_load4_noabort(i32 %171)
  %n.2398 = load ptr, ptr %pos.2396, align 4
  %call.i.i368 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.2396) #11
  br i1 %call.i.i368, label %if.end.i.i371, label %for.body208.list_del.exit373_crit_edge

for.body208.list_del.exit373_crit_edge:           ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit373

if.end.i.i371:                                    ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i369 = getelementptr inbounds %struct.list_head, ptr %pos.2396, i32 0, i32 1
  %172 = ptrtoint ptr %prev.i.i369 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %prev.i.i369, align 4
  %174 = ptrtoint ptr %pos.2396 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pos.2396, align 4
  %prev1.i.i.i370 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %prev1.i.i.i370 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %173, ptr %prev1.i.i.i370, align 4
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %175, ptr %173, align 4
  br label %list_del.exit373

list_del.exit373:                                 ; preds = %if.end.i.i371, %for.body208.list_del.exit373_crit_edge
  %178 = ptrtoint ptr %pos.2396 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.2396, align 4
  %prev.i372 = getelementptr inbounds %struct.list_head, ptr %pos.2396, i32 0, i32 1
  %179 = ptrtoint ptr %prev.i372 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i372, align 4
  call void @kfree(ptr noundef %pos.2396) #11
  %cmp.i366.not = icmp eq ptr %n.2398, @weak_blocks
  br i1 %cmp.i366.not, label %list_del.exit373.free_ns_struct_crit_edge, label %list_del.exit373.for.body208_crit_edge

list_del.exit373.for.body208_crit_edge:           ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body208

list_del.exit373.free_ns_struct_crit_edge:        ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ns_struct

free_ns_struct:                                   ; preds = %list_del.exit373.free_ns_struct_crit_edge, %free_wb_list.free_ns_struct_crit_edge, %ns_parse_weakblocks.exit, %do.end25
  %ret.7 = phi i32 [ -22, %do.end25 ], [ %retval.0.ph.i, %ns_parse_weakblocks.exit ], [ %ret.6, %free_wb_list.free_ns_struct_crit_edge ], [ %ret.6, %list_del.exit373.free_ns_struct_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup215

cleanup215:                                       ; preds = %free_ns_struct, %if.end151.cleanup215_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.7, %free_ns_struct ], [ -12, %do.end10 ], [ 0, %if.end151.cleanup215_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @nsmtd, align 4
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %dent.i = getelementptr inbounds %struct.nandsim, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %dent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dent.i, align 4
  tail call void @debugfs_remove(ptr noundef %4) #11
  %5 = load ptr, ptr @nsmtd, align 4
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !830

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2429, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @ns_free(ptr noundef %2)
  %6 = load ptr, ptr @erase_block_wear, align 4
  tail call void @kfree(ptr noundef %6) #11
  tail call void @nand_cleanup(ptr noundef %0) #11
  %7 = load ptr, ptr @grave_pages, align 4
  %cmp.i.not91 = icmp eq ptr %7, @grave_pages
  br i1 %cmp.i.not91, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.092 = phi ptr [ %n.094, %list_del.exit.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %pos.092 to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.094 = load ptr, ptr %pos.092, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.092) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.092, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %pos.092 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pos.092, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %pos.092 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.092, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.092, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.092) #11
  %cmp.i.not = icmp eq ptr %n.094, @grave_pages
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = load ptr, ptr @weak_pages, align 4
  %cmp.i74.not96 = icmp eq ptr %17, @weak_pages
  br i1 %cmp.i74.not96, label %for.end.for.end40_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.body34:                                       ; preds = %list_del.exit81.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %pos.197 = phi ptr [ %n.199, %list_del.exit81.for.body34_crit_edge ], [ %17, %for.end.for.body34_crit_edge ]
  %18 = ptrtoint ptr %pos.197 to i32
  call void @__asan_load4_noabort(i32 %18)
  %n.199 = load ptr, ptr %pos.197, align 4
  %call.i.i76 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.197) #11
  br i1 %call.i.i76, label %if.end.i.i79, label %for.body34.list_del.exit81_crit_edge

for.body34.list_del.exit81_crit_edge:             ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit81

if.end.i.i79:                                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i77 = getelementptr inbounds %struct.list_head, ptr %pos.197, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i77, align 4
  %21 = ptrtoint ptr %pos.197 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.197, align 4
  %prev1.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i78, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit81

list_del.exit81:                                  ; preds = %if.end.i.i79, %for.body34.list_del.exit81_crit_edge
  %25 = ptrtoint ptr %pos.197 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.197, align 4
  %prev.i80 = getelementptr inbounds %struct.list_head, ptr %pos.197, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i80, align 4
  tail call void @kfree(ptr noundef %pos.197) #11
  %cmp.i74.not = icmp eq ptr %n.199, @weak_pages
  br i1 %cmp.i74.not, label %list_del.exit81.for.end40_crit_edge, label %list_del.exit81.for.body34_crit_edge

list_del.exit81.for.body34_crit_edge:             ; preds = %list_del.exit81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

list_del.exit81.for.end40_crit_edge:              ; preds = %list_del.exit81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.end40:                                        ; preds = %list_del.exit81.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %27 = load ptr, ptr @weak_blocks, align 4
  %cmp.i82.not101 = icmp eq ptr %27, @weak_blocks
  br i1 %cmp.i82.not101, label %for.end40.for.end53_crit_edge, label %for.end40.for.body47_crit_edge

for.end40.for.body47_crit_edge:                   ; preds = %for.end40
  br label %for.body47

for.end40.for.end53_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

for.body47:                                       ; preds = %list_del.exit89.for.body47_crit_edge, %for.end40.for.body47_crit_edge
  %pos.2102 = phi ptr [ %n.2104, %list_del.exit89.for.body47_crit_edge ], [ %27, %for.end40.for.body47_crit_edge ]
  %28 = ptrtoint ptr %pos.2102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %n.2104 = load ptr, ptr %pos.2102, align 4
  %call.i.i84 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.2102) #11
  br i1 %call.i.i84, label %if.end.i.i87, label %for.body47.list_del.exit89_crit_edge

for.body47.list_del.exit89_crit_edge:             ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit89

if.end.i.i87:                                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i85 = getelementptr inbounds %struct.list_head, ptr %pos.2102, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i85, align 4
  %31 = ptrtoint ptr %pos.2102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pos.2102, align 4
  %prev1.i.i.i86 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i86, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit89

list_del.exit89:                                  ; preds = %if.end.i.i87, %for.body47.list_del.exit89_crit_edge
  %35 = ptrtoint ptr %pos.2102 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.2102, align 4
  %prev.i88 = getelementptr inbounds %struct.list_head, ptr %pos.2102, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i88, align 4
  tail call void @kfree(ptr noundef %pos.2102) #11
  %cmp.i82.not = icmp eq ptr %n.2104, @weak_blocks
  br i1 %cmp.i82.not, label %list_del.exit89.for.end53_crit_edge, label %list_del.exit89.for.body47_crit_edge

list_del.exit89.for.body47_crit_edge:             ; preds = %list_del.exit89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body47

list_del.exit89.for.end53_crit_edge:              ; preds = %list_del.exit89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

for.end53:                                        ; preds = %list_del.exit89.for.end53_crit_edge, %for.end40.for.end53_crit_edge
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_free(ptr nocapture noundef readonly %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nandsim, ptr %ns, i32 0, i32 2, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  tail call void @kfree(ptr noundef %1) #11
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %3) #11
  tail call fastcc void @ns_free_device(ptr noundef %ns)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_init(ptr nocapture noundef readonly %mtd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %geom = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %geom to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %geom, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #14
  br label %cleanup380

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 16
  %busw = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %busw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %busw, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  %9 = ptrtoint ptr %geom to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %geom, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  %pgsz = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 2
  %12 = ptrtoint ptr %pgsz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pgsz, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %13 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobsize, align 4
  %oobsz = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %oobsz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %oobsz, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %16 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize, align 8
  %secsz = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %secsz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %secsz, align 8
  %add = add i32 %14, %11
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 5
  %19 = ptrtoint ptr %pgszoob to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %pgszoob, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %8)
  %cmp164.i.i = icmp ult i64 %8, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !830

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i = trunc i64 %8 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %11
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %8) #16, !srcloc !831
  %asmresult1.i.i.i = extractvalue { i64, i64 } %20, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv = trunc i64 %dividend.addr.0.i.i to i32
  %pgnum = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 7
  %21 = ptrtoint ptr %pgnum to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %pgnum, align 8
  %conv26 = and i64 %dividend.addr.0.i.i, 4294967295
  %conv29 = zext i32 %14 to i64
  %mul = mul nuw i64 %conv26, %conv29
  %add30 = add i64 %mul, %8
  %totszoob = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 4
  %22 = ptrtoint ptr %totszoob to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add30, ptr %totszoob, align 8
  %23 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true), !range !829
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %iszero = icmp eq i32 %17, 0
  %sub = select i1 %iszero, i32 -1, i32 %23
  %secshift = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 9
  %24 = ptrtoint ptr %secshift to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %secshift, align 8
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 17
  %25 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_shift, align 4
  %pgshift = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 10
  %27 = ptrtoint ptr %pgshift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pgshift, align 4
  %div = udiv i32 %17, %11
  %pgsec = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 8
  %28 = ptrtoint ptr %pgsec to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %pgsec, align 4
  %mul47 = mul i32 %div, %14
  %add48 = add i32 %mul47, %17
  %secszoob = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 6
  %29 = ptrtoint ptr %secszoob to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add48, ptr %secszoob, align 4
  %options50 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %options50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %options50, align 8
  %31 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %11, label %do.end83 [
    i32 512, label %if.then55
    i32 2048, label %div_u64.exit.if.end92_crit_edge
    i32 4096, label %if.then76
  ]

div_u64.exit.if.end92_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then55:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  %spec.store.select = select i1 %tobool.not, i32 66, i32 2
  br label %if.end92

if.then76:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.end83:                                         ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %11) #14
  br label %cleanup380

if.end92:                                         ; preds = %if.then76, %if.then55, %div_u64.exit.if.end92_crit_edge
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.then55 ], [ 128, %if.then76 ], [ 8, %div_u64.exit.if.end92_crit_edge ]
  %32 = ptrtoint ptr %options50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.sink, ptr %options50, align 8
  %and94 = and i32 %spec.store.select.sink, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else110, label %if.then96

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554433, i64 %8)
  %cmp99 = icmp ult i64 %8, 33554433
  %pgaddrbytes = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 11
  br i1 %cmp99, label %if.then101, label %if.else104

if.then101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %pgaddrbytes to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %pgaddrbytes, align 8
  br label %if.end126

if.else104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %pgaddrbytes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %pgaddrbytes, align 8
  br label %if.end126

if.else110:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217729, i64 %8)
  %cmp113 = icmp ult i64 %8, 134217729
  %pgaddrbytes117 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 11
  br i1 %cmp113, label %if.then115, label %if.else120

if.then115:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pgaddrbytes117 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %pgaddrbytes117, align 8
  br label %if.end126

if.else120:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %pgaddrbytes117 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %pgaddrbytes117, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else120, %if.then115, %if.else104, %if.then101
  %.sink = phi i32 [ 2, %if.then115 ], [ 3, %if.else120 ], [ 2, %if.then101 ], [ 3, %if.else104 ]
  %secaddrbytes119 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 12
  %37 = ptrtoint ptr %secaddrbytes119 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %secaddrbytes119, align 4
  %38 = load i32, ptr @parts_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %38)
  %cmp127 = icmp ugt i32 %38, 32
  br i1 %cmp127, label %do.end133, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end126
  %39 = load i32, ptr @parts_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp141522.not = icmp eq i32 %39, 0
  br i1 %cmp141522.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #14
  br label %cleanup380

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0525 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %remains.0524 = phi i64 [ %sub189, %for.inc.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %next_offset.0523 = phi i64 [ %add185, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr @parts, i32 0, i32 %i.0525
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %conv143 = zext i32 %41 to i64
  %42 = ptrtoint ptr %secsz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %secsz, align 8
  %conv146 = zext i32 %43 to i64
  %mul147 = mul nuw i64 %conv146, %conv143
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul147)
  %tobool148.not = icmp eq i64 %mul147, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %remains.0524, i64 %mul147)
  %cmp149 = icmp ult i64 %remains.0524, %mul147
  %or.cond = select i1 %tobool148.not, i1 true, i1 %cmp149
  br i1 %or.cond, label %do.end155, label %if.end160

do.end155:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263) #14
  br label %cleanup380

if.end160:                                        ; preds = %for.body
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.319, i32 noundef %i.0525) #11
  %arrayidx162 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0525
  %44 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %arrayidx162, align 8
  %tobool166.not = icmp eq ptr %call.i, null
  br i1 %tobool166.not, label %do.end171, label %for.inc

do.end171:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %cleanup380

for.inc:                                          ; preds = %if.end160
  %offset = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0525, i32 3
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %next_offset.0523, ptr %offset, align 8
  %size181 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0525, i32 2
  %46 = ptrtoint ptr %size181 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %mul147, ptr %size181, align 8
  %add185 = add i64 %mul147, %next_offset.0523
  %sub189 = sub i64 %remains.0524, %mul147
  %inc = add nuw i32 %i.0525, 1
  %47 = load i32, ptr @parts_num, align 4
  %cmp141 = icmp ult i32 %inc, %47
  br i1 %cmp141, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %next_offset.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add185, %for.inc.for.end_crit_edge ]
  %remains.0.lcssa = phi i64 [ %8, %for.cond.preheader.for.end_crit_edge ], [ %sub189, %for.inc.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %47, %for.inc.for.end_crit_edge ]
  %nbparts = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %nbparts to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.lcssa, ptr %nbparts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remains.0.lcssa)
  %tobool190.not = icmp eq i64 %remains.0.lcssa, 0
  br i1 %tobool190.not, label %for.end.if.end231_crit_edge, label %if.then191

for.end.if.end231_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then191:                                       ; preds = %for.end
  %49 = add i32 %.lcssa, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %49)
  %cmp193 = icmp ult i32 %49, -33
  br i1 %cmp193, label %do.end199, label %if.end204

do.end199:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #14
  br label %free_partition_names

if.end204:                                        ; preds = %if.then191
  %call.i505 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.319, i32 noundef %i.0.lcssa) #11
  %arrayidx207 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0.lcssa
  %50 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i505, ptr %arrayidx207, align 8
  %tobool212.not = icmp eq ptr %call.i505, null
  br i1 %tobool212.not, label %do.end217, label %if.end222

do.end217:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %free_partition_names

if.end222:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  %offset225 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0.lcssa, i32 3
  %51 = ptrtoint ptr %offset225 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %next_offset.0.lcssa, ptr %offset225, align 8
  %size228 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.0.lcssa, i32 2
  %52 = ptrtoint ptr %size228 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %remains.0.lcssa, ptr %size228, align 8
  %53 = ptrtoint ptr %nbparts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nbparts, align 8
  %add230 = add i32 %54, 1
  store i32 %add230, ptr %nbparts, align 8
  br label %if.end231

if.end231:                                        ; preds = %if.end222, %for.end.if.end231_crit_edge
  %55 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %busw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %56)
  %cmp233 = icmp eq i32 %56, 16
  br i1 %cmp233, label %do.end239, label %if.end231.do.end247_crit_edge

if.end231.do.end247_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end247

do.end239:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272) #14
  br label %do.end247

do.end247:                                        ; preds = %do.end239, %if.end231.do.end247_crit_edge
  %57 = ptrtoint ptr %geom to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %geom, align 8
  %shr = lshr i64 %58, 20
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i64 noundef %shr) #14
  %59 = ptrtoint ptr %pgsz to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pgsz, align 4
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %60) #14
  %61 = ptrtoint ptr %oobsz to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oobsz, align 8
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %62) #14
  %63 = ptrtoint ptr %secsz to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %secsz, align 8
  %shr272 = lshr i32 %64, 10
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, i32 noundef %shr272) #14
  %65 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pgnum, align 8
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, i32 noundef %66) #14
  %67 = ptrtoint ptr %pgsec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pgsec, align 4
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, i32 noundef %68) #14
  %69 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %busw, align 4
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, i32 noundef %70) #14
  %71 = ptrtoint ptr %secshift to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %secshift, align 8
  %call300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i32 noundef %72) #14
  %73 = ptrtoint ptr %pgshift to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pgshift, align 4
  %call307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, i32 noundef %74) #14
  %75 = ptrtoint ptr %oobsz to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %oobsz, align 8
  %77 = tail call i32 @llvm.cttz.i32(i32 %76, i1 true), !range !829
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %iszero314 = icmp eq i32 %76, 0
  %sub316 = select i1 %iszero314, i32 -1, i32 %77
  %call317 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, i32 noundef %sub316) #14
  %78 = ptrtoint ptr %totszoob to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %totszoob, align 8
  %shr324 = lshr i64 %79, 10
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305, i64 noundef %shr324) #14
  %pgaddrbytes331 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 11
  %80 = ptrtoint ptr %pgaddrbytes331 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pgaddrbytes331, align 8
  %call332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, i32 noundef %81) #14
  %secaddrbytes338 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 12
  %82 = ptrtoint ptr %secaddrbytes338 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %secaddrbytes338, align 4
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, i32 noundef %83) #14
  %84 = ptrtoint ptr %options50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %options50, align 8
  %call345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %85) #14
  %call346 = tail call fastcc i32 @ns_alloc_device(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.end8.i, label %do.end247.free_partition_names_crit_edge

do.end247.free_partition_names_crit_edge:         ; preds = %do.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_partition_names

if.end8.i:                                        ; preds = %do.end247
  %86 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pgszoob, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %87, i32 noundef 3264) #17
  %buf = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call9.i, ptr %buf, align 8
  %tobool354.not = icmp eq ptr %call9.i, null
  %89 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pgszoob, align 8
  br i1 %tobool354.not, label %do.end359, label %if.end366

do.end359:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, i32 noundef %90) #14
  tail call fastcc void @ns_free_device(ptr noundef %1)
  br label %free_partition_names

if.end366:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = call ptr @memset(ptr %call9.i, i32 255, i32 %90)
  br label %cleanup380

free_partition_names:                             ; preds = %do.end359, %do.end247.free_partition_names_crit_edge, %do.end217, %do.end199
  %ret.0 = phi i32 [ -22, %do.end199 ], [ %call346, %do.end247.free_partition_names_crit_edge ], [ -12, %do.end359 ], [ -12, %do.end217 ]
  br label %for.body373

for.body373:                                      ; preds = %for.body373.for.body373_crit_edge, %free_partition_names
  %i.1529 = phi i32 [ 0, %free_partition_names ], [ %inc378, %for.body373.for.body373_crit_edge ]
  %arrayidx375 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 2, i32 %i.1529
  %92 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx375, align 8
  tail call void @kfree(ptr noundef %93) #11
  %inc378 = add nuw nsw i32 %i.1529, 1
  %exitcond.not = icmp eq i32 %inc378, 32
  br i1 %exitcond.not, label %for.body373.cleanup380_crit_edge, label %for.body373.for.body373_crit_edge

for.body373.for.body373_crit_edge:                ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body373

for.body373.cleanup380_crit_edge:                 ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup380

cleanup380:                                       ; preds = %for.body373.cleanup380_crit_edge, %if.end366, %do.end171, %do.end155, %do.end133, %do.end83, %do.end
  %retval.2 = phi i32 [ -5, %do.end ], [ -22, %do.end133 ], [ 0, %if.end366 ], [ -5, %do.end83 ], [ -22, %do.end155 ], [ -12, %do.end171 ], [ %ret.0, %for.body373.cleanup380_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_create_bbt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_parse_badblocks(ptr nocapture noundef readonly %ns, ptr noundef %mtd) unnamed_addr #3 align 64 {
entry:
  %w = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #11
  %0 = load ptr, ptr @badblocks, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %w, align 4
  %secsz = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond30.do.body_crit_edge, %if.end
  %2 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp = icmp ne i8 %5, 48
  %call = call i32 @simple_strtoul(ptr noundef %3, ptr noundef nonnull %w, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %do.body.cleanup.sink.split_crit_edge, label %if.end10

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end10:                                         ; preds = %do.body
  %conv11 = zext i32 %call to i64
  %6 = ptrtoint ptr %secsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %secsz, align 8
  %conv12 = zext i32 %7 to i64
  %mul = mul nuw i64 %conv12, %conv11
  %call13 = call i32 @mtd_block_markbad(ptr noundef %mtd, i64 noundef %mul) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end24, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %w, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %11)
  %cmp26 = icmp eq i8 %11, 44
  br i1 %cmp26, label %if.then28, label %if.end24.do.cond30_crit_edge

if.end24.do.cond30_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %9, i32 1
  %12 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %w, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %if.then28, %if.end24.do.cond30_crit_edge
  %13 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %w, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %do.cond30.cleanup_crit_edge, label %do.cond30.do.body_crit_edge

do.cond30.do.body_crit_edge:                      ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond30.cleanup_crit_edge:                      ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end10.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.337) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.cond30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %do.cond30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_debugfs_create(ptr noundef %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nsmtd, align 4
  %dbg = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 58
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.341, i16 noundef zeroext 256, ptr noundef nonnull %2, ptr noundef %ns, ptr noundef nonnull @ns_fops) #11
  %dent = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 24
  %3 = ptrtoint ptr %dent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %dent, align 4
  %tobool.not.i13 = icmp eq ptr %call1, null
  %cmp.i14 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i15 = or i1 %tobool.not.i13, %cmp.i14
  br i1 %spec.select.i15, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_attach_chip(ptr nocapture noundef writeonly %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %ecc, align 8
  %1 = load i32, ptr @bch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %algo, align 8
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @nsmtd, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %mul = mul i32 %1, 13
  %add = add i32 %mul, 7
  %div347 = lshr i32 %add, 3
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp = icmp ult i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %tobool4.not = icmp ult i32 %5, 512
  %or.cond = select i1 %cmp, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %div46 = lshr i32 %5, 9
  %mul10 = mul i32 %div46, %div347
  %add11 = add i32 %mul10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %7)
  %cmp13 = icmp ugt i32 %add11, %7
  br i1 %cmp13, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %1) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %size, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %strength, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div347, ptr %bytes, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef 512) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lines = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lines to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %lines, align 4
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp50.not = icmp eq i32 %4, 0
  br i1 %cmp50.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %cle = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 1
  %ale = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.lr.ph
  %op_id.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %5 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.051
  %7 = ptrtoint ptr %cle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cle, align 4
  %8 = ptrtoint ptr %ale to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ale, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %10, label %for.body.for.inc22_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb14
    i32 3, label %sw.bb17
  ]

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %cle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cle, align 4
  %ctx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.051, i32 1
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx, align 4
  tail call fastcc void @ns_nand_write_byte(ptr noundef %chip, i8 noundef zeroext %14)
  br label %for.inc22

sw.bb5:                                           ; preds = %for.body
  %15 = ptrtoint ptr %ale to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ale, align 4
  %ctx9 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.051, i32 1
  %16 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1048.not = icmp eq i32 %17, 0
  br i1 %cmp1048.not, label %sw.bb5.for.inc22_crit_edge, label %for.body11.lr.ph

sw.bb5.for.inc22_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22

for.body11.lr.ph:                                 ; preds = %sw.bb5
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx9, i32 0, i32 1
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %i.049 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %for.body11.for.body11_crit_edge ]
  %18 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addrs, align 4
  %arrayidx13 = getelementptr i8, ptr %19, i32 %i.049
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 1
  tail call fastcc void @ns_nand_write_byte(ptr noundef %chip, i8 noundef zeroext %21)
  %inc = add nuw i32 %i.049, 1
  %22 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctx9, align 4
  %cmp10 = icmp ult i32 %inc, %23
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.inc22_crit_edge

for.body11.for.inc22_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ctx15 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.051, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx15, i32 0, i32 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %26 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctx15, align 4
  tail call fastcc void @ns_nand_read_buf(ptr noundef %chip, ptr noundef %25, i32 noundef %27)
  br label %for.inc22

sw.bb17:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ctx18 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.051, i32 1
  %buf19 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx18, i32 0, i32 1
  %28 = ptrtoint ptr %buf19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf19, align 4
  %30 = ptrtoint ptr %ctx18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx18, align 4
  tail call fastcc void @ns_nand_write_buf(ptr noundef %chip, ptr noundef %29, i32 noundef %31)
  br label %for.inc22

for.inc22:                                        ; preds = %sw.bb17, %sw.bb14, %for.body11.for.inc22_crit_edge, %sw.bb5.for.inc22_crit_edge, %sw.bb, %for.body.for.inc22_crit_edge
  %inc23 = add nuw i32 %op_id.051, 1
  %32 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc23, %33
  br i1 %cmp, label %for.inc22.for.body_crit_edge, label %for.inc22.cleanup_crit_edge

for.inc22.cleanup_crit_edge:                      ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_nand_write_byte(ptr nocapture noundef readonly %chip, i8 noundef zeroext %byte) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lines = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ale = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cle20504 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %cle20504 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cle20504, align 4
  br i1 %tobool6.not, label %if.end18.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %cle20504 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cle20504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.end18.if.then21_crit_edge, label %if.else

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.end18.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp505 = icmp eq i32 %7, 1
  br i1 %cmp505, label %if.end18.thread.if.then21_crit_edge, label %if.end18.thread.if.else330_crit_edge

if.end18.thread.if.else330_crit_edge:             ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else330

if.end18.thread.if.then21_crit_edge:              ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %if.end18.thread.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %conv = zext i8 %byte to i32
  %10 = zext i8 %byte to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.353)
  switch i8 %byte, label %do.end53 [
    i8 -1, label %do.body25
    i8 0, label %if.then21.if.end59_crit_edge
    i8 1, label %if.then21.if.end59_crit_edge510
    i8 48, label %if.then21.if.end59_crit_edge511
    i8 16, label %if.then21.if.end59_crit_edge512
    i8 80, label %if.then21.if.end59_crit_edge513
    i8 96, label %if.then21.if.end59_crit_edge514
    i8 112, label %if.then21.if.end59_crit_edge515
    i8 -128, label %if.then21.if.end59_crit_edge516
    i8 -112, label %if.then21.if.end59_crit_edge517
    i8 -48, label %if.then21.if.end59_crit_edge518
    i8 -32, label %if.then21.if.end59_crit_edge519
    i8 5, label %if.then21.if.end59_crit_edge520
  ]

if.then21.if.end59_crit_edge520:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge519:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge518:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge517:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge516:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge515:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge514:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge513:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge512:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge511:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge510:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then21.if.end59_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.body25:                                        ; preds = %if.then21
  %11 = load i32, ptr @log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %do.body25.do.end40_crit_edge, label %do.body28

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

do.body28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then34)) #11
          to label %do.end40 [label %if.then34], !srcloc !832

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_byte.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.44) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body28, %do.body25.do.end40_crit_edge
  %wp = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %12 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp42 = icmp eq i32 %13, 0
  %conv44 = select i1 %cmp42, i8 -64, i8 64
  %14 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end40.ns_switch_to_ready_state.exit_crit_edge, label %do.body1.i

do.end40.ns_switch_to_ready_state.exit_crit_edge: ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit

do.body1.i:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then5.i)) #11
          to label %ns_switch_to_ready_state.exit [label %if.then5.i], !srcloc !832

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit

ns_switch_to_ready_state.exit:                    ; preds = %if.then5.i, %do.body1.i, %do.end40.ns_switch_to_ready_state.exit_crit_edge
  %state.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state.i, align 4
  %nxstate.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %nxstate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 268435456, ptr %nxstate.i, align 8
  %op.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %op.i, align 4
  %npstates.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %npstates.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %npstates.i, align 4
  %stateidx.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %stateidx.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %stateidx.i, align 2
  %row.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %status14.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %20 = call ptr @memset(ptr %row.i, i32 0, i32 20)
  %21 = ptrtoint ptr %status14.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv44, ptr %status14.i, align 4
  br label %cleanup

do.end53:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv) #14
  br label %cleanup

if.end59:                                         ; preds = %if.then21.if.end59_crit_edge, %if.then21.if.end59_crit_edge510, %if.then21.if.end59_crit_edge511, %if.then21.if.end59_crit_edge512, %if.then21.if.end59_crit_edge513, %if.then21.if.end59_crit_edge514, %if.then21.if.end59_crit_edge515, %if.then21.if.end59_crit_edge516, %if.then21.if.end59_crit_edge517, %if.then21.if.end59_crit_edge518, %if.then21.if.end59_crit_edge519, %if.then21.if.end59_crit_edge520
  %state = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %and = and i32 %23, -7340033
  %24 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %and, label %if.end59.if.end75_crit_edge [
    i32 12288, label %if.end59.if.then66_crit_edge
    i32 4096, label %if.end59.if.then66_crit_edge521
  ]

if.end59.if.then66_crit_edge521:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

if.end59.if.then66_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

if.end59.if.end75_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then66:                                        ; preds = %if.end59.if.then66_crit_edge, %if.end59.if.then66_crit_edge521
  %row67 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %row67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %row67, align 8
  tail call fastcc void @ns_switch_state(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %byte)
  %cmp69 = icmp eq i8 %byte, 5
  br i1 %cmp69, label %if.then71, label %if.then66.if.end75_crit_edge

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then71:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %row67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %row67, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.then66.if.end75_crit_edge, %if.end59.if.end75_crit_edge
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nxstate, align 8
  %and76 = and i32 %29, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and76)
  %cmp77.not = icmp ne i32 %and76, 268435456
  %and81 = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond = and i1 %cmp77.not, %tobool82.not
  br i1 %or.cond, label %if.then83, label %if.end75.do.body118_crit_edge

if.end75.do.body118_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body118

if.then83:                                        ; preds = %if.end75
  %regs84 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %regs84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regs84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %31)
  %cmp85 = icmp eq i32 %31, 144
  br i1 %cmp85, label %land.lhs.true87, label %if.then83.do.end100_crit_edge

if.then83.do.end100_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

land.lhs.true87:                                  ; preds = %if.then83
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  %and89 = and i32 %33, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and89)
  %cmp90 = icmp eq i32 %and89, 8192
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true87.do.end100_crit_edge

land.lhs.true87.do.end100_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %count = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp94 = icmp eq i32 %35, 2
  br i1 %cmp94, label %land.lhs.true92.if.end108_crit_edge, label %land.lhs.true92.do.end100_crit_edge

land.lhs.true92.do.end100_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

land.lhs.true92.if.end108_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

do.end100:                                        ; preds = %land.lhs.true92.do.end100_crit_edge, %land.lhs.true87.do.end100_crit_edge, %if.then83.do.end100_crit_edge
  %call104 = tail call fastcc ptr @ns_get_state_name(i32 noundef %29)
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %conv, ptr noundef %call104) #14
  br label %if.end108

if.end108:                                        ; preds = %do.end100, %land.lhs.true92.if.end108_crit_edge
  %wp110 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %36 = ptrtoint ptr %wp110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wp110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp111 = icmp eq i32 %37, 0
  %conv116 = select i1 %cmp111, i8 -63, i8 65
  %38 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i486 = icmp eq i32 %38, 0
  br i1 %tobool.not.i486, label %if.end108.ns_switch_to_ready_state.exit496_crit_edge, label %do.body1.i487

if.end108.ns_switch_to_ready_state.exit496_crit_edge: ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit496

do.body1.i487:                                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then5.i488)) #11
          to label %ns_switch_to_ready_state.exit496 [label %if.then5.i488], !srcloc !832

if.then5.i488:                                    ; preds = %do.body1.i487
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit496

ns_switch_to_ready_state.exit496:                 ; preds = %if.then5.i488, %do.body1.i487, %if.end108.ns_switch_to_ready_state.exit496_crit_edge
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %state, align 4
  %40 = ptrtoint ptr %nxstate to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 268435456, ptr %nxstate, align 8
  %op.i491 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %op.i491 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %op.i491, align 4
  %npstates.i492 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %npstates.i492 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %npstates.i492, align 4
  %stateidx.i493 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %stateidx.i493 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %stateidx.i493, align 2
  %row.i494 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %status14.i495 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %44 = call ptr @memset(ptr %row.i494, i32 0, i32 20)
  %45 = ptrtoint ptr %status14.i495 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv116, ptr %status14.i495, align 4
  br label %do.body118

do.body118:                                       ; preds = %ns_switch_to_ready_state.exit496, %if.end75.do.body118_crit_edge
  %46 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool119.not = icmp eq i32 %46, 0
  br i1 %tobool119.not, label %do.body118.do.end142_crit_edge, label %do.body121

do.body118.do.end142_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end142

do.body121:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then133)) #11
          to label %do.end142 [label %if.then133], !srcloc !832

if.then133:                                       ; preds = %do.body121
  %47 = zext i8 %byte to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.355)
  switch i8 %byte, label %do.end.i [
    i8 0, label %if.then133.ns_get_state_by_command.exit_crit_edge
    i8 1, label %sw.bb1.i
    i8 16, label %sw.bb2.i
    i8 48, label %sw.bb3.i
    i8 80, label %sw.bb4.i
    i8 96, label %sw.bb5.i
    i8 112, label %sw.bb6.i
    i8 -128, label %sw.bb7.i
    i8 -112, label %sw.bb8.i
    i8 -48, label %sw.bb9.i
    i8 -1, label %sw.bb10.i
    i8 5, label %sw.bb11.i
    i8 -32, label %sw.bb12.i
  ]

if.then133.ns_get_state_by_command.exit_crit_edge: ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb1.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb2.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb3.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb4.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb5.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb6.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb7.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb8.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb9.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb10.i:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb11.i:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb12.i:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

do.end.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #14
  br label %ns_get_state_by_command.exit

ns_get_state_by_command.exit:                     ; preds = %do.end.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then133.ns_get_state_by_command.exit_crit_edge
  %retval.0.i497 = phi i32 [ 0, %do.end.i ], [ 14, %sw.bb12.i ], [ 13, %sw.bb11.i ], [ 12, %sw.bb10.i ], [ 11, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 9, %sw.bb7.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.then133.ns_get_state_by_command.exit_crit_edge ]
  %call136 = tail call fastcc ptr @ns_get_state_name(i32 noundef %retval.0.i497)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_byte.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.52, ptr noundef %call136) #11
  br label %do.end142

do.end142:                                        ; preds = %ns_get_state_by_command.exit, %do.body121, %do.body118.do.end142_crit_edge
  %regs144 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %regs144 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %regs144, align 8
  tail call fastcc void @ns_switch_state(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp148 = icmp eq i32 %5, 1
  br i1 %cmp148, label %if.then150, label %if.else.if.else330_crit_edge

if.else.if.else330_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else330

if.then150:                                       ; preds = %if.else
  %nxstate151 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %nxstate151 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nxstate151, align 8
  %and152 = and i32 %50, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and152)
  %cmp153 = icmp eq i32 %and152, 268435456
  br i1 %cmp153, label %do.body156, label %if.then150.if.end219_crit_edge

if.then150.if.end219_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

do.body156:                                       ; preds = %if.then150
  %51 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool157.not = icmp eq i32 %51, 0
  br i1 %tobool157.not, label %do.body156.do.end177_crit_edge, label %do.body159

do.body156.do.end177_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end177

do.body159:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then171)) #11
          to label %do.end177 [label %if.then171], !srcloc !832

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_byte.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.54) #11
  br label %do.end177

do.end177:                                        ; preds = %if.then171, %do.body159, %do.body156.do.end177_crit_edge
  %call178 = tail call fastcc i32 @ns_find_operation(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %do.end177.cleanup_crit_edge, label %if.end182

do.end177.cleanup_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end182:                                        ; preds = %do.end177
  %state183 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %state183 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state183, align 4
  %and184 = and i32 %53, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end182.if.end200_crit_edge, label %land.lhs.true186

if.end182.if.end200_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

land.lhs.true186:                                 ; preds = %if.end182
  %call188 = tail call fastcc i32 @ns_do_state_action(ptr noundef %1, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %land.lhs.true186.if.end200_crit_edge

land.lhs.true186.if.end200_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then191:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #13
  %wp193 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %54 = ptrtoint ptr %wp193 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wp193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp194 = icmp eq i32 %55, 0
  %conv199 = select i1 %cmp194, i8 -63, i8 65
  tail call fastcc void @ns_switch_to_ready_state(ptr noundef %1, i8 noundef zeroext %conv199)
  br label %cleanup

if.end200:                                        ; preds = %land.lhs.true186.if.end200_crit_edge, %if.end182.if.end200_crit_edge
  %count202 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %56 = ptrtoint ptr %count202 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %count202, align 8
  %57 = ptrtoint ptr %nxstate151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nxstate151, align 8
  %and204 = and i32 %58, -7340033
  %59 = zext i32 %and204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.356)
  switch i32 %and204, label %do.body213 [
    i32 16, label %sw.bb
    i32 32, label %sw.bb206
    i32 64, label %if.end200.if.end219.sink.split_crit_edge
  ]

if.end200.if.end219.sink.split_crit_edge:         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.sink.split

sw.bb:                                            ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %pgaddrbytes = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 11
  %60 = ptrtoint ptr %pgaddrbytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pgaddrbytes, align 8
  br label %if.end219.sink.split

sw.bb206:                                         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %secaddrbytes = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 12
  %62 = ptrtoint ptr %secaddrbytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %secaddrbytes, align 4
  br label %if.end219.sink.split

do.body213:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nandsim.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2028, 0\0A.popsection", ""() #11, !srcloc !833
  unreachable

if.end219.sink.split:                             ; preds = %sw.bb206, %sw.bb, %if.end200.if.end219.sink.split_crit_edge
  %.sink = phi i32 [ %61, %sw.bb ], [ %63, %sw.bb206 ], [ 1, %if.end200.if.end219.sink.split_crit_edge ]
  %num = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %64 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %num, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.end219.sink.split, %if.then150.if.end219_crit_edge
  %65 = ptrtoint ptr %nxstate151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nxstate151, align 8
  %and221 = and i32 %66, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %do.end227, label %if.end243

do.end227:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  %conv229 = zext i8 %byte to i32
  %call231 = tail call fastcc ptr @ns_get_state_name(i32 noundef %66)
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv229, ptr noundef %call231) #14
  %wp236 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %67 = ptrtoint ptr %wp236 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wp236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp237 = icmp eq i32 %68, 0
  %conv242 = select i1 %cmp237, i8 -63, i8 65
  tail call fastcc void @ns_switch_to_ready_state(ptr noundef %1, i8 noundef zeroext %conv242)
  br label %cleanup

if.end243:                                        ; preds = %if.end219
  %count245 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %69 = ptrtoint ptr %count245 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count245, align 8
  %num247 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %71 = ptrtoint ptr %num247 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num247, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp248 = icmp eq i32 %70, %72
  br i1 %cmp248, label %do.end254, label %if.end267

do.end254:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #14
  %wp260 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %73 = ptrtoint ptr %wp260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wp260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp261 = icmp eq i32 %74, 0
  %conv266 = select i1 %cmp261, i8 -63, i8 65
  tail call fastcc void @ns_switch_to_ready_state(ptr noundef %1, i8 noundef zeroext %conv266)
  br label %cleanup

if.end267:                                        ; preds = %if.end243
  %conv.i = zext i8 %byte to i32
  %pgaddrbytes.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 11
  %75 = ptrtoint ptr %pgaddrbytes.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pgaddrbytes.i, align 8
  %secaddrbytes.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 16, i32 12
  %77 = ptrtoint ptr %secaddrbytes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %secaddrbytes.i, align 4
  %sub.i = sub i32 %76, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %sub.i)
  %cmp.i = icmp ult i32 %70, %sub.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %70, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %column.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 3
  %79 = ptrtoint ptr %column.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %column.i, align 4
  %or.i = or i32 %80, %shl.i
  store i32 %or.i, ptr %column.i, align 4
  br label %ns_accept_addr_byte.exit

if.else.i:                                        ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  %sub10.i = sub i32 %70, %76
  %add.i = add i32 %sub10.i, %78
  %mul13.i = shl i32 %add.i, 3
  %shl14.i = shl i32 %conv.i, %mul13.i
  %row.i498 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %81 = ptrtoint ptr %row.i498 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %row.i498, align 8
  %or16.i = or i32 %82, %shl14.i
  store i32 %or16.i, ptr %row.i498, align 8
  br label %ns_accept_addr_byte.exit

ns_accept_addr_byte.exit:                         ; preds = %if.else.i, %if.then.i
  %83 = ptrtoint ptr %count245 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count245, align 8
  %add = add i32 %84, 1
  store i32 %add, ptr %count245, align 8
  %85 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool271.not = icmp eq i32 %85, 0
  br i1 %tobool271.not, label %ns_accept_addr_byte.exit.do.end296_crit_edge, label %do.body273

ns_accept_addr_byte.exit.do.end296_crit_edge:     ; preds = %ns_accept_addr_byte.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end296

do.body273:                                       ; preds = %ns_accept_addr_byte.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then285)) #11
          to label %do.end296 [label %if.then285], !srcloc !832

if.then285:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %count245 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count245, align 8
  %88 = ptrtoint ptr %num247 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num247, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_byte.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.62, i32 noundef %conv.i, i32 noundef %87, i32 noundef %89) #11
  br label %do.end296

do.end296:                                        ; preds = %if.then285, %do.body273, %ns_accept_addr_byte.exit.do.end296_crit_edge
  %90 = ptrtoint ptr %count245 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count245, align 8
  %92 = ptrtoint ptr %num247 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num247, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp301 = icmp eq i32 %91, %93
  br i1 %cmp301, label %do.body304, label %do.end296.cleanup_crit_edge

do.end296.cleanup_crit_edge:                      ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body304:                                       ; preds = %do.end296
  %94 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool305.not = icmp eq i32 %94, 0
  br i1 %tobool305.not, label %do.body304.do.end328_crit_edge, label %do.body307

do.body304.do.end328_crit_edge:                   ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end328

do.body307:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_byte, %if.then319)) #11
          to label %do.end328 [label %if.then319], !srcloc !832

if.then319:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #13
  %row321 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %95 = ptrtoint ptr %row321 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %row321, align 8
  %column = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 3
  %97 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %column, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_byte.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.64, i32 noundef %96, i32 noundef %98) #11
  br label %do.end328

do.end328:                                        ; preds = %if.then319, %do.body307, %do.body304.do.end328_crit_edge
  tail call fastcc void @ns_switch_state(ptr noundef %1)
  br label %cleanup

if.else330:                                       ; preds = %if.else.if.else330_crit_edge, %if.end18.thread.if.else330_crit_edge
  %state331 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %99 = ptrtoint ptr %state331 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state331, align 4
  %and332 = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %do.end338, label %if.end355

do.end338:                                        ; preds = %if.else330
  call void @__sanitizer_cov_trace_pc() #13
  %conv340 = zext i8 %byte to i32
  %call342 = tail call fastcc ptr @ns_get_state_name(i32 noundef %100)
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv340, ptr noundef %call342, ptr noundef nonnull @.str.113) #14
  %wp348 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %101 = ptrtoint ptr %wp348 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wp348, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp349 = icmp eq i32 %102, 0
  %conv354 = select i1 %cmp349, i8 -63, i8 65
  tail call fastcc void @ns_switch_to_ready_state(ptr noundef %1, i8 noundef zeroext %conv354)
  br label %cleanup

if.end355:                                        ; preds = %if.else330
  %count357 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %103 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count357, align 8
  %num359 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %105 = ptrtoint ptr %num359 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num359, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp360 = icmp eq i32 %104, %106
  br i1 %cmp360, label %do.end366, label %if.end373

do.end366:                                        ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #13
  %call370 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %104) #14
  br label %cleanup

if.end373:                                        ; preds = %if.end355
  %busw = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %busw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %108)
  %cmp374 = icmp eq i32 %108, 8
  br i1 %cmp374, label %if.then376, label %if.else382

if.then376:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %109 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf, align 8
  %arrayidx = getelementptr i8, ptr %110, i32 %104
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %byte, ptr %arrayidx, align 1
  %112 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %count357, align 8
  %add381 = add i32 %113, 1
  store i32 %add381, ptr %count357, align 8
  br label %cleanup

if.else382:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #13
  %conv383 = zext i8 %byte to i16
  %114 = shl nuw i16 %conv383, 8
  %buf384 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %115 = ptrtoint ptr %buf384 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf384, align 8
  %shr = lshr i32 %104, 1
  %arrayidx387 = getelementptr i16, ptr %116, i32 %shr
  %117 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %114, ptr %arrayidx387, align 2
  %118 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count357, align 8
  %add390 = add i32 %119, 2
  store i32 %add390, ptr %count357, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else382, %if.then376, %do.end366, %do.end338, %do.end328, %do.end296.cleanup_crit_edge, %do.end254, %do.end227, %if.then191, %do.end177.cleanup_crit_edge, %do.end142, %do.end53, %ns_switch_to_ready_state.exit, %do.end13, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_nand_read_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lines = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ale = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

lor.lhs.false:                                    ; preds = %if.end
  %cle = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end18, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end13:                                         ; preds = %lor.lhs.false.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.end24, label %if.end31

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call fastcc ptr @ns_get_state_name(i32 noundef %9)
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %call27) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %and33 = and i32 %9, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and33)
  %cmp.not = icmp eq i32 %and33, 4096
  br i1 %cmp.not, label %if.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3596 = icmp sgt i32 %len, 0
  br i1 %cmp3596, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call36 = tail call fastcc zeroext i8 @ns_nand_read_byte(ptr noundef %chip)
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.097
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call36, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %count = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  %add = add i32 %12, %len
  %num = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp39 = icmp ugt i32 %add, %14
  br i1 %cmp39, label %do.end44, label %if.end53

do.end44:                                         ; preds = %if.end37
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #14
  %wp = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %15 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp50 = icmp eq i32 %16, 0
  %conv52 = select i1 %cmp50, i8 -63, i8 65
  %17 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.end44.ns_switch_to_ready_state.exit_crit_edge, label %do.body1.i

do.end44.ns_switch_to_ready_state.exit_crit_edge: ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit

do.body1.i:                                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_read_buf, %if.then5.i)) #11
          to label %ns_switch_to_ready_state.exit [label %if.then5.i], !srcloc !832

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit

ns_switch_to_ready_state.exit:                    ; preds = %if.then5.i, %do.body1.i, %do.end44.ns_switch_to_ready_state.exit_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  %nxstate.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %nxstate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 268435456, ptr %nxstate.i, align 8
  %op.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %op.i, align 4
  %npstates.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %npstates.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %npstates.i, align 4
  %stateidx.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %stateidx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %stateidx.i, align 2
  %row.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %status14.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %23 = call ptr @memset(ptr %row.i, i32 0, i32 20)
  %24 = ptrtoint ptr %status14.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv52, ptr %status14.i, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end37
  %buf54 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %buf54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf54, align 8
  %add.ptr = getelementptr i8, ptr %26, i32 %12
  %27 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 8
  %add59 = add i32 %29, %len
  store i32 %add59, ptr %count, align 8
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %31)
  %cmp64 = icmp eq i32 %add59, %31
  br i1 %cmp64, label %if.then66, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then66:                                        ; preds = %if.end53
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nxstate, align 8
  %and67 = and i32 %33, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %cmp68 = icmp eq i32 %and67, 0
  br i1 %cmp68, label %if.then70, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ns_switch_state(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.then66.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %ns_switch_to_ready_state.exit, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end24, %do.end13, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_nand_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @ns_get_state_name(i32 noundef %3)
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef %call3) #14
  %wp = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %conv8 = select i1 %cmp, i8 -63, i8 65
  %6 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.end.ns_switch_to_ready_state.exit_crit_edge, label %do.body1.i

do.end.ns_switch_to_ready_state.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_buf, %if.then5.i)) #11
          to label %ns_switch_to_ready_state.exit [label %if.then5.i], !srcloc !832

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit

ns_switch_to_ready_state.exit:                    ; preds = %if.then5.i, %do.body1.i, %do.end.ns_switch_to_ready_state.exit_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 4
  %nxstate.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %nxstate.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 268435456, ptr %nxstate.i, align 8
  %op.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %op.i, align 4
  %npstates.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %npstates.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %npstates.i, align 4
  %stateidx.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %stateidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %stateidx.i, align 2
  %row.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %status14.i = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %12 = call ptr @memset(ptr %row.i, i32 0, i32 20)
  %13 = ptrtoint ptr %status14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %status14.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  %add = add i32 %15, %len
  %num = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp10 = icmp ugt i32 %add, %17
  br i1 %cmp10, label %do.end16, label %if.end29

do.end16:                                         ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246) #14
  %wp22 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 3
  %18 = ptrtoint ptr %wp22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wp22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp eq i32 %19, 0
  %conv28 = select i1 %cmp23, i8 -63, i8 65
  %20 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i77 = icmp eq i32 %20, 0
  br i1 %tobool.not.i77, label %do.end16.ns_switch_to_ready_state.exit87_crit_edge, label %do.body1.i78

do.end16.ns_switch_to_ready_state.exit87_crit_edge: ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit87

do.body1.i78:                                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_buf, %if.then5.i79)) #11
          to label %ns_switch_to_ready_state.exit87 [label %if.then5.i79], !srcloc !832

if.then5.i79:                                     ; preds = %do.body1.i78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit87

ns_switch_to_ready_state.exit87:                  ; preds = %if.then5.i79, %do.body1.i78, %do.end16.ns_switch_to_ready_state.exit87_crit_edge
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state, align 4
  %nxstate.i81 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %nxstate.i81 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435456, ptr %nxstate.i81, align 8
  %op.i82 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %op.i82 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %op.i82, align 4
  %npstates.i83 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %npstates.i83 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %npstates.i83, align 4
  %stateidx.i84 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %stateidx.i84 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %stateidx.i84, align 2
  %row.i85 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 2
  %status14.i86 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %26 = call ptr @memset(ptr %row.i85, i32 0, i32 20)
  %27 = ptrtoint ptr %status14.i86 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv28, ptr %status14.i86, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %buf30 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %buf30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf30, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 %15
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 8
  %add35 = add i32 %32, %len
  store i32 %add35, ptr %count, align 8
  %33 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %34)
  %cmp40 = icmp eq i32 %add35, %34
  br i1 %cmp40, label %do.body43, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body43:                                        ; preds = %if.end29
  %35 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool44.not = icmp eq i32 %35, 0
  br i1 %tobool44.not, label %do.body43.cleanup_crit_edge, label %do.body46

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_write_buf.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_write_buf, %if.then52)) #11
          to label %cleanup [label %if.then52], !srcloc !832

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_write_buf.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.249, i32 noundef %37) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body46, %do.body43.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %ns_switch_to_ready_state.exit87, %ns_switch_to_ready_state.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_switch_to_ready_state(ptr nocapture noundef writeonly %ns, i8 noundef zeroext %status) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_to_ready_state, %if.then5)) #11
          to label %do.end8 [label %if.then5], !srcloc !832

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %state = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %2 = ptrtoint ptr %nxstate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 268435456, ptr %nxstate, align 8
  %op = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 9
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %op, align 4
  %npstates = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 11
  %4 = ptrtoint ptr %npstates to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %npstates, align 4
  %stateidx = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %5 = ptrtoint ptr %stateidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %stateidx, align 2
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %status14 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 1
  %6 = call ptr @memset(ptr %row, i32 0, i32 20)
  %7 = ptrtoint ptr %status14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %status, ptr %status14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_switch_state(ptr noundef %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 9
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %stateidx = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %2 = ptrtoint ptr %stateidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stateidx, align 2
  %add = add i16 %3, 1
  store i16 %add, ptr %stateidx, align 2
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %4 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nxstate, align 8
  %state = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state, align 4
  %conv4 = zext i16 %add to i32
  %add5 = add nuw nsw i32 %conv4, 1
  %arrayidx = getelementptr i32, ptr %1, i32 %add5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  store i32 %8, ptr %nxstate, align 8
  %9 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then.do.end19_crit_edge, label %do.body9

if.then.do.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_state.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then13)) #11
          to label %do.end19 [label %if.then13], !srcloc !832

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %call15 = tail call fastcc ptr @ns_get_state_name(i32 noundef %11)
  %12 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nxstate, align 8
  %call17 = tail call fastcc ptr @ns_get_state_name(i32 noundef %13)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_state.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.76, ptr noundef %call15, ptr noundef %call17) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %do.body9, %if.then.do.end19_crit_edge
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %and = and i32 %15, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.end19.if.end75_crit_edge, label %land.lhs.true

do.end19.if.end75_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true:                                    ; preds = %do.end19
  %call23 = tail call fastcc i32 @ns_do_state_action(ptr noundef %ns, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then25, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then25:                                        ; preds = %land.lhs.true
  %wp = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26 = icmp eq i32 %17, 0
  %conv29 = select i1 %cmp26, i8 -63, i8 65
  %18 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then25.ns_switch_to_ready_state.exit_crit_edge, label %do.body1.i

if.then25.ns_switch_to_ready_state.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit

do.body1.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then5.i)) #11
          to label %ns_switch_to_ready_state.exit [label %if.then5.i], !srcloc !832

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit

ns_switch_to_ready_state.exit:                    ; preds = %if.then5.i, %do.body1.i, %if.then25.ns_switch_to_ready_state.exit_crit_edge
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  %20 = ptrtoint ptr %nxstate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 268435456, ptr %nxstate, align 8
  %21 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %op, align 4
  %npstates.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 11
  %22 = ptrtoint ptr %npstates.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %npstates.i, align 4
  %23 = ptrtoint ptr %stateidx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %stateidx, align 2
  %row.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %status14.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 1
  %24 = call ptr @memset(ptr %row.i, i32 0, i32 20)
  %25 = ptrtoint ptr %status14.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv29, ptr %status14.i, align 4
  br label %if.end282

if.else:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regs, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.357)
  switch i32 %27, label %do.end.i [
    i32 0, label %if.else.ns_get_state_by_command.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 16, label %sw.bb2.i
    i32 48, label %sw.bb3.i
    i32 80, label %sw.bb4.i
    i32 96, label %sw.bb5.i
    i32 112, label %sw.bb6.i
    i32 128, label %sw.bb7.i
    i32 144, label %sw.bb8.i
    i32 208, label %sw.bb9.i
    i32 255, label %sw.bb10.i
    i32 5, label %sw.bb11.i
    i32 224, label %sw.bb12.i
  ]

if.else.ns_get_state_by_command.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb11.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

sw.bb12.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_state_by_command.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #14
  br label %ns_get_state_by_command.exit

ns_get_state_by_command.exit:                     ; preds = %do.end.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else.ns_get_state_by_command.exit_crit_edge
  %retval.0.i361 = phi i32 [ 0, %do.end.i ], [ 14, %sw.bb12.i ], [ 13, %sw.bb11.i ], [ 12, %sw.bb10.i ], [ 11, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 9, %sw.bb7.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.else.ns_get_state_by_command.exit_crit_edge ]
  %state32 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  %29 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i361, ptr %state32, align 4
  %30 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool34.not = icmp eq i32 %30, 0
  br i1 %tobool34.not, label %ns_get_state_by_command.exit.do.end52_crit_edge, label %do.body36

ns_get_state_by_command.exit.do.end52_crit_edge:  ; preds = %ns_get_state_by_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.body36:                                        ; preds = %ns_get_state_by_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_state.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then48)) #11
          to label %do.end52 [label %if.then48], !srcloc !832

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_state.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.78) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36, %ns_get_state_by_command.exit.do.end52_crit_edge
  %call53 = tail call fastcc i32 @ns_find_operation(ptr noundef %ns, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %do.end52.if.end282_crit_edge

do.end52.if.end282_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

if.end56:                                         ; preds = %do.end52
  %31 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state32, align 4
  %and58 = and i32 %32, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end75_crit_edge, label %land.lhs.true60

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true60:                                  ; preds = %if.end56
  %call62 = tail call fastcc i32 @ns_do_state_action(ptr noundef %ns, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %land.lhs.true60.if.end75_crit_edge

land.lhs.true60.if.end75_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then65:                                        ; preds = %land.lhs.true60
  %wp67 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %33 = ptrtoint ptr %wp67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wp67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp68 = icmp eq i32 %34, 0
  %conv73 = select i1 %cmp68, i8 -63, i8 65
  %35 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i362 = icmp eq i32 %35, 0
  br i1 %tobool.not.i362, label %if.then65.ns_switch_to_ready_state.exit372_crit_edge, label %do.body1.i363

if.then65.ns_switch_to_ready_state.exit372_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit372

do.body1.i363:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then5.i364)) #11
          to label %ns_switch_to_ready_state.exit372 [label %if.then5.i364], !srcloc !832

if.then5.i364:                                    ; preds = %do.body1.i363
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit372

ns_switch_to_ready_state.exit372:                 ; preds = %if.then5.i364, %do.body1.i363, %if.then65.ns_switch_to_ready_state.exit372_crit_edge
  %36 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state32, align 4
  %nxstate.i366 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %37 = ptrtoint ptr %nxstate.i366 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 268435456, ptr %nxstate.i366, align 8
  %38 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %op, align 4
  %npstates.i368 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 11
  %39 = ptrtoint ptr %npstates.i368 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %npstates.i368, align 4
  %stateidx.i369 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %40 = ptrtoint ptr %stateidx.i369 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %stateidx.i369, align 2
  %row.i370 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %status14.i371 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 1
  %41 = call ptr @memset(ptr %row.i370, i32 0, i32 20)
  %42 = ptrtoint ptr %status14.i371 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv73, ptr %status14.i371, align 4
  br label %if.end282

if.end75:                                         ; preds = %land.lhs.true60.if.end75_crit_edge, %if.end56.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %do.end19.if.end75_crit_edge
  %nxstate76 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %43 = ptrtoint ptr %nxstate76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nxstate76, align 8
  %and77 = and i32 %44, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end104_crit_edge, label %land.lhs.true79

if.end75.if.end104_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

land.lhs.true79:                                  ; preds = %if.end75
  %busw = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 4
  %45 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %busw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %46)
  %cmp80 = icmp eq i32 %46, 16
  br i1 %cmp80, label %do.body83, label %land.lhs.true79.if.end104_crit_edge

land.lhs.true79.if.end104_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

do.body83:                                        ; preds = %land.lhs.true79
  %47 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool84.not = icmp eq i32 %47, 0
  br i1 %tobool84.not, label %do.body83.do.end102_crit_edge, label %do.body86

do.body83.do.end102_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102

do.body86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_state.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then98)) #11
          to label %do.end102 [label %if.then98], !srcloc !832

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_state.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.80) #11
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.body86, %do.body83.do.end102_crit_edge
  %column = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %48 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %column, align 4
  %shl = shl i32 %49, 1
  store i32 %shl, ptr %column, align 4
  br label %if.end104

if.end104:                                        ; preds = %do.end102, %land.lhs.true79.if.end104_crit_edge, %if.end75.if.end104_crit_edge
  %50 = ptrtoint ptr %nxstate76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nxstate76, align 8
  %and106 = and i32 %51, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %cmp107 = icmp eq i32 %and106, 0
  br i1 %cmp107, label %if.then109, label %if.else168

if.then109:                                       ; preds = %if.end104
  %wp111 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %52 = ptrtoint ptr %wp111 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wp111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp112 = icmp eq i32 %53, 0
  %conv116 = select i1 %cmp112, i8 -64, i8 64
  %state117 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  %54 = ptrtoint ptr %state117 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state117, align 4
  %and118 = and i32 %55, 28928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then109.do.body146_crit_edge, label %land.lhs.true120

if.then109.do.body146_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body146

land.lhs.true120:                                 ; preds = %if.then109
  %count = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 4
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count, align 8
  %num = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %58 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp123.not = icmp eq i32 %59, %57
  br i1 %cmp123.not, label %land.lhs.true120.do.body146_crit_edge, label %do.end128

land.lhs.true120.do.body146_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body146

do.end128:                                        ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %59, %57
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %sub) #14
  %60 = ptrtoint ptr %wp111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wp111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp139 = icmp eq i32 %61, 0
  %conv144 = select i1 %cmp139, i8 -63, i8 65
  br label %do.body146

do.body146:                                       ; preds = %do.end128, %land.lhs.true120.do.body146_crit_edge, %if.then109.do.body146_crit_edge
  %status.0 = phi i8 [ %conv144, %do.end128 ], [ %conv116, %land.lhs.true120.do.body146_crit_edge ], [ %conv116, %if.then109.do.body146_crit_edge ]
  %62 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool147.not = icmp eq i32 %62, 0
  br i1 %tobool147.not, label %do.body146.do.end167_crit_edge, label %do.body149

do.body146.do.end167_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end167

do.body149:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_state.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then161)) #11
          to label %do.end167 [label %if.then161], !srcloc !832

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_state.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.83) #11
  br label %do.end167

do.end167:                                        ; preds = %if.then161, %do.body149, %do.body146.do.end167_crit_edge
  %63 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i373 = icmp eq i32 %63, 0
  br i1 %tobool.not.i373, label %do.end167.ns_switch_to_ready_state.exit383_crit_edge, label %do.body1.i374

do.end167.ns_switch_to_ready_state.exit383_crit_edge: ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit383

do.body1.i374:                                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then5.i375)) #11
          to label %ns_switch_to_ready_state.exit383 [label %if.then5.i375], !srcloc !832

if.then5.i375:                                    ; preds = %do.body1.i374
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit383

ns_switch_to_ready_state.exit383:                 ; preds = %if.then5.i375, %do.body1.i374, %do.end167.ns_switch_to_ready_state.exit383_crit_edge
  %64 = ptrtoint ptr %state117 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %state117, align 4
  %65 = ptrtoint ptr %nxstate76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 268435456, ptr %nxstate76, align 8
  %66 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %op, align 4
  %npstates.i379 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 11
  %67 = ptrtoint ptr %npstates.i379 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %npstates.i379, align 4
  %stateidx.i380 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %68 = ptrtoint ptr %stateidx.i380 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %stateidx.i380, align 2
  %row.i381 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %status14.i382 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 1
  %69 = call ptr @memset(ptr %row.i381, i32 0, i32 20)
  %70 = ptrtoint ptr %status14.i382 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %status.0, ptr %status14.i382, align 4
  br label %if.end282

if.else168:                                       ; preds = %if.end104
  %and170 = and i32 %51, 28928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.else237, label %if.then172

if.then172:                                       ; preds = %if.else168
  %state174 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  %71 = ptrtoint ptr %state174 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %51, ptr %state174, align 4
  %72 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %op, align 4
  %stateidx176 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %74 = ptrtoint ptr %stateidx176 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %stateidx176, align 2
  %inc = add i16 %75, 1
  store i16 %inc, ptr %stateidx176, align 2
  %conv177 = zext i16 %inc to i32
  %add178 = add nuw nsw i32 %conv177, 1
  %arrayidx179 = getelementptr i32, ptr %73, i32 %add178
  %76 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx179, align 4
  %78 = ptrtoint ptr %nxstate76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %nxstate76, align 8
  %count182 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 4
  %79 = ptrtoint ptr %count182 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %count182, align 8
  %num184 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %80 = ptrtoint ptr %num184 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %num184, align 4
  %81 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool186.not = icmp eq i32 %81, 0
  br i1 %tobool186.not, label %if.then172.do.end210_crit_edge, label %do.body188

if.then172.do.end210_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end210

do.body188:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_state.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_switch_state, %if.then200)) #11
          to label %do.end210 [label %if.then200], !srcloc !832

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %state174 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state174, align 4
  %call202 = tail call fastcc ptr @ns_get_state_name(i32 noundef %83)
  %84 = ptrtoint ptr %nxstate76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nxstate76, align 8
  %call204 = tail call fastcc ptr @ns_get_state_name(i32 noundef %85)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_state.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.85, ptr noundef %call202, ptr noundef %call204) #11
  br label %do.end210

do.end210:                                        ; preds = %if.then200, %do.body188, %if.then172.do.end210_crit_edge
  %86 = ptrtoint ptr %state174 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state174, align 4
  %and212 = and i32 %87, -7340033
  %88 = zext i32 %and212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.358)
  switch i32 %and212, label %do.end232 [
    i32 256, label %do.end210.sw.bb_crit_edge
    i32 4096, label %do.end210.sw.bb_crit_edge391
    i32 8192, label %sw.bb220
    i32 12288, label %sw.bb224
  ]

do.end210.sw.bb_crit_edge391:                     ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end210.sw.bb_crit_edge:                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %do.end210.sw.bb_crit_edge, %do.end210.sw.bb_crit_edge391
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %89 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pgszoob, align 8
  %off = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %91 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %off, align 8
  %column216 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %93 = ptrtoint ptr %column216 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %column216, align 4
  %95 = add i32 %92, %94
  %sub217 = sub i32 %90, %95
  %96 = ptrtoint ptr %num184 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub217, ptr %num184, align 4
  br label %if.end282

sw.bb220:                                         ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  %idbytes = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 13
  %97 = ptrtoint ptr %idbytes to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %idbytes, align 8
  %99 = ptrtoint ptr %num184 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %num184, align 4
  br label %if.end282

sw.bb224:                                         ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %num184 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %num184, align 4
  %101 = ptrtoint ptr %count182 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %count182, align 8
  br label %if.end282

do.end232:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %if.end282

if.else237:                                       ; preds = %if.else168
  %and239 = and i32 %51, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.else275, label %if.then241

if.then241:                                       ; preds = %if.else237
  %count243 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 4
  %102 = ptrtoint ptr %count243 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %count243, align 8
  %103 = add i32 %and106, -16
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 28)
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.359)
  switch i32 %104, label %do.end269 [
    i32 0, label %sw.bb246
    i32 1, label %sw.bb250
    i32 3, label %sw.bb254
    i32 2, label %sw.bb257
  ]

sw.bb246:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %pgaddrbytes = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 11
  %106 = ptrtoint ptr %pgaddrbytes to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pgaddrbytes, align 8
  %num249 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %108 = ptrtoint ptr %num249 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %num249, align 4
  br label %if.end282

sw.bb250:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %secaddrbytes = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 12
  %109 = ptrtoint ptr %secaddrbytes to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %secaddrbytes, align 4
  %num253 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %111 = ptrtoint ptr %num253 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %num253, align 4
  br label %if.end282

sw.bb254:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %num256 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %112 = ptrtoint ptr %num256 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %num256, align 4
  br label %if.end282

sw.bb257:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %pgaddrbytes259 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 11
  %113 = ptrtoint ptr %pgaddrbytes259 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pgaddrbytes259, align 8
  %secaddrbytes261 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 12
  %115 = ptrtoint ptr %secaddrbytes261 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %secaddrbytes261, align 4
  %sub262 = sub i32 %114, %116
  %num264 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %117 = ptrtoint ptr %num264 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub262, ptr %num264, align 4
  br label %if.end282

do.end269:                                        ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #14
  br label %if.end282

if.else275:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #13
  %num277 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 5
  %118 = ptrtoint ptr %num277 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %num277, align 4
  %count279 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 4
  %119 = ptrtoint ptr %count279 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %count279, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.else275, %do.end269, %sw.bb257, %sw.bb254, %sw.bb250, %sw.bb246, %do.end232, %sw.bb224, %sw.bb220, %sw.bb, %ns_switch_to_ready_state.exit383, %ns_switch_to_ready_state.exit372, %do.end52.if.end282_crit_edge, %ns_switch_to_ready_state.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ns_get_state_name(i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %state, -7340033
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.360)
  switch i32 %and, label %do.end [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 3, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 9, label %sw.bb7
    i32 10, label %sw.bb8
    i32 11, label %sw.bb9
    i32 12, label %sw.bb10
    i32 13, label %sw.bb11
    i32 14, label %sw.bb12
    i32 16, label %sw.bb13
    i32 32, label %sw.bb14
    i32 64, label %sw.bb15
    i32 48, label %sw.bb16
    i32 256, label %sw.bb17
    i32 4096, label %sw.bb18
    i32 8192, label %sw.bb19
    i32 12288, label %sw.bb20
    i32 0, label %sw.bb21
    i32 268435456, label %sw.bb22
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #14
  br label %return

return:                                           ; preds = %do.end, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ @.str.114, %sw.bb22 ], [ @.str.113, %sw.bb21 ], [ @.str.112, %sw.bb20 ], [ @.str.111, %sw.bb19 ], [ @.str.110, %sw.bb18 ], [ @.str.109, %sw.bb17 ], [ @.str.108, %sw.bb16 ], [ @.str.107, %sw.bb15 ], [ @.str.106, %sw.bb14 ], [ @.str.105, %sw.bb13 ], [ @.str.104, %sw.bb12 ], [ @.str.103, %sw.bb11 ], [ @.str.102, %sw.bb10 ], [ @.str.101, %sw.bb9 ], [ @.str.100, %sw.bb8 ], [ @.str.99, %sw.bb7 ], [ @.str.98, %sw.bb6 ], [ @.str.97, %sw.bb5 ], [ @.str.96, %sw.bb4 ], [ @.str.95, %sw.bb3 ], [ @.str.94, %sw.bb2 ], [ @.str.93, %sw.bb1 ], [ @.str.92, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_find_operation(ptr noundef %ns, i32 noundef %flag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 6
  %npstates = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 11
  %state = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %phi.cmp = icmp eq i32 %flag, 0
  br label %tailrecurse

tailrecurse:                                      ; preds = %do.end119, %entry
  %flag.tr = phi i1 [ %phi.cmp, %entry ], [ true, %do.end119 ]
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %tailrecurse
  %opsfound.0283 = phi i32 [ 0, %tailrecurse ], [ %opsfound.2, %cleanup.for.body_crit_edge ]
  %i.0280 = phi i32 [ 0, %tailrecurse ], [ %inc44, %cleanup.for.body_crit_edge ]
  %idx.0279 = phi i32 [ 0, %tailrecurse ], [ %idx.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %i.0280
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %flag.tr, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %npstates, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx4 = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %i.0280, i32 1, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %7, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end19_crit_edge

if.then2.if.end19_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %npstates, align 4
  %idxprom13 = zext i16 %11 to i32
  %arrayidx14 = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %i.0280, i32 1, i32 %idxprom13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %14 = xor i32 %13, %9
  %15 = and i32 %14, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.not = icmp eq i32 %15, 0
  br i1 %cmp16.not, label %if.else.if.end19_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then2.if.end19_crit_edge
  %arrayidx34 = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %idx.0279
  %16 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %npstates, align 4
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp22273.not = icmp eq i16 %17, 0
  br i1 %cmp22273.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body24_crit_edge

if.end19.for.body24_crit_edge:                    ; preds = %if.end19
  br label %for.body24

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %if.end19.for.body24_crit_edge
  %cmp22275 = phi i1 [ %cmp22, %for.inc.for.body24_crit_edge ], [ true, %if.end19.for.body24_crit_edge ]
  %j.0274 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ 0, %if.end19.for.body24_crit_edge ]
  %arrayidx27 = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %i.0280, i32 1, i32 %j.0274
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr %struct.nandsim, ptr %ns, i32 0, i32 10, i32 %j.0274
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %22 = xor i32 %21, %19
  %23 = and i32 %22, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp31.not = icmp eq i32 %23, 0
  br i1 %cmp31.not, label %for.body24.for.inc_crit_edge, label %land.lhs.true

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body24
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 4
  %and36 = and i32 %25, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body24.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0274, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp22 = icmp ult i32 %inc, %conv
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body24_crit_edge

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end19.for.end_crit_edge
  %cmp22.lcssa = phi i1 [ false, %if.end19.for.end_crit_edge ], [ %cmp22275, %land.lhs.true.for.end_crit_edge ], [ %cmp22, %for.inc.for.end_crit_edge ]
  %spec.select = phi i32 [ %i.0280, %if.end19.for.end_crit_edge ], [ %idx.0279, %land.lhs.true.for.end_crit_edge ], [ %i.0280, %for.inc.for.end_crit_edge ]
  %not.cmp22 = xor i1 %cmp22.lcssa, true
  %add = zext i1 %not.cmp22 to i32
  %spec.select251 = add i32 %opsfound.0283, %add
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %idx.2 = phi i32 [ %spec.select, %for.end ], [ %idx.0279, %for.body.cleanup_crit_edge ], [ %idx.0279, %if.then2.cleanup_crit_edge ], [ %idx.0279, %if.else.cleanup_crit_edge ]
  %opsfound.2 = phi i32 [ %spec.select251, %for.end ], [ %opsfound.0283, %for.body.cleanup_crit_edge ], [ %opsfound.0283, %if.then2.cleanup_crit_edge ], [ %opsfound.0283, %if.else.cleanup_crit_edge ]
  %inc44 = add nuw nsw i32 %i.0280, 1
  %exitcond288.not = icmp eq i32 %inc44, 13
  br i1 %exitcond288.not, label %for.end45, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end45:                                        ; preds = %cleanup
  %26 = zext i32 %opsfound.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.361)
  switch i32 %opsfound.2, label %if.end149 [
    i32 1, label %if.then48
    i32 0, label %if.then90
  ]

if.then48:                                        ; preds = %for.end45
  %states50 = getelementptr [13 x %struct.nandsim_operations], ptr @ops, i32 0, i32 %idx.2, i32 1
  %op = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 9
  %27 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %states50, ptr %op, align 4
  %28 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %npstates, align 4
  %not.flag.tr = xor i1 %flag.tr, true
  %sub = sext i1 %not.flag.tr to i16
  %sub.sink = add i16 %29, %sub
  %30 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %sub.sink, ptr %30, align 2
  store i16 0, ptr %npstates, align 4
  %idxprom64 = zext i16 %sub.sink to i32
  %arrayidx65 = getelementptr i32, ptr %states50, i32 %idxprom64
  %32 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx65, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %state, align 4
  %add70 = add nuw nsw i32 %idxprom64, 1
  %arrayidx71 = getelementptr i32, ptr %states50, i32 %add70
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx71, align 4
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %37 = ptrtoint ptr %nxstate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %nxstate, align 8
  %38 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool72.not = icmp eq i32 %38, 0
  br i1 %tobool72.not, label %if.then48.cleanup203_crit_edge, label %do.body74

if.then48.cleanup203_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup203

do.body74:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_find_operation.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then78)) #11
          to label %cleanup203 [label %if.then78], !srcloc !832

if.then78:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  %call80 = tail call fastcc ptr @ns_get_state_name(i32 noundef %40)
  %41 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nxstate, align 8
  %call82 = tail call fastcc ptr @ns_get_state_name(i32 noundef %42)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_find_operation.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.121, i32 noundef %idx.2, ptr noundef %call80, ptr noundef %call82) #11
  br label %cleanup203

if.then90:                                        ; preds = %for.end45
  %43 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %npstates, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp93.not = icmp eq i16 %44, 0
  %45 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool124.not = icmp eq i32 %45, 0
  br i1 %cmp93.not, label %do.body123, label %do.body96

do.body96:                                        ; preds = %if.then90
  br i1 %tobool124.not, label %do.body96.do.end119_crit_edge, label %do.body99

do.body96.do.end119_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end119

do.body99:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_find_operation.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then111)) #11
          to label %do.end119 [label %if.then111], !srcloc !832

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 4
  %call113 = tail call fastcc ptr @ns_get_state_name(i32 noundef %47)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_find_operation.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.123, ptr noundef %call113) #11
  br label %do.end119

do.end119:                                        ; preds = %if.then111, %do.body99, %do.body96.do.end119_crit_edge
  %48 = ptrtoint ptr %npstates to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %npstates, align 4
  br label %tailrecurse

do.body123:                                       ; preds = %if.then90
  br i1 %tobool124.not, label %do.body123.do.end144_crit_edge, label %do.body126

do.body123.do.end144_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144

do.body126:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_find_operation.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then138)) #11
          to label %do.end144 [label %if.then138], !srcloc !832

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_find_operation.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.125) #11
  br label %do.end144

do.end144:                                        ; preds = %if.then138, %do.body126, %do.body123.do.end144_crit_edge
  %wp = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %49 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp145 = icmp eq i32 %50, 0
  %conv148 = select i1 %cmp145, i8 -63, i8 65
  %51 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %do.end144.ns_switch_to_ready_state.exit_crit_edge, label %do.body1.i

do.end144.ns_switch_to_ready_state.exit_crit_edge: ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_switch_to_ready_state.exit

do.body1.i:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then5.i)) #11
          to label %ns_switch_to_ready_state.exit [label %if.then5.i], !srcloc !832

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.113) #11
  br label %ns_switch_to_ready_state.exit

ns_switch_to_ready_state.exit:                    ; preds = %if.then5.i, %do.body1.i, %do.end144.ns_switch_to_ready_state.exit_crit_edge
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %state, align 4
  %nxstate.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 8
  %53 = ptrtoint ptr %nxstate.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 268435456, ptr %nxstate.i, align 8
  %op.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 9
  %54 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %op.i, align 4
  %55 = ptrtoint ptr %npstates to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %npstates, align 4
  %stateidx.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 12
  %56 = ptrtoint ptr %stateidx.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %stateidx.i, align 2
  %row.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %status14.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 1
  %57 = call ptr @memset(ptr %row.i, i32 0, i32 20)
  %58 = ptrtoint ptr %status14.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv148, ptr %status14.i, align 4
  br label %cleanup203

if.end149:                                        ; preds = %for.end45
  %59 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool176.not = icmp eq i32 %59, 0
  br i1 %flag.tr, label %do.body175, label %do.body152

do.body152:                                       ; preds = %if.end149
  br i1 %tobool176.not, label %do.body152.cleanup203_crit_edge, label %do.body155

do.body152.cleanup203_crit_edge:                  ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup203

do.body155:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_find_operation.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then167)) #11
          to label %cleanup203 [label %if.then167], !srcloc !832

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_find_operation.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.127) #11
  br label %cleanup203

do.body175:                                       ; preds = %if.end149
  br i1 %tobool176.not, label %do.body175.do.end196_crit_edge, label %do.body178

do.body175.do.end196_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196

do.body178:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_find_operation.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_find_operation, %if.then190)) #11
          to label %do.end196 [label %if.then190], !srcloc !832

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_find_operation.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.129) #11
  br label %do.end196

do.end196:                                        ; preds = %if.then190, %do.body178, %do.body175.do.end196_crit_edge
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  %62 = ptrtoint ptr %npstates to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %npstates, align 4
  %inc200 = add i16 %63, 1
  store i16 %inc200, ptr %npstates, align 4
  %idxprom201 = zext i16 %63 to i32
  %arrayidx202 = getelementptr %struct.nandsim, ptr %ns, i32 0, i32 10, i32 %idxprom201
  %64 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %arrayidx202, align 4
  br label %cleanup203

cleanup203:                                       ; preds = %do.end196, %if.then167, %do.body155, %do.body152.cleanup203_crit_edge, %ns_switch_to_ready_state.exit, %if.then78, %do.body74, %if.then48.cleanup203_crit_edge
  %retval.0 = phi i32 [ -2, %ns_switch_to_ready_state.exit ], [ -1, %do.end196 ], [ 0, %if.then78 ], [ 0, %if.then48.cleanup203_crit_edge ], [ -2, %if.then167 ], [ -2, %do.body152.cleanup203_crit_edge ], [ 0, %do.body74 ], [ -2, %do.body155 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_do_state_action(ptr noundef %ns, i32 noundef %action) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %busw = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 4
  %0 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %busw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  %and = and i32 %action, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and)
  %cmp1.not = icmp eq i32 %and, 3145728
  br i1 %cmp1.not, label %entry.sw.bb182_crit_edge, label %land.lhs.true

entry.sw.bb182_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb182

land.lhs.true:                                    ; preds = %entry
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %row, align 8
  %pgnum = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgnum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp ult i32 %3, %5
  br i1 %cmp2.not, label %if.end, label %do.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %6 = add nsw i32 %and, -1048576
  %7 = lshr exact i32 %6, 20
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.362)
  switch i32 %7, label %do.body589 [
    i32 0, label %sw.bb
    i32 2, label %if.end.sw.bb182_crit_edge
    i32 1, label %sw.bb329
    i32 3, label %do.body493
    i32 4, label %sw.bb517
    i32 5, label %do.body561
  ]

if.end.sw.bb182_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb182

sw.bb:                                            ; preds = %if.end
  %column = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %9 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %column, align 4
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %11 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgszoob, align 8
  %off = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %off, align 8
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp11.not = icmp ugt i32 %sub, %10
  br i1 %cmp11.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #14
  br label %cleanup

if.end21:                                         ; preds = %sw.bb
  %sub29 = sub i32 %sub, %10
  tail call fastcc void @ns_read_page(ptr noundef %ns, i32 noundef %sub29)
  %15 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end21.do.end53_crit_edge, label %do.body32

if.end21.do.end53_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.body32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then38)) #11
          to label %do.end53 [label %if.then38], !srcloc !832

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %row, align 8
  %18 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pgszoob, align 8
  %mul = mul i32 %19, %17
  %20 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %column, align 4
  %add = add i32 %mul, %21
  %22 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %off, align 8
  %add47 = add i32 %add, %23
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.136, i32 noundef %sub29, i32 noundef %add47) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then38, %do.body32, %if.end21.do.end53_crit_edge
  %24 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp56 = icmp eq i32 %25, 0
  br i1 %cmp56, label %do.body58, label %if.else

do.body58:                                        ; preds = %do.end53
  %26 = load i32, ptr @log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool59.not = icmp eq i32 %26, 0
  br i1 %tobool59.not, label %do.body58.do.body138_crit_edge, label %do.body61

do.body58.do.body138_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body61:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then73)) #11
          to label %do.body138 [label %if.then73], !srcloc !832

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.138, i32 noundef %28) #11
  br label %do.body138

if.else:                                          ; preds = %do.end53
  %pgsz = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %29 = ptrtoint ptr %pgsz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pgsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %30)
  %cmp85 = icmp ult i32 %25, %30
  %31 = load i32, ptr @log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool88.not = icmp eq i32 %31, 0
  br i1 %cmp85, label %do.body87, label %do.body112

do.body87:                                        ; preds = %if.else
  br i1 %tobool88.not, label %do.body87.do.body138_crit_edge, label %do.body90

do.body87.do.body138_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body90:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then102)) #11
          to label %do.body138 [label %if.then102], !srcloc !832

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.140, i32 noundef %33) #11
  br label %do.body138

do.body112:                                       ; preds = %if.else
  br i1 %tobool88.not, label %do.body112.do.body138_crit_edge, label %do.body115

do.body112.do.body138_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body115:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then127)) #11
          to label %do.body138 [label %if.then127], !srcloc !832

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.142, i32 noundef %35) #11
  br label %do.body138

do.body138:                                       ; preds = %if.then127, %do.body115, %do.body112.do.body138_crit_edge, %if.then102, %do.body90, %do.body87.do.body138_crit_edge, %if.then73, %do.body61, %do.body58.do.body138_crit_edge
  %36 = load i32, ptr @do_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool139.not = icmp eq i32 %36, 0
  br i1 %tobool139.not, label %do.body138.cleanup_crit_edge, label %cond.false144

do.body138.cleanup_crit_edge:                     ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false144:                                    ; preds = %do.body138
  %37 = load i32, ptr @access_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #11
  %.pr = load i32, ptr @do_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool150.not = icmp eq i32 %.pr, 0
  br i1 %tobool150.not, label %cond.false144.cleanup_crit_edge, label %cond.false172

cond.false144.cleanup_crit_edge:                  ; preds = %cond.false144
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false172:                                    ; preds = %cond.false144
  call void @__sanitizer_cov_trace_pc() #13
  %pgsz153 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %39 = ptrtoint ptr %pgsz153 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pgsz153, align 4
  %41 = load i32, ptr @input_cycle, align 4
  %mul154 = mul i32 %40, %41
  %div = udiv i32 %mul154, 1000
  %not.cmp715 = xor i1 %cmp, true
  %42 = zext i1 %not.cmp715 to i32
  %div155714 = lshr i32 %div, %42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %div155714) #11
  br label %cleanup

sw.bb182:                                         ; preds = %if.end.sw.bb182_crit_edge, %entry.sw.bb182_crit_edge
  %wp = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %44 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool183.not = icmp eq i32 %45, 0
  br i1 %tobool183.not, label %if.end193, label %do.end188

do.end188:                                        ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #13
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #14
  br label %cleanup

if.end193:                                        ; preds = %sw.bb182
  %row195 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %row195 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %row195, align 8
  %pgnum197 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 7
  %48 = ptrtoint ptr %pgnum197 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pgnum197, align 8
  %pgsec = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 8
  %50 = ptrtoint ptr %pgsec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pgsec, align 4
  %sub199 = sub i32 %49, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub199)
  %cmp200.not = icmp ult i32 %47, %sub199
  br i1 %cmp200.not, label %lor.lhs.false, label %if.end193.do.end211_crit_edge

if.end193.do.end211_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end211

lor.lhs.false:                                    ; preds = %if.end193
  %secsz = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 1
  %52 = ptrtoint ptr %secsz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %secsz, align 8
  %neg = sub i32 0, %53
  %and205 = and i32 %47, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end218, label %lor.lhs.false.do.end211_crit_edge

lor.lhs.false.do.end211_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end211

do.end211:                                        ; preds = %lor.lhs.false.do.end211_crit_edge, %if.end193.do.end211_crit_edge
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %47) #14
  br label %cleanup

if.end218:                                        ; preds = %lor.lhs.false
  %pgaddrbytes = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 11
  %54 = ptrtoint ptr %pgaddrbytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pgaddrbytes, align 8
  %secaddrbytes = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 12
  %56 = ptrtoint ptr %secaddrbytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %secaddrbytes, align 4
  %sub223 = sub i32 %55, %57
  %mul224 = shl i32 %sub223, 3
  %shl = shl i32 %47, %mul224
  %column226 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %58 = ptrtoint ptr %column226 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %column226, align 4
  %or = or i32 %shl, %59
  %60 = ptrtoint ptr %row195 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or, ptr %row195, align 8
  store i32 0, ptr %column226, align 4
  %secshift = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 9
  %61 = ptrtoint ptr %secshift to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %secshift, align 8
  %pgshift = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 10
  %63 = ptrtoint ptr %pgshift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pgshift, align 4
  %sub235 = sub i32 %62, %64
  %shr = lshr i32 %or, %sub235
  %65 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool237.not = icmp eq i32 %65, 0
  br i1 %tobool237.not, label %if.end218.do.body268_crit_edge, label %do.body239

if.end218.do.body268_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body268

do.body239:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then251)) #11
          to label %do.body268 [label %if.then251], !srcloc !832

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %row195 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %row195, align 8
  %pgszoob257 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %68 = ptrtoint ptr %pgszoob257 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pgszoob257, align 8
  %mul258 = mul i32 %69, %67
  %70 = ptrtoint ptr %column226 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %column226, align 4
  %add261 = add i32 %mul258, %71
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.150, i32 noundef %67, i32 noundef %add261) #11
  br label %do.body268

do.body268:                                       ; preds = %if.then251, %do.body239, %if.end218.do.body268_crit_edge
  %72 = load i32, ptr @log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool269.not = icmp eq i32 %72, 0
  br i1 %tobool269.not, label %do.body268.do.end289_crit_edge, label %do.body271

do.body268.do.end289_crit_edge:                   ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end289

do.body271:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then283)) #11
          to label %do.end289 [label %if.then283], !srcloc !832

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.152, i32 noundef %shr) #11
  br label %do.end289

do.end289:                                        ; preds = %if.then283, %do.body271, %do.body268.do.end289_crit_edge
  tail call fastcc void @ns_erase_sector(ptr noundef %ns)
  %73 = load i32, ptr @do_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool291.not = icmp eq i32 %73, 0
  br i1 %tobool291.not, label %do.end289.do.end313_crit_edge, label %if.then292

do.end289.do.end313_crit_edge:                    ; preds = %do.end289
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end313

if.then292:                                       ; preds = %do.end289
  %74 = load i32, ptr @erase_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool309.not785 = icmp eq i32 %74, 0
  br i1 %tobool309.not785, label %if.then292.do.end313_crit_edge, label %if.then292.while.body_crit_edge

if.then292.while.body_crit_edge:                  ; preds = %if.then292
  br label %while.body

if.then292.do.end313_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end313

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then292.while.body_crit_edge
  %__ms.0786 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %74, %if.then292.while.body_crit_edge ]
  %dec = add i32 %__ms.0786, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #11
  %tobool309.not = icmp eq i32 %dec, 0
  br i1 %tobool309.not, label %while.body.do.end313_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.do.end313_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end313

do.end313:                                        ; preds = %while.body.do.end313_crit_edge, %if.then292.do.end313_crit_edge, %do.end289.do.end313_crit_edge
  %76 = load ptr, ptr @erase_block_wear, align 4
  %tobool314.not = icmp eq ptr %76, null
  br i1 %tobool314.not, label %do.end313.for.cond.i.preheader_crit_edge, label %if.end.i

do.end313.for.cond.i.preheader_crit_edge:         ; preds = %do.end313
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.end.i:                                         ; preds = %do.end313
  %77 = load i32, ptr @total_wear, align 4
  %add.i = add i32 %77, 1
  store i32 %add.i, ptr @total_wear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %78 = load ptr, ptr @erase_block_wear, align 4
  %arrayidx.i = getelementptr i32, ptr %78, i32 %shr
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %80, 1
  store i32 %add5.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i)
  %cmp7.i = icmp eq i32 %add5.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end4.i.for.cond.i.preheader_crit_edge

if.end4.i.for.cond.i.preheader_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %shr) #14
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end11.i, %if.end4.i.for.cond.i.preheader_crit_edge, %do.end313.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %wb.0.in.i = phi ptr [ %wb.0.i, %for.body.i.for.cond.i_crit_edge ], [ @weak_blocks, %for.cond.i.preheader ]
  %81 = ptrtoint ptr %wb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %wb.0.i = load ptr, ptr %wb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %wb.0.i, @weak_blocks
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %erase_block_no1.i = getelementptr inbounds %struct.weak_block, ptr %wb.0.i, i32 0, i32 1
  %82 = ptrtoint ptr %erase_block_no1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %erase_block_no1.i, align 4
  %cmp2.i = icmp eq i32 %83, %shr
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %erases_done.i = getelementptr inbounds %struct.weak_block, ptr %wb.0.i, i32 0, i32 3
  %84 = ptrtoint ptr %erases_done.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %erases_done.i, align 4
  %max_erases.i = getelementptr inbounds %struct.weak_block, ptr %wb.0.i, i32 0, i32 2
  %86 = ptrtoint ptr %max_erases.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_erases.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp3.not.i = icmp ult i32 %85, %87
  br i1 %cmp3.not.i, label %if.end.i750, label %do.end323

if.end.i750:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i749 = add nuw i32 %85, 1
  %88 = ptrtoint ptr %erases_done.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i749, ptr %erases_done.i, align 4
  br label %cleanup

do.end323:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %shr) #14
  br label %cleanup

sw.bb329:                                         ; preds = %if.end
  %wp331 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 18, i32 3
  %89 = ptrtoint ptr %wp331 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wp331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool332.not = icmp eq i32 %90, 0
  br i1 %tobool332.not, label %if.end342, label %do.end337

do.end337:                                        ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #13
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #14
  br label %cleanup

if.end342:                                        ; preds = %sw.bb329
  %pgszoob344 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %91 = ptrtoint ptr %pgszoob344 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pgszoob344, align 8
  %off346 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %93 = ptrtoint ptr %off346 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %off346, align 8
  %column349 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %95 = ptrtoint ptr %column349 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %column349, align 4
  %97 = add i32 %94, %96
  %sub350 = sub i32 %92, %97
  %count = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 4
  %98 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub350, i32 %99)
  %cmp352.not = icmp eq i32 %sub350, %99
  br i1 %cmp352.not, label %if.end364, label %do.end357

do.end357:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  %call361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %99, i32 noundef %sub350) #14
  br label %cleanup

if.end364:                                        ; preds = %if.end342
  %call365 = tail call fastcc i32 @ns_prog_page(ptr noundef %ns, i32 noundef %sub350)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call365)
  %cmp366 = icmp eq i32 %call365, -1
  br i1 %cmp366, label %if.end364.cleanup_crit_edge, label %if.end368

if.end364.cleanup_crit_edge:                      ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end368:                                        ; preds = %if.end364
  %100 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %row, align 8
  %102 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool372.not = icmp eq i32 %102, 0
  br i1 %tobool372.not, label %if.end368.do.body408_crit_edge, label %do.body374

if.end368.do.body408_crit_edge:                   ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body408

do.body374:                                       ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then386)) #11
          to label %do.body408 [label %if.then386], !srcloc !832

if.then386:                                       ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %row, align 8
  %105 = ptrtoint ptr %column349 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %column349, align 4
  %107 = ptrtoint ptr %pgszoob344 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pgszoob344, align 8
  %mul395 = mul i32 %108, %104
  %add398 = add i32 %mul395, %106
  %109 = ptrtoint ptr %off346 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %off346, align 8
  %add401 = add i32 %add398, %110
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.163, i32 noundef %sub350, i32 noundef %104, i32 noundef %106, i32 noundef %add401) #11
  br label %do.body408

do.body408:                                       ; preds = %if.then386, %do.body374, %if.end368.do.body408_crit_edge
  %111 = load i32, ptr @log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool409.not = icmp eq i32 %111, 0
  br i1 %tobool409.not, label %do.body408.do.body432_crit_edge, label %do.body411

do.body408.do.body432_crit_edge:                  ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body432

do.body411:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then423)) #11
          to label %do.body432 [label %if.then423], !srcloc !832

if.then423:                                       ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.165, i32 noundef %113) #11
  br label %do.body432

do.body432:                                       ; preds = %if.then423, %do.body411, %do.body408.do.body432_crit_edge
  %114 = load i32, ptr @do_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool433.not = icmp eq i32 %114, 0
  br i1 %tobool433.not, label %do.body432.for.cond.i753.preheader_crit_edge, label %cond.false441

do.body432.for.cond.i753.preheader_crit_edge:     ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i753.preheader

cond.false441:                                    ; preds = %do.body432
  %115 = load i32, ptr @programm_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #11
  %.pr772 = load i32, ptr @do_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr772)
  %tobool447.not = icmp eq i32 %.pr772, 0
  br i1 %tobool447.not, label %cond.false441.for.cond.i753.preheader_crit_edge, label %cond.false470

cond.false441.for.cond.i753.preheader_crit_edge:  ; preds = %cond.false441
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i753.preheader

cond.false470:                                    ; preds = %cond.false441
  call void @__sanitizer_cov_trace_pc() #13
  %pgsz450 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %117 = ptrtoint ptr %pgsz450 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pgsz450, align 4
  %119 = load i32, ptr @output_cycle, align 4
  %mul451 = mul i32 %118, %119
  %div452 = udiv i32 %mul451, 1000
  %not.cmp = xor i1 %cmp, true
  %120 = zext i1 %not.cmp to i32
  %div453713 = lshr i32 %div452, %120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %div453713) #11
  br label %for.cond.i753.preheader

for.cond.i753.preheader:                          ; preds = %cond.false470, %cond.false441.for.cond.i753.preheader_crit_edge, %do.body432.for.cond.i753.preheader_crit_edge
  br label %for.cond.i753

for.cond.i753:                                    ; preds = %for.body.i755.for.cond.i753_crit_edge, %for.cond.i753.preheader
  %wp.0.in.i = phi ptr [ %wp.0.i, %for.body.i755.for.cond.i753_crit_edge ], [ @weak_pages, %for.cond.i753.preheader ]
  %122 = ptrtoint ptr %wp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %wp.0.i = load ptr, ptr %wp.0.in.i, align 4
  %cmp.not.i752 = icmp eq ptr %wp.0.i, @weak_pages
  br i1 %cmp.not.i752, label %for.cond.i753.cleanup_crit_edge, label %for.body.i755

for.cond.i753.cleanup_crit_edge:                  ; preds = %for.cond.i753
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i755:                                    ; preds = %for.cond.i753
  %page_no1.i = getelementptr inbounds %struct.weak_page, ptr %wp.0.i, i32 0, i32 1
  %123 = ptrtoint ptr %page_no1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %page_no1.i, align 4
  %cmp2.i754 = icmp eq i32 %124, %101
  br i1 %cmp2.i754, label %if.then.i757, label %for.body.i755.for.cond.i753_crit_edge

for.body.i755.for.cond.i753_crit_edge:            ; preds = %for.body.i755
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i753

if.then.i757:                                     ; preds = %for.body.i755
  %writes_done.i = getelementptr inbounds %struct.weak_page, ptr %wp.0.i, i32 0, i32 3
  %125 = ptrtoint ptr %writes_done.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %writes_done.i, align 4
  %max_writes.i = getelementptr inbounds %struct.weak_page, ptr %wp.0.i, i32 0, i32 2
  %127 = ptrtoint ptr %max_writes.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_writes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp3.not.i756 = icmp ult i32 %126, %128
  br i1 %cmp3.not.i756, label %if.end.i759, label %do.end486

if.end.i759:                                      ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #13
  %add.i758 = add nuw i32 %126, 1
  %129 = ptrtoint ptr %writes_done.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add.i758, ptr %writes_done.i, align 4
  br label %cleanup

do.end486:                                        ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #13
  %call488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %101) #14
  br label %cleanup

do.body493:                                       ; preds = %if.end
  %130 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool494.not = icmp eq i32 %130, 0
  br i1 %tobool494.not, label %do.body493.do.end514_crit_edge, label %do.body496

do.body493.do.end514_crit_edge:                   ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end514

do.body496:                                       ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then508)) #11
          to label %do.end514 [label %if.then508], !srcloc !832

if.then508:                                       ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.170) #11
  br label %do.end514

do.end514:                                        ; preds = %if.then508, %do.body496, %do.body493.do.end514_crit_edge
  %off516 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %131 = ptrtoint ptr %off516 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %off516, align 8
  br label %cleanup

sw.bb517:                                         ; preds = %if.end
  %options = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 6
  %132 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %options, align 8
  %and518 = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518)
  %tobool519.not = icmp eq i32 %and518, 0
  br i1 %tobool519.not, label %do.end524, label %do.body530

do.end524:                                        ; preds = %sw.bb517
  call void @__sanitizer_cov_trace_pc() #13
  %call526 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #14
  br label %cleanup

do.body530:                                       ; preds = %sw.bb517
  %134 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool531.not = icmp eq i32 %134, 0
  br i1 %tobool531.not, label %do.body530.do.end554_crit_edge, label %do.body533

do.body530.do.end554_crit_edge:                   ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end554

do.body533:                                       ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then545)) #11
          to label %do.end554 [label %if.then545], !srcloc !832

if.then545:                                       ; preds = %do.body533
  call void @__sanitizer_cov_trace_pc() #13
  %pgsz547 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %135 = ptrtoint ptr %pgsz547 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pgsz547, align 4
  %div548712 = lshr i32 %136, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.175, i32 noundef %div548712) #11
  br label %do.end554

do.end554:                                        ; preds = %if.then545, %do.body533, %do.body530.do.end554_crit_edge
  %pgsz556 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %137 = ptrtoint ptr %pgsz556 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pgsz556, align 4
  %div557711 = lshr i32 %138, 1
  %off559 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %139 = ptrtoint ptr %off559 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %div557711, ptr %off559, align 8
  br label %cleanup

do.body561:                                       ; preds = %if.end
  %140 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool562.not = icmp eq i32 %140, 0
  br i1 %tobool562.not, label %do.body561.do.end584_crit_edge, label %do.body564

do.body561.do.end584_crit_edge:                   ; preds = %do.body561
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end584

do.body564:                                       ; preds = %do.body561
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then576)) #11
          to label %do.end584 [label %if.then576], !srcloc !832

if.then576:                                       ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #13
  %pgsz578 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %141 = ptrtoint ptr %pgsz578 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pgsz578, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.175, i32 noundef %142) #11
  br label %do.end584

do.end584:                                        ; preds = %if.then576, %do.body564, %do.body561.do.end584_crit_edge
  %pgsz586 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 2
  %143 = ptrtoint ptr %pgsz586 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pgsz586, align 4
  %off588 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %145 = ptrtoint ptr %off588 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %off588, align 8
  br label %cleanup

do.body589:                                       ; preds = %if.end
  %146 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool590.not = icmp eq i32 %146, 0
  br i1 %tobool590.not, label %do.body589.cleanup_crit_edge, label %do.body592

do.body589.cleanup_crit_edge:                     ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body592:                                       ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_do_state_action.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_do_state_action, %if.then604)) #11
          to label %cleanup [label %if.then604], !srcloc !832

if.then604:                                       ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_do_state_action.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.177) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then604, %do.body592, %do.body589.cleanup_crit_edge, %do.end584, %do.end554, %do.end524, %do.end514, %do.end486, %if.end.i759, %for.cond.i753.cleanup_crit_edge, %if.end364.cleanup_crit_edge, %do.end357, %do.end337, %do.end323, %if.end.i750, %for.cond.i.cleanup_crit_edge, %do.end211, %do.end188, %cond.false172, %cond.false144.cleanup_crit_edge, %do.body138.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end524 ], [ -1, %do.end337 ], [ -1, %do.end357 ], [ -1, %do.end486 ], [ -1, %do.end188 ], [ -1, %do.end211 ], [ -1, %do.end323 ], [ -1, %if.end364.cleanup_crit_edge ], [ 0, %do.body589.cleanup_crit_edge ], [ 0, %if.then604 ], [ 0, %cond.false144.cleanup_crit_edge ], [ 0, %cond.false172 ], [ 0, %do.end584 ], [ 0, %do.end554 ], [ 0, %do.end514 ], [ 0, %do.end16 ], [ 0, %do.body592 ], [ 0, %do.body138.cleanup_crit_edge ], [ 0, %if.end.i750 ], [ 0, %if.end.i759 ], [ 0, %for.cond.i.cleanup_crit_edge ], [ 0, %for.cond.i753.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_read_page(ptr noundef %ns, i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  %pos.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfile = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 19
  %0 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfile, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end73, label %if.then

if.then:                                          ; preds = %entry
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %row, align 8
  %pages_written = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 20
  %4 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages_written, align 8
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %10 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  br i1 %tobool3.not, label %do.body.do.end15_crit_edge, label %do.body5

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_read_page.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_read_page, %if.then10)) #11
          to label %do.end15 [label %if.then10], !srcloc !832

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_read_page.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.180, i32 noundef %12) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body5, %do.body.do.end15_crit_edge
  %buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 %num)
  br label %cleanup140

if.else:                                          ; preds = %if.then
  br i1 %tobool3.not, label %if.else.do.end41_crit_edge, label %do.body19

if.else.do.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

do.body19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_read_page.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_read_page, %if.then31)) #11
          to label %do.end41 [label %if.then31], !srcloc !832

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %row, align 8
  %column = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %column, align 4
  %off = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %20 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %off, align 8
  %add = add i32 %21, %19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_read_page.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.182, i32 noundef %17, i32 noundef %add) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then31, %do.body19, %if.else.do.end41_crit_edge
  %22 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %row, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end41
  %gp.0.in.i.i = phi ptr [ @grave_pages, %do.end41 ], [ %gp.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %24 = ptrtoint ptr %gp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %gp.0.i.i = load ptr, ptr %gp.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %gp.0.i.i, @grave_pages
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end45_crit_edge, label %for.body.i.i

for.cond.i.i.if.end45_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

for.body.i.i:                                     ; preds = %for.cond.i.i
  %page_no1.i.i = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %page_no1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_no1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %26, %23
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %reads_done.i.i = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %reads_done.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reads_done.i.i, align 4
  %max_reads.i.i = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %max_reads.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_reads.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.not.i.i = icmp ult i32 %28, %30
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %ns_do_read_error.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add nuw i32 %28, 1
  %31 = ptrtoint ptr %reads_done.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i, ptr %reads_done.i.i, align 4
  br label %if.end45

ns_do_read_error.exit:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 8
  tail call void @prandom_bytes(ptr noundef %33, i32 noundef %num) #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %23) #14
  br label %cleanup140

if.end45:                                         ; preds = %if.end.i.i, %for.cond.i.i.if.end45_crit_edge
  %34 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %row, align 8
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %36 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pgszoob, align 8
  %mul = mul i32 %37, %35
  %column49 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %38 = ptrtoint ptr %column49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %column49, align 4
  %add50 = add i32 %mul, %39
  %conv = zext i32 %add50 to i64
  %off52 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %40 = ptrtoint ptr %off52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %off52, align 8
  %conv53 = zext i32 %41 to i64
  %add54 = add nuw nsw i64 %conv, %conv53
  %42 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfile, align 4
  %buf56 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %44 = ptrtoint ptr %buf56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf56, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i)
  %46 = ptrtoint ptr %pos.addr.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add54, ptr %pos.addr.i, align 8
  %call.i = tail call fastcc i32 @ns_get_pages(ptr noundef %ns, ptr noundef %43, i32 noundef %num, i64 noundef %add54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.ns_read_file.exit_crit_edge

if.end45.ns_read_file.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_read_file.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %52, 2048
  %or.i.i = or i32 %52, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %call2.i189 = call i32 @kernel_read(ptr noundef %43, ptr noundef %45, i32 noundef %num, ptr noundef nonnull %pos.addr.i) #11
  %53 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i9.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i9.i to ptr
  %task.i10.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i10.i, align 8
  %flags1.i11.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %flags1.i11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags1.i11.i, align 4
  %and.i12.i = and i32 %58, -2049
  %or.i13.i = or i32 %and.i12.i, %and.i.i
  store i32 %or.i13.i, ptr %flags1.i11.i, align 4
  call fastcc void @ns_put_pages(ptr noundef %ns) #11
  br label %ns_read_file.exit

ns_read_file.exit:                                ; preds = %if.end.i, %if.end45.ns_read_file.exit_crit_edge
  %retval.0.i190 = phi i32 [ %call2.i189, %if.end.i ], [ %call.i, %if.end45.ns_read_file.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i190, i32 %num)
  %cmp.not = icmp eq i32 %retval.0.i190, %num
  br i1 %cmp.not, label %if.end70, label %do.end63

do.end63:                                         ; preds = %ns_read_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %row, align 8
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %60, i32 noundef %retval.0.i190) #14
  br label %cleanup140

if.end70:                                         ; preds = %ns_read_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ns_do_bit_flips(ptr noundef %ns, i32 noundef %num)
  br label %cleanup140

if.end73:                                         ; preds = %entry
  %pages.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 13
  %61 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pages.i, align 8
  %row.i191 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %63 = ptrtoint ptr %row.i191 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %row.i191, align 8
  %arrayidx.i192 = getelementptr %union.ns_mem, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i192, align 4
  %cmp75 = icmp eq ptr %66, null
  %67 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool79.not = icmp eq i32 %67, 0
  br i1 %cmp75, label %do.body78, label %do.body104

do.body78:                                        ; preds = %if.end73
  br i1 %tobool79.not, label %do.body78.do.end101_crit_edge, label %do.body81

do.body78.do.end101_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101

do.body81:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_read_page.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_read_page, %if.then93)) #11
          to label %do.end101 [label %if.then93], !srcloc !832

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %row.i191 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %row.i191, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_read_page.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.185, i32 noundef %69) #11
  br label %do.end101

do.end101:                                        ; preds = %if.then93, %do.body81, %do.body78.do.end101_crit_edge
  %buf102 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %70 = ptrtoint ptr %buf102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf102, align 8
  %72 = call ptr @memset(ptr %71, i32 255, i32 %num)
  br label %cleanup140

do.body104:                                       ; preds = %if.end73
  br i1 %tobool79.not, label %do.body104.do.end132_crit_edge, label %do.body107

do.body104.do.end132_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

do.body107:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_read_page.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_read_page, %if.then119)) #11
          to label %do.end132 [label %if.then119], !srcloc !832

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %row.i191 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %row.i191, align 8
  %column123 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %75 = ptrtoint ptr %column123 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %column123, align 4
  %off125 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %77 = ptrtoint ptr %off125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %off125, align 8
  %add126 = add i32 %78, %76
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_read_page.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.187, i32 noundef %74, i32 noundef %add126) #11
  br label %do.end132

do.end132:                                        ; preds = %if.then119, %do.body107, %do.body104.do.end132_crit_edge
  %79 = ptrtoint ptr %row.i191 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %row.i191, align 8
  br label %for.cond.i.i197

for.cond.i.i197:                                  ; preds = %for.body.i.i200.for.cond.i.i197_crit_edge, %do.end132
  %gp.0.in.i.i194 = phi ptr [ @grave_pages, %do.end132 ], [ %gp.0.i.i195, %for.body.i.i200.for.cond.i.i197_crit_edge ]
  %81 = ptrtoint ptr %gp.0.in.i.i194 to i32
  call void @__asan_load4_noabort(i32 %81)
  %gp.0.i.i195 = load ptr, ptr %gp.0.in.i.i194, align 4
  %cmp.not.i.i196 = icmp eq ptr %gp.0.i.i195, @grave_pages
  br i1 %cmp.not.i.i196, label %for.cond.i.i197.if.end136_crit_edge, label %for.body.i.i200

for.cond.i.i197.if.end136_crit_edge:              ; preds = %for.cond.i.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

for.body.i.i200:                                  ; preds = %for.cond.i.i197
  %page_no1.i.i198 = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i195, i32 0, i32 1
  %82 = ptrtoint ptr %page_no1.i.i198 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %page_no1.i.i198, align 4
  %cmp2.i.i199 = icmp eq i32 %83, %80
  br i1 %cmp2.i.i199, label %if.then.i.i204, label %for.body.i.i200.for.cond.i.i197_crit_edge

for.body.i.i200.for.cond.i.i197_crit_edge:        ; preds = %for.body.i.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i197

if.then.i.i204:                                   ; preds = %for.body.i.i200
  %reads_done.i.i201 = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i195, i32 0, i32 3
  %84 = ptrtoint ptr %reads_done.i.i201 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reads_done.i.i201, align 4
  %max_reads.i.i202 = getelementptr inbounds %struct.grave_page, ptr %gp.0.i.i195, i32 0, i32 2
  %86 = ptrtoint ptr %max_reads.i.i202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_reads.i.i202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp3.not.i.i203 = icmp ult i32 %85, %87
  br i1 %cmp3.not.i.i203, label %if.end.i.i206, label %ns_do_read_error.exit211

if.end.i.i206:                                    ; preds = %if.then.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i205 = add nuw i32 %85, 1
  %88 = ptrtoint ptr %reads_done.i.i201 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i.i205, ptr %reads_done.i.i201, align 4
  br label %if.end136

ns_do_read_error.exit211:                         ; preds = %if.then.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i207 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %89 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf.i207, align 8
  tail call void @prandom_bytes(ptr noundef %90, i32 noundef %num) #11
  %call2.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %80) #14
  br label %cleanup140

if.end136:                                        ; preds = %if.end.i.i206, %for.cond.i.i197.if.end136_crit_edge
  %buf137 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %91 = ptrtoint ptr %buf137 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf137, align 8
  %93 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pages.i, align 8
  %95 = ptrtoint ptr %row.i191 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %row.i191, align 8
  %arrayidx.i.i = getelementptr %union.ns_mem, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i, align 4
  %column.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %99 = ptrtoint ptr %column.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %column.i, align 4
  %add.ptr.i = getelementptr i8, ptr %98, i32 %100
  %off.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %101 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %off.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %102
  %103 = call ptr @memcpy(ptr %92, ptr %add.ptr2.i, i32 %num)
  tail call fastcc void @ns_do_bit_flips(ptr noundef %ns, i32 noundef %num)
  br label %cleanup140

cleanup140:                                       ; preds = %if.end136, %ns_do_read_error.exit211, %do.end101, %if.end70, %do.end63, %ns_do_read_error.exit, %do.end15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_erase_sector(ptr nocapture noundef readonly %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfile = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 19
  %0 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfile, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pgsec = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %pgsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgsec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp80.not = icmp eq i32 %3, 0
  br i1 %cmp80.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %pages_written = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %row, align 8
  %add = add i32 %5, %i.081
  %6 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages_written, align 8
  %rem.i = and i32 %add, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div6.i = lshr i32 %add, 5
  %add.ptr.i = getelementptr i32, ptr %7, i32 %div6.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %10 = and i32 %shl.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %for.body
  %11 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %do.body.for.inc_crit_edge, label %do.body5

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_erase_sector.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_erase_sector, %if.then10)) #11
          to label %for.inc [label %if.then10], !srcloc !832

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %row, align 8
  %add13 = add i32 %13, %i.081
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_erase_sector.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.195, i32 noundef %add13) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %do.body5, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.081, 1
  %14 = ptrtoint ptr %pgsec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgsec, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end18:                                         ; preds = %entry
  %row.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %pgsec22 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 8
  %16 = ptrtoint ptr %pgsec22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgsec22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2383.not = icmp eq i32 %17, 0
  br i1 %cmp2383.not, label %if.end18.cleanup_crit_edge, label %for.body24.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body24.lr.ph:                                 ; preds = %if.end18
  %pages.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 13
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i, align 8
  %20 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %row.i, align 8
  %arrayidx.i = getelementptr %union.ns_mem, ptr %19, i32 %21
  %nand_pages_slab = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 14
  br label %for.body24

for.body24:                                       ; preds = %if.end52.for.body24_crit_edge, %for.body24.lr.ph
  %mypage.087 = phi ptr [ %arrayidx.i, %for.body24.lr.ph ], [ %incdec.ptr, %if.end52.for.body24_crit_edge ]
  %i.184 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc54, %if.end52.for.body24_crit_edge ]
  %22 = ptrtoint ptr %mypage.087 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mypage.087, align 4
  %cmp25.not = icmp eq ptr %23, null
  br i1 %cmp25.not, label %for.body24.if.end52_crit_edge, label %do.body27

for.body24.if.end52_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.body27:                                        ; preds = %for.body24
  %24 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool28.not = icmp eq i32 %24, 0
  br i1 %tobool28.not, label %do.body27.do.end51_crit_edge, label %do.body30

do.body27.do.end51_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.body30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_erase_sector.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_erase_sector, %if.then42)) #11
          to label %do.end51 [label %if.then42], !srcloc !832

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %row.i, align 8
  %add45 = add i32 %26, %i.184
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_erase_sector.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.195, i32 noundef %add45) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then42, %do.body30, %do.body27.do.end51_crit_edge
  %27 = ptrtoint ptr %nand_pages_slab to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nand_pages_slab, align 4
  %29 = ptrtoint ptr %mypage.087 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mypage.087, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %30) #11
  %31 = ptrtoint ptr %mypage.087 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mypage.087, align 4
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %for.body24.if.end52_crit_edge
  %incdec.ptr = getelementptr %union.ns_mem, ptr %mypage.087, i32 1
  %inc54 = add nuw i32 %i.184, 1
  %32 = ptrtoint ptr %pgsec22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgsec22, align 4
  %cmp23 = icmp ult i32 %inc54, %33
  br i1 %cmp23, label %if.end52.for.body24_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52.for.body24_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_prog_page(ptr noundef %ns, i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  %pos.addr.i254 = alloca i64, align 8
  %pos.addr.i238 = alloca i64, align 8
  %pos.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfile = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 19
  %0 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfile, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end107, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then.do.end10_crit_edge, label %do.body3

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_prog_page.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_prog_page, %if.then7)) #11
          to label %do.end10 [label %if.then7], !srcloc !832

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %row, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_prog_page.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.203, i32 noundef %4) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body3, %if.then.do.end10_crit_edge
  %file_buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 21
  %5 = ptrtoint ptr %file_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file_buf, align 4
  %column = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %column, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %off13 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %9 = ptrtoint ptr %off13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %off13, align 8
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %10
  %row16 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %row16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %row16, align 8
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %13 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgszoob, align 8
  %mul = mul i32 %14, %12
  %add = add i32 %mul, %8
  %conv = zext i32 %add to i64
  %conv21 = zext i32 %10 to i64
  %add22 = add nuw nsw i64 %conv, %conv21
  %pages_written = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 20
  %15 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages_written, align 8
  %div3.i = lshr i32 %12, 5
  %arrayidx.i = getelementptr i32, ptr %16, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %12, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %21 = call ptr @memset(ptr %6, i32 255, i32 %14)
  br label %if.end46

if.else:                                          ; preds = %do.end10
  %22 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfile, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i)
  %24 = ptrtoint ptr %pos.addr.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add22, ptr %pos.addr.i, align 8
  %call.i = tail call fastcc i32 @ns_get_pages(ptr noundef %ns, ptr noundef %23, i32 noundef %num, i64 noundef %add22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.ns_read_file.exit_crit_edge

if.else.ns_read_file.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_read_file.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %25 = tail call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %30, 2048
  %or.i.i = or i32 %30, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %call2.i = call i32 @kernel_read(ptr noundef %23, ptr noundef %add.ptr14, i32 noundef %num, ptr noundef nonnull %pos.addr.i) #11
  %31 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i9.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i9.i to ptr
  %task.i10.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i10.i, align 8
  %flags1.i11.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags1.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags1.i11.i, align 4
  %and.i12.i = and i32 %36, -2049
  %or.i13.i = or i32 %and.i12.i, %and.i.i
  store i32 %or.i13.i, ptr %flags1.i11.i, align 4
  call fastcc void @ns_put_pages(ptr noundef %ns) #11
  br label %ns_read_file.exit

ns_read_file.exit:                                ; preds = %if.end.i, %if.else.ns_read_file.exit_crit_edge
  %retval.0.i237 = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %if.else.ns_read_file.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i237, i32 %num)
  %cmp.not = icmp eq i32 %retval.0.i237, %num
  br i1 %cmp.not, label %ns_read_file.exit.if.end46_crit_edge, label %do.end38

ns_read_file.exit.if.end46_crit_edge:             ; preds = %ns_read_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end38:                                         ; preds = %ns_read_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %row16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %row16, align 8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %38, i32 noundef %retval.0.i237) #14
  br label %cleanup169

if.end46:                                         ; preds = %ns_read_file.exit.if.end46_crit_edge, %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp47275 = icmp sgt i32 %num, 0
  br i1 %cmp47275, label %for.body.lr.ph, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end46
  %buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 8
  %arrayidx = getelementptr i8, ptr %40, i32 %i.0276
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %arrayidx50 = getelementptr i8, ptr %add.ptr14, i32 %i.0276
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx50, align 1
  %and233 = and i8 %44, %42
  store i8 %and233, ptr %arrayidx50, align 1
  %inc = add nuw nsw i32 %i.0276, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end46.for.end_crit_edge
  br i1 %tobool26.not, label %if.then54, label %if.else86

if.then54:                                        ; preds = %for.end
  %45 = ptrtoint ptr %row16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %row16, align 8
  %conv57 = zext i32 %46 to i64
  %47 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pgszoob, align 8
  %conv60 = zext i32 %48 to i64
  %mul61 = mul nuw i64 %conv60, %conv57
  %49 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfile, align 4
  %51 = ptrtoint ptr %file_buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %file_buf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i238)
  %53 = ptrtoint ptr %pos.addr.i238 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %mul61, ptr %pos.addr.i238, align 8
  %call.i239 = call fastcc i32 @ns_get_pages(ptr noundef %ns, ptr noundef %50, i32 noundef %48, i64 noundef %mul61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool.not.i240 = icmp eq i32 %call.i239, 0
  br i1 %tobool.not.i240, label %if.end.i252, label %if.then54.ns_write_file.exit_crit_edge

if.then54.ns_write_file.exit_crit_edge:           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_write_file.exit

if.end.i252:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %54 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i.i241 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i241 to ptr
  %task.i.i242 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i242, align 8
  %flags1.i.i243 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %flags1.i.i243 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags1.i.i243, align 4
  %and.i.i244 = and i32 %59, 2048
  %or.i.i245 = or i32 %59, 2048
  store i32 %or.i.i245, ptr %flags1.i.i243, align 4
  %call2.i246 = call i32 @kernel_write(ptr noundef %50, ptr noundef %52, i32 noundef %48, ptr noundef nonnull %pos.addr.i238) #11
  %60 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i9.i247 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i9.i247 to ptr
  %task.i10.i248 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i10.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i10.i248, align 8
  %flags1.i11.i249 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags1.i11.i249 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags1.i11.i249, align 4
  %and.i12.i250 = and i32 %65, -2049
  %or.i13.i251 = or i32 %and.i12.i250, %and.i.i244
  store i32 %or.i13.i251, ptr %flags1.i11.i249, align 4
  call fastcc void @ns_put_pages(ptr noundef %ns) #11
  br label %ns_write_file.exit

ns_write_file.exit:                               ; preds = %if.end.i252, %if.then54.ns_write_file.exit_crit_edge
  %retval.0.i253 = phi i32 [ %call2.i246, %if.end.i252 ], [ %call.i239, %if.then54.ns_write_file.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i238)
  %66 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pgszoob, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i253, i32 %67)
  %cmp69.not = icmp eq i32 %retval.0.i253, %67
  %68 = ptrtoint ptr %row16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %row16, align 8
  br i1 %cmp69.not, label %if.end82, label %do.end75

do.end75:                                         ; preds = %ns_write_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %69, i32 noundef %retval.0.i253) #14
  br label %cleanup169

if.end82:                                         ; preds = %ns_write_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pages_written, align 8
  %rem.i = and i32 %69, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %69, 5
  %add.ptr.i = getelementptr i32, ptr %71, i32 %div2.i
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %73, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup169

if.else86:                                        ; preds = %for.end
  %74 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfile, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i254)
  %76 = ptrtoint ptr %pos.addr.i254 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %add22, ptr %pos.addr.i254, align 8
  %call.i255 = call fastcc i32 @ns_get_pages(ptr noundef %ns, ptr noundef %75, i32 noundef %num, i64 noundef %add22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.end.i268, label %if.else86.ns_write_file.exit270_crit_edge

if.else86.ns_write_file.exit270_crit_edge:        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_write_file.exit270

if.end.i268:                                      ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  %77 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i.i257 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i257 to ptr
  %task.i.i258 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i258 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i258, align 8
  %flags1.i.i259 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %flags1.i.i259 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags1.i.i259, align 4
  %and.i.i260 = and i32 %82, 2048
  %or.i.i261 = or i32 %82, 2048
  store i32 %or.i.i261, ptr %flags1.i.i259, align 4
  %call2.i262 = call i32 @kernel_write(ptr noundef %75, ptr noundef %add.ptr14, i32 noundef %num, ptr noundef nonnull %pos.addr.i254) #11
  %83 = call i32 @llvm.read_register.i32(metadata !819) #11
  %and.i.i9.i263 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i9.i263 to ptr
  %task.i10.i264 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i10.i264 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i10.i264, align 8
  %flags1.i11.i265 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %flags1.i11.i265 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags1.i11.i265, align 4
  %and.i12.i266 = and i32 %88, -2049
  %or.i13.i267 = or i32 %and.i12.i266, %and.i.i260
  store i32 %or.i13.i267, ptr %flags1.i11.i265, align 4
  call fastcc void @ns_put_pages(ptr noundef %ns) #11
  br label %ns_write_file.exit270

ns_write_file.exit270:                            ; preds = %if.end.i268, %if.else86.ns_write_file.exit270_crit_edge
  %retval.0.i269 = phi i32 [ %call2.i262, %if.end.i268 ], [ %call.i255, %if.else86.ns_write_file.exit270_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i254)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i269, i32 %num)
  %cmp89.not = icmp eq i32 %retval.0.i269, %num
  br i1 %cmp89.not, label %ns_write_file.exit270.cleanup169_crit_edge, label %do.end95

ns_write_file.exit270.cleanup169_crit_edge:       ; preds = %ns_write_file.exit270
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup169

do.end95:                                         ; preds = %ns_write_file.exit270
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %row16 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %row16, align 8
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %90, i32 noundef %retval.0.i269) #14
  br label %cleanup169

if.end107:                                        ; preds = %entry
  %pages.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 13
  %91 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pages.i, align 8
  %row.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %93 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %row.i, align 8
  %arrayidx.i271 = getelementptr %union.ns_mem, ptr %92, i32 %94
  %95 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i271, align 4
  %cmp109 = icmp eq ptr %96, null
  br i1 %cmp109, label %do.body112, label %if.end107.if.end153_crit_edge

if.end107.if.end153_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

do.body112:                                       ; preds = %if.end107
  %97 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool113.not = icmp eq i32 %97, 0
  br i1 %tobool113.not, label %do.body112.do.end135_crit_edge, label %do.body115

do.body112.do.end135_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

do.body115:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_prog_page.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_prog_page, %if.then127)) #11
          to label %do.end135 [label %if.then127], !srcloc !832

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %row.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_prog_page.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.211, i32 noundef %99) #11
  br label %do.end135

do.end135:                                        ; preds = %if.then127, %do.body115, %do.body112.do.end135_crit_edge
  %nand_pages_slab = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 14
  %100 = ptrtoint ptr %nand_pages_slab to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nand_pages_slab, align 4
  %call136 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %101, i32 noundef 3136) #11
  %102 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call136, ptr %arrayidx.i271, align 4
  %cmp137 = icmp eq ptr %call136, null
  br i1 %cmp137, label %do.end143, label %if.end150

do.end143:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %row.i, align 8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %104) #14
  br label %cleanup169

if.end150:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #13
  %pgszoob152 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %105 = ptrtoint ptr %pgszoob152 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pgszoob152, align 8
  %107 = call ptr @memset(ptr %call136, i32 255, i32 %106)
  br label %if.end153

if.end153:                                        ; preds = %if.end150, %if.end107.if.end153_crit_edge
  %108 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pages.i, align 8
  %110 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %row.i, align 8
  %arrayidx.i.i = getelementptr %union.ns_mem, ptr %109, i32 %111
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i, align 4
  %column.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %114 = ptrtoint ptr %column.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %column.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %113, i32 %115
  %off.i = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  %116 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %off.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i272, i32 %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp156277 = icmp sgt i32 %num, 0
  br i1 %cmp156277, label %for.body158.lr.ph, label %if.end153.cleanup169_crit_edge

if.end153.cleanup169_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup169

for.body158.lr.ph:                                ; preds = %if.end153
  %buf159 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  br label %for.body158

for.body158:                                      ; preds = %for.body158.for.body158_crit_edge, %for.body158.lr.ph
  %i.1278 = phi i32 [ 0, %for.body158.lr.ph ], [ %inc167, %for.body158.for.body158_crit_edge ]
  %118 = ptrtoint ptr %buf159 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buf159, align 8
  %arrayidx160 = getelementptr i8, ptr %119, i32 %i.1278
  %120 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx160, align 1
  %arrayidx162 = getelementptr i8, ptr %add.ptr2.i, i32 %i.1278
  %122 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx162, align 1
  %and164232 = and i8 %123, %121
  store i8 %and164232, ptr %arrayidx162, align 1
  %inc167 = add nuw nsw i32 %i.1278, 1
  %exitcond279.not = icmp eq i32 %inc167, %num
  br i1 %exitcond279.not, label %for.body158.cleanup169_crit_edge, label %for.body158.for.body158_crit_edge

for.body158.for.body158_crit_edge:                ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body158

for.body158.cleanup169_crit_edge:                 ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup169

cleanup169:                                       ; preds = %for.body158.cleanup169_crit_edge, %if.end153.cleanup169_crit_edge, %do.end143, %do.end95, %ns_write_file.exit270.cleanup169_crit_edge, %if.end82, %do.end75, %do.end38
  %retval.2 = phi i32 [ -1, %do.end143 ], [ -1, %do.end38 ], [ -1, %do.end95 ], [ -1, %do.end75 ], [ 0, %if.end82 ], [ 0, %ns_write_file.exit270.cleanup169_crit_edge ], [ 0, %if.end153.cleanup169_crit_edge ], [ 0, %for.body158.cleanup169_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_do_bit_flips(ptr nocapture noundef readonly %ns, i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bitflips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @prandom_u32() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %call)
  %cmp = icmp ult i32 %call, 4194304
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, ptr @bitflips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp ugt i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @prandom_u32() #11
  %2 = load i32, ptr @bitflips, align 4
  %rem = urem i32 %call3, %2
  %add = add nuw i32 %rem, 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %flips.0 = phi i32 [ %add, %if.then2 ], [ 1, %if.then.if.end_crit_edge ]
  %mul = shl i32 %num, 3
  %buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 15
  %row = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 2
  %column = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 3
  %off = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 17, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %flips.124 = phi i32 [ %flips.0, %if.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %flips.124, -1
  %call5 = tail call i32 @prandom_u32() #11
  %rem6 = urem i32 %call5, %mul
  %rem723 = and i32 %rem6, 7
  %shl = shl nuw nsw i32 1, %rem723
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 8
  %div = sdiv i32 %rem6, 8
  %arrayidx = getelementptr i8, ptr %4, i32 %div
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = trunc i32 %shl to i8
  %conv8 = xor i8 %6, %7
  store i8 %conv8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %row, align 8
  %10 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %column, align 4
  %12 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %off, align 8
  %add12 = add i32 %13, %11
  %14 = load ptr, ptr @nsmtd, align 4
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 52
  %15 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ecc_stats, align 4
  %failed = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 52, i32 1
  %17 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %failed, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %rem6, i32 noundef %9, i32 noundef %add12, i32 noundef %16, i32 noundef %18) #14
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %while.body.if.end17_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %while.body.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_get_pages(ptr nocapture noundef %ns, ptr nocapture noundef readonly %file, i32 noundef %count, i64 noundef %pos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = lshr i64 %pos, 12
  %conv = trunc i64 %2 to i32
  %conv1 = zext i32 %count to i64
  %add = add i64 %pos, 17592186044415
  %sub = add i64 %add, %conv1
  %3 = lshr i64 %sub, 12
  %conv3 = trunc i64 %3 to i32
  %sub4 = sub i32 -16, %conv
  %4 = add i32 %sub4, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %4)
  %cmp = icmp ult i32 %4, -17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %held_cnt = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 23
  %5 = ptrtoint ptr %held_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %held_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv3)
  %cmp7.not52 = icmp ugt i32 %conv, %conv3
  br i1 %cmp7.not52, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %if.end.for.body_crit_edge
  %index.053 = phi i32 [ %inc25, %if.end23.for.body_crit_edge ], [ %conv, %if.end.for.body_crit_edge ]
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %index.053, i32 noundef 0, i32 noundef 0) #11
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.then11, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then11:                                        ; preds = %for.body
  %call.i47 = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %index.053, i32 noundef 7, i32 noundef 3136) #11
  %cmp13 = icmp eq ptr %call.i47, null
  br i1 %cmp13, label %if.end18, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end18:                                         ; preds = %if.then11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call16 = tail call i32 @write_inode_now(ptr noundef %7, i32 noundef 1) #11
  %call.i48 = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %index.053, i32 noundef 7, i32 noundef 3136) #11
  %cmp19 = icmp eq ptr %call.i48, null
  br i1 %cmp19, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ns_put_pages(ptr noundef %ns)
  br label %cleanup

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %if.then11.if.end22_crit_edge
  %page.051 = phi ptr [ %call.i48, %if.end18.if.end22_crit_edge ], [ %call.i47, %if.then11.if.end22_crit_edge ]
  tail call void @unlock_page(ptr noundef nonnull %page.051) #11
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %for.body.if.end23_crit_edge
  %page.1 = phi ptr [ %page.051, %if.end22 ], [ %call.i, %for.body.if.end23_crit_edge ]
  %8 = ptrtoint ptr %held_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %held_cnt, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %held_cnt, align 8
  %arrayidx = getelementptr %struct.nandsim, ptr %ns, i32 0, i32 22, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %page.1, ptr %arrayidx, align 4
  %inc25 = add i32 %index.053, 1
  %cmp7.not = icmp ugt i32 %inc25, %conv3
  br i1 %cmp7.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_put_pages(ptr nocapture noundef readonly %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %held_cnt = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 23
  %0 = ptrtoint ptr %held_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %held_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nandsim, ptr %ns, i32 0, i32 22, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !830

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !834

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.190) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !835
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !836
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !837
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !838
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ns_put_pages, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !832

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %8) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %13 = ptrtoint ptr %held_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %held_cnt, align 8
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ns_nand_read_byte(ptr nocapture noundef readonly %chip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lines = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i32 noundef 0) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ale = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

lor.lhs.false:                                    ; preds = %if.end
  %cle = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end19, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end13:                                         ; preds = %lor.lhs.false.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, i32 noundef 0) #14
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.end25, label %if.end33

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc ptr @ns_get_state_name(i32 noundef %9)
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %call28, i32 noundef 0) #14
  br label %cleanup

if.end33:                                         ; preds = %if.end19
  %and35 = and i32 %9, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and35)
  %cmp = icmp eq i32 %and35, 12288
  br i1 %cmp, label %do.body38, label %if.end57

do.body38:                                        ; preds = %if.end33
  %10 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool39.not = icmp eq i32 %10, 0
  br i1 %tobool39.not, label %do.body38.do.end54_crit_edge, label %do.body41

do.body38.do.end54_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.body41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_read_byte, %if.then47)) #11
          to label %do.end54 [label %if.then47], !srcloc !832

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 4
  %conv48 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_read_byte.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.235, i32 noundef %conv48) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %do.body41, %do.body38.do.end54_crit_edge
  %status56 = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %status56 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status56, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end33
  %count = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 4
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 8
  %num = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 17, i32 5
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp60 = icmp eq i32 %16, %18
  br i1 %cmp60, label %do.end66, label %if.end72

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, i32 noundef 0) #14
  br label %cleanup

if.end72:                                         ; preds = %if.end57
  %19 = zext i32 %and35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.363)
  switch i32 %and35, label %do.body124 [
    i32 4096, label %sw.bb
    i32 8192, label %do.body92
  ]

sw.bb:                                            ; preds = %if.end72
  %busw = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %busw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %busw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp75 = icmp eq i32 %21, 8
  %buf = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 8
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %23, i32 %16
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %add = add i32 %16, 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %16, 1
  %arrayidx85 = getelementptr i16, ptr %23, i32 %shr
  %26 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx85, align 2
  %28 = lshr i16 %27, 8
  %conv86 = trunc i16 %28 to i8
  %add89 = add i32 %16, 2
  br label %sw.epilog

do.body92:                                        ; preds = %if.end72
  %29 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool93.not = icmp eq i32 %29, 0
  br i1 %tobool93.not, label %do.body92.do.end117_crit_edge, label %do.body95

do.body92.do.end117_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end117

do.body95:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_read_byte, %if.then107)) #11
          to label %do.end117 [label %if.then107], !srcloc !832

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 8
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_read_byte.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.240, i32 noundef %31, i32 noundef %33) #11
  br label %do.end117

do.end117:                                        ; preds = %if.then107, %do.body95, %do.body92.do.end117_crit_edge
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count, align 8
  %arrayidx120 = getelementptr %struct.nandsim, ptr %1, i32 0, i32 5, i32 %35
  %36 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx120, align 1
  %add123 = add i32 %35, 1
  br label %sw.epilog

do.body124:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nandsim.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1922, 0\0A.popsection", ""() #11, !srcloc !839
  unreachable

sw.epilog:                                        ; preds = %do.end117, %if.else, %if.then77
  %add.sink = phi i32 [ %add, %if.then77 ], [ %add89, %if.else ], [ %add123, %do.end117 ]
  %outb.0 = phi i8 [ %25, %if.then77 ], [ %conv86, %if.else ], [ %37, %do.end117 ]
  %38 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.sink, ptr %count, align 8
  %39 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.sink, i32 %40)
  %cmp134 = icmp eq i32 %add.sink, %40
  br i1 %cmp134, label %do.body137, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body137:                                       ; preds = %sw.epilog
  %41 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool138.not = icmp eq i32 %41, 0
  br i1 %tobool138.not, label %do.body137.do.end158_crit_edge, label %do.body140

do.body137.do.end158_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end158

do.body140:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ns_nand_read_byte, %if.then152)) #11
          to label %do.end158 [label %if.then152], !srcloc !832

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ns_nand_read_byte.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.242) #11
  br label %do.end158

do.end158:                                        ; preds = %if.then152, %do.body140, %do.body137.do.end158_crit_edge
  %nxstate = getelementptr inbounds %struct.nandsim, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %nxstate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nxstate, align 8
  %and159 = and i32 %43, -7340033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %cmp160 = icmp eq i32 %and159, 0
  br i1 %cmp160, label %if.then162, label %do.end158.cleanup_crit_edge

do.end158.cleanup_crit_edge:                      ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then162:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ns_switch_state(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %do.end158.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end66, %do.end54, %do.end25, %do.end13, %do.end
  %retval.0 = phi i8 [ 0, %do.end13 ], [ %14, %do.end54 ], [ 0, %do.end66 ], [ 0, %do.end25 ], [ 0, %do.end ], [ %outb.0, %do.end158.cleanup_crit_edge ], [ %outb.0, %if.then162 ], [ %outb.0, %sw.epilog.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_alloc_device(ptr nocapture noundef %ns) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cache_file, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end55, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @filp_open(ptr noundef nonnull %0, i32 noundef 131138, i16 noundef zeroext 384) #11
  %cmp.i118 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %f_mode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.320) #14
  br label %err_close_filp

if.end10:                                         ; preds = %if.end
  %and12 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323) #14
  br label %err_close_filp

if.end23:                                         ; preds = %if.end10
  %pgnum = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgnum, align 8
  %sub = add i32 %5, 31
  %6 = lshr i32 %sub, 3
  %7 = and i32 %6, 536870908
  %call25 = tail call noalias ptr @vzalloc(i32 noundef %7) #17
  %pages_written = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 20
  %8 = ptrtoint ptr %pages_written to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %pages_written, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end32, label %if.end8.i

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326) #14
  br label %err_close_filp

if.end8.i:                                        ; preds = %if.end23
  %pgszoob = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %9 = ptrtoint ptr %pgszoob to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgszoob, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #17
  %file_buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 21
  %11 = ptrtoint ptr %file_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %file_buf, align 4
  %tobool41.not = icmp eq ptr %call9.i, null
  br i1 %tobool41.not, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329) #14
  %12 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages_written, align 8
  tail call void @vfree(ptr noundef %13) #11
  br label %err_close_filp

if.end51:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %cfile52 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 19
  %14 = ptrtoint ptr %cfile52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %cfile52, align 4
  br label %cleanup

err_close_filp:                                   ; preds = %do.end46, %do.end32, %do.end18, %do.end
  %err.0 = phi i32 [ -12, %do.end46 ], [ -12, %do.end32 ], [ -22, %do.end18 ], [ -22, %do.end ]
  %call54 = tail call i32 @filp_close(ptr noundef %call, ptr noundef null) #11
  br label %cleanup

if.end55:                                         ; preds = %entry
  %pgnum57 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 7
  %15 = ptrtoint ptr %pgnum57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pgnum57, align 8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #11
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  %retval.0.i119 = select i1 %18, i32 -1, i32 %19
  %call59 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i119) #17
  %pages = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 13
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call59, ptr %pages, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end66, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end55
  %21 = ptrtoint ptr %pgnum57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pgnum57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp123.not = icmp eq i32 %22, 0
  br i1 %cmp123.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end66:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.332) #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %23 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr %union.ns_mem, ptr %24, i32 %i.0124
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0124, 1
  %26 = ptrtoint ptr %pgnum57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pgnum57, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pgszoob76 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 5
  %28 = ptrtoint ptr %pgszoob76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pgszoob76, align 8
  %call77 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.42, i32 noundef %29, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %nand_pages_slab = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 14
  %30 = ptrtoint ptr %nand_pages_slab to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call77, ptr %nand_pages_slab, align 4
  %tobool79.not = icmp eq ptr %call77, null
  br i1 %tobool79.not, label %do.end84, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end84:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335) #14
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages, align 8
  tail call void @vfree(ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %for.end.cleanup_crit_edge, %do.end66, %err_close_filp, %if.end51, %if.then2
  %retval.0 = phi i32 [ %1, %if.then2 ], [ 0, %if.end51 ], [ %err.0, %err_close_filp ], [ -12, %do.end84 ], [ -12, %do.end66 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_free_device(ptr nocapture noundef readonly %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfile = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 19
  %0 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfile, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %file_buf = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 21
  %2 = ptrtoint ptr %file_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file_buf, align 4
  tail call void @kfree(ptr noundef %3) #11
  %pages_written = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 20
  %4 = ptrtoint ptr %pages_written to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages_written, align 8
  tail call void @vfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfile, align 4
  %call = tail call i32 @filp_close(ptr noundef %7, ptr noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 13
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %pgnum = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 16, i32 7
  %10 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pgnum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp26.not = icmp eq i32 %11, 0
  br i1 %cmp26.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nand_pages_slab = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr %union.ns_mem, ptr %13, i32 %i.027
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %nand_pages_slab to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nand_pages_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %15) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %18 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pgnum, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nand_pages_slab10 = getelementptr inbounds %struct.nandsim, ptr %ns, i32 0, i32 14
  %20 = ptrtoint ptr %nand_pages_slab10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nand_pages_slab10, align 4
  tail call void @kmem_cache_destroy(ptr noundef %21) #11
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 8
  tail call void @vfree(ptr noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ns_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_show(ptr noundef %m, ptr nocapture noundef readnone %private) #3 align 64 {
entry:
  %deciles = alloca [10 x i32], align 4
  %decile_max = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %deciles) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %decile_max) #11
  %0 = load i32, ptr @wear_eb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp102.not = icmp eq i32 %0, 0
  br i1 %cmp102.not, label %entry.for.cond5.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond5.preheader

for.body.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr @erase_block_wear, align 4
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %wmin.0.lcssa = phi i32 [ -1, %entry.for.cond5.preheader_crit_edge ], [ %16, %for.body.for.cond5.preheader_crit_edge ]
  %wmax.0.lcssa = phi i32 [ 0, %entry.for.cond5.preheader_crit_edge ], [ %17, %for.body.for.cond5.preheader_crit_edge ]
  %tot.0.lcssa = phi i32 [ 0, %entry.for.cond5.preheader_crit_edge ], [ %add, %for.body.for.cond5.preheader_crit_edge ]
  %2 = call ptr @memset(ptr %deciles, i32 0, i32 36)
  %add10 = add i32 %wmax.0.lcssa, 5
  %div = udiv i32 %add10, 10
  %3 = ptrtoint ptr %decile_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %decile_max, align 4
  %mul.1 = shl i32 %wmax.0.lcssa, 1
  %add10.1 = add i32 %mul.1, 5
  %div.1 = udiv i32 %add10.1, 10
  %arrayidx11.1 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div.1, ptr %arrayidx11.1, align 4
  %mul.2 = mul i32 %wmax.0.lcssa, 3
  %add10.2 = add i32 %mul.2, 5
  %div.2 = udiv i32 %add10.2, 10
  %arrayidx11.2 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.2, ptr %arrayidx11.2, align 4
  %mul.3 = shl i32 %wmax.0.lcssa, 2
  %add10.3 = add i32 %mul.3, 5
  %div.3 = udiv i32 %add10.3, 10
  %arrayidx11.3 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.3, ptr %arrayidx11.3, align 4
  %mul.4 = mul i32 %wmax.0.lcssa, 5
  %add10.4 = add i32 %mul.4, 5
  %div.4 = udiv i32 %add10.4, 10
  %arrayidx11.4 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.4, ptr %arrayidx11.4, align 4
  %mul.5 = mul i32 %wmax.0.lcssa, 6
  %add10.5 = add i32 %mul.5, 5
  %div.5 = udiv i32 %add10.5, 10
  %arrayidx11.5 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.5, ptr %arrayidx11.5, align 4
  %mul.6 = mul i32 %wmax.0.lcssa, 7
  %add10.6 = add i32 %mul.6, 5
  %div.6 = udiv i32 %add10.6, 10
  %arrayidx11.6 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div.6, ptr %arrayidx11.6, align 4
  %mul.7 = shl i32 %wmax.0.lcssa, 3
  %add10.7 = or i32 %mul.7, 4
  %div.7 = udiv i32 %add10.7, 10
  %arrayidx11.7 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.7, ptr %arrayidx11.7, align 4
  %mul.8 = mul i32 %wmax.0.lcssa, 9
  %add10.8 = add i32 %mul.8, 5
  %div.8 = udiv i32 %add10.8, 10
  %arrayidx11.8 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 8
  %11 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.8, ptr %arrayidx11.8, align 4
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 9
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %wmax.0.lcssa, ptr %arrayidx16, align 4
  br i1 %cmp102.not, label %for.cond5.preheader.for.body40.peel.next_crit_edge, label %for.body19.lr.ph

for.cond5.preheader.for.body40.peel.next_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40.peel.next

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tot.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %wmax.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %17, %for.body.for.body_crit_edge ]
  %wmin.0103 = phi i32 [ -1, %for.body.lr.ph ], [ %16, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.0106
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %wmin.0103)
  %17 = tail call i32 @llvm.umax.i32(i32 %15, i32 %wmax.0104)
  %add = add i32 %15, %tot.0105
  %inc = add nuw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.body.for.cond5.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond5.preheader

for.body19.lr.ph:                                 ; preds = %for.cond5.preheader
  %18 = load ptr, ptr @erase_block_wear, align 4
  %19 = ptrtoint ptr %decile_max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %decile_max, align 4
  br label %for.body19

for.body19:                                       ; preds = %for.end33.for.body19_crit_edge, %for.body19.lr.ph
  %i.2113 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc35, %for.end33.for.body19_crit_edge ]
  %arrayidx21 = getelementptr i32, ptr %18, i32 %i.2113
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp26.not = icmp ugt i32 %22, %20
  br i1 %cmp26.not, label %for.inc31, label %for.body19.if.then27_crit_edge

for.body19.if.then27_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %for.inc31.8.if.then27_crit_edge, %for.inc31.7.if.then27_crit_edge, %for.inc31.6.if.then27_crit_edge, %for.inc31.5.if.then27_crit_edge, %for.inc31.4.if.then27_crit_edge, %for.inc31.3.if.then27_crit_edge, %for.inc31.2.if.then27_crit_edge, %for.inc31.1.if.then27_crit_edge, %for.inc31.if.then27_crit_edge, %for.body19.if.then27_crit_edge
  %d.0111.lcssa = phi i32 [ 0, %for.body19.if.then27_crit_edge ], [ 1, %for.inc31.if.then27_crit_edge ], [ 2, %for.inc31.1.if.then27_crit_edge ], [ 3, %for.inc31.2.if.then27_crit_edge ], [ 4, %for.inc31.3.if.then27_crit_edge ], [ 5, %for.inc31.4.if.then27_crit_edge ], [ 6, %for.inc31.5.if.then27_crit_edge ], [ 7, %for.inc31.6.if.then27_crit_edge ], [ 8, %for.inc31.7.if.then27_crit_edge ], [ 9, %for.inc31.8.if.then27_crit_edge ]
  %arrayidx28 = getelementptr [10 x i32], ptr %deciles, i32 0, i32 %d.0111.lcssa
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %24, 1
  store i32 %add29, ptr %arrayidx28, align 4
  br label %for.end33

for.inc31:                                        ; preds = %for.body19
  %25 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp26.not.1 = icmp ugt i32 %22, %26
  br i1 %cmp26.not.1, label %for.inc31.1, label %for.inc31.if.then27_crit_edge

for.inc31.if.then27_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.1:                                      ; preds = %for.inc31
  %27 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp26.not.2 = icmp ugt i32 %22, %28
  br i1 %cmp26.not.2, label %for.inc31.2, label %for.inc31.1.if.then27_crit_edge

for.inc31.1.if.then27_crit_edge:                  ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.2:                                      ; preds = %for.inc31.1
  %29 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %30)
  %cmp26.not.3 = icmp ugt i32 %22, %30
  br i1 %cmp26.not.3, label %for.inc31.3, label %for.inc31.2.if.then27_crit_edge

for.inc31.2.if.then27_crit_edge:                  ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.3:                                      ; preds = %for.inc31.2
  %31 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %32)
  %cmp26.not.4 = icmp ugt i32 %22, %32
  br i1 %cmp26.not.4, label %for.inc31.4, label %for.inc31.3.if.then27_crit_edge

for.inc31.3.if.then27_crit_edge:                  ; preds = %for.inc31.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.4:                                      ; preds = %for.inc31.3
  %33 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx11.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %34)
  %cmp26.not.5 = icmp ugt i32 %22, %34
  br i1 %cmp26.not.5, label %for.inc31.5, label %for.inc31.4.if.then27_crit_edge

for.inc31.4.if.then27_crit_edge:                  ; preds = %for.inc31.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.5:                                      ; preds = %for.inc31.4
  %35 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %36)
  %cmp26.not.6 = icmp ugt i32 %22, %36
  br i1 %cmp26.not.6, label %for.inc31.6, label %for.inc31.5.if.then27_crit_edge

for.inc31.5.if.then27_crit_edge:                  ; preds = %for.inc31.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.6:                                      ; preds = %for.inc31.5
  %37 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx11.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %38)
  %cmp26.not.7 = icmp ugt i32 %22, %38
  br i1 %cmp26.not.7, label %for.inc31.7, label %for.inc31.6.if.then27_crit_edge

for.inc31.6.if.then27_crit_edge:                  ; preds = %for.inc31.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.7:                                      ; preds = %for.inc31.6
  %39 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %40)
  %cmp26.not.8 = icmp ugt i32 %22, %40
  br i1 %cmp26.not.8, label %for.inc31.8, label %for.inc31.7.if.then27_crit_edge

for.inc31.7.if.then27_crit_edge:                  ; preds = %for.inc31.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.8:                                      ; preds = %for.inc31.7
  %41 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %42)
  %cmp26.not.9 = icmp ugt i32 %22, %42
  br i1 %cmp26.not.9, label %for.inc31.8.for.end33_crit_edge, label %for.inc31.8.if.then27_crit_edge

for.inc31.8.if.then27_crit_edge:                  ; preds = %for.inc31.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

for.inc31.8.for.end33_crit_edge:                  ; preds = %for.inc31.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end33

for.end33:                                        ; preds = %for.inc31.8.for.end33_crit_edge, %if.then27
  %inc35 = add nuw i32 %i.2113, 1
  %exitcond121.not = icmp eq i32 %inc35, %0
  br i1 %exitcond121.not, label %for.end33.for.body40.peel.next_crit_edge, label %for.end33.for.body19_crit_edge

for.end33.for.body19_crit_edge:                   ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.end33.for.body40.peel.next_crit_edge:         ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40.peel.next

for.body40.peel.next:                             ; preds = %for.end33.for.body40.peel.next_crit_edge, %for.cond5.preheader.for.body40.peel.next_crit_edge
  %div37 = udiv i32 %tot.0.lcssa, %0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.344, i32 noundef %tot.0.lcssa) #11
  %43 = load i32, ptr @wear_eb_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.345, i32 noundef %43) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.346, i32 noundef %div37) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.347, i32 noundef %wmax.0.lcssa) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.348, i32 noundef %wmin.0.lcssa) #11
  %44 = ptrtoint ptr %decile_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %decile_max, align 4
  %46 = ptrtoint ptr %deciles to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %deciles, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef 0, i32 noundef %45, i32 noundef %47) #11
  %48 = ptrtoint ptr %decile_max to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %decile_max, align 4
  %add42 = add i32 %49, 1
  %arrayidx43 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %51)
  %cmp44 = icmp ugt i32 %add42, %51
  br i1 %cmp44, label %for.body40.peel.next.cleanup_crit_edge, label %if.end46

for.body40.peel.next.cleanup_crit_edge:           ; preds = %for.body40.peel.next
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %for.body40.peel.next
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42, i32 noundef %51, i32 noundef %53) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %for.body40.peel.next.cleanup_crit_edge
  %arrayidx41.1 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx41.1, align 4
  %add42.1 = add i32 %55, 1
  %arrayidx43.1 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx43.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.1, i32 %57)
  %cmp44.1 = icmp ugt i32 %add42.1, %57
  br i1 %cmp44.1, label %cleanup.cleanup.1_crit_edge, label %if.end46.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end46.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.1 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx48.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.1, i32 noundef %57, i32 noundef %59) #11
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end46.1, %cleanup.cleanup.1_crit_edge
  %arrayidx41.2 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx41.2, align 4
  %add42.2 = add i32 %61, 1
  %arrayidx43.2 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx43.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.2, i32 %63)
  %cmp44.2 = icmp ugt i32 %add42.2, %63
  br i1 %cmp44.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end46.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.end46.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.2 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx48.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.2, i32 noundef %63, i32 noundef %65) #11
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end46.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx41.3 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx41.3, align 4
  %add42.3 = add i32 %67, 1
  %arrayidx43.3 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 4
  %68 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx43.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.3, i32 %69)
  %cmp44.3 = icmp ugt i32 %add42.3, %69
  br i1 %cmp44.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end46.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.end46.3:                                       ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.3 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 4
  %70 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx48.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.3, i32 noundef %69, i32 noundef %71) #11
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end46.3, %cleanup.2.cleanup.3_crit_edge
  %arrayidx41.4 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx41.4, align 4
  %add42.4 = add i32 %73, 1
  %arrayidx43.4 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 5
  %74 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx43.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.4, i32 %75)
  %cmp44.4 = icmp ugt i32 %add42.4, %75
  br i1 %cmp44.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end46.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.4

if.end46.4:                                       ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.4 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 5
  %76 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx48.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.4, i32 noundef %75, i32 noundef %77) #11
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end46.4, %cleanup.3.cleanup.4_crit_edge
  %arrayidx41.5 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx41.5, align 4
  %add42.5 = add i32 %79, 1
  %arrayidx43.5 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 6
  %80 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx43.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.5, i32 %81)
  %cmp44.5 = icmp ugt i32 %add42.5, %81
  br i1 %cmp44.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end46.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.5

if.end46.5:                                       ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.5 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 6
  %82 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx48.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.5, i32 noundef %81, i32 noundef %83) #11
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end46.5, %cleanup.4.cleanup.5_crit_edge
  %arrayidx41.6 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 6
  %84 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx41.6, align 4
  %add42.6 = add i32 %85, 1
  %arrayidx43.6 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 7
  %86 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx43.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.6, i32 %87)
  %cmp44.6 = icmp ugt i32 %add42.6, %87
  br i1 %cmp44.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end46.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.6

if.end46.6:                                       ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.6 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 7
  %88 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx48.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.6, i32 noundef %87, i32 noundef %89) #11
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end46.6, %cleanup.5.cleanup.6_crit_edge
  %arrayidx41.7 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx41.7, align 4
  %add42.7 = add i32 %91, 1
  %arrayidx43.7 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 8
  %92 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx43.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.7, i32 %93)
  %cmp44.7 = icmp ugt i32 %add42.7, %93
  br i1 %cmp44.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end46.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.7

if.end46.7:                                       ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.7 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 8
  %94 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx48.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.7, i32 noundef %93, i32 noundef %95) #11
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end46.7, %cleanup.6.cleanup.7_crit_edge
  %arrayidx41.8 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 8
  %96 = ptrtoint ptr %arrayidx41.8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx41.8, align 4
  %add42.8 = add i32 %97, 1
  %arrayidx43.8 = getelementptr inbounds [10 x i32], ptr %decile_max, i32 0, i32 9
  %98 = ptrtoint ptr %arrayidx43.8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx43.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.8, i32 %99)
  %cmp44.8 = icmp ugt i32 %add42.8, %99
  br i1 %cmp44.8, label %cleanup.7.cleanup.8_crit_edge, label %if.end46.8

cleanup.7.cleanup.8_crit_edge:                    ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.8

if.end46.8:                                       ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.8 = getelementptr inbounds [10 x i32], ptr %deciles, i32 0, i32 9
  %100 = ptrtoint ptr %arrayidx48.8 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx48.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.349, i32 noundef %add42.8, i32 noundef %99, i32 noundef %101) #11
  br label %cleanup.8

cleanup.8:                                        ; preds = %if.end46.8, %cleanup.7.cleanup.8_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %decile_max) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %deciles) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 339)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 339)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !251, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !408, !409, !410, !412, !413, !414, !415, !417, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !440, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !517, !519, !520, !521, !523, !524, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !547, !549, !551, !552, !553, !554, !556, !557, !558, !559, !561, !563, !564, !565, !566, !568, !569, !570, !572, !574, !575, !576, !577, !579, !580, !581, !583, !584, !585, !587, !588, !590, !591, !592, !594, !595, !596, !598, !599, !600, !601, !603, !604, !605, !607, !608, !609, !611, !612, !613, !615, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !646, !647, !649, !650, !651, !653, !654, !655, !657, !658, !659, !660, !662, !663, !665, !667, !668, !669, !670, !672, !673, !674, !676, !677, !678, !680, !681, !682, !684, !685, !687, !688, !690, !691, !693, !694, !695, !697, !698, !699, !701, !702, !703, !705, !706, !707, !709, !710, !711, !713, !714, !715, !717, !718, !719, !721, !722, !723, !725, !726, !727, !729, !730, !731, !733, !734, !735, !737, !738, !739, !741, !742, !743, !745, !746, !747, !749, !750, !751, !753, !754, !755, !757, !759, !760, !761, !762, !764, !765, !766, !768, !769, !770, !772, !773, !774, !776, !777, !778, !780, !781, !782, !784, !785, !786, !787, !789, !790, !792, !794, !795, !796, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817}
!llvm.named.register.sp = !{!819}
!llvm.module.flags = !{!820, !821, !822, !823, !824, !825, !826, !827}
!llvm.ident = !{!828}

!0 = !{ptr @__param_id_bytes, !1, !"__param_id_bytes", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 107, i32 1}
!2 = !{ptr @__UNIQUE_ID_id_bytestype265, !1, !"__UNIQUE_ID_id_bytestype265", i1 false, i1 false}
!3 = !{ptr @__param_first_id_byte, !4, !"__param_first_id_byte", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 108, i32 1}
!5 = !{ptr @__UNIQUE_ID_first_id_bytetype266, !4, !"__UNIQUE_ID_first_id_bytetype266", i1 false, i1 false}
!6 = !{ptr @__param_second_id_byte, !7, !"__param_second_id_byte", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 109, i32 1}
!8 = !{ptr @__UNIQUE_ID_second_id_bytetype267, !7, !"__UNIQUE_ID_second_id_bytetype267", i1 false, i1 false}
!9 = !{ptr @__param_third_id_byte, !10, !"__param_third_id_byte", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 110, i32 1}
!11 = !{ptr @__UNIQUE_ID_third_id_bytetype268, !10, !"__UNIQUE_ID_third_id_bytetype268", i1 false, i1 false}
!12 = !{ptr @__param_fourth_id_byte, !13, !"__param_fourth_id_byte", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 111, i32 1}
!14 = !{ptr @__UNIQUE_ID_fourth_id_bytetype269, !13, !"__UNIQUE_ID_fourth_id_bytetype269", i1 false, i1 false}
!15 = !{ptr @__param_access_delay, !16, !"__param_access_delay", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 112, i32 1}
!17 = !{ptr @__UNIQUE_ID_access_delaytype270, !16, !"__UNIQUE_ID_access_delaytype270", i1 false, i1 false}
!18 = !{ptr @__param_programm_delay, !19, !"__param_programm_delay", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 113, i32 1}
!20 = !{ptr @__UNIQUE_ID_programm_delaytype271, !19, !"__UNIQUE_ID_programm_delaytype271", i1 false, i1 false}
!21 = !{ptr @__param_erase_delay, !22, !"__param_erase_delay", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 114, i32 1}
!23 = !{ptr @__UNIQUE_ID_erase_delaytype272, !22, !"__UNIQUE_ID_erase_delaytype272", i1 false, i1 false}
!24 = !{ptr @__param_output_cycle, !25, !"__param_output_cycle", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 115, i32 1}
!26 = !{ptr @__UNIQUE_ID_output_cycletype273, !25, !"__UNIQUE_ID_output_cycletype273", i1 false, i1 false}
!27 = !{ptr @__param_input_cycle, !28, !"__param_input_cycle", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 116, i32 1}
!29 = !{ptr @__UNIQUE_ID_input_cycletype274, !28, !"__UNIQUE_ID_input_cycletype274", i1 false, i1 false}
!30 = !{ptr @__param_bus_width, !31, !"__param_bus_width", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 117, i32 1}
!32 = !{ptr @__UNIQUE_ID_bus_widthtype275, !31, !"__UNIQUE_ID_bus_widthtype275", i1 false, i1 false}
!33 = !{ptr @__param_do_delays, !34, !"__param_do_delays", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 118, i32 1}
!35 = !{ptr @__UNIQUE_ID_do_delaystype276, !34, !"__UNIQUE_ID_do_delaystype276", i1 false, i1 false}
!36 = !{ptr @__param_log, !37, !"__param_log", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 119, i32 1}
!38 = !{ptr @__UNIQUE_ID_logtype277, !37, !"__UNIQUE_ID_logtype277", i1 false, i1 false}
!39 = !{ptr @__param_dbg, !40, !"__param_dbg", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 120, i32 1}
!41 = !{ptr @__UNIQUE_ID_dbgtype278, !40, !"__UNIQUE_ID_dbgtype278", i1 false, i1 false}
!42 = !{ptr @__param_parts, !43, !"__param_parts", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 121, i32 1}
!44 = !{ptr @__UNIQUE_ID_partstype279, !43, !"__UNIQUE_ID_partstype279", i1 false, i1 false}
!45 = !{ptr @__param_badblocks, !46, !"__param_badblocks", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 122, i32 1}
!47 = !{ptr @__UNIQUE_ID_badblockstype280, !46, !"__UNIQUE_ID_badblockstype280", i1 false, i1 false}
!48 = !{ptr @__param_weakblocks, !49, !"__param_weakblocks", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 123, i32 1}
!50 = !{ptr @__UNIQUE_ID_weakblockstype281, !49, !"__UNIQUE_ID_weakblockstype281", i1 false, i1 false}
!51 = !{ptr @__param_weakpages, !52, !"__param_weakpages", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 124, i32 1}
!53 = !{ptr @__UNIQUE_ID_weakpagestype282, !52, !"__UNIQUE_ID_weakpagestype282", i1 false, i1 false}
!54 = !{ptr @__param_bitflips, !55, !"__param_bitflips", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 125, i32 1}
!56 = !{ptr @__UNIQUE_ID_bitflipstype283, !55, !"__UNIQUE_ID_bitflipstype283", i1 false, i1 false}
!57 = !{ptr @__param_gravepages, !58, !"__param_gravepages", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 126, i32 1}
!59 = !{ptr @__UNIQUE_ID_gravepagestype284, !58, !"__UNIQUE_ID_gravepagestype284", i1 false, i1 false}
!60 = !{ptr @__param_overridesize, !61, !"__param_overridesize", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 127, i32 1}
!62 = !{ptr @__UNIQUE_ID_overridesizetype285, !61, !"__UNIQUE_ID_overridesizetype285", i1 false, i1 false}
!63 = !{ptr @__param_cache_file, !64, !"__param_cache_file", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 128, i32 1}
!65 = !{ptr @__UNIQUE_ID_cache_filetype286, !64, !"__UNIQUE_ID_cache_filetype286", i1 false, i1 false}
!66 = !{ptr @__param_bbt, !67, !"__param_bbt", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 129, i32 1}
!68 = !{ptr @__UNIQUE_ID_bbttype287, !67, !"__UNIQUE_ID_bbttype287", i1 false, i1 false}
!69 = !{ptr @__param_bch, !70, !"__param_bch", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 130, i32 1}
!71 = !{ptr @__UNIQUE_ID_bchtype288, !70, !"__UNIQUE_ID_bchtype288", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_id_bytes289, !73, !"__UNIQUE_ID_id_bytes289", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 132, i32 1}
!74 = !{ptr @__UNIQUE_ID_first_id_byte290, !75, !"__UNIQUE_ID_first_id_byte290", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 133, i32 1}
!76 = !{ptr @__UNIQUE_ID_second_id_byte291, !77, !"__UNIQUE_ID_second_id_byte291", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 134, i32 1}
!78 = !{ptr @__UNIQUE_ID_third_id_byte292, !79, !"__UNIQUE_ID_third_id_byte292", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 135, i32 1}
!80 = !{ptr @__UNIQUE_ID_fourth_id_byte293, !81, !"__UNIQUE_ID_fourth_id_byte293", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 136, i32 1}
!82 = !{ptr @__UNIQUE_ID_access_delay294, !83, !"__UNIQUE_ID_access_delay294", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 137, i32 1}
!84 = !{ptr @__UNIQUE_ID_programm_delay295, !85, !"__UNIQUE_ID_programm_delay295", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 138, i32 1}
!86 = !{ptr @__UNIQUE_ID_erase_delay296, !87, !"__UNIQUE_ID_erase_delay296", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 139, i32 1}
!88 = !{ptr @__UNIQUE_ID_output_cycle297, !89, !"__UNIQUE_ID_output_cycle297", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 140, i32 1}
!90 = !{ptr @__UNIQUE_ID_input_cycle298, !91, !"__UNIQUE_ID_input_cycle298", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 141, i32 1}
!92 = !{ptr @__UNIQUE_ID_bus_width299, !93, !"__UNIQUE_ID_bus_width299", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 142, i32 1}
!94 = !{ptr @__UNIQUE_ID_do_delays300, !95, !"__UNIQUE_ID_do_delays300", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 143, i32 1}
!96 = !{ptr @__UNIQUE_ID_log301, !97, !"__UNIQUE_ID_log301", i1 false, i1 false}
!97 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 144, i32 1}
!98 = !{ptr @__UNIQUE_ID_dbg302, !99, !"__UNIQUE_ID_dbg302", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 145, i32 1}
!100 = !{ptr @__UNIQUE_ID_parts303, !101, !"__UNIQUE_ID_parts303", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 146, i32 1}
!102 = !{ptr @__UNIQUE_ID_badblocks304, !103, !"__UNIQUE_ID_badblocks304", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 148, i32 1}
!104 = !{ptr @__UNIQUE_ID_weakblocks305, !105, !"__UNIQUE_ID_weakblocks305", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 149, i32 1}
!106 = !{ptr @__UNIQUE_ID_weakpages306, !107, !"__UNIQUE_ID_weakpages306", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 152, i32 1}
!108 = !{ptr @__UNIQUE_ID_bitflips307, !109, !"__UNIQUE_ID_bitflips307", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 155, i32 1}
!110 = !{ptr @__UNIQUE_ID_gravepages308, !111, !"__UNIQUE_ID_gravepages308", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 156, i32 1}
!112 = !{ptr @__UNIQUE_ID_overridesize309, !113, !"__UNIQUE_ID_overridesize309", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 159, i32 1}
!114 = !{ptr @__UNIQUE_ID_cache_file310, !115, !"__UNIQUE_ID_cache_file310", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 162, i32 1}
!116 = !{ptr @__UNIQUE_ID_bbt311, !117, !"__UNIQUE_ID_bbt311", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 163, i32 1}
!118 = !{ptr @__UNIQUE_ID_bch312, !119, !"__UNIQUE_ID_bch312", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 164, i32 1}
!120 = !{ptr @__initcall__kmod_nandsim__353_2417_ns_init_module6, !121, !"__initcall__kmod_nandsim__353_2417_ns_init_module6", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2417, i32 1}
!122 = !{ptr @.str, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2429, i32 2}
!124 = !{ptr @__exitcall_ns_cleanup_module, !125, !"__exitcall_ns_cleanup_module", i1 false, i1 false}
!125 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2452, i32 1}
!126 = !{ptr @__UNIQUE_ID_file354, !127, !"__UNIQUE_ID_file354", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2454, i32 1}
!128 = !{ptr @__UNIQUE_ID_license355, !127, !"__UNIQUE_ID_license355", i1 false, i1 false}
!129 = !{ptr @__UNIQUE_ID_author356, !130, !"__UNIQUE_ID_author356", i1 false, i1 false}
!130 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2455, i32 1}
!131 = !{ptr @__UNIQUE_ID_description357, !132, !"__UNIQUE_ID_description357", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2456, i32 1}
!133 = !{ptr @bbt, !134, !"bbt", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 97, i32 21}
!135 = !{ptr @bch, !136, !"bch", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 98, i32 21}
!137 = !{ptr @nsmtd, !138, !"nsmtd", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 435, i32 25}
!139 = !{ptr @__param_str_id_bytes, !1, !"__param_str_id_bytes", i1 false, i1 false}
!140 = !{ptr @__param_arr_id_bytes, !1, !"__param_arr_id_bytes", i1 false, i1 false}
!141 = !{ptr @__param_str_first_id_byte, !4, !"__param_str_first_id_byte", i1 false, i1 false}
!142 = !{ptr @id_bytes, !143, !"id_bytes", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 99, i32 15}
!144 = !{ptr @__param_str_second_id_byte, !7, !"__param_str_second_id_byte", i1 false, i1 false}
!145 = !{ptr @__param_str_third_id_byte, !10, !"__param_str_third_id_byte", i1 false, i1 false}
!146 = !{ptr @__param_str_fourth_id_byte, !13, !"__param_str_fourth_id_byte", i1 false, i1 false}
!147 = !{ptr @__param_str_access_delay, !16, !"__param_str_access_delay", i1 false, i1 false}
!148 = !{ptr @access_delay, !149, !"access_delay", i1 false, i1 false}
!149 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 79, i32 13}
!150 = !{ptr @__param_str_programm_delay, !19, !"__param_str_programm_delay", i1 false, i1 false}
!151 = !{ptr @programm_delay, !152, !"programm_delay", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 80, i32 13}
!153 = !{ptr @__param_str_erase_delay, !22, !"__param_str_erase_delay", i1 false, i1 false}
!154 = !{ptr @erase_delay, !155, !"erase_delay", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 81, i32 13}
!156 = !{ptr @__param_str_output_cycle, !25, !"__param_str_output_cycle", i1 false, i1 false}
!157 = !{ptr @output_cycle, !158, !"output_cycle", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 82, i32 13}
!159 = !{ptr @__param_str_input_cycle, !28, !"__param_str_input_cycle", i1 false, i1 false}
!160 = !{ptr @input_cycle, !161, !"input_cycle", i1 false, i1 false}
!161 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 83, i32 13}
!162 = !{ptr @__param_str_bus_width, !31, !"__param_str_bus_width", i1 false, i1 false}
!163 = !{ptr @bus_width, !164, !"bus_width", i1 false, i1 false}
!164 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 84, i32 13}
!165 = !{ptr @__param_str_do_delays, !34, !"__param_str_do_delays", i1 false, i1 false}
!166 = !{ptr @do_delays, !167, !"do_delays", i1 false, i1 false}
!167 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 85, i32 13}
!168 = !{ptr @__param_str_log, !37, !"__param_str_log", i1 false, i1 false}
!169 = !{ptr @log, !170, !"log", i1 false, i1 false}
!170 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 86, i32 13}
!171 = !{ptr @__param_str_dbg, !40, !"__param_str_dbg", i1 false, i1 false}
!172 = !{ptr @dbg, !173, !"dbg", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 87, i32 13}
!174 = !{ptr @__param_str_parts, !43, !"__param_str_parts", i1 false, i1 false}
!175 = !{ptr @__param_arr_parts, !43, !"__param_arr_parts", i1 false, i1 false}
!176 = !{ptr @parts_num, !177, !"parts_num", i1 false, i1 false}
!177 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 89, i32 21}
!178 = !{ptr @parts, !179, !"parts", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 88, i32 22}
!180 = !{ptr @__param_str_badblocks, !46, !"__param_str_badblocks", i1 false, i1 false}
!181 = !{ptr @badblocks, !182, !"badblocks", i1 false, i1 false}
!182 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 90, i32 14}
!183 = !{ptr @__param_str_weakblocks, !49, !"__param_str_weakblocks", i1 false, i1 false}
!184 = !{ptr @weakblocks, !185, !"weakblocks", i1 false, i1 false}
!185 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 91, i32 14}
!186 = !{ptr @__param_str_weakpages, !52, !"__param_str_weakpages", i1 false, i1 false}
!187 = !{ptr @weakpages, !188, !"weakpages", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 92, i32 14}
!189 = !{ptr @__param_str_bitflips, !55, !"__param_str_bitflips", i1 false, i1 false}
!190 = !{ptr @bitflips, !191, !"bitflips", i1 false, i1 false}
!191 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 93, i32 21}
!192 = !{ptr @__param_str_gravepages, !58, !"__param_str_gravepages", i1 false, i1 false}
!193 = !{ptr @gravepages, !194, !"gravepages", i1 false, i1 false}
!194 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 94, i32 14}
!195 = !{ptr @__param_str_overridesize, !61, !"__param_str_overridesize", i1 false, i1 false}
!196 = !{ptr @overridesize, !197, !"overridesize", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 95, i32 21}
!198 = !{ptr @__param_str_cache_file, !64, !"__param_str_cache_file", i1 false, i1 false}
!199 = !{ptr @cache_file, !200, !"cache_file", i1 false, i1 false}
!200 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 96, i32 14}
!201 = !{ptr @__param_str_bbt, !67, !"__param_str_bbt", i1 false, i1 false}
!202 = !{ptr @__param_str_bch, !70, !"__param_str_bch", i1 false, i1 false}
!203 = !{ptr @.str.1, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2264, i32 3}
!205 = !{ptr @.str.2, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ns_init_module._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ns_init_module._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.4, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2270, i32 3}
!210 = !{ptr @ns_init_module._entry.3, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @ns_init_module._entry_ptr.5, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.7, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2291, i32 3}
!214 = !{ptr @ns_init_module._entry.6, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ns_init_module._entry_ptr.8, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.10, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2336, i32 3}
!218 = !{ptr @ns_init_module._entry.9, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ns_init_module._entry_ptr.11, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.13, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2348, i32 4}
!222 = !{ptr @ns_init_module._entry.12, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ns_init_module._entry_ptr.14, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.15, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 842, i32 4}
!226 = !{ptr @.str.16, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ns_parse_weakblocks._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @ns_parse_weakblocks._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.18, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 854, i32 4}
!231 = !{ptr @ns_parse_weakblocks._entry.17, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ns_parse_weakblocks._entry_ptr.19, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.20, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 893, i32 4}
!235 = !{ptr @.str.21, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ns_parse_weakpages._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @ns_parse_weakpages._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @ns_parse_weakpages._entry.22, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 905, i32 4}
!240 = !{ptr @ns_parse_weakpages._entry_ptr.23, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.24, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 944, i32 4}
!243 = !{ptr @.str.25, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @ns_parse_gravepages._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @ns_parse_gravepages._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @ns_parse_gravepages._entry.26, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 956, i32 4}
!248 = !{ptr @ns_parse_gravepages._entry_ptr.27, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @nand_controller_init.__key, !250, !"__key", i1 false, i1 false}
!250 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!251 = !{ptr @.str.28, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @ns_controller_ops, !253, !"ns_controller_ops", i1 false, i1 false}
!253 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2248, i32 41}
!254 = !{ptr @.str.29, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2230, i32 3}
!256 = !{ptr @.str.30, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @ns_attach_chip._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @ns_attach_chip._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.32, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2235, i32 3}
!261 = !{ptr @ns_attach_chip._entry.31, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ns_attach_chip._entry_ptr.33, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.35, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2243, i32 2}
!265 = !{ptr @ns_attach_chip._entry.34, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ns_attach_chip._entry_ptr.36, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.37, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1941, i32 3}
!269 = !{ptr @.str.38, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ns_nand_write_byte._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ns_nand_write_byte._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.40, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1945, i32 3}
!274 = !{ptr @ns_nand_write_byte._entry.39, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @ns_nand_write_byte._entry_ptr.41, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.42, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1955, i32 4}
!278 = !{ptr @.str.43, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug347, !277, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!280 = !{ptr @.str.44, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.46, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1962, i32 4}
!283 = !{ptr @ns_nand_write_byte._entry.45, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ns_nand_write_byte._entry_ptr.47, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.49, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1985, i32 5}
!287 = !{ptr @ns_nand_write_byte._entry.48, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ns_nand_write_byte._entry_ptr.50, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.51, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1992, i32 3}
!291 = !{ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug348, !290, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!292 = !{ptr @.str.52, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.53, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2004, i32 4}
!295 = !{ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug349, !294, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!296 = !{ptr @.str.54, !294, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.56, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2034, i32 4}
!299 = !{ptr @ns_nand_write_byte._entry.55, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @ns_nand_write_byte._entry_ptr.57, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.59, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2042, i32 4}
!303 = !{ptr @ns_nand_write_byte._entry.58, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @ns_nand_write_byte._entry_ptr.60, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.61, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2051, i32 3}
!307 = !{ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug350, !306, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!308 = !{ptr @.str.62, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.63, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2055, i32 4}
!311 = !{ptr @ns_nand_write_byte.__UNIQUE_ID_ddebug351, !310, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!312 = !{ptr @.str.64, !310, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.66, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2066, i32 4}
!315 = !{ptr @ns_nand_write_byte._entry.65, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @ns_nand_write_byte._entry_ptr.67, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.69, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2075, i32 4}
!319 = !{ptr @ns_nand_write_byte._entry.68, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @ns_nand_write_byte._entry_ptr.70, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.71, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1162, i32 2}
!323 = !{ptr @.str.72, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ns_switch_to_ready_state.__UNIQUE_ID_ddebug313, !322, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!325 = !{ptr @.str.73, !322, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.74, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1737, i32 3}
!328 = !{ptr @.str.75, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @ns_switch_state.__UNIQUE_ID_ddebug339, !327, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!330 = !{ptr @.str.76, !327, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.77, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1761, i32 3}
!333 = !{ptr @ns_switch_state.__UNIQUE_ID_ddebug340, !332, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!334 = !{ptr @.str.78, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.79, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1775, i32 3}
!337 = !{ptr @ns_switch_state.__UNIQUE_ID_ddebug341, !336, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!338 = !{ptr @.str.80, !336, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.81, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1789, i32 4}
!341 = !{ptr @ns_switch_state._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @ns_switch_state._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.82, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1794, i32 3}
!345 = !{ptr @ns_switch_state.__UNIQUE_ID_ddebug342, !344, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!346 = !{ptr @.str.83, !344, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.84, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1808, i32 3}
!349 = !{ptr @ns_switch_state.__UNIQUE_ID_ddebug343, !348, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!350 = !{ptr @.str.85, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.87, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1832, i32 5}
!353 = !{ptr @ns_switch_state._entry.86, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @ns_switch_state._entry_ptr.88, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.90, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1862, i32 5}
!357 = !{ptr @ns_switch_state._entry.89, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @ns_switch_state._entry_ptr.91, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.92, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1021, i32 11}
!361 = !{ptr @.str.93, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1023, i32 11}
!363 = !{ptr @.str.94, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1025, i32 11}
!365 = !{ptr @.str.95, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1027, i32 11}
!367 = !{ptr @.str.96, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1029, i32 11}
!369 = !{ptr @.str.97, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1031, i32 11}
!371 = !{ptr @.str.98, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1033, i32 11}
!373 = !{ptr @.str.99, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1035, i32 11}
!375 = !{ptr @.str.100, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1037, i32 11}
!377 = !{ptr @.str.101, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1039, i32 11}
!379 = !{ptr @.str.102, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1041, i32 11}
!381 = !{ptr @.str.103, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1043, i32 11}
!383 = !{ptr @.str.104, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1045, i32 11}
!385 = !{ptr @.str.105, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1047, i32 11}
!387 = !{ptr @.str.106, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1049, i32 11}
!389 = !{ptr @.str.107, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1051, i32 11}
!391 = !{ptr @.str.108, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1053, i32 11}
!393 = !{ptr @.str.109, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1055, i32 11}
!395 = !{ptr @.str.110, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1057, i32 11}
!397 = !{ptr @.str.111, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1059, i32 11}
!399 = !{ptr @.str.112, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1061, i32 11}
!401 = !{ptr @.str.113, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1063, i32 11}
!403 = !{ptr @.str.114, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1065, i32 11}
!405 = !{ptr @.str.115, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1068, i32 2}
!407 = !{ptr @.str.116, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @ns_get_state_name._entry, !406, !"_entry", i1 false, i1 false}
!409 = !{ptr @ns_get_state_name._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.117, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1135, i32 2}
!412 = !{ptr @.str.118, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @ns_get_state_by_command._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @ns_get_state_by_command._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.119, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1272, i32 3}
!417 = !{ptr @.str.120, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @ns_find_operation.__UNIQUE_ID_ddebug314, !416, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!419 = !{ptr @.str.121, !416, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.122, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1281, i32 4}
!422 = !{ptr @ns_find_operation.__UNIQUE_ID_ddebug315, !421, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!423 = !{ptr @.str.123, !421, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.124, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1287, i32 3}
!426 = !{ptr @ns_find_operation.__UNIQUE_ID_ddebug316, !425, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!427 = !{ptr @.str.125, !425, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.126, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1294, i32 3}
!430 = !{ptr @ns_find_operation.__UNIQUE_ID_ddebug317, !429, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!431 = !{ptr @.str.127, !429, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.128, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1298, i32 2}
!434 = !{ptr @ns_find_operation.__UNIQUE_ID_ddebug318, !433, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!435 = !{ptr @.str.129, !433, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @ops, !437, !"ops", i1 false, i1 false}
!437 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 367, i32 3}
!438 = !{ptr @.str.130, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1585, i32 3}
!440 = !{ptr @.str.131, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @ns_do_state_action._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @ns_do_state_action._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.133, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1598, i32 4}
!445 = !{ptr @ns_do_state_action._entry.132, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @ns_do_state_action._entry_ptr.134, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.135, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1604, i32 3}
!449 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug327, !448, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!450 = !{ptr @.str.136, !448, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.137, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1608, i32 4}
!453 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug328, !452, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!454 = !{ptr @.str.138, !452, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.139, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1610, i32 4}
!457 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug329, !456, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!458 = !{ptr @.str.140, !456, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.141, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1612, i32 4}
!461 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug330, !460, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!462 = !{ptr @.str.142, !460, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.144, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1625, i32 4}
!465 = !{ptr @ns_do_state_action._entry.143, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @ns_do_state_action._entry_ptr.145, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.147, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1631, i32 4}
!469 = !{ptr @ns_do_state_action._entry.146, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @ns_do_state_action._entry_ptr.148, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.149, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1641, i32 3}
!473 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug331, !472, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!474 = !{ptr @.str.150, !472, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @.str.151, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1643, i32 3}
!477 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug332, !476, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!478 = !{ptr @.str.152, !476, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.154, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1653, i32 4}
!481 = !{ptr @ns_do_state_action._entry.153, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @ns_do_state_action._entry_ptr.155, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.157, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1665, i32 4}
!485 = !{ptr @ns_do_state_action._entry.156, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @ns_do_state_action._entry_ptr.158, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.160, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1671, i32 4}
!489 = !{ptr @ns_do_state_action._entry.159, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @ns_do_state_action._entry_ptr.161, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.162, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1681, i32 3}
!493 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug333, !492, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!494 = !{ptr @.str.163, !492, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @.str.164, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1683, i32 3}
!497 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug334, !496, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!498 = !{ptr @.str.165, !496, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @.str.167, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1689, i32 4}
!501 = !{ptr @ns_do_state_action._entry.166, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @ns_do_state_action._entry_ptr.168, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.169, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1696, i32 3}
!505 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug335, !504, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!506 = !{ptr @.str.170, !504, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @.str.172, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1702, i32 4}
!509 = !{ptr @ns_do_state_action._entry.171, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @ns_do_state_action._entry_ptr.173, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.174, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1706, i32 3}
!513 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug336, !512, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!514 = !{ptr @.str.175, !512, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug337, !516, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!516 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1711, i32 3}
!517 = !{ptr @.str.176, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1716, i32 3}
!519 = !{ptr @ns_do_state_action.__UNIQUE_ID_ddebug338, !518, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!520 = !{ptr @.str.177, !518, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.178, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1433, i32 4}
!523 = !{ptr @.str.179, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @ns_read_page.__UNIQUE_ID_ddebug319, !522, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!525 = !{ptr @.str.180, !522, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @.str.181, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1439, i32 4}
!528 = !{ptr @ns_read_page.__UNIQUE_ID_ddebug320, !527, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!529 = !{ptr @.str.182, !527, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.183, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1447, i32 5}
!532 = !{ptr @ns_read_page._entry, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @ns_read_page._entry_ptr, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.184, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1457, i32 3}
!536 = !{ptr @ns_read_page.__UNIQUE_ID_ddebug321, !535, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!537 = !{ptr @.str.185, !535, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.186, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1460, i32 3}
!540 = !{ptr @ns_read_page.__UNIQUE_ID_ddebug322, !539, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!541 = !{ptr @.str.187, !539, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @.str.188, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1401, i32 3}
!544 = !{ptr @.str.189, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @ns_do_read_error._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @ns_do_read_error._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.190, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../include/linux/mm.h", i32 717, i32 2}
!549 = !{ptr @.str.191, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1416, i32 4}
!551 = !{ptr @.str.192, !550, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @ns_do_bit_flips._entry, !550, !"_entry", i1 false, i1 false}
!553 = !{ptr @ns_do_bit_flips._entry_ptr, !550, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.193, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1481, i32 5}
!556 = !{ptr @.str.194, !555, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @ns_erase_sector.__UNIQUE_ID_ddebug323, !555, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!558 = !{ptr @.str.195, !555, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @ns_erase_sector.__UNIQUE_ID_ddebug324, !560, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!560 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1489, i32 4}
!561 = !{ptr @.str.196, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1008, i32 3}
!563 = !{ptr @.str.197, !562, !"<string literal>", i1 false, i1 false}
!564 = !{ptr @ns_update_wear._entry, !562, !"_entry", i1 false, i1 false}
!565 = !{ptr @ns_update_wear._entry_ptr, !562, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.199, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1011, i32 3}
!568 = !{ptr @ns_update_wear._entry.198, !567, !"_entry", i1 false, i1 false}
!569 = !{ptr @ns_update_wear._entry_ptr.200, !567, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @total_wear, !571, !"total_wear", i1 false, i1 false}
!571 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 432, i32 22}
!572 = !{ptr @.str.201, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1511, i32 3}
!574 = !{ptr @.str.202, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @ns_prog_page.__UNIQUE_ID_ddebug325, !573, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!576 = !{ptr @.str.203, !573, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @.str.204, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1521, i32 5}
!579 = !{ptr @ns_prog_page._entry, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @ns_prog_page._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.206, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1532, i32 5}
!583 = !{ptr @ns_prog_page._entry.205, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @ns_prog_page._entry_ptr.207, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @ns_prog_page._entry.208, !586, !"_entry", i1 false, i1 false}
!586 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1539, i32 5}
!587 = !{ptr @ns_prog_page._entry_ptr.209, !586, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.210, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1548, i32 3}
!590 = !{ptr @ns_prog_page.__UNIQUE_ID_ddebug326, !589, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!591 = !{ptr @.str.211, !589, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @.str.213, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1557, i32 4}
!594 = !{ptr @ns_prog_page._entry.212, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @ns_prog_page._entry_ptr.214, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.215, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2126, i32 3}
!598 = !{ptr @.str.216, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @ns_nand_read_buf._entry, !597, !"_entry", i1 false, i1 false}
!600 = !{ptr @ns_nand_read_buf._entry_ptr, !597, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @.str.218, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2130, i32 3}
!603 = !{ptr @ns_nand_read_buf._entry.217, !602, !"_entry", i1 false, i1 false}
!604 = !{ptr @ns_nand_read_buf._entry_ptr.219, !602, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.221, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2134, i32 3}
!607 = !{ptr @ns_nand_read_buf._entry.220, !606, !"_entry", i1 false, i1 false}
!608 = !{ptr @ns_nand_read_buf._entry_ptr.222, !606, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @.str.224, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2150, i32 3}
!611 = !{ptr @ns_nand_read_buf._entry.223, !610, !"_entry", i1 false, i1 false}
!612 = !{ptr @ns_nand_read_buf._entry_ptr.225, !610, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @.str.226, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1881, i32 3}
!615 = !{ptr @.str.227, !614, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @ns_nand_read_byte._entry, !614, !"_entry", i1 false, i1 false}
!617 = !{ptr @ns_nand_read_byte._entry_ptr, !614, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.229, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1885, i32 3}
!620 = !{ptr @ns_nand_read_byte._entry.228, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @ns_nand_read_byte._entry_ptr.230, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.232, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1889, i32 3}
!624 = !{ptr @ns_nand_read_byte._entry.231, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @ns_nand_read_byte._entry_ptr.233, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.234, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1896, i32 3}
!628 = !{ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug344, !627, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!629 = !{ptr @.str.235, !627, !"<string literal>", i1 false, i1 false}
!630 = !{ptr @.str.237, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1902, i32 3}
!632 = !{ptr @ns_nand_read_byte._entry.236, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @ns_nand_read_byte._entry_ptr.238, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.239, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1917, i32 4}
!636 = !{ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug345, !635, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!637 = !{ptr @.str.240, !635, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @.str.241, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 1926, i32 3}
!640 = !{ptr @ns_nand_read_byte.__UNIQUE_ID_ddebug346, !639, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!641 = !{ptr @.str.242, !639, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @.str.243, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2099, i32 3}
!644 = !{ptr @.str.244, !643, !"<string literal>", i1 false, i1 false}
!645 = !{ptr @ns_nand_write_buf._entry, !643, !"_entry", i1 false, i1 false}
!646 = !{ptr @ns_nand_write_buf._entry_ptr, !643, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.246, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2107, i32 3}
!649 = !{ptr @ns_nand_write_buf._entry.245, !648, !"_entry", i1 false, i1 false}
!650 = !{ptr @ns_nand_write_buf._entry_ptr.247, !648, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.248, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 2116, i32 3}
!653 = !{ptr @ns_nand_write_buf.__UNIQUE_ID_ddebug352, !652, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!654 = !{ptr @.str.249, !652, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @.str.250, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 987, i32 3}
!657 = !{ptr @.str.251, !656, !"<string literal>", i1 false, i1 false}
!658 = !{ptr @ns_setup_wear_reporting._entry, !656, !"_entry", i1 false, i1 false}
!659 = !{ptr @ns_setup_wear_reporting._entry_ptr, !656, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @ns_setup_wear_reporting._entry.252, !661, !"_entry", i1 false, i1 false}
!661 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 992, i32 3}
!662 = !{ptr @ns_setup_wear_reporting._entry_ptr.253, !661, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @wear_eb_count, !664, !"wear_eb_count", i1 false, i1 false}
!664 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 431, i32 21}
!665 = !{ptr @.str.254, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 646, i32 3}
!667 = !{ptr @.str.255, !666, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @ns_init._entry, !666, !"_entry", i1 false, i1 false}
!669 = !{ptr @ns_init._entry_ptr, !666, !"_entry_ptr", i1 false, i1 false}
!670 = !{ptr @.str.257, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 674, i32 3}
!672 = !{ptr @ns_init._entry.256, !671, !"_entry", i1 false, i1 false}
!673 = !{ptr @ns_init._entry_ptr.258, !671, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @.str.260, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 698, i32 3}
!676 = !{ptr @ns_init._entry.259, !675, !"_entry", i1 false, i1 false}
!677 = !{ptr @ns_init._entry_ptr.261, !675, !"_entry_ptr", i1 false, i1 false}
!678 = !{ptr @.str.263, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 707, i32 4}
!680 = !{ptr @ns_init._entry.262, !679, !"_entry", i1 false, i1 false}
!681 = !{ptr @ns_init._entry_ptr.264, !679, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @ns_init._entry.265, !683, !"_entry", i1 false, i1 false}
!683 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 712, i32 4}
!684 = !{ptr @ns_init._entry_ptr.266, !683, !"_entry_ptr", i1 false, i1 false}
!685 = !{ptr @ns_init._entry.267, !686, !"_entry", i1 false, i1 false}
!686 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 723, i32 4}
!687 = !{ptr @ns_init._entry_ptr.268, !686, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @ns_init._entry.269, !689, !"_entry", i1 false, i1 false}
!689 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 729, i32 4}
!690 = !{ptr @ns_init._entry_ptr.270, !689, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.272, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 739, i32 3}
!693 = !{ptr @ns_init._entry.271, !692, !"_entry", i1 false, i1 false}
!694 = !{ptr @ns_init._entry_ptr.273, !692, !"_entry_ptr", i1 false, i1 false}
!695 = !{ptr @.str.275, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 741, i32 2}
!697 = !{ptr @ns_init._entry.274, !696, !"_entry", i1 false, i1 false}
!698 = !{ptr @ns_init._entry_ptr.276, !696, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @.str.278, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 743, i32 2}
!701 = !{ptr @ns_init._entry.277, !700, !"_entry", i1 false, i1 false}
!702 = !{ptr @ns_init._entry_ptr.279, !700, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.281, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 744, i32 2}
!705 = !{ptr @ns_init._entry.280, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @ns_init._entry_ptr.282, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.284, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 745, i32 2}
!709 = !{ptr @ns_init._entry.283, !708, !"_entry", i1 false, i1 false}
!710 = !{ptr @ns_init._entry_ptr.285, !708, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @.str.287, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 746, i32 2}
!713 = !{ptr @ns_init._entry.286, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @ns_init._entry_ptr.288, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.290, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 747, i32 2}
!717 = !{ptr @ns_init._entry.289, !716, !"_entry", i1 false, i1 false}
!718 = !{ptr @ns_init._entry_ptr.291, !716, !"_entry_ptr", i1 false, i1 false}
!719 = !{ptr @.str.293, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 748, i32 2}
!721 = !{ptr @ns_init._entry.292, !720, !"_entry", i1 false, i1 false}
!722 = !{ptr @ns_init._entry_ptr.294, !720, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @.str.296, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 749, i32 2}
!725 = !{ptr @ns_init._entry.295, !724, !"_entry", i1 false, i1 false}
!726 = !{ptr @ns_init._entry_ptr.297, !724, !"_entry_ptr", i1 false, i1 false}
!727 = !{ptr @.str.299, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 750, i32 2}
!729 = !{ptr @ns_init._entry.298, !728, !"_entry", i1 false, i1 false}
!730 = !{ptr @ns_init._entry_ptr.300, !728, !"_entry_ptr", i1 false, i1 false}
!731 = !{ptr @.str.302, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 751, i32 2}
!733 = !{ptr @ns_init._entry.301, !732, !"_entry", i1 false, i1 false}
!734 = !{ptr @ns_init._entry_ptr.303, !732, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @.str.305, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 752, i32 2}
!737 = !{ptr @ns_init._entry.304, !736, !"_entry", i1 false, i1 false}
!738 = !{ptr @ns_init._entry_ptr.306, !736, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @.str.308, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 754, i32 2}
!741 = !{ptr @ns_init._entry.307, !740, !"_entry", i1 false, i1 false}
!742 = !{ptr @ns_init._entry_ptr.309, !740, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @.str.311, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 755, i32 2}
!745 = !{ptr @ns_init._entry.310, !744, !"_entry", i1 false, i1 false}
!746 = !{ptr @ns_init._entry_ptr.312, !744, !"_entry_ptr", i1 false, i1 false}
!747 = !{ptr @.str.314, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 756, i32 2}
!749 = !{ptr @ns_init._entry.313, !748, !"_entry", i1 false, i1 false}
!750 = !{ptr @ns_init._entry_ptr.315, !748, !"_entry_ptr", i1 false, i1 false}
!751 = !{ptr @.str.317, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 765, i32 3}
!753 = !{ptr @ns_init._entry.316, !752, !"_entry", i1 false, i1 false}
!754 = !{ptr @ns_init._entry_ptr.318, !752, !"_entry_ptr", i1 false, i1 false}
!755 = !{ptr @.str.319, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 629, i32 31}
!757 = !{ptr @.str.320, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 543, i32 4}
!759 = !{ptr @.str.321, !758, !"<string literal>", i1 false, i1 false}
!760 = !{ptr @ns_alloc_device._entry, !758, !"_entry", i1 false, i1 false}
!761 = !{ptr @ns_alloc_device._entry_ptr, !758, !"_entry_ptr", i1 false, i1 false}
!762 = !{ptr @.str.323, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 548, i32 4}
!764 = !{ptr @ns_alloc_device._entry.322, !763, !"_entry", i1 false, i1 false}
!765 = !{ptr @ns_alloc_device._entry_ptr.324, !763, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.326, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 556, i32 4}
!768 = !{ptr @ns_alloc_device._entry.325, !767, !"_entry", i1 false, i1 false}
!769 = !{ptr @ns_alloc_device._entry_ptr.327, !767, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @.str.329, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 562, i32 4}
!772 = !{ptr @ns_alloc_device._entry.328, !771, !"_entry", i1 false, i1 false}
!773 = !{ptr @ns_alloc_device._entry_ptr.330, !771, !"_entry_ptr", i1 false, i1 false}
!774 = !{ptr @.str.332, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 580, i32 3}
!776 = !{ptr @ns_alloc_device._entry.331, !775, !"_entry", i1 false, i1 false}
!777 = !{ptr @ns_alloc_device._entry_ptr.333, !775, !"_entry_ptr", i1 false, i1 false}
!778 = !{ptr @.str.335, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 589, i32 3}
!780 = !{ptr @ns_alloc_device._entry.334, !779, !"_entry", i1 false, i1 false}
!781 = !{ptr @ns_alloc_device._entry_ptr.336, !779, !"_entry_ptr", i1 false, i1 false}
!782 = !{ptr @.str.337, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 813, i32 4}
!784 = !{ptr @.str.338, !783, !"<string literal>", i1 false, i1 false}
!785 = !{ptr @ns_parse_badblocks._entry, !783, !"_entry", i1 false, i1 false}
!786 = !{ptr @ns_parse_badblocks._entry_ptr, !783, !"_entry_ptr", i1 false, i1 false}
!787 = !{ptr @ns_parse_badblocks._entry.339, !788, !"_entry", i1 false, i1 false}
!788 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 818, i32 4}
!789 = !{ptr @ns_parse_badblocks._entry_ptr.340, !788, !"_entry_ptr", i1 false, i1 false}
!790 = !{ptr @.str.341, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 512, i32 33}
!792 = !{ptr @.str.342, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 515, i32 3}
!794 = !{ptr @.str.343, !793, !"<string literal>", i1 false, i1 false}
!795 = !{ptr @ns_debugfs_create._entry, !793, !"_entry", i1 false, i1 false}
!796 = !{ptr @ns_debugfs_create._entry_ptr, !793, !"_entry_ptr", i1 false, i1 false}
!797 = !{ptr @ns_fops, !798, !"ns_fops", i1 false, i1 false}
!798 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 488, i32 1}
!799 = !{ptr @.str.344, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 471, i32 16}
!801 = !{ptr @.str.345, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 472, i32 16}
!803 = !{ptr @.str.346, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 473, i32 16}
!805 = !{ptr @.str.347, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 474, i32 16}
!807 = !{ptr @.str.348, !808, !"<string literal>", i1 false, i1 false}
!808 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 475, i32 16}
!809 = !{ptr @.str.349, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 480, i32 17}
!811 = !{ptr @erase_block_wear, !812, !"erase_block_wear", i1 false, i1 false}
!812 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 430, i32 23}
!813 = !{ptr @grave_pages, !814, !"grave_pages", i1 false, i1 false}
!814 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 428, i32 8}
!815 = !{ptr @weak_pages, !816, !"weak_pages", i1 false, i1 false}
!816 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 419, i32 8}
!817 = !{ptr @weak_blocks, !818, !"weak_blocks", i1 false, i1 false}
!818 = !{!"../drivers/mtd/nand/raw/nandsim.c", i32 410, i32 8}
!819 = !{!"sp"}
!820 = !{i32 1, !"wchar_size", i32 2}
!821 = !{i32 1, !"min_enum_size", i32 4}
!822 = !{i32 8, !"branch-target-enforcement", i32 0}
!823 = !{i32 8, !"sign-return-address", i32 0}
!824 = !{i32 8, !"sign-return-address-all", i32 0}
!825 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!826 = !{i32 7, !"uwtable", i32 1}
!827 = !{i32 7, !"frame-pointer", i32 2}
!828 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!829 = !{i32 0, i32 33}
!830 = !{!"branch_weights", i32 2000, i32 1}
!831 = !{i64 2148265330, i64 2148265610, i64 2148265944, i64 2148266278}
!832 = !{i64 2149019799, i64 2149019804, i64 2149019817, i64 2149019861, i64 2149019895, i64 2149019916}
!833 = !{i64 2155113194, i64 2155113690, i64 2155113231, i64 2155113287, i64 2155113321, i64 2155113345, i64 2155113386, i64 2155113407, i64 2155113435, i64 2155113469}
!834 = !{!"branch_weights", i32 1, i32 2000}
!835 = !{i64 2154242903, i64 2154243386, i64 2154242940, i64 2154242996, i64 2154243030, i64 2154243054, i64 2154243095, i64 2154243116, i64 2154243144, i64 2154243178}
!836 = !{i64 2148507382}
!837 = !{i64 2148422091, i64 2148422123, i64 2148422152, i64 2148422186, i64 2148422217, i64 2148422240}
!838 = !{i64 2148507611}
!839 = !{i64 2155087949, i64 2155088445, i64 2155087986, i64 2155088042, i64 2155088076, i64 2155088100, i64 2155088141, i64 2155088162, i64 2155088190, i64 2155088224}
