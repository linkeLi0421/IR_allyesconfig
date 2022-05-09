; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qedf_debugfs_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qedf_bdq_buf = type { ptr, i32 }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.qedf_io_log = type { i8, i16, i32, i32, i8, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.qedf_fastpath = type { i16, ptr, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.108, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.109, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.110, ptr, %struct.address_space, %struct.list_head, %union.anon.111, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.108 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.109 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.111 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.fcoe_fcf = type { %struct.list_head, %struct.work_struct, ptr, ptr, i32, i64, i64, i32, i16, [6 x i8], [6 x i8], i8, i8, i16, i32, i8 }
%struct.qedf_cmd_mgr = type { ptr, i16, ptr, [2048 x %struct.qedf_ioreq], %struct.spinlock, %struct.atomic_t }
%struct.qedf_ioreq = type { %struct.list_head, i16, ptr, i8, i8, i8, ptr, %struct.atomic_t, i32, i32, i32, %struct.kref, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, %struct.qedf_mp_req, ptr, ptr, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qedf_mp_req = type { i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.qed_fcoe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_fcoe_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@__func__.qedf_dbg_host_init = private unnamed_addr constant [19 x i8] c"qedf_dbg_host_init\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Creating debugfs host node\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host%u\00", [25 x i8] zeroinitializer }, align 32
@qedf_dbg_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.qedf_dbg_host_exit = private unnamed_addr constant [19 x i8] c"qedf_dbg_host_exit\00", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Destroying debugfs host entry\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_init = private unnamed_addr constant [14 x i8] c"qedf_dbg_init\00", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Creating debugfs root node\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_exit = private unnamed_addr constant [14 x i8] c"qedf_dbg_exit\00", align 1
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Destroying debugfs root entry\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fp_int\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io_trace\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stop_io_on_error\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"driver_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear_stats\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"offload_stats\00", [18 x i8] zeroinitializer }, align 32
@qedf_debugfs_ops = dso_local constant { [8 x %struct.qedf_debugfs_ops], [32 x i8] } { [8 x %struct.qedf_debugfs_ops] [%struct.qedf_debugfs_ops { ptr @.str.5, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.6, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.7, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.8, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.9, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.10, ptr null }, %struct.qedf_debugfs_ops { ptr @.str.11, ptr null }, %struct.qedf_debugfs_ops zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qedf_dbg_fops = dso_local constant { [8 x %struct.file_operations], [256 x i8] } { [8 x %struct.file_operations] [%struct.file_operations { ptr null, ptr null, ptr @qedf_dbg_fp_int_cmd_read, ptr @qedf_dbg_fp_int_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qedf_dbg_io_trace_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr null, ptr @qedf_dbg_debug_cmd_read, ptr @qedf_dbg_debug_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr null, ptr @qedf_dbg_stop_io_on_error_cmd_read, ptr @qedf_dbg_stop_io_on_error_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qedf_dbg_driver_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr null, ptr @qedf_dbg_clear_stats_cmd_read, ptr @qedf_dbg_clear_stats_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qedf_dbg_offload_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations zeroinitializer], [256 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_fp_int_cmd_read = private unnamed_addr constant [25 x i8] c"qedf_dbg_fp_int_cmd_read\00", align 1
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entered\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AFastpath I/O completions\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"#%d: %lu\0A\00", [22 x i8] zeroinitializer }, align 32
@qedf_io_tracing = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I/O tracing not enabled.\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qedf_io_trace_show = private unnamed_addr constant [19 x i8] c"qedf_io_trace_show\00", align 1
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d:\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x:\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x:\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x:\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%02x%02x%02x%02x:\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x:\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu:\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_debug_cmd_read = private unnamed_addr constant [24 x i8] c"qedf_dbg_debug_cmd_read\00", align 1
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug mask=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@qedf_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debug mask = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_debug_cmd_write = private unnamed_addr constant [25 x i8] c"qedf_dbg_debug_cmd_write\00", align 1
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Setting debug=0x%x.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_stop_io_on_error_cmd_read = private unnamed_addr constant [35 x i8] c"qedf_dbg_stop_io_on_error_cmd_read\00", align 1
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_stop_io_on_error_cmd_write = private unnamed_addr constant [36 x i8] c"qedf_dbg_stop_io_on_error_cmd_write\00", align 1
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"now\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Host WWNN/WWPN: %016llx/%016llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Host NPortID: %06x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Link State: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Up\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Down\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Logical Link State: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIP state: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@fip_state_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIP VLAN ID: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FIP 802.1Q Priority: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FCF WWPN: %016llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FCF MAC: %pM\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FCF not selected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0ASGE stats:\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmg_mgr free io_reqs: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slow SGEs: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fast SGEs: %d\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Offloaded ports:\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@qedf_driver_stats_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/qedf/qedf_debugfs.c\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%016llx/%016llx/%06x: state=%s, free_sqes=%d, num_active_ios=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@fc_rport_state_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIP_ST_DISABLED\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIP_ST_LINK_WAIT\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIP_ST_AUTO\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIP_ST_NON_FIP\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIP_ST_ENABLED\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIP_ST_VNMP_START\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FIP_ST_VNMP_PROBE1\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FIP_ST_VNMP_PROBE2\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIP_ST_VNMP_CLAIM\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIP_ST_VNMP_UP\00", [17 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RPORT_ST_INIT\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPORT_ST_FLOGI\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RPORT_ST_PLOGI_WAIT\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPORT_ST_PLOGI\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RPORT_ST_PRLI\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RPORT_ST_RTV\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPORT_ST_READY\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPORT_ST_ADISC\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RPORT_ST_DELETE\00", [16 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.qedf_dbg_clear_stats_cmd_write = private unnamed_addr constant [31 x i8] c"qedf_dbg_clear_stats_cmd_write\00", align 1
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Clearing stat counters.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qedf_offload_stats_show = private unnamed_addr constant [24 x i8] c"qedf_offload_stats_show\00", align 1
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not allocate memory for fw_fcoe_stats.\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.75 = internal constant { [390 x i8], [122 x i8] } { [390 x i8] c"fcoe_rx_byte_cnt=%llu\0Afcoe_rx_data_pkt_cnt=%llu\0Afcoe_rx_xfer_pkt_cnt=%llu\0Afcoe_rx_other_pkt_cnt=%llu\0Afcoe_silent_drop_pkt_cmdq_full_cnt=%u\0Afcoe_silent_drop_pkt_crc_error_cnt=%u\0Afcoe_silent_drop_pkt_task_invalid_cnt=%u\0Afcoe_silent_drop_total_pkt_cnt=%u\0Afcoe_silent_drop_pkt_rq_full_cnt=%u\0Afcoe_tx_byte_cnt=%llu\0Afcoe_tx_data_pkt_cnt=%llu\0Afcoe_tx_xfer_pkt_cnt=%llu\0Afcoe_tx_other_pkt_cnt=%llu\0A\00", [122 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 27, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 29, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"qedf_dbg_root\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 15, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 50, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 63, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 75, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 84, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 85, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 86, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 87, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 88, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 89, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 90, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"qedf_debugfs_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 83, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"qedf_dbg_fops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 470, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 109, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 111, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 117, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 244, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 254, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 255, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 256, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 258, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 259, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 263, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 264, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 269, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 144, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 145, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 179, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 194, i32 24 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 195, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 195, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 226, i32 29 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 325, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 327, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 328, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 329, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 329, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 330, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 332, i32 16 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"fip_state_names\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 292, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 333, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 334, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 336, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 338, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 340, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 343, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 344, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 346, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 347, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 349, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 352, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 356, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"fc_rport_state_names\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 306, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 293, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 294, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 295, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 296, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 297, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 298, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 299, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 300, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 301, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 302, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 695, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 307, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 308, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 309, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 310, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 311, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 312, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 313, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 314, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 315, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 723, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 400, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 420, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.317 = private constant [36 x i8] c"../drivers/scsi/qedf/qedf_debugfs.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 428, i32 16 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @.str, ptr @.str.1, ptr @qedf_dbg_root, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @qedf_debugfs_ops, ptr @qedf_dbg_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @fip_state_names, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @fc_rport_state_names, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_debugfs_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_fops to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fip_state_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_rport_state_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 390, i32 512, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_host_init(ptr noundef %qedf, ptr noundef readonly %dops, ptr noundef %fops) local_unnamed_addr #0 align 64 {
entry:
  %host_dirname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %host_dirname) #11
  %0 = call ptr @memset(ptr %host_dirname, i32 255, i32 32)
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_dbg_host_init, i32 noundef 27, i32 noundef 8192, ptr noundef nonnull @.str) #11
  %1 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %qedf, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_dirname, ptr noundef nonnull @.str.1, i32 noundef %2)
  %3 = load ptr, ptr @qedf_dbg_root, align 4
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %host_dirname, ptr noundef %3) #11
  %bdf_dentry = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf, i32 0, i32 2
  %4 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %bdf_dentry, align 4
  %tobool.not16 = icmp eq ptr %dops, null
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %fops.addr.018 = phi ptr [ %incdec.ptr7, %if.end.while.body_crit_edge ], [ %fops, %entry.while.body_crit_edge ]
  %dops.addr.017 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %dops, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %dops.addr.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dops.addr.017, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdf_dentry, align 4
  %call6 = call ptr @debugfs_create_file(ptr noundef nonnull %6, i16 noundef zeroext 384, ptr noundef %8, ptr noundef %qedf, ptr noundef %fops.addr.018) #11
  %incdec.ptr = getelementptr %struct.qedf_debugfs_ops, ptr %dops.addr.017, i32 1
  %incdec.ptr7 = getelementptr %struct.file_operations, ptr %fops.addr.018, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %host_dirname) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_host_exit(ptr noundef %qedf_dbg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf_dbg, ptr noundef nonnull @__func__.qedf_dbg_host_exit, i32 noundef 51, i32 noundef 8192, ptr noundef nonnull @.str.2) #11
  %bdf_dentry = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf_dbg, i32 0, i32 2
  %0 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdf_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %1) #11
  %2 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bdf_dentry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_init(ptr noundef %drv_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_dbg_init, i32 noundef 63, i32 noundef 8192, ptr noundef nonnull @.str.3) #11
  %call = tail call ptr @debugfs_create_dir(ptr noundef %drv_name, ptr noundef null) #11
  store ptr %call, ptr @qedf_dbg_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef null, ptr noundef nonnull @__func__.qedf_dbg_exit, i32 noundef 76, i32 noundef 8192, ptr noundef nonnull @.str.4) #11
  %0 = load ptr, ptr @qedf_dbg_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  store ptr null, ptr @qedf_dbg_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_fp_int_cmd_read(ptr nocapture noundef readonly %filp, ptr nocapture noundef writeonly %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_dbg_fp_int_cmd_read, i32 noundef 109, i32 noundef 8192, ptr noundef nonnull @.str.12) #11
  %2 = call ptr @memcpy(ptr %buffer, ptr @.str.13, i32 28)
  %num_queues = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not = icmp eq i8 %4, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_array = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cnt.032 = phi i32 [ 27, %for.body.lr.ph ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %id.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp_array, align 4
  %arrayidx = getelementptr %struct.qedf_fastpath, ptr %6, i32 %id.030
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp3 = icmp eq i16 %8, -1
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr5 = getelementptr i8, ptr %buffer, i32 %cnt.032
  %completions = getelementptr %struct.qedf_fastpath, ptr %6, i32 %id.030, i32 3
  %9 = ptrtoint ptr %completions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %completions, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.14, i32 noundef %id.030, i32 noundef %10)
  %add = add i32 %call6, %cnt.032
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %cnt.032, %for.body.for.inc_crit_edge ], [ %add, %if.end ]
  %inc = add nuw nsw i32 %id.030, 1
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_queues, align 8
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 27, %entry.for.end_crit_edge ], [ %cnt.1, %for.inc.for.end_crit_edge ]
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %15 = trunc i64 %14 to i32
  %conv8 = sub i32 %cnt.0.lcssa, %15
  %16 = tail call i32 @llvm.smin.i32(i32 %conv8, i32 %count)
  %conv12 = zext i32 %16 to i64
  %add13 = add i64 %14, %conv12
  %17 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add13, ptr %ppos, align 8
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qedf_dbg_fp_int_cmd_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not = icmp eq i64 %1, 0
  %spec.select = select i1 %tobool1.not, i32 %count, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_io_trace_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qedf_io_trace_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_debug_cmd_read(ptr nocapture noundef readonly %filp, ptr nocapture noundef writeonly %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  %2 = load i32, ptr @qedf_debug, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_dbg_debug_cmd_read, i32 noundef 144, i32 noundef 8192, ptr noundef nonnull @.str.24, i32 noundef %2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  %3 = load i32, ptr @qedf_debug, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.25, i32 noundef %3)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = trunc i64 %5 to i32
  %conv1 = sub i32 %call, %6
  %7 = tail call i32 @llvm.smin.i32(i32 %conv1, i32 %count)
  %conv3 = sext i32 %7 to i64
  %add = add i64 %5, %conv3
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %ppos, align 8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_debug_cmd_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !188
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @memdup_user(ptr noundef %buffer, i32 noundef %count) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @kstrtouint(ptr noundef %call, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @kfree(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = select i1 %cmp, i32 249782, i32 %7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  store i32 %., ptr @qedf_debug, align 4
  call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %2, ptr noundef nonnull @__func__.qedf_dbg_debug_cmd_write, i32 noundef 179, i32 noundef 8192, ptr noundef nonnull @.str.26, i32 noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then3 ], [ %count, %if.end9 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_stop_io_on_error_cmd_read(ptr nocapture noundef readonly %filp, ptr nocapture noundef writeonly %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_dbg_stop_io_on_error_cmd_read, i32 noundef 193, i32 noundef 8192, ptr noundef nonnull @.str.12) #11
  %stop_io_on_error = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %stop_io_on_error to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_io_on_error, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = trunc i64 %5 to i32
  %conv1 = sub i32 %call, %6
  %7 = tail call i32 @llvm.smin.i32(i32 %conv1, i32 %count)
  %conv5 = sext i32 %7 to i64
  %add = add i64 %5, %conv5
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %ppos, align 8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_stop_io_on_error_cmd_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_dbg_stop_io_on_error_cmd_write, i32 noundef 213, i32 noundef 8192, ptr noundef nonnull @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @memdup_user(ptr noundef %buffer, i32 noundef 6) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @strncmp(ptr noundef %call, ptr noundef nonnull dereferenceable(6) @.str.29, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %stop_io_on_error = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 63
  %5 = ptrtoint ptr %stop_io_on_error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %stop_io_on_error, align 2
  br label %if.end18

if.else:                                          ; preds = %if.end5
  %call8 = tail call i32 @strncmp(ptr noundef %call, ptr noundef nonnull dereferenceable(5) @.str.28, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %stop_io_on_error11 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 63
  %6 = ptrtoint ptr %stop_io_on_error11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stop_io_on_error11, align 2
  br label %if.end18

if.else12:                                        ; preds = %if.else
  %call13 = tail call i32 @strncmp(ptr noundef %call, ptr noundef nonnull dereferenceable(4) @.str.30, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else12.if.end18_crit_edge

if.else12.if.end18_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else12.if.end18_crit_edge, %if.then10, %if.then7
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %count, %if.end18 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_driver_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qedf_driver_stats_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qedf_dbg_clear_stats_cmd_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %2 = trunc i64 %1 to i32
  %conv1 = sub i32 0, %2
  %3 = tail call i32 @llvm.smin.i32(i32 %conv1, i32 %count)
  %conv3 = sext i32 %3 to i64
  %add = add i64 %1, %conv3
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %ppos, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_clear_stats_cmd_write(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_dbg_clear_stats_cmd_write, i32 noundef 400, i32 noundef 8192, ptr noundef nonnull @.str.73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %slow_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %slow_sge_ios to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %slow_sge_ios, align 4
  %fast_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 57
  %5 = ptrtoint ptr %fast_sge_ios to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fast_sge_ios, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_dbg_offload_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qedf_offload_stats_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_io_trace_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_io_tracing to i32))
  %2 = load i32, ptr @qedf_io_tracing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.15) #11
  br label %out

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_io_trace_show, i32 noundef 248, i32 noundef 8192, ptr noundef nonnull @.str.12) #11
  %io_trace_lock = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 61
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_trace_lock) #11
  %io_trace_idx = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 62
  %3 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_trace_idx, align 16
  %conv5 = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.070 = phi i32 [ 0, %if.end ], [ %inc27, %for.body.for.body_crit_edge ]
  %idx.069 = phi i32 [ %conv5, %if.end ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 4
  %conv8 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %conv8) #11
  %task_id = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 1
  %7 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %task_id, align 2
  %conv9 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %conv9) #11
  %port_id = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 2
  %9 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %10) #11
  %lun = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 3
  %11 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lun, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %12) #11
  %op = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 4
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op, align 4
  %conv10 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %conv10) #11
  %lba = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 5
  %15 = ptrtoint ptr %lba to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lba, align 1
  %conv12 = zext i8 %16 to i32
  %arrayidx14 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %arrayidx17 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %arrayidx20 = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21) #11
  %bufflen = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 6
  %23 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufflen, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %24) #11
  %sg_count = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 7
  %25 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %26) #11
  %result = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 8
  %27 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %28) #11
  %jiffies = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 9
  %29 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %jiffies, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %30) #11
  %refcount = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 10
  %31 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %32) #11
  %req_cpu = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 11
  %33 = ptrtoint ptr %req_cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %34) #11
  %int_cpu = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 12
  %35 = ptrtoint ptr %int_cpu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %int_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %36) #11
  %rsp_cpu = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 13
  %37 = ptrtoint ptr %rsp_cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rsp_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %38) #11
  %sge_type = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 60, i32 %idx.069, i32 14
  %39 = ptrtoint ptr %sge_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sge_type, align 4
  %conv22 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %conv22) #11
  %inc = add i32 %idx.069, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %inc)
  %cmp23 = icmp eq i32 %inc, 2048
  %spec.store.select = select i1 %cmp23, i32 0, i32 %inc
  %inc27 = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc27, 2048
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_trace_lock, i32 noundef %call2) #11
  br label %out

out:                                              ; preds = %for.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_driver_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %wwnn = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wwnn, align 16
  %wwpn = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wwpn, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i64 noundef %3, i64 noundef %5) #11
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport, align 16
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %9) #11
  %link_state = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_state, i32 noundef 4) #11
  %10 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond) #11
  %12 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lport, align 16
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond3) #11
  %ctlr = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctlr, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @fip_state_names, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, ptr noundef %19) #11
  %vlan_id = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vlan_id, align 4
  %and = and i32 %21, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %and) #11
  %prio = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prio, align 8
  %conv4 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %conv4) #11
  %sel_fcf = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sel_fcf, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch_name = getelementptr inbounds %struct.fcoe_fcf, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %switch_name to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %switch_name, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i64 noundef %27) #11
  %28 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sel_fcf, align 4
  %fcf_mac = getelementptr inbounds %struct.fcoe_fcf, ptr %29, i32 0, i32 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, ptr noundef %fcf_mac) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.43) #11
  %cmd_mgr = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 47
  %30 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_mgr, align 8
  %free_list_cnt = getelementptr inbounds %struct.qedf_cmd_mgr, ptr %31, i32 0, i32 5
  %call.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_list_cnt, i32 noundef 4) #11
  %32 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %free_list_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %33) #11
  %slow_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 56
  %34 = ptrtoint ptr %slow_sge_ios to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slow_sge_ios, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %35) #11
  %fast_sge_ios = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 57
  %36 = ptrtoint ptr %fast_sge_ios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fast_sge_ios, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %37) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.47) #11
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #11
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 696, ptr noundef nonnull @.str.62) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call12 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b85 = load i1, ptr @qedf_driver_stats_show.__warned, align 1
  br i1 %.b85, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qedf_driver_stats_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 352, ptr noundef nonnull @.str.49) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fcports = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %fcports to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn98 = load volatile ptr, ptr %fcports, align 4
  %cmp.not99 = icmp eq ptr %.pn98, %fcports
  br i1 %cmp.not99, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn100 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn98, %do.end.for.body_crit_edge ]
  %rdata26 = getelementptr i8, ptr %.pn100, i32 -72
  %43 = ptrtoint ptr %rdata26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdata26, align 4
  %cmp27 = icmp eq ptr %44, null
  br i1 %cmp27, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rport = getelementptr inbounds %struct.fc_rport_priv, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rport, align 4
  %node_name = getelementptr inbounds %struct.fc_rport, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %node_name, align 8
  %port_name = getelementptr inbounds %struct.fc_rport, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %port_name, align 8
  %port_id32 = getelementptr inbounds %struct.fc_rport_priv, ptr %44, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %port_id32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port_id32, align 8
  %rp_state = getelementptr inbounds %struct.fc_rport_priv, ptr %44, i32 0, i32 3
  %53 = ptrtoint ptr %rp_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rp_state, align 4
  %arrayidx33 = getelementptr [9 x ptr], ptr @fc_rport_state_names, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx33, align 4
  %free_sqes = getelementptr i8, ptr %.pn100, i32 -52
  %call.i.i87 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes, i32 noundef 4) #11
  %57 = ptrtoint ptr %free_sqes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %free_sqes, align 4
  %num_active_ios = getelementptr i8, ptr %.pn100, i32 -44
  %call.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_ios, i32 noundef 4) #11
  %59 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %num_active_ios, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i64 noundef %48, i64 noundef %50, i32 noundef %52, ptr noundef %56, i32 noundef %58, i32 noundef %60) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %for.body.for.inc_crit_edge
  %61 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load volatile ptr, ptr %.pn100, align 4
  %cmp.not = icmp eq ptr %.pn, %fcports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i89 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i89, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i92

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i92:                                ; preds = %for.end
  %call1.i90 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i94

land.lhs.true.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i94:                               ; preds = %land.lhs.true.i92
  %.b4.i93 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93, label %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, label %if.then.i95

land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i95:                                      ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 724, ptr noundef nonnull @.str.72) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i95, %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %62 = tail call i32 @llvm.read_register.i32(metadata !178) #11
  %and.i.i.i.i.i96 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i96 to ptr
  %preempt_count.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i97, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i97, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_offload_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_offload_stats_show, i32 noundef 421, ptr noundef nonnull @.str.74) #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qed_ops to i32))
  %3 = load ptr, ptr @qed_ops, align 4
  %get_stats = getelementptr inbounds %struct.qed_fcoe_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_stats, align 4
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef nonnull %call7.i) #11
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %call7.i, align 8
  %fcoe_rx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %fcoe_rx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fcoe_rx_data_pkt_cnt, align 8
  %fcoe_rx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %fcoe_rx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fcoe_rx_xfer_pkt_cnt, align 8
  %fcoe_rx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %fcoe_rx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fcoe_rx_other_pkt_cnt, align 8
  %fcoe_silent_drop_pkt_cmdq_full_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 4
  %16 = ptrtoint ptr %fcoe_silent_drop_pkt_cmdq_full_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fcoe_silent_drop_pkt_cmdq_full_cnt, align 8
  %fcoe_silent_drop_pkt_crc_error_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 6
  %18 = ptrtoint ptr %fcoe_silent_drop_pkt_crc_error_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcoe_silent_drop_pkt_crc_error_cnt, align 8
  %fcoe_silent_drop_pkt_task_invalid_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 7
  %20 = ptrtoint ptr %fcoe_silent_drop_pkt_task_invalid_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fcoe_silent_drop_pkt_task_invalid_cnt, align 4
  %fcoe_silent_drop_total_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 8
  %22 = ptrtoint ptr %fcoe_silent_drop_total_pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fcoe_silent_drop_total_pkt_cnt, align 8
  %fcoe_silent_drop_pkt_rq_full_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 5
  %24 = ptrtoint ptr %fcoe_silent_drop_pkt_rq_full_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fcoe_silent_drop_pkt_rq_full_cnt, align 4
  %fcoe_tx_byte_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 9
  %26 = ptrtoint ptr %fcoe_tx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fcoe_tx_byte_cnt, align 8
  %fcoe_tx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 10
  %28 = ptrtoint ptr %fcoe_tx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fcoe_tx_data_pkt_cnt, align 8
  %fcoe_tx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 11
  %30 = ptrtoint ptr %fcoe_tx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fcoe_tx_xfer_pkt_cnt, align 8
  %fcoe_tx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %call7.i, i32 0, i32 12
  %32 = ptrtoint ptr %fcoe_tx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fcoe_tx_other_pkt_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i64 noundef %27, i64 noundef %29, i64 noundef %31, i64 noundef %33) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !172, !173, !175, !176}
!llvm.named.register.sp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__func__.qedf_dbg_host_init, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 27, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 29, i32 24}
!5 = !{ptr @__func__.qedf_dbg_host_exit, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 50, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.qedf_dbg_init, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 63, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.qedf_dbg_exit, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 75, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 84, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 85, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 86, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 87, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 88, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 89, i32 4}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 90, i32 4}
!28 = !{ptr @qedf_debugfs_ops, !29, !"qedf_debugfs_ops", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 83, i32 31}
!30 = !{ptr @qedf_dbg_fops, !31, !"qedf_dbg_fops", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 470, i32 30}
!32 = !{ptr @qedf_dbg_root, !33, !"qedf_dbg_root", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 15, i32 23}
!34 = !{ptr @__func__.qedf_dbg_fp_int_cmd_read, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 109, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 111, i32 24}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 117, i32 34}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 244, i32 15}
!43 = !{ptr @__func__.qedf_io_trace_show, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 248, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 254, i32 17}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 255, i32 17}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 256, i32 17}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 258, i32 17}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 259, i32 17}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 263, i32 17}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 264, i32 17}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 269, i32 17}
!61 = !{ptr @__func__.qedf_dbg_debug_cmd_read, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 144, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 145, i32 24}
!66 = !{ptr @__func__.qedf_dbg_debug_cmd_write, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 179, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__func__.qedf_dbg_stop_io_on_error_cmd_read, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 193, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 194, i32 24}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 195, i32 31}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 195, i32 40}
!77 = !{ptr @__func__.qedf_dbg_stop_io_on_error_cmd_write, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 213, i32 2}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 226, i32 29}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 325, i32 16}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 327, i32 16}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 328, i32 16}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 329, i32 6}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 329, i32 13}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 330, i32 16}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 332, i32 16}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 333, i32 16}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 334, i32 16}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 336, i32 17}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 338, i32 17}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 340, i32 15}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 343, i32 14}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 344, i32 16}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 346, i32 16}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 347, i32 16}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 349, i32 14}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 352, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 356, i32 17}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 293, i32 2}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 294, i32 2}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 295, i32 2}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 296, i32 2}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 297, i32 2}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 298, i32 2}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 299, i32 2}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 300, i32 2}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 301, i32 2}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 302, i32 2}
!141 = !{ptr @fip_state_names, !142, !"fip_state_names", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 292, i32 14}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!145 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 307, i32 2}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 308, i32 2}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 309, i32 2}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 310, i32 2}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 311, i32 2}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 312, i32 2}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 313, i32 2}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 314, i32 2}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 315, i32 2}
!165 = !{ptr @fc_rport_state_names, !166, !"fc_rport_state_names", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 306, i32 14}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!169 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__func__.qedf_dbg_clear_stats_cmd_write, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 400, i32 2}
!172 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__func__.qedf_offload_stats_show, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 420, i32 3}
!175 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qedf/qedf_debugfs.c", i32 428, i32 16}
!178 = !{!"sp"}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i8 0, i8 2}
!190 = !{i64 2149271270}
!191 = !{i64 2149271536}
