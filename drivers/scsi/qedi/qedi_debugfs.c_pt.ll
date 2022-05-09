; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedi/qedi_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/qedi/qedi_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qedi_list_of_funcs = type { ptr, ptr }
%struct.qedi_debugfs_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qedi_dbg_ctx = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.108, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.109, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.110, ptr, %struct.address_space, %struct.list_head, %union.anon.111, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.108 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.111 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.qedi_ctx = type { %struct.qedi_dbg_ctx, ptr, ptr, ptr, %struct.qed_dev_iscsi_info, %struct.qed_int_info, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, ptr, i32, i32, [6 x i8], [4 x i32], i8, i32, [256 x %struct.qedi_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, i32, ptr, ptr, i16, i16, i32, i8, i32, i32, %struct.iscsi_cid_queue, ptr, %struct.qedi_portid_tbl, ptr, ptr, %struct.qed_iscsi_tid, %struct.atomic_t, [128 x i32], ptr, [4096 x i16], %struct.qed_pf_params, ptr, ptr, i16, ptr, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, i32, i32, [2048 x %struct.qedi_io_log], %struct.spinlock, i16, i32, i32, i8, i32, i8, i32, i8, %struct.atomic_t, ptr, %struct.mutex }
%struct.qed_dev_iscsi_info = type { %struct.qed_dev_info, ptr, ptr, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qedi_bdq_buf = type { ptr, i32 }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.qedi_portid_tbl = type { %struct.spinlock, i16, i16, i16, ptr }
%struct.qed_iscsi_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedi_io_log = type { i8, i16, i32, i32, i32, i8, [4 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.qedi_fastpath = type { ptr, i16, [16 x i8], ptr }
%struct.global_queue = type { ptr, i32, i32, i32, ptr, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host%u\00", [25 x i8] zeroinitializer }, align 32
@qedi_dbg_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gbl_ctx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_not_recover\00", [17 x i8] zeroinitializer }, align 32
@qedi_dbg_do_not_recover_ops = internal global { [3 x %struct.qedi_list_of_funcs], [40 x i8] } { [3 x %struct.qedi_list_of_funcs] [%struct.qedi_list_of_funcs { ptr @.str.4, ptr @qedi_dbg_do_not_recover_enable }, %struct.qedi_list_of_funcs { ptr @.str.5, ptr @qedi_dbg_do_not_recover_disable }, %struct.qedi_list_of_funcs zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io_trace\00", [23 x i8] zeroinitializer }, align 32
@qedi_debugfs_ops = dso_local constant { [4 x %struct.qedi_debugfs_ops], [32 x i8] } { [4 x %struct.qedi_debugfs_ops] [%struct.qedi_debugfs_ops { ptr @.str.1, ptr null }, %struct.qedi_debugfs_ops { ptr @.str.2, ptr @qedi_dbg_do_not_recover_ops }, %struct.qedi_debugfs_ops { ptr @.str.3, ptr null }, %struct.qedi_debugfs_ops zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qedi_dbg_fops = dso_local constant { [4 x %struct.file_operations], [128 x i8] } { [4 x %struct.file_operations] [%struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qedi_dbg_gbl_ctx_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr null, ptr @qedi_dbg_do_not_recover_cmd_read, ptr @qedi_dbg_do_not_recover_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qedi_dbg_io_trace_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations zeroinitializer], [128 x i8] zeroinitializer }, align 32
@qedi_do_not_recover = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__func__.qedi_dbg_do_not_recover_enable = private unnamed_addr constant [31 x i8] c"qedi_dbg_do_not_recover_enable\00", align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_not_recover=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedi_dbg_do_not_recover_disable = private unnamed_addr constant [32 x i8] c"qedi_dbg_do_not_recover_disable\00", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DUMP CQ CONTEXT:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"=========FAST CQ PATH [%d] ==========\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SB PROD IDX: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRV CONS IDX: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CQ complete host memory: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"=========== END ==================\0A\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" DUMP IO LOGS:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iodir-%d:\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tid-0x%x:\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cid-0x%x:\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lun-%d:\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"op-0x%02x:\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%02x%02x%02x%02x:\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buflen-%d:\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgcnt-%d:\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"res-0x%08x:\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jif-%lu:\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blk_req_cpu-%d:\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"req_cpu-%d:\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_cpu-%d:\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blk_rsp_cpu-%d\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 24, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"qedi_dbg_root\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 15, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"qedi_dbg_do_not_recover_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 80, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 89, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"qedi_debugfs_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 86, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"qedi_dbg_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 223, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"qedi_do_not_recover\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 14, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 81, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 64, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 146, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 150, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 156, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 158, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 159, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 160, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 184, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 189, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 190, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 191, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 192, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 193, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 194, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 196, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 197, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 198, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 199, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 200, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 201, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 202, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [36 x i8] c"../drivers/scsi/qedi/qedi_debugfs.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 203, i32 17 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @qedi_dbg_root, ptr @.str.1, ptr @.str.2, ptr @qedi_dbg_do_not_recover_ops, ptr @.str.3, ptr @qedi_debugfs_ops, ptr @qedi_dbg_fops, ptr @qedi_do_not_recover, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_dbg_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_dbg_do_not_recover_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_debugfs_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_dbg_fops to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedi_do_not_recover to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_dbg_host_init(ptr noundef %qedi, ptr noundef readonly %dops, ptr noundef %fops) local_unnamed_addr #0 align 64 {
entry:
  %host_dirname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %host_dirname) #7
  %0 = call ptr @memset(ptr %host_dirname, i32 255, i32 32)
  %1 = ptrtoint ptr %qedi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %qedi, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host_dirname, ptr noundef nonnull @.str, i32 noundef %2)
  %3 = load ptr, ptr @qedi_dbg_root, align 4
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %host_dirname, ptr noundef %3) #7
  %bdf_dentry = getelementptr inbounds %struct.qedi_dbg_ctx, ptr %qedi, i32 0, i32 2
  %4 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %bdf_dentry, align 4
  %tobool.not15 = icmp eq ptr %dops, null
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %fops.addr.017 = phi ptr [ %incdec.ptr7, %if.end.while.body_crit_edge ], [ %fops, %entry.while.body_crit_edge ]
  %dops.addr.016 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %dops, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %dops.addr.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dops.addr.016, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdf_dentry, align 4
  %call6 = call ptr @debugfs_create_file(ptr noundef nonnull %6, i16 noundef zeroext 384, ptr noundef %8, ptr noundef %qedi, ptr noundef %fops.addr.017) #7
  %incdec.ptr = getelementptr %struct.qedi_debugfs_ops, ptr %dops.addr.016, i32 1
  %incdec.ptr7 = getelementptr %struct.file_operations, ptr %fops.addr.017, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %host_dirname) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_dbg_host_exit(ptr nocapture noundef %qedi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bdf_dentry = getelementptr inbounds %struct.qedi_dbg_ctx, ptr %qedi, i32 0, i32 2
  %0 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdf_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %bdf_dentry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bdf_dentry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_dbg_init(ptr noundef %drv_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef %drv_name, ptr noundef null) #7
  store ptr %call, ptr @qedi_dbg_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedi_dbg_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qedi_dbg_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  store ptr null, ptr @qedi_dbg_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_gbl_ctx_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qedi_gbl_ctx_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_do_not_recover_cmd_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef writeonly %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @qedi_do_not_recover, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.6, i32 noundef %2)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  %5 = trunc i64 %4 to i32
  %conv1 = sub i32 %call, %5
  %6 = tail call i32 @llvm.smin.i32(i32 %conv1, i32 %count)
  %conv3 = zext i32 %6 to i64
  %add = add i64 %4, %conv3
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_do_not_recover_cmd_write(ptr nocapture noundef readonly %filp, ptr nocapture noundef readonly %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %entry.while.body_crit_edge
  %lof.020 = phi ptr [ %incdec.ptr, %if.end11.while.body_crit_edge ], [ @qedi_dbg_do_not_recover_ops, %entry.while.body_crit_edge ]
  %4 = ptrtoint ptr %lof.020 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lof.020, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end4

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4:                                          ; preds = %while.body
  %call = tail call i32 @strlen(ptr noundef nonnull %5) #10
  %call7 = tail call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %buffer, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %oper_func = getelementptr inbounds %struct.qedi_list_of_funcs, ptr %lof.020, i32 0, i32 1
  %6 = ptrtoint ptr %oper_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oper_func, align 4
  %call10 = tail call i32 %7(ptr noundef %1) #7
  br label %while.end

if.end11:                                         ; preds = %if.end4
  %incdec.ptr = getelementptr %struct.qedi_list_of_funcs, ptr %lof.020, i32 1
  %tobool1.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool1.not, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %if.then9, %while.body.while.end_crit_edge
  %cnt.0 = phi i32 [ %call10, %if.then9 ], [ 0, %if.end11.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %sub = sub i32 %count, %cnt.0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_io_trace_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qedi_io_trace_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_do_not_recover_enable(ptr noundef %qedi_dbg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @qedi_do_not_recover, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @qedi_do_not_recover, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi_dbg, ptr noundef nonnull @__func__.qedi_dbg_do_not_recover_enable, i32 noundef 65, i32 noundef 8192, ptr noundef nonnull @.str.6, i32 noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_dbg_do_not_recover_disable(ptr noundef %qedi_dbg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @qedi_do_not_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @qedi_do_not_recover, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @qedi_do_not_recover, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedi_dbg_info(ptr noundef %qedi_dbg, ptr noundef nonnull @__func__.qedi_dbg_do_not_recover_disable, i32 noundef 76, i32 noundef 8192, ptr noundef nonnull @.str.6, i32 noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedi_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_gbl_ctx_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.7) #7
  %num_cqs = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_cqs, align 4
  %conv38 = zext i8 %3 to i32
  %call.i.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp240.not = icmp eq i32 %5, 0
  br i1 %cmp240.not, label %entry.for.end_crit_edge, label %do.body4.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body4.lr.ph:                                   ; preds = %entry
  %hba_lock = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 11
  %fp_array = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 40
  %global_queues = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 7
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.body4.lr.ph
  %id.041 = phi i32 [ 0, %do.body4.lr.ph ], [ %inc, %do.body4.do.body4_crit_edge ]
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hba_lock) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %id.041) #7
  %6 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp_array, align 8
  %arrayidx = getelementptr %struct.qedi_fastpath, ptr %7, i32 %id.041
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %conv16 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.9, i32 noundef %conv16) #7
  %14 = ptrtoint ptr %global_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %global_queues, align 4
  %sb_id = getelementptr %struct.qedi_fastpath, ptr %7, i32 %id.041, i32 1
  %16 = ptrtoint ptr %sb_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_id, align 4
  %idxprom = zext i16 %17 to i32
  %arrayidx17 = getelementptr ptr, ptr %15, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %cq_cons_idx = getelementptr inbounds %struct.global_queue, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cq_cons_idx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %21) #7
  %22 = ptrtoint ptr %sb_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_id, align 4
  %conv19 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %conv19) #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.12) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hba_lock, i32 noundef %call9) #7
  %inc = add nuw nsw i32 %id.041, 1
  %24 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_cqs, align 4
  %conv = zext i8 %25 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %26 = load volatile i32, ptr @__num_online_cpus, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %conv)
  %cmp2 = icmp ult i32 %inc, %27
  br i1 %cmp2, label %do.body4.do.body4_crit_edge, label %do.body4.for.end_crit_edge

do.body4.for.end_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

for.end:                                          ; preds = %do.body4.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedi_io_trace_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.13) #7
  %io_trace_lock = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 57
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_trace_lock) #7
  %io_trace_idx = getelementptr inbounds %struct.qedi_ctx, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %io_trace_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %io_trace_idx, align 8
  %conv5 = zext i16 %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %id.064 = phi i32 [ 0, %entry ], [ %inc24, %for.body.for.body_crit_edge ]
  %idx.063 = phi i32 [ %conv5, %entry ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv8 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %conv8) #7
  %task_id = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 1
  %6 = ptrtoint ptr %task_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %task_id, align 2
  %conv9 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %conv9) #7
  %cid = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 2
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %9) #7
  %lun = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 4
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lun, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %11) #7
  %op = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 5
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op, align 4
  %conv10 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %conv10) #7
  %lba = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 6
  %14 = ptrtoint ptr %lba to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lba, align 1
  %conv12 = zext i8 %15 to i32
  %arrayidx14 = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %arrayidx17 = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %arrayidx20 = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 6, i32 3
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21) #7
  %bufflen = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 7
  %22 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufflen, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %23) #7
  %sg_count = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 8
  %24 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %25) #7
  %result = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 12
  %26 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %27) #7
  %jiffies = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 13
  %28 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %jiffies, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %29) #7
  %blk_req_cpu = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 15
  %30 = ptrtoint ptr %blk_req_cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blk_req_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %31) #7
  %req_cpu = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 16
  %32 = ptrtoint ptr %req_cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %req_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %33) #7
  %intr_cpu = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 17
  %34 = ptrtoint ptr %intr_cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %intr_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %35) #7
  %blk_rsp_cpu = getelementptr %struct.qedi_ctx, ptr %1, i32 0, i32 56, i32 %idx.063, i32 18
  %36 = ptrtoint ptr %blk_rsp_cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blk_rsp_cpu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %37) #7
  %inc = add i32 %idx.063, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %inc)
  %cmp22 = icmp eq i32 %inc, 2048
  %spec.store.select = select i1 %cmp22, i32 0, i32 %inc
  %inc24 = add nuw nsw i32 %id.064, 1
  %exitcond.not = icmp eq i32 %inc24, 2048
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_trace_lock, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 24, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 87, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 88, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 89, i32 4}
!8 = !{ptr @qedi_debugfs_ops, !9, !"qedi_debugfs_ops", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 86, i32 31}
!10 = !{ptr @qedi_dbg_fops, !11, !"qedi_dbg_fops", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 223, i32 30}
!12 = !{ptr @qedi_do_not_recover, !13, !"qedi_do_not_recover", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 14, i32 5}
!14 = !{ptr @qedi_dbg_root, !15, !"qedi_dbg_root", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 15, i32 23}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 81, i32 4}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 82, i32 4}
!20 = !{ptr @qedi_dbg_do_not_recover_ops, !21, !"qedi_dbg_do_not_recover_ops", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 80, i32 34}
!22 = !{ptr @__func__.qedi_dbg_do_not_recover_enable, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 64, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.qedi_dbg_do_not_recover_disable, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 75, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 146, i32 14}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 150, i32 17}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 156, i32 17}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 158, i32 17}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 159, i32 17}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 160, i32 15}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 184, i32 14}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 189, i32 17}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 190, i32 17}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 191, i32 17}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 192, i32 17}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 193, i32 17}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 194, i32 17}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 196, i32 17}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 197, i32 17}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 198, i32 17}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 199, i32 17}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 200, i32 17}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 201, i32 17}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 202, i32 17}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qedi/qedi_debugfs.c", i32 203, i32 17}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
