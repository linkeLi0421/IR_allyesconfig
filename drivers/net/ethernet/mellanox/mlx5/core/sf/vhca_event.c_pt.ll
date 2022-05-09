; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/sf/vhca_event.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/sf/vhca_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.179 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.181, %struct.trace_event, ptr, ptr, %union.anon.182, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.181 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.182 = type { ptr }
%union.anon.183 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.trace_event_raw_mlx5_sf_vhca_event = type { %struct.trace_entry, i32, i16, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mlx5_vhca_state_event = type { i16, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_vhca_state_notifier = type { ptr, %struct.mlx5_nb, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_vhca_event_work = type { %struct.work_struct, ptr, %struct.mlx5_vhca_state_event }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_eqe_vhca_state = type { i16, i16 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_sf_vhca_event = internal constant [19 x i8] c"mlx5_sf_vhca_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_vhca_event = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_vhca_event }, align 4
@__tracepoint_mlx5_sf_vhca_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_vhca_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_vhca_event, ptr null, ptr @__traceiter_mlx5_sf_vhca_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_vhca_event = internal constant ptr @__tracepoint_mlx5_sf_vhca_event, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_sf_vhca_event = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.179 { %struct.anon.180 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.179 { %struct.anon.180 { ptr @.str.5, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.179 { %struct.anon.180 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.179 { %struct.anon.180 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_vhca_event = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_vhca_event, ptr @perf_trace_mlx5_sf_vhca_event, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_vhca_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_vhca_event, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_vhca_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_vhca_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_vhca_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_vhca_event = internal global { [106 x i8], [54 x i8] } { [106 x i8] c"\22(%s) hw_id=0x%x sfnum=%u vhca_state=%d\0A\22, __get_str(devname), REC->hw_fn_id, REC->sfnum, REC->vhca_state\00", [54 x i8] zeroinitializer }, align 32
@event_mlx5_sf_vhca_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_vhca_event, %union.anon.181 { ptr @__tracepoint_mlx5_sf_vhca_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_vhca_event }, ptr @print_fmt_mlx5_sf_vhca_event, ptr null, %union.anon.182 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_vhca_event = internal global ptr @event_mlx5_sf_vhca_event, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_sf_vhca_event = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_vhca_event, ptr @__bpf_trace_mlx5_sf_vhca_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mlx5_vhca_event_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&notifier->n_head)->rwsem\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw_fn_id\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfnum\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhca_state\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(%s) hw_id=0x%x sfnum=%u vhca_state=%d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_vhca_state_change_notifier.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/diag/vhca_tracepoint.h\00", [62 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_vhca_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 36, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [38 x i8] c"trace_event_fields_mlx5_sf_vhca_event\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_mlx5_sf_vhca_event\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"print_fmt_mlx5_sf_vhca_event\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"event_mlx5_sf_vhca_event\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 145, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/vhca_event.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 113, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [69 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/vhca_tracepoint.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 14, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 108, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__bpf_trace_tp_map_mlx5_sf_vhca_event, ptr @__event_mlx5_sf_vhca_event, ptr @__tracepoint_mlx5_sf_vhca_event, ptr @__tracepoint_ptr_mlx5_sf_vhca_event, ptr @event_class_mlx5_sf_vhca_event, ptr @event_mlx5_sf_vhca_event, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_sf_vhca_event, ptr @trace_event_type_funcs_mlx5_sf_vhca_event, ptr @print_fmt_mlx5_sf_vhca_event, ptr @mlx5_vhca_event_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mlx5_vhca_state_change_notifier.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_vhca_event to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_vhca_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_vhca_event to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_vhca_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vhca_event_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vhca_state_change_notifier.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_vhca_event(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_vhca_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %event) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_vhca_event(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !48

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_vhca_event.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i28 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i28, ptr @.str.1, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_vhca_event.exit

trace_event_get_offsets_mlx5_sf_vhca_event.exit:  ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_vhca_event.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_vhca_event.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_vhca_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_vhca_event.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65557
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 21
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i29 = icmp eq ptr %13, null
  br i1 %tobool.not.i29, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i34

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i34:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i34, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.1, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i34 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %18 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %event, align 2
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call3, i32 0, i32 2
  %20 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %hw_fn_id, align 4
  %sw_function_id = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %event, i32 0, i32 1
  %21 = ptrtoint ptr %sw_function_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sw_function_id, align 2
  %conv = zext i16 %22 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call3, i32 0, i32 3
  %23 = ptrtoint ptr %sfnum to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %sfnum, align 4
  %new_vhca_state = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %event, i32 0, i32 2
  %24 = ptrtoint ptr %new_vhca_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %new_vhca_state, align 2
  %vhca_state = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call3, i32 0, i32 4
  %26 = ptrtoint ptr %vhca_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %vhca_state, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_vhca_event.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_vhca_event(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !49
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_vhca_event.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.1, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_vhca_event.exit

trace_event_get_offsets_mlx5_sf_vhca_event.exit:  ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_vhca_event.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65557
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_vhca_event.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_vhca_event.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_vhca_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_vhca_event.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i52.not = icmp eq ptr %21, null
  br i1 %tobool.not.i52.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_vhca_event.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !37) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 21
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %37, null
  br i1 %tobool.not.i53, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i56

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i56:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i56, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.1, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i56 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %42 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %event, align 2
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call13, i32 0, i32 2
  %44 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %hw_fn_id, align 4
  %sw_function_id = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %event, i32 0, i32 1
  %45 = ptrtoint ptr %sw_function_id to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sw_function_id, align 2
  %conv = zext i16 %46 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call13, i32 0, i32 3
  %47 = ptrtoint ptr %sfnum to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv, ptr %sfnum, align 4
  %new_vhca_state = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %event, i32 0, i32 2
  %48 = ptrtoint ptr %new_vhca_state to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %new_vhca_state, align 2
  %vhca_state = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %call13, i32 0, i32 4
  %50 = ptrtoint ptr %vhca_state to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %vhca_state, align 4
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_vhca_event(ptr noundef %__data, ptr noundef %dev, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %event to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_query_vhca_state(ptr noundef %dev, i16 noundef zeroext %function_id, ptr noundef %out, i32 noundef %outlen) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #10
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 185401344, ptr %in, align 4
  %conv = zext i16 %function_id to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef %outlen) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_modify_vhca_sw_id(ptr noundef %dev, i16 noundef zeroext %function_id, i32 noundef %sw_fn_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #10
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #10
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 185466880, ptr %in, align 4
  %conv = zext i16 %function_id to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %add.ptr13, align 4
  %add.ptr43 = getelementptr inbounds i32, ptr %in, i32 3
  %5 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %add.ptr43, align 4
  %add.ptr58 = getelementptr inbounds i32, ptr %in, i32 5
  %6 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sw_fn_id, ptr %add.ptr58, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vhca_event_arm(ptr noundef %dev, i16 noundef zeroext %function_id) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #10
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %add.ptr = getelementptr inbounds i32, ptr %in, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2147483648, ptr %add.ptr, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 3
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #10
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 185466880, ptr %in, align 4
  %conv.i = zext i16 %function_id to i32
  %add.ptr11.i = getelementptr inbounds i32, ptr %in, i32 2
  %6 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %add.ptr11.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #10
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_vhca_state_cap_handle(ptr nocapture noundef readonly %dev, ptr nocapture noundef %set_hca_cap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 31
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.do.end57_crit_edge, label %do.body

entry.do.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i32, ptr %set_hca_cap, i32 31
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %or = or i32 %6, 2097152
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr11 = getelementptr i32, ptr %set_hca_cap, i32 1
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr11, align 4
  %or54 = or i32 %8, 503316480
  store i32 %or54, ptr %add.ptr11, align 4
  br label %do.end57

do.end57:                                         ; preds = %do.body, %entry.do.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vhca_event_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 31
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %6 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %vhca_state_notifier, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call7.i.i, align 8
  %n_head = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %n_head, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_vhca_event_init.__key) #10
  %head = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %head, align 4
  %nb = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx5_vhca_state_change_notifier, ptr %nb, align 4
  %event_type = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %event_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vhca_state_change_notifier(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 56) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlx5_vhca_state_change_notifier.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5_vhca_state_work_handler, ptr %func, align 4
  %notifier11 = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %notifier11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr3, ptr %notifier11, align 4
  %data12 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %function_id = getelementptr inbounds %struct.mlx5_eqe_vhca_state, ptr %data12, i32 0, i32 1
  %6 = ptrtoint ptr %function_id to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %function_id, align 1
  %event = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %event, align 8
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr3, align 4
  tail call void @mlx5_events_work_enqueue(ptr noundef %10, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vhca_event_cleanup(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 31
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %5 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vhca_state_notifier, align 8
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vhca_state_notifier, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vhca_event_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %0 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhca_state_notifier, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nb = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %1, i32 0, i32 1
  %call = tail call i32 @mlx5_eq_notifier_register(ptr noundef %dev, ptr noundef %nb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vhca_event_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %0 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhca_state_notifier, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nb = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %1, i32 0, i32 1
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %dev, ptr noundef %nb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vhca_event_notifier_register(ptr nocapture noundef readonly %dev, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %0 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhca_state_notifier, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %n_head = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %1, i32 0, i32 2
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef %n_head, ptr noundef %nb) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vhca_event_notifier_unregister(ptr nocapture noundef readonly %dev, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vhca_state_notifier = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 40
  %0 = ptrtoint ptr %vhca_state_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhca_state_notifier, align 8
  %n_head = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %1, i32 0, i32 2
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %n_head, ptr noundef %nb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_vhca_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %5 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sfnum, align 4
  %vhca_state = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_vhca_event, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vhca_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vhca_state, align 4
  %conv1 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %7, i32 noundef %conv1) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vhca_state_work_handler(ptr noundef %_work) #0 align 64 {
entry:
  %out.i.i.i = alloca [4 x i32], align 4
  %in.i19.i = alloca [8 x i32], align 4
  %in.i.i = alloca [4 x i32], align 4
  %out.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier1 = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %_work, i32 0, i32 1
  %0 = ptrtoint ptr %notifier1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notifier1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %event = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %_work, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #10
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 32)
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %event, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #10
  %7 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  %9 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 185401344, ptr %in.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr13.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %10 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i.i, ptr %add.ptr13.i.i, align 4
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 32) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5_vhca_event_notify.exit_crit_edge

entry.mlx5_vhca_event_notify.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_vhca_event_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr inbounds i32, ptr %out.i, i32 5
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %12 to i16
  %sw_function_id.i = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %_work, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %sw_function_id.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %sw_function_id.i, align 2
  %add.ptr3.i = getelementptr inbounds i32, ptr %out.i, i32 4
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr3.i, align 4
  %shr4.i = lshr i32 %15, 16
  %16 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %16, 15
  %new_vhca_state.i = getelementptr inbounds %struct.mlx5_vhca_event_work, ptr %_work, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %new_vhca_state.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %new_vhca_state.i, align 2
  %18 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %event, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i19.i) #10
  %20 = getelementptr inbounds i8, ptr %in.i19.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 28)
  %add.ptr.i.i = getelementptr inbounds i32, ptr %in.i19.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2147483648, ptr %add.ptr.i.i, align 4
  %add.ptr13.i20.i = getelementptr inbounds i32, ptr %in.i19.i, i32 3
  %23 = ptrtoint ptr %add.ptr13.i20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %add.ptr13.i20.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i.i) #10
  %24 = call ptr @memset(ptr %out.i.i.i, i32 0, i32 16)
  %25 = ptrtoint ptr %in.i19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 185466880, ptr %in.i19.i, align 4
  %conv.i.i.i = zext i16 %19 to i32
  %add.ptr11.i.i.i = getelementptr inbounds i32, ptr %in.i19.i, i32 2
  %26 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i.i.i, ptr %add.ptr11.i.i.i, align 4
  %call.i.i.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i19.i, i32 noundef 32, ptr noundef nonnull %out.i.i.i, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i19.i) #10
  call fastcc void @trace_mlx5_sf_vhca_event(ptr noundef %3, ptr noundef %event) #10
  %vhca_state_notifier.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 40
  %27 = ptrtoint ptr %vhca_state_notifier.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vhca_state_notifier.i, align 8
  %n_head.i = getelementptr inbounds %struct.mlx5_vhca_state_notifier, ptr %28, i32 0, i32 2
  %call9.i = call i32 @blocking_notifier_call_chain(ptr noundef %n_head.i, i32 noundef 0, ptr noundef %event) #10
  br label %mlx5_vhca_event_notify.exit

mlx5_vhca_event_notify.exit:                      ; preds = %if.end.i, %entry.mlx5_vhca_event_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #10
  call void @kfree(ptr noundef %_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_events_work_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_vhca_event(ptr noundef %dev, ptr noundef %event) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_vhca_event, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_vhca_event, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_vhca_event, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %event) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_vhca_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_vhca_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_vhca_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 31, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %38 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__tracepoint_mlx5_sf_vhca_event, !1, !"__tracepoint_mlx5_sf_vhca_event", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/vhca_tracepoint.h", i32 14, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_sf_vhca_event, !1, !"__tracepoint_ptr_mlx5_sf_vhca_event", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_sf_vhca_event, !1, !"__SCK__tp_func_mlx5_sf_vhca_event", i1 false, i1 false}
!4 = !{ptr @event_class_mlx5_sf_vhca_event, !1, !"event_class_mlx5_sf_vhca_event", i1 false, i1 false}
!5 = !{ptr @event_mlx5_sf_vhca_event, !1, !"event_mlx5_sf_vhca_event", i1 false, i1 false}
!6 = !{ptr @__event_mlx5_sf_vhca_event, !1, !"__event_mlx5_sf_vhca_event", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_mlx5_sf_vhca_event, !1, !"__bpf_trace_tp_map_mlx5_sf_vhca_event", i1 false, i1 false}
!8 = !{ptr @mlx5_vhca_event_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/vhca_event.c", i32 145, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__tpstrtab_mlx5_sf_vhca_event, !1, !"__tpstrtab_mlx5_sf_vhca_event", i1 false, i1 false}
!12 = !{ptr @str__mlx5__trace_system_name, !13, !"str__mlx5__trace_system_name", i1 false, i1 false}
!13 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!14 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @trace_event_fields_mlx5_sf_vhca_event, !1, !"trace_event_fields_mlx5_sf_vhca_event", i1 false, i1 false}
!24 = !{ptr @trace_event_type_funcs_mlx5_sf_vhca_event, !1, !"trace_event_type_funcs_mlx5_sf_vhca_event", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @print_fmt_mlx5_sf_vhca_event, !1, !"print_fmt_mlx5_sf_vhca_event", i1 false, i1 false}
!27 = !{ptr @mlx5_vhca_state_change_notifier.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/vhca_event.c", i32 113, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!31 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"auto-init"}
!50 = !{i64 2148728798, i64 2148728803, i64 2148728816, i64 2148728860, i64 2148728894, i64 2148728915}
!51 = !{i64 2158720438}
!52 = !{i64 2158720657}
!53 = !{i64 2150164254}
!54 = !{i64 2150165290}
