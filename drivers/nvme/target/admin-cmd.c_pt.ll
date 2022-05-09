; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/admin-cmd.c_pt.bc'
source_filename = "../drivers/nvme/target/admin-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvme_get_log_page_command = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, i16, i16, %union.anon.0, [3 x i8], i8, i32 }
%union.nvme_data_ptr = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.0 = type { i64 }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uuid_t = type { [16 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvme_ana_rsp_hdr = type { i64, i16, [3 x i16] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.nvme_smart_log = type { i8, [2 x i8], i8, i8, i8, i8, [25 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, i32, [8 x i16], i32, i32, i32, i32, [280 x i8] }
%struct.nvme_effects_log = type { [256 x i32], [256 x i32], [2048 x i8] }
%struct.nvme_ana_group_desc = type { i32, i32, i64, i8, [15 x i8], [0 x i32] }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.nvme_ns_id_desc = type { i8, i8, i16 }
%struct.nvme_identify = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, [3 x i8], i8, [4 x i32] }
%struct.nvme_id_ns = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, i16, [18 x i8], i32, [3 x i8], i8, i16, i16, [16 x i8], [8 x i8], [16 x %struct.nvme_lbaf], [192 x i8], [3712 x i8] }
%struct.nvme_lbaf = type { i16, i8, i8 }
%struct.nvme_id_ctrl = type { i16, i16, [20 x i8], [40 x i8], [8 x i8], i8, [3 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [11 x i8], i8, [16 x i8], i16, i16, i16, [122 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, [16 x i8], [16 x i8], i32, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, [4 x i8], i8, i8, i32, i32, [160 x i8], i8, i8, i16, i32, i16, i16, i8, i8, i16, i16, i8, i8, i16, [2 x i8], i32, i32, [224 x i8], [256 x i8], [768 x i8], i32, i32, i16, i8, i8, [244 x i8], [32 x %struct.nvme_id_power_state], [1024 x i8] }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nvmet_execute_keep_alive.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvmet\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmet_execute_keep_alive\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/nvme/target/admin-cmd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ctrl %d update keep-alive timer for %d secs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nvmet: ctrl %d update keep-alive timer for %d secs\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_write_protect_flush_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvmet: write protect flush failed nsid: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvmet_write_protect_flush_sync\00", [33 x i8] zeroinitializer }, align 32
@nvmet_write_protect_flush_sync._entry_ptr = internal global ptr @nvmet_write_protect_flush_sync._entry, section ".printk_index", align 4
@nvmet_execute_get_log_page.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_execute_get_log_page\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unhandled lid %d on qid %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nvmet: unhandled lid %d on qid %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nvmet_ana_sem = external dso_local global %struct.rw_semaphore, align 4
@nvmet_ana_group_enabled = external dso_local local_unnamed_addr global [129 x i32], align 4
@nvmet_ana_chgcnt = external dso_local local_unnamed_addr global i64, align 8
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@nvmet_req_cns_error_complete.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_req_cns_error_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/nvme/target/nvmet.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unhandled identify cns %d on qid %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nvmet: unhandled identify cns %d on qid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 7, i64 11, i64 15, i64 129, i64 132]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 11, i64 15, i64 129, i64 132]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 6, i64 8, i64 9, i64 10, i64 12, i64 24]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1003, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 764, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 339, i32 2 }
@___asan_gen_.56 = private constant [35 x i8] c"../drivers/nvme/target/admin-cmd.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 373, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../drivers/nvme/target/nvmet.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 657, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nvmet_write_protect_flush_sync._entry, ptr @nvmet_write_protect_flush_sync._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_write_protect_flush_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvmet_get_log_page_len(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %numdu = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %cmd, i32 0, i32 9
  %0 = ptrtoint ptr %numdu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %numdu, align 4
  %numdl = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %cmd, i32 0, i32 8
  %2 = ptrtoint ptr %numdl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %numdl, align 2
  %4 = zext i16 %1 to i32
  %5 = zext i16 %3 to i32
  %6 = shl nuw i32 %5, 16
  %7 = or i32 %6, %4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add2 = shl i32 %8, 2
  %mul = add i32 %add2, 4
  ret i32 %mul
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nvmet_get_log_page_offset(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %cmd, i32 0, i32 11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_set_feat_kato(ptr nocapture noundef readonly %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %cdw11 = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdw11, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sq, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @nvmet_stop_keep_alive_timer(ptr noundef %8) #13
  %sub = add i32 %4, 999
  %div = udiv i32 %sub, 1000
  %9 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sq, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %kato = getelementptr inbounds %struct.nvmet_ctrl, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %kato to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %kato, align 4
  %14 = load ptr, ptr %sq, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @nvmet_start_keep_alive_timer(ptr noundef %16) #13
  %17 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sq, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %kato7 = getelementptr inbounds %struct.nvmet_ctrl, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %kato7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %kato7, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cqe.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %25, align 8
  ret i16 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_stop_keep_alive_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_start_keep_alive_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_set_feat_async_event(ptr nocapture noundef %req, i32 noundef %mask) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %cdw11 = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdw11, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %neg = xor i32 %mask, -1
  %and = and i32 %4, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %5 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 44, ptr %error_loc, align 4
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sq, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %aen_enabled = getelementptr inbounds %struct.nvmet_ctrl, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %aen_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %4, ptr %aen_enabled, align 4
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cqe.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %12, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %if.then
  %retval.0 = phi i16 [ 16386, %if.then ], [ 0, %do.body2 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_set_features(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 8
  %cdw101 = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cdw101 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cdw101, align 8
  %cdw113 = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %cdw113 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cdw113, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call4 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #13
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = lshr i32 %9, 24
  %trunc = trunc i32 %13 to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 7, label %sw.bb
    i8 15, label %sw.bb19
    i8 11, label %sw.bb21
    i8 -127, label %if.end.sw.epilog_crit_edge
    i8 -124, label %sw.bb24
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %12)
  %cmp = icmp ugt i32 %12, -65537
  %conv10 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv10)
  %cmp11 = icmp eq i32 %conv10, 65535
  %or.cond = or i1 %cmp, %cmp11
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %if.end14

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %max_qid = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %max_qid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_qid, align 2
  %conv15 = zext i16 %16 to i32
  %sub = add nsw i32 %conv15, -1
  %shl = shl i32 %sub, 16
  %or = or i32 %shl, %sub
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cqe.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %19, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 8
  %cdw11.i = getelementptr inbounds %struct.nvme_common_command, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %cdw11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cdw11.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %26 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sq.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @nvmet_stop_keep_alive_timer(ptr noundef %29) #13
  %sub.i = add i32 %25, 999
  %div.i = udiv i32 %sub.i, 1000
  %30 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sq.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %kato.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %kato.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div.i, ptr %kato.i, align 4
  %35 = load ptr, ptr %sq.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void @nvmet_start_keep_alive_timer(ptr noundef %37) #13
  %38 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sq.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %kato7.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %kato7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %kato7.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  %cqe.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cqe.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %46, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %48 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req, align 8
  %cdw11.i43 = getelementptr inbounds %struct.nvme_common_command, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %cdw11.i43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cdw11.i43, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  %and.i = and i32 %52, -2336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %53 = ptrtoint ptr %error_loc.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 44, ptr %error_loc.i, align 4
  br label %sw.epilog

do.body2.i:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sq.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %aen_enabled.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %aen_enabled.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %52, ptr %aen_enabled.i, align 4
  %cqe.i.i45 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %59 = ptrtoint ptr %cqe.i.i45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cqe.i.i45, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %51, ptr %60, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req, align 8
  %cdw11.i46 = getelementptr inbounds %struct.nvme_common_command, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %cdw11.i46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cdw11.i46, align 4
  %66 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sq.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call1.i = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool.not.i47 = icmp eq i16 %call1.i, 0
  br i1 %tobool.not.i47, label %if.end.i, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb24
  %72 = tail call i32 @llvm.bswap.i32(i32 %65) #13
  %lock.i = getelementptr inbounds %struct.nvmet_subsys, ptr %71, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %72, label %if.end.i.if.then12.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb8.i
  ]

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12.i

sw.bb.i:                                          ; preds = %if.end.i
  %ns.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %74 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ns.i, align 8
  %readonly.i = getelementptr inbounds %struct.nvmet_ns, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %readonly.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %readonly.i, align 8
  %77 = load ptr, ptr %ns.i, align 8
  %file.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i16 @nvmet_file_flush(ptr noundef %req) #13
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call zeroext i16 @nvmet_bdev_flush(ptr noundef %req) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %status.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status.0.i.i)
  %tobool2.not.i.i = icmp eq i16 %status.0.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then12.i_crit_edge, label %sw.epilog.i

if.end.i.i.if.then12.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %ns9.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %80 = ptrtoint ptr %ns9.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ns9.i, align 8
  %readonly10.i = getelementptr inbounds %struct.nvmet_ns, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %readonly10.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %readonly10.i, align 8
  br label %if.then12.i

sw.epilog.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ns.i, align 8
  %nsid.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %nsid.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nsid.i.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %86) #16
  %87 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ns.i, align 8
  %readonly6.i = getelementptr inbounds %struct.nvmet_ns, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %readonly6.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %readonly6.i, align 8
  br label %if.end14.i

if.then12.i:                                      ; preds = %sw.bb8.i, %if.end.i.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %ns13.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %90 = ptrtoint ptr %ns13.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ns13.i, align 8
  %nsid.i = getelementptr inbounds %struct.nvmet_ns, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %nsid.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nsid.i, align 4
  tail call void @nvmet_ns_changed(ptr noundef %71, i32 noundef %93) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %sw.epilog.i
  %status.033.i = phi i16 [ 0, %if.then12.i ], [ %status.0.i.i, %sw.epilog.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %94 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 40, ptr %error_loc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end14.i, %sw.bb24.sw.epilog_crit_edge, %do.body2.i, %if.then.i, %sw.bb19, %if.end14, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %status.0 = phi i16 [ 16386, %sw.default ], [ 0, %sw.bb19 ], [ 0, %if.end14 ], [ 16386, %sw.bb.sw.epilog_crit_edge ], [ 16396, %if.end.sw.epilog_crit_edge ], [ 16386, %if.then.i ], [ 0, %do.body2.i ], [ %status.033.i, %if.end14.i ], [ %call1.i, %sw.bb24.sw.epilog_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvmet_get_feat_kato(ptr nocapture noundef readonly %req) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %kato = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kato, align 4
  %mul = mul i32 %5, 1000
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul) #13
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cqe.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %8, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvmet_get_feat_async_event(ptr nocapture noundef readonly %req) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %aen_enabled = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %aen_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %aen_enabled, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cqe.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %8, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_get_features(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 8
  %cdw101 = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cdw101 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cdw101, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, 129
  %..i = select i1 %cond.i, i32 16, i32 0
  %call3 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %..i) #13
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %10 to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc, label %sw.default [
    i8 11, label %sw.bb
    i8 6, label %sw.bb4
    i8 7, label %sw.bb5
    i8 15, label %sw.bb9
    i8 -127, label %sw.bb10
    i8 -124, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sq.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %aen_enabled.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %aen_enabled.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %aen_enabled.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  %cqe.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cqe.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %20, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cqe.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16777216, ptr %23, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %max_qid = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 11
  %25 = ptrtoint ptr %max_qid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_qid, align 2
  %conv = zext i16 %26 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl i32 %sub, 16
  %or = or i32 %shl, %sub
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %cqe.i38 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %cqe.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cqe.i38, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %29, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sq.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %kato.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %kato.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %kato.i, align 4
  %mul.i = mul i32 %36, 1000
  %37 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #13
  %cqe.i.i40 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %cqe.i.i40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cqe.i.i40, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %39, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req, align 8
  %cdw11 = getelementptr inbounds %struct.nvme_common_command, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cdw11, align 4
  %and12 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %45 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 44, ptr %error_loc, align 4
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sq.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %hostid = getelementptr inbounds %struct.nvmet_ctrl, ptr %49, i32 0, i32 7
  %call15 = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef %hostid, i32 noundef 16) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %50 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sq.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %call1.i = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool.not.i = icmp eq i16 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.nvmet_subsys, ptr %55, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %ns.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %56 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ns.i, align 8
  %readonly.i = getelementptr inbounds %struct.nvmet_ns, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %readonly.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %readonly.i, align 8, !range !36
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 24
  %cqe.i.i41 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %62 = ptrtoint ptr %cqe.i.i41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cqe.i.i41, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %63, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc18 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %65 = ptrtoint ptr %error_loc18 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 40, ptr %error_loc18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i, %sw.bb16.sw.epilog_crit_edge, %if.end14, %if.then13, %sw.bb9, %sw.bb5, %sw.bb4, %sw.bb
  %status.0 = phi i16 [ 16386, %sw.default ], [ %call15, %if.end14 ], [ 16386, %if.then13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ %call1.i, %sw.bb16.sw.epilog_crit_edge ], [ 0, %if.end.i ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_to_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_async_event(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %nr_async_event_cmds = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %nr_async_event_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_async_event_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 16645) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw nsw i32 %5, 1
  %6 = ptrtoint ptr %nr_async_event_cmds to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %nr_async_event_cmds, align 4
  %arrayidx = getelementptr %struct.nvmet_ctrl, ptr %3, i32 0, i32 13, i32 %5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %async_event_work = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %async_event_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_execute_keep_alive(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %kato = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kato, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_execute_keep_alive.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_execute_keep_alive, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !37

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %cntlid = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cntlid, align 8
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kato, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_execute_keep_alive.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %9) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %ka_work = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kato, align 4
  %mul = mul i32 %12, 100
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %ka_work, i32 noundef %mul) #13
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge
  %status.0 = phi i16 [ 0, %do.end ], [ 26, %if.end.out_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_admin_cmd(ptr noundef %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp.i = icmp eq i8 %3, 127
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call zeroext i16 @nvmet_parse_fabrics_cmd(ptr noundef %req) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sq.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sq.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i47.not = icmp eq i32 %11, 2
  br i1 %cmp.i47.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call zeroext i16 @nvmet_parse_discovery_cmd(ptr noundef %req) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call zeroext i16 @nvmet_check_ctrl_status(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8)
  %tobool.not = icmp eq i16 %call8, 0
  br i1 %tobool.not, label %if.end12, label %if.end7.cleanup_crit_edge, !prof !38

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sq.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %passthru_ctrl.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %passthru_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %passthru_ctrl.i.i, align 4
  %tobool.i.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.i.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call zeroext i16 @nvmet_parse_passthru_admin_cmd(ptr noundef %req) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %21, label %sw.default [
    i8 2, label %sw.bb
    i8 6, label %sw.bb17
    i8 8, label %sw.bb19
    i8 9, label %sw.bb21
    i8 10, label %sw.bb23
    i8 12, label %sw.bb25
    i8 24, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %23 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nvmet_execute_get_log_page, ptr %execute, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute18 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %24 = ptrtoint ptr %execute18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nvmet_execute_identify, ptr %execute18, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute20 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %25 = ptrtoint ptr %execute20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nvmet_execute_abort, ptr %execute20, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute22 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %26 = ptrtoint ptr %execute22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nvmet_execute_set_features, ptr %execute22, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute24 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %27 = ptrtoint ptr %execute24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nvmet_execute_get_features, ptr %execute24, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute26 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %28 = ptrtoint ptr %execute26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nvmet_execute_async_event, ptr %execute26, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %execute28 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %29 = ptrtoint ptr %execute28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvmet_execute_keep_alive, ptr %execute28, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = tail call zeroext i16 @nvmet_report_invalid_opcode(ptr noundef %req) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb, %if.then14, %if.end7.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i16 [ %call2, %if.then ], [ %call6, %if.then5 ], [ %call15, %if.then14 ], [ %call29, %sw.default ], [ 0, %sw.bb27 ], [ 0, %sw.bb25 ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ], [ 0, %sw.bb19 ], [ 0, %sw.bb17 ], [ 0, %sw.bb ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_parse_fabrics_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_parse_discovery_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_check_ctrl_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_parse_passthru_admin_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_get_log_page(ptr noundef %req) #3 align 64 {
entry:
  %idx.i.i51 = alloca i32, align 4
  %hdr.i = alloca %struct.nvme_ana_rsp_hdr, align 8
  %idx.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %numdu.i = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %numdu.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %numdu.i, align 4
  %numdl.i = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %numdl.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %numdl.i, align 2
  %6 = zext i16 %3 to i32
  %7 = zext i16 %5 to i32
  %8 = shl nuw i32 %7, 16
  %9 = or i32 %8, %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %add2.i = shl i32 %10, 2
  %mul.i = add i32 %add2.i, 4
  %call1 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %mul.i) #13
  br i1 %call1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 8
  %lid = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %lid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lid, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %14, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb3
    i8 3, label %sw.bb4
    i8 4, label %sw.bb5
    i8 5, label %sw.bb6
    i8 12, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %sq.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sq.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %error_lock.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %19, i32 0, i32 28
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_lock.i) #13
  %err_counter.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %err_counter.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %err_counter.i, align 8
  %rem.i = and i64 %21, 127
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.bb
  %i.025.i = phi i64 [ 0, %sw.bb ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %slot.024.i = phi i64 [ %rem.i, %sw.bb ], [ %slot.1.i, %if.end.i.for.body.i_crit_edge ]
  %offset.023.i = phi i32 [ 0, %sw.bb ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %idxprom.i = trunc i64 %slot.024.i to i32
  %arrayidx.i = getelementptr %struct.nvmet_ctrl, ptr %19, i32 0, i32 30, i32 %idxprom.i
  %call8.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %offset.023.i, ptr noundef %arrayidx.i, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %tobool.not.i = icmp eq i16 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.nvmet_execute_get_log_page_error.exit_crit_edge

for.body.i.nvmet_execute_get_log_page_error.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_page_error.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %slot.024.i)
  %cmp9.i = icmp eq i64 %slot.024.i, 0
  %dec.i = add i64 %slot.024.i, -1
  %slot.1.i = select i1 %cmp9.i, i64 127, i64 %dec.i
  %add.i = add nuw nsw i32 %offset.023.i, 64
  %inc.i = add nuw nsw i64 %i.025.i, 1
  %cmp6.i = icmp ult i64 %i.025.i, 127
  br i1 %cmp6.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.nvmet_execute_get_log_page_error.exit_crit_edge

if.end.i.nvmet_execute_get_log_page_error.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_page_error.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

nvmet_execute_get_log_page_error.exit:            ; preds = %if.end.i.nvmet_execute_get_log_page_error.exit_crit_edge, %for.body.i.nvmet_execute_get_log_page_error.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_lock.i, i32 noundef %call3.i) #13
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #13
  br label %return

sw.bb3:                                           ; preds = %if.end
  %transfer_len.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %22 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 512
  br i1 %cmp.not.i, label %if.end.i30, label %sw.bb3.nvmet_execute_get_log_page_smart.exit_crit_edge

sw.bb3.nvmet_execute_get_log_page_smart.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_page_smart.exit

if.end.i30:                                       ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not.i29 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i29, label %if.end.i30.nvmet_execute_get_log_page_smart.exit_crit_edge, label %if.end2.i

if.end.i30.nvmet_execute_get_log_page_smart.exit_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_page_smart.exit

if.end2.i:                                        ; preds = %if.end.i30
  %25 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req, align 8
  %nsid.i = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %nsid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nsid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp3.i = icmp eq i32 %28, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i) #13
  %sq.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sq.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %idx.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 8
  %namespaces.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %35, i32 0, i32 3
  %call.i.i = call ptr @xa_find(ptr noundef %namespaces.i.i, ptr noundef nonnull %idx.i.i, i32 noundef -1, i32 noundef 8) #13
  %tobool.not21.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not21.i.i, label %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge, label %if.then4.i.for.body.i.i_crit_edge

if.then4.i.for.body.i.i_crit_edge:                ; preds = %if.then4.i
  br label %for.body.i.i

if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_get_smart_log_all.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then4.i.for.body.i.i_crit_edge
  %host_reads.026.i.i = phi i64 [ %host_reads.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.for.body.i.i_crit_edge ]
  %host_writes.025.i.i = phi i64 [ %host_writes.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.for.body.i.i_crit_edge ]
  %data_units_read.024.i.i = phi i64 [ %data_units_read.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.for.body.i.i_crit_edge ]
  %data_units_written.023.i.i = phi i64 [ %data_units_written.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.for.body.i.i_crit_edge ]
  %ns.022.i.i = phi ptr [ %call92.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then4.i.for.body.i.i_crit_edge ]
  %bdev.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns.022.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %for.cond3.preheader.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %call41.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i.i, i32 %38)
  %cmp2.i.i = icmp ult i32 %call41.i.i, %38
  br i1 %cmp2.i.i, label %do.body.lr.ph.i.i, label %for.cond3.preheader.i.i.for.end83.i.i_crit_edge

for.cond3.preheader.i.i.for.end83.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end83.i.i

do.body.lr.ph.i.i:                                ; preds = %for.cond3.preheader.i.i
  %bd_stats.i.i = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 2
  %39 = ptrtoint ptr %bd_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_stats.i.i, align 8
  %41 = ptrtoint ptr %40 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call44.i.i = phi i32 [ %call41.i.i, %do.body.lr.ph.i.i ], [ %call4.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %res.03.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %add9.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call44.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %43, %41
  %44 = inttoptr i32 %add.i.i to ptr
  %ios.i.i = getelementptr inbounds %struct.disk_stats, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ios.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ios.i.i, align 8
  %add9.i.i = add i32 %46, %res.03.i.i
  %call4.i.i = call i32 @cpumask_next(i32 noundef %call44.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp.i.i = icmp ult i32 %call4.i.i, %38
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body19.lr.ph.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body19.lr.ph.i.i:                              ; preds = %do.body.i.i
  %conv.i.i = zext i32 %add9.i.i to i64
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %do.body19.i.i.do.body19.i.i_crit_edge, %do.body19.lr.ph.i.i
  %call159.i.i = phi i32 [ %call41.i.i, %do.body19.lr.ph.i.i ], [ %call15.i.i, %do.body19.i.i.do.body19.i.i_crit_edge ]
  %res12.08.i.i = phi i32 [ 0, %do.body19.lr.ph.i.i ], [ %add31.i.i, %do.body19.i.i.do.body19.i.i_crit_edge ]
  %arrayidx28.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call159.i.i
  %47 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx28.i.i, align 4
  %add29.i.i = add i32 %48, %41
  %49 = inttoptr i32 %add29.i.i to ptr
  %sectors.i.i = getelementptr inbounds %struct.disk_stats, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sectors.i.i, align 8
  %add31.i.i = add i32 %51, %res12.08.i.i
  %call15.i.i = call i32 @cpumask_next(i32 noundef %call159.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp16.i.i = icmp ult i32 %call15.i.i, %38
  br i1 %cmp16.i.i, label %do.body19.i.i.do.body19.i.i_crit_edge, label %do.body44.lr.ph.i.i

do.body19.i.i.do.body19.i.i_crit_edge:            ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19.i.i

do.body44.lr.ph.i.i:                              ; preds = %do.body19.i.i
  %sub.i.i = add i32 %add31.i.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  %conv35.i.i = zext i32 %div.i.i to i64
  br label %do.body44.i.i

do.body44.i.i:                                    ; preds = %do.body44.i.i.do.body44.i.i_crit_edge, %do.body44.lr.ph.i.i
  %call4014.i.i = phi i32 [ %call41.i.i, %do.body44.lr.ph.i.i ], [ %call40.i.i, %do.body44.i.i.do.body44.i.i_crit_edge ]
  %res37.013.i.i = phi i32 [ 0, %do.body44.lr.ph.i.i ], [ %add57.i.i, %do.body44.i.i.do.body44.i.i_crit_edge ]
  %arrayidx53.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4014.i.i
  %52 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx53.i.i, align 4
  %add54.i.i = add i32 %53, %41
  %54 = inttoptr i32 %add54.i.i to ptr
  %arrayidx56.i.i = getelementptr %struct.disk_stats, ptr %54, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx56.i.i, align 4
  %add57.i.i = add i32 %56, %res37.013.i.i
  %call40.i.i = call i32 @cpumask_next(i32 noundef %call4014.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp41.i.i = icmp ult i32 %call40.i.i, %38
  br i1 %cmp41.i.i, label %do.body44.i.i.do.body44.i.i_crit_edge, label %do.body69.lr.ph.i.i

do.body44.i.i.do.body44.i.i_crit_edge:            ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44.i.i

do.body69.lr.ph.i.i:                              ; preds = %do.body44.i.i
  %add11.i.i = add i64 %host_reads.026.i.i, %conv.i.i
  %conv60.i.i = zext i32 %add57.i.i to i64
  br label %do.body69.i.i

do.body69.i.i:                                    ; preds = %do.body69.i.i.do.body69.i.i_crit_edge, %do.body69.lr.ph.i.i
  %call6519.i.i = phi i32 [ %call41.i.i, %do.body69.lr.ph.i.i ], [ %call65.i.i, %do.body69.i.i.do.body69.i.i_crit_edge ]
  %res62.018.i.i = phi i32 [ 0, %do.body69.lr.ph.i.i ], [ %add82.i.i, %do.body69.i.i.do.body69.i.i_crit_edge ]
  %arrayidx78.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6519.i.i
  %57 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx78.i.i, align 4
  %add79.i.i = add i32 %58, %41
  %59 = inttoptr i32 %add79.i.i to ptr
  %arrayidx81.i.i = getelementptr %struct.disk_stats, ptr %59, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx81.i.i, align 4
  %add82.i.i = add i32 %61, %res62.018.i.i
  %call65.i.i = call i32 @cpumask_next(i32 noundef %call6519.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp66.i.i = icmp ult i32 %call65.i.i, %38
  br i1 %cmp66.i.i, label %do.body69.i.i.do.body69.i.i_crit_edge, label %for.end83.i.i.loopexit

do.body69.i.i.do.body69.i.i_crit_edge:            ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69.i.i

for.end83.i.i.loopexit:                           ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add36.i.i = add i64 %data_units_read.024.i.i, %conv35.i.i
  %add61.i.i = add i64 %host_writes.025.i.i, %conv60.i.i
  br label %for.end83.i.i

for.end83.i.i:                                    ; preds = %for.end83.i.i.loopexit, %for.cond3.preheader.i.i.for.end83.i.i_crit_edge
  %add61.i92.i = phi i64 [ %host_writes.025.i.i, %for.cond3.preheader.i.i.for.end83.i.i_crit_edge ], [ %add61.i.i, %for.end83.i.i.loopexit ]
  %add11.i768391.i = phi i64 [ %host_reads.026.i.i, %for.cond3.preheader.i.i.for.end83.i.i_crit_edge ], [ %add11.i.i, %for.end83.i.i.loopexit ]
  %add36.i8490.i = phi i64 [ %data_units_read.024.i.i, %for.cond3.preheader.i.i.for.end83.i.i_crit_edge ], [ %add36.i.i, %for.end83.i.i.loopexit ]
  %res62.0.lcssa.i.i = phi i32 [ 0, %for.cond3.preheader.i.i.for.end83.i.i_crit_edge ], [ %add82.i.i, %for.end83.i.i.loopexit ]
  %sub86.i.i = add i32 %res62.0.lcssa.i.i, 999
  %div87.i.i = udiv i32 %sub86.i.i, 1000
  %conv88.i.i = zext i32 %div87.i.i to i64
  %add89.i.i = add i64 %data_units_written.023.i.i, %conv88.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.end83.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %data_units_written.1.i.i = phi i64 [ %add89.i.i, %for.end83.i.i ], [ %data_units_written.023.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %data_units_read.1.i.i = phi i64 [ %add36.i8490.i, %for.end83.i.i ], [ %data_units_read.024.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %host_writes.1.i.i = phi i64 [ %add61.i92.i, %for.end83.i.i ], [ %host_writes.025.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %host_reads.1.i.i = phi i64 [ %add11.i768391.i, %for.end83.i.i ], [ %host_reads.026.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %62 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %32, align 8
  %namespaces91.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %63, i32 0, i32 3
  %call92.i.i = call ptr @xa_find_after(ptr noundef %namespaces91.i.i, ptr noundef nonnull %idx.i.i, i32 noundef -1, i32 noundef 8) #13
  %tobool.not.i.i = icmp eq ptr %call92.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_get_smart_log_all.exit.i

nvmet_get_smart_log_all.exit.i:                   ; preds = %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge, %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge
  %data_units_written.0.lcssa.i.i = phi i64 [ 0, %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge ], [ %data_units_written.1.i.i, %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge ]
  %data_units_read.0.lcssa.i.i = phi i64 [ 0, %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge ], [ %data_units_read.1.i.i, %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge ]
  %host_writes.0.lcssa.i.i = phi i64 [ 0, %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge ], [ %host_writes.1.i.i, %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge ]
  %host_reads.0.lcssa.i.i = phi i64 [ 0, %if.then4.i.nvmet_get_smart_log_all.exit.i_crit_edge ], [ %host_reads.1.i.i, %for.inc.i.i.nvmet_get_smart_log_all.exit.i_crit_edge ]
  %host_reads94.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 9
  %64 = call i64 @llvm.bswap.i64(i64 %host_reads.0.lcssa.i.i) #13
  %65 = ptrtoint ptr %host_reads94.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %host_reads94.i.i, align 8
  %data_units_read96.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 7
  %66 = call i64 @llvm.bswap.i64(i64 %data_units_read.0.lcssa.i.i) #13
  %67 = ptrtoint ptr %data_units_read96.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %data_units_read96.i.i, align 8
  %host_writes98.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 10
  %68 = call i64 @llvm.bswap.i64(i64 %host_writes.0.lcssa.i.i) #13
  %69 = ptrtoint ptr %host_writes98.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %host_writes98.i.i, align 8
  %data_units_written100.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 8
  %70 = call i64 @llvm.bswap.i64(i64 %data_units_written.0.lcssa.i.i) #13
  %71 = ptrtoint ptr %data_units_written100.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %data_units_written100.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i) #13
  br label %do.body11.i

if.else.i:                                        ; preds = %if.end2.i
  %call.i37.i = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i37.i)
  %tobool.not.i38.i = icmp eq i16 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.end.i.i, label %if.else.i.out_free_log.i_crit_edge

if.else.i.out_free_log.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_log.i

if.end.i.i:                                       ; preds = %if.else.i
  %ns.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %72 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ns.i.i, align 8
  %bdev.i39.i = getelementptr inbounds %struct.nvmet_ns, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %bdev.i39.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bdev.i39.i, align 8
  %tobool1.not.i.i = icmp eq ptr %75, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.do.body11.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.do.body11.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %call4122.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call4122.i.i, i32 %76)
  %cmp123.i.i = icmp ult i32 %call4122.i.i, %76
  br i1 %cmp123.i.i, label %do.body.lr.ph.i41.i, label %for.cond.preheader.i.i.for.end83.i72.i_crit_edge

for.cond.preheader.i.i.for.end83.i72.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end83.i72.i

do.body.lr.ph.i41.i:                              ; preds = %for.cond.preheader.i.i
  %bd_stats.i40.i = getelementptr inbounds %struct.block_device, ptr %75, i32 0, i32 2
  %77 = ptrtoint ptr %bd_stats.i40.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bd_stats.i40.i, align 8
  %79 = ptrtoint ptr %78 to i32
  br label %do.body.i48.i

do.body.i48.i:                                    ; preds = %do.body.i48.i.do.body.i48.i_crit_edge, %do.body.lr.ph.i41.i
  %call4125.i.i = phi i32 [ %call4122.i.i, %do.body.lr.ph.i41.i ], [ %call4.i46.i, %do.body.i48.i.do.body.i48.i_crit_edge ]
  %res.0124.i.i = phi i32 [ 0, %do.body.lr.ph.i41.i ], [ %add9.i45.i, %do.body.i48.i.do.body.i48.i_crit_edge ]
  %arrayidx.i42.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4125.i.i
  %80 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i42.i, align 4
  %add.i43.i = add i32 %81, %79
  %82 = inttoptr i32 %add.i43.i to ptr
  %ios.i44.i = getelementptr inbounds %struct.disk_stats, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ios.i44.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ios.i44.i, align 8
  %add9.i45.i = add i32 %84, %res.0124.i.i
  %call4.i46.i = tail call i32 @cpumask_next(i32 noundef %call4125.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp.i47.i = icmp ult i32 %call4.i46.i, %76
  br i1 %cmp.i47.i, label %do.body.i48.i.do.body.i48.i_crit_edge, label %do.body.i48.i.do.body18.i.i_crit_edge

do.body.i48.i.do.body18.i.i_crit_edge:            ; preds = %do.body.i48.i
  br label %do.body18.i.i

do.body.i48.i.do.body.i48.i_crit_edge:            ; preds = %do.body.i48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i48.i

do.body18.i.i:                                    ; preds = %do.body18.i.i.do.body18.i.i_crit_edge, %do.body.i48.i.do.body18.i.i_crit_edge
  %call14130.i.i = phi i32 [ %call14.i.i, %do.body18.i.i.do.body18.i.i_crit_edge ], [ %call4122.i.i, %do.body.i48.i.do.body18.i.i_crit_edge ]
  %res11.0129.i.i = phi i32 [ %add31.i56.i, %do.body18.i.i.do.body18.i.i_crit_edge ], [ 0, %do.body.i48.i.do.body18.i.i_crit_edge ]
  %arrayidx28.i53.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14130.i.i
  %85 = ptrtoint ptr %arrayidx28.i53.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx28.i53.i, align 4
  %add29.i54.i = add i32 %86, %79
  %87 = inttoptr i32 %add29.i54.i to ptr
  %sectors.i55.i = getelementptr inbounds %struct.disk_stats, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %sectors.i55.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sectors.i55.i, align 8
  %add31.i56.i = add i32 %89, %res11.0129.i.i
  %call14.i.i = tail call i32 @cpumask_next(i32 noundef %call14130.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp15.i.i = icmp ult i32 %call14.i.i, %76
  br i1 %cmp15.i.i, label %do.body18.i.i.do.body18.i.i_crit_edge, label %do.body43.lr.ph.i.i

do.body18.i.i.do.body18.i.i_crit_edge:            ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body18.i.i

do.body43.lr.ph.i.i:                              ; preds = %do.body18.i.i
  %phi.bo.i.i = add i32 %add31.i56.i, 999
  br label %do.body43.i.i

do.body43.i.i:                                    ; preds = %do.body43.i.i.do.body43.i.i_crit_edge, %do.body43.lr.ph.i.i
  %call39135.i.i = phi i32 [ %call4122.i.i, %do.body43.lr.ph.i.i ], [ %call39.i.i, %do.body43.i.i.do.body43.i.i_crit_edge ]
  %res36.0134.i.i = phi i32 [ 0, %do.body43.lr.ph.i.i ], [ %add57.i63.i, %do.body43.i.i.do.body43.i.i_crit_edge ]
  %arrayidx53.i60.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call39135.i.i
  %90 = ptrtoint ptr %arrayidx53.i60.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx53.i60.i, align 4
  %add54.i61.i = add i32 %91, %79
  %92 = inttoptr i32 %add54.i61.i to ptr
  %arrayidx56.i62.i = getelementptr %struct.disk_stats, ptr %92, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx56.i62.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx56.i62.i, align 4
  %add57.i63.i = add i32 %94, %res36.0134.i.i
  %call39.i.i = tail call i32 @cpumask_next(i32 noundef %call39135.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp40.i.i = icmp ult i32 %call39.i.i, %76
  br i1 %cmp40.i.i, label %do.body43.i.i.do.body43.i.i_crit_edge, label %do.body43.i.i.do.body68.i.i_crit_edge

do.body43.i.i.do.body68.i.i_crit_edge:            ; preds = %do.body43.i.i
  br label %do.body68.i.i

do.body43.i.i.do.body43.i.i_crit_edge:            ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43.i.i

do.body68.i.i:                                    ; preds = %do.body68.i.i.do.body68.i.i_crit_edge, %do.body43.i.i.do.body68.i.i_crit_edge
  %call64140.i.i = phi i32 [ %call64.i.i, %do.body68.i.i.do.body68.i.i_crit_edge ], [ %call4122.i.i, %do.body43.i.i.do.body68.i.i_crit_edge ]
  %res61.0139.i.i = phi i32 [ %add82.i70.i, %do.body68.i.i.do.body68.i.i_crit_edge ], [ 0, %do.body43.i.i.do.body68.i.i_crit_edge ]
  %arrayidx78.i67.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call64140.i.i
  %95 = ptrtoint ptr %arrayidx78.i67.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx78.i67.i, align 4
  %add79.i68.i = add i32 %96, %79
  %97 = inttoptr i32 %add79.i68.i to ptr
  %arrayidx81.i69.i = getelementptr %struct.disk_stats, ptr %97, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %arrayidx81.i69.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx81.i69.i, align 4
  %add82.i70.i = add i32 %99, %res61.0139.i.i
  %call64.i.i = tail call i32 @cpumask_next(i32 noundef %call64140.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp65.i.i = icmp ult i32 %call64.i.i, %76
  br i1 %cmp65.i.i, label %do.body68.i.i.do.body68.i.i_crit_edge, label %for.end83.loopexit.i.i

do.body68.i.i.do.body68.i.i_crit_edge:            ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.i.i

for.end83.loopexit.i.i:                           ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo142.i.i = udiv i32 %phi.bo.i.i, 1000
  %phi.bo143.i.i = add i32 %add82.i70.i, 999
  %phi.bo144.i.i = udiv i32 %phi.bo143.i.i, 1000
  br label %for.end83.i72.i

for.end83.i72.i:                                  ; preds = %for.end83.loopexit.i.i, %for.cond.preheader.i.i.for.end83.i72.i_crit_edge
  %conv60.i64107.shrunk.i = phi i32 [ %add57.i63.i, %for.end83.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end83.i72.i_crit_edge ]
  %conv.i509599106.shrunk.i = phi i32 [ %add9.i45.i, %for.end83.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end83.i72.i_crit_edge ]
  %conv35.i57100105.shrunk.i = phi i32 [ %phi.bo142.i.i, %for.end83.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end83.i72.i_crit_edge ]
  %res61.0.lcssa.i.i = phi i32 [ %phi.bo144.i.i, %for.end83.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end83.i72.i_crit_edge ]
  %conv35.i57100105.i = zext i32 %conv35.i57100105.shrunk.i to i64
  %conv.i509599106.i = zext i32 %conv.i509599106.shrunk.i to i64
  %conv60.i64107.i = zext i32 %conv60.i64107.shrunk.i to i64
  %conv88.i71.i = zext i32 %res61.0.lcssa.i.i to i64
  %host_reads89.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 9
  %100 = tail call i64 @llvm.bswap.i64(i64 %conv.i509599106.i) #13
  %101 = ptrtoint ptr %host_reads89.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %host_reads89.i.i, align 8
  %data_units_read91.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 7
  %102 = tail call i64 @llvm.bswap.i64(i64 %conv35.i57100105.i) #13
  %103 = ptrtoint ptr %data_units_read91.i.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %data_units_read91.i.i, align 8
  %host_writes93.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 10
  %104 = tail call i64 @llvm.bswap.i64(i64 %conv60.i64107.i) #13
  %105 = ptrtoint ptr %host_writes93.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %host_writes93.i.i, align 8
  %data_units_written95.i.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 8
  %106 = tail call i64 @llvm.bswap.i64(i64 %conv88.i71.i) #13
  %107 = ptrtoint ptr %data_units_written95.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %data_units_written95.i.i, align 8
  br label %do.body11.i

do.body11.i:                                      ; preds = %for.end83.i72.i, %if.end.i.i.do.body11.i_crit_edge, %nvmet_get_smart_log_all.exit.i
  %sq.i31 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %108 = ptrtoint ptr %sq.i31 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sq.i31, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %error_lock.i32 = getelementptr inbounds %struct.nvmet_ctrl, ptr %111, i32 0, i32 28
  %call14.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %error_lock.i32) #13
  %112 = ptrtoint ptr %sq.i31 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sq.i31, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %err_counter.i33 = getelementptr inbounds %struct.nvmet_ctrl, ptr %115, i32 0, i32 29
  %116 = ptrtoint ptr %err_counter.i33 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %err_counter.i33, align 8
  %num_err_log_entries.i = getelementptr inbounds %struct.nvme_smart_log, ptr %call7.i.i.i, i32 0, i32 16
  %118 = call i64 @llvm.bswap.i64(i64 %117) #13
  %119 = ptrtoint ptr %num_err_log_entries.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %num_err_log_entries.i, align 8
  %120 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %113, align 4
  %error_lock21.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %121, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %error_lock21.i, i32 noundef %call14.i) #13
  %call22.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 512) #13
  br label %out_free_log.i

out_free_log.i:                                   ; preds = %do.body11.i, %if.else.i.out_free_log.i_crit_edge
  %status.1.i = phi i16 [ %call22.i, %do.body11.i ], [ %call.i37.i, %if.else.i.out_free_log.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %nvmet_execute_get_log_page_smart.exit

nvmet_execute_get_log_page_smart.exit:            ; preds = %out_free_log.i, %if.end.i30.nvmet_execute_get_log_page_smart.exit_crit_edge, %sw.bb3.nvmet_execute_get_log_page_smart.exit_crit_edge
  %status.2.i = phi i16 [ 6, %sw.bb3.nvmet_execute_get_log_page_smart.exit_crit_edge ], [ %status.1.i, %out_free_log.i ], [ 6, %if.end.i30.nvmet_execute_get_log_page_smart.exit_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.2.i) #13
  br label %return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %transfer_len.i34 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %122 = ptrtoint ptr %transfer_len.i34 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %transfer_len.i34, align 8
  %call.i = tail call zeroext i16 @nvmet_zero_sgl(ptr noundef %req, i32 noundef 0, i32 noundef %123) #13
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %call.i) #13
  br label %return

sw.bb5:                                           ; preds = %if.end
  %sq.i35 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %transfer_len.i36 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %124 = ptrtoint ptr %transfer_len.i36 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %transfer_len.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %125)
  %cmp.not.i37 = icmp eq i32 %125, 4096
  br i1 %cmp.not.i37, label %if.end.i41, label %sw.bb5.nvmet_execute_get_log_changed_ns.exit_crit_edge

sw.bb5.nvmet_execute_get_log_changed_ns.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_changed_ns.exit

if.end.i41:                                       ; preds = %sw.bb5
  %126 = ptrtoint ptr %sq.i35 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sq.i35, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %lock.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %129, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %nr_changed_ns.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %129, i32 0, i32 23
  %130 = ptrtoint ptr %nr_changed_ns.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nr_changed_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp2.i = icmp eq i32 %131, -1
  %mul.i38 = shl i32 %131, 2
  %len.0.i = select i1 %cmp2.i, i32 4, i32 %mul.i38
  %changed_ns_list.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %129, i32 0, i32 22
  %132 = ptrtoint ptr %changed_ns_list.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %changed_ns_list.i, align 4
  %call.i39 = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef %133, i32 noundef %len.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i39)
  %tobool.not.i40 = icmp eq i16 %call.i39, 0
  br i1 %tobool.not.i40, label %if.then6.i, label %if.end.i41.if.end9.i_crit_edge

if.end.i41.if.end9.i_crit_edge:                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %transfer_len.i36 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %transfer_len.i36, align 8
  %sub.i = sub i32 %135, %len.0.i
  %call8.i42 = tail call zeroext i16 @nvmet_zero_sgl(ptr noundef %req, i32 noundef %len.0.i, i32 noundef %sub.i) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i41.if.end9.i_crit_edge
  %status.0.i = phi i16 [ %call.i39, %if.end.i41.if.end9.i_crit_edge ], [ %call8.i42, %if.then6.i ]
  %136 = ptrtoint ptr %nr_changed_ns.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %nr_changed_ns.i, align 8
  %137 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req, align 8
  %cdw10.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %cdw10.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cdw10.i.i, align 8
  %141 = and i32 %140, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i.i43 = icmp eq i32 %141, 0
  br i1 %tobool.not.i.i43, label %if.then.i.i, label %if.end9.i.nvmet_clear_aen_bit.exit.i_crit_edge

if.end9.i.nvmet_clear_aen_bit.exit.i_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_clear_aen_bit.exit.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %sq.i35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sq.i35, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %aen_masked.i.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %145, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %aen_masked.i.i) #13
  br label %nvmet_clear_aen_bit.exit.i

nvmet_clear_aen_bit.exit.i:                       ; preds = %if.then.i.i, %if.end9.i.nvmet_clear_aen_bit.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %nvmet_execute_get_log_changed_ns.exit

nvmet_execute_get_log_changed_ns.exit:            ; preds = %nvmet_clear_aen_bit.exit.i, %sw.bb5.nvmet_execute_get_log_changed_ns.exit_crit_edge
  %status.1.i44 = phi i16 [ 6, %sw.bb5.nvmet_execute_get_log_changed_ns.exit_crit_edge ], [ %status.0.i, %nvmet_clear_aen_bit.exit.i ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.1.i44) #13
  br label %return

sw.bb6:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %146 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %146, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not.i46 = icmp eq ptr %call7.i.i.i45, null
  br i1 %tobool.not.i46, label %sw.bb6.nvmet_execute_get_log_cmd_effects_ns.exit_crit_edge, label %if.end.i47

sw.bb6.nvmet_execute_get_log_cmd_effects_ns.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_cmd_effects_ns.exit

if.end.i47:                                       ; preds = %sw.bb6
  %147 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %req, align 8
  %csi.i = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %csi.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %csi.i, align 1
  %151 = zext i8 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %150, label %if.end.i47.free.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb1.i
  ]

if.end.i47.free.i_crit_edge:                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

sw.bb.i:                                          ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i48 = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 2
  %152 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 16777216, ptr %arrayidx.i.i48, align 8
  %arrayidx2.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 6
  %153 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 16777216, ptr %arrayidx2.i.i, align 8
  %arrayidx4.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 8
  %154 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 16777216, ptr %arrayidx4.i.i, align 8
  %arrayidx6.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 9
  %155 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 16777216, ptr %arrayidx6.i.i, align 4
  %arrayidx8.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 10
  %156 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 16777216, ptr %arrayidx8.i.i, align 8
  %arrayidx10.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 12
  %157 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 16777216, ptr %arrayidx10.i.i, align 8
  %arrayidx12.i.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 24
  %158 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 16777216, ptr %arrayidx12.i.i, align 8
  %iocs.i.i = getelementptr inbounds %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1
  %arrayidx13.i.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 2
  %159 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16777216, ptr %arrayidx13.i.i, align 8
  %arrayidx15.i.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 16777216, ptr %arrayidx15.i.i, align 4
  %161 = ptrtoint ptr %iocs.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 16777216, ptr %iocs.i.i, align 8
  %arrayidx19.i.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 9
  %162 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16777216, ptr %arrayidx19.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i10.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 2
  %163 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 16777216, ptr %arrayidx.i10.i, align 8
  %arrayidx2.i11.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 6
  %164 = ptrtoint ptr %arrayidx2.i11.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 16777216, ptr %arrayidx2.i11.i, align 8
  %arrayidx4.i12.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 8
  %165 = ptrtoint ptr %arrayidx4.i12.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 16777216, ptr %arrayidx4.i12.i, align 8
  %arrayidx6.i13.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 9
  %166 = ptrtoint ptr %arrayidx6.i13.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 16777216, ptr %arrayidx6.i13.i, align 4
  %arrayidx8.i14.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 10
  %167 = ptrtoint ptr %arrayidx8.i14.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 16777216, ptr %arrayidx8.i14.i, align 8
  %arrayidx10.i15.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 12
  %168 = ptrtoint ptr %arrayidx10.i15.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 16777216, ptr %arrayidx10.i15.i, align 8
  %arrayidx12.i16.i = getelementptr [256 x i32], ptr %call7.i.i.i45, i32 0, i32 24
  %169 = ptrtoint ptr %arrayidx12.i16.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 16777216, ptr %arrayidx12.i16.i, align 8
  %iocs.i17.i = getelementptr inbounds %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1
  %arrayidx13.i18.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 2
  %170 = ptrtoint ptr %arrayidx13.i18.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 16777216, ptr %arrayidx13.i18.i, align 8
  %arrayidx15.i19.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %arrayidx15.i19.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 16777216, ptr %arrayidx15.i19.i, align 4
  %172 = ptrtoint ptr %iocs.i17.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 16777216, ptr %iocs.i17.i, align 8
  %arrayidx19.i20.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 9
  %173 = ptrtoint ptr %arrayidx19.i20.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 16777216, ptr %arrayidx19.i20.i, align 4
  %arrayidx21.i21.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 8
  %174 = ptrtoint ptr %arrayidx21.i21.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 16777216, ptr %arrayidx21.i21.i, align 8
  %arrayidx.i22.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 125
  %175 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 16777216, ptr %arrayidx.i22.i, align 4
  %arrayidx2.i23.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 121
  %176 = ptrtoint ptr %arrayidx2.i23.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 16777216, ptr %arrayidx2.i23.i, align 4
  %arrayidx4.i24.i = getelementptr %struct.nvme_effects_log, ptr %call7.i.i.i45, i32 0, i32 1, i32 122
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %arrayidx4.i24.sink.i = phi ptr [ %arrayidx4.i24.i, %sw.bb1.i ], [ %arrayidx21.i.i, %sw.bb.i ]
  %177 = ptrtoint ptr %arrayidx4.i24.sink.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 16777216, ptr %arrayidx4.i24.sink.i, align 8
  %call2.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i.i45, i32 noundef 4096) #13
  br label %free.i

free.i:                                           ; preds = %sw.epilog.i, %if.end.i47.free.i_crit_edge
  %status.0.i49 = phi i16 [ %call2.i, %sw.epilog.i ], [ 265, %if.end.i47.free.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i45) #13
  br label %nvmet_execute_get_log_cmd_effects_ns.exit

nvmet_execute_get_log_cmd_effects_ns.exit:        ; preds = %free.i, %sw.bb6.nvmet_execute_get_log_cmd_effects_ns.exit_crit_edge
  %status.1.i50 = phi i16 [ %status.0.i49, %free.i ], [ 6, %sw.bb6.nvmet_execute_get_log_cmd_effects_ns.exit_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.1.i50) #13
  br label %return

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr.i) #13
  %178 = call ptr @memset(ptr %hdr.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %179 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3264, i32 noundef 4128) #17
  %tobool.not.i52 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i52, label %sw.bb7.nvmet_execute_get_log_page_ana.exit_crit_edge, label %if.end.i54

sw.bb7.nvmet_execute_get_log_page_ana.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_get_log_page_ana.exit

if.end.i54:                                       ; preds = %sw.bb7
  tail call void @down_read(ptr noundef nonnull @nvmet_ana_sem) #13
  %sq.i.i53 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %nnsids.i.i = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %call7.i.i, i32 0, i32 1
  %chgcnt.i.i = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %call7.i.i, i32 0, i32 2
  %port.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %state.i.i = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %call7.i.i, i32 0, i32 3
  %rsvd17.i.i = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %call7.i.i, i32 0, i32 4
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.inc.i.for.body.i56_crit_edge, %if.end.i54
  %ngrps.054.i = phi i16 [ 0, %if.end.i54 ], [ %ngrps.1.i, %for.inc.i.for.body.i56_crit_edge ]
  %grpid.052.i = phi i32 [ 1, %if.end.i54 ], [ %inc10.i, %for.inc.i.for.body.i56_crit_edge ]
  %offset.051.i = phi i32 [ 16, %if.end.i54 ], [ %offset.1.i, %for.inc.i.for.body.i56_crit_edge ]
  %arrayidx.i55 = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %grpid.052.i
  %180 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool2.not.i = icmp eq i32 %181, 0
  br i1 %tobool2.not.i, label %for.body.i56.for.inc.i_crit_edge, label %if.end4.i

for.body.i56.for.inc.i_crit_edge:                 ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i56
  %182 = ptrtoint ptr %sq.i.i53 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sq.i.i53, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i51) #13
  %186 = ptrtoint ptr %idx.i.i51 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %idx.i.i51, align 4, !annotation !39
  %187 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %req, align 8
  %lsp.i.i = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %188, i32 0, i32 7
  %189 = ptrtoint ptr %lsp.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %lsp.i.i, align 1
  %191 = and i8 %190, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i.i57 = icmp eq i8 %191, 0
  br i1 %tobool.not.i.i57, label %if.then.i42.i, label %if.end4.i.nvmet_format_ana_group.exit.i_crit_edge

if.end4.i.nvmet_format_ana_group.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_format_ana_group.exit.i

if.then.i42.i:                                    ; preds = %if.end4.i
  %192 = ptrtoint ptr %idx.i.i51 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %idx.i.i51, align 4
  %193 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %185, align 8
  %namespaces.i.i58 = getelementptr inbounds %struct.nvmet_subsys, ptr %194, i32 0, i32 3
  %call.i.i59 = call ptr @xa_find(ptr noundef %namespaces.i.i58, ptr noundef nonnull %idx.i.i51, i32 noundef -1, i32 noundef 8) #13
  %tobool2.not27.i.i = icmp eq ptr %call.i.i59, null
  br i1 %tobool2.not27.i.i, label %if.then.i42.i.nvmet_format_ana_group.exit.i_crit_edge, label %if.then.i42.i.for.body.i.i60_crit_edge

if.then.i42.i.for.body.i.i60_crit_edge:           ; preds = %if.then.i42.i
  br label %for.body.i.i60

if.then.i42.i.nvmet_format_ana_group.exit.i_crit_edge: ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_format_ana_group.exit.i

for.body.i.i60:                                   ; preds = %for.inc.i.i63.for.body.i.i60_crit_edge, %if.then.i42.i.for.body.i.i60_crit_edge
  %count.029.i.i = phi i32 [ %count.1.i.i, %for.inc.i.i63.for.body.i.i60_crit_edge ], [ 0, %if.then.i42.i.for.body.i.i60_crit_edge ]
  %ns.028.i.i = phi ptr [ %call7.i44.i, %for.inc.i.i63.for.body.i.i60_crit_edge ], [ %call.i.i59, %if.then.i42.i.for.body.i.i60_crit_edge ]
  %anagrpid.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns.028.i.i, i32 0, i32 9
  %195 = ptrtoint ptr %anagrpid.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %anagrpid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %grpid.052.i)
  %cmp.i43.i = icmp eq i32 %196, %grpid.052.i
  br i1 %cmp.i43.i, label %if.then4.i.i, label %for.body.i.i60.for.inc.i.i63_crit_edge

for.body.i.i60.for.inc.i.i63_crit_edge:           ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i63

if.then4.i.i:                                     ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #15
  %nsid.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns.028.i.i, i32 0, i32 4
  %197 = ptrtoint ptr %nsid.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nsid.i.i, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198) #13
  %inc.i.i = add i32 %count.029.i.i, 1
  %arrayidx.i.i61 = getelementptr %struct.nvme_ana_group_desc, ptr %call7.i.i, i32 0, i32 5, i32 %count.029.i.i
  %200 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx.i.i61, align 4
  br label %for.inc.i.i63

for.inc.i.i63:                                    ; preds = %if.then4.i.i, %for.body.i.i60.for.inc.i.i63_crit_edge
  %count.1.i.i = phi i32 [ %inc.i.i, %if.then4.i.i ], [ %count.029.i.i, %for.body.i.i60.for.inc.i.i63_crit_edge ]
  %201 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %185, align 8
  %namespaces6.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %202, i32 0, i32 3
  %call7.i44.i = call ptr @xa_find_after(ptr noundef %namespaces6.i.i, ptr noundef nonnull %idx.i.i51, i32 noundef -1, i32 noundef 8) #13
  %tobool2.not.i.i62 = icmp eq ptr %call7.i44.i, null
  br i1 %tobool2.not.i.i62, label %for.inc.i.i63.nvmet_format_ana_group.exit.i_crit_edge, label %for.inc.i.i63.for.body.i.i60_crit_edge

for.inc.i.i63.for.body.i.i60_crit_edge:           ; preds = %for.inc.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i60

for.inc.i.i63.nvmet_format_ana_group.exit.i_crit_edge: ; preds = %for.inc.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_format_ana_group.exit.i

nvmet_format_ana_group.exit.i:                    ; preds = %for.inc.i.i63.nvmet_format_ana_group.exit.i_crit_edge, %if.then.i42.i.nvmet_format_ana_group.exit.i_crit_edge, %if.end4.i.nvmet_format_ana_group.exit.i_crit_edge
  %count.2.i.i = phi i32 [ 0, %if.end4.i.nvmet_format_ana_group.exit.i_crit_edge ], [ 0, %if.then.i42.i.nvmet_format_ana_group.exit.i_crit_edge ], [ %count.1.i.i, %for.inc.i.i63.nvmet_format_ana_group.exit.i_crit_edge ]
  %203 = call i32 @llvm.bswap.i32(i32 %grpid.052.i) #13
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %call7.i.i, align 8
  %205 = call i32 @llvm.bswap.i32(i32 %count.2.i.i) #13
  %206 = ptrtoint ptr %nnsids.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %nnsids.i.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @nvmet_ana_chgcnt to i32))
  %207 = load i64, ptr @nvmet_ana_chgcnt, align 8
  %208 = call i64 @llvm.bswap.i64(i64 %207) #13
  %209 = ptrtoint ptr %chgcnt.i.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %chgcnt.i.i, align 8
  %210 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %port.i.i, align 8
  %ana_state.i.i = getelementptr inbounds %struct.nvmet_port, ptr %211, i32 0, i32 10
  %212 = ptrtoint ptr %ana_state.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ana_state.i.i, align 4
  %arrayidx10.i.i64 = getelementptr i32, ptr %213, i32 %grpid.052.i
  %214 = ptrtoint ptr %arrayidx10.i.i64 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx10.i.i64, align 4
  %conv11.i.i = trunc i32 %215 to i8
  %216 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv11.i.i, ptr %state.i.i, align 8
  %217 = call ptr @memset(ptr %rsvd17.i.i, i32 0, i32 15)
  %218 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.2.i.i, i32 4) #13
  %219 = extractvalue { i32, i1 } %218, 1
  %220 = extractvalue { i32, i1 } %218, 0
  %spec.select.i.i45.i = call i32 @llvm.uadd.sat.i32(i32 %220, i32 32) #13
  %retval.0.i.i.i = select i1 %219, i32 -1, i32 %spec.select.i.i45.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i51) #13
  %call6.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %offset.051.i, ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6.i)
  %tobool7.not.i = icmp eq i16 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i67, label %for.end.i

if.end9.i67:                                      ; preds = %nvmet_format_ana_group.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i65 = add i32 %retval.0.i.i.i, %offset.051.i
  %inc.i66 = add i16 %ngrps.054.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i67, %for.body.i56.for.inc.i_crit_edge
  %offset.1.i = phi i32 [ %add.i65, %if.end9.i67 ], [ %offset.051.i, %for.body.i56.for.inc.i_crit_edge ]
  %ngrps.1.i = phi i16 [ %inc.i66, %if.end9.i67 ], [ %ngrps.054.i, %for.body.i56.for.inc.i_crit_edge ]
  %inc10.i = add nuw nsw i32 %grpid.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 129
  br i1 %exitcond.not.i, label %for.inc.i.for.end21.i_crit_edge, label %for.inc.i.for.body.i56_crit_edge

for.inc.i.for.body.i56_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i56

for.inc.i.for.end21.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end21.i

for.end.i:                                        ; preds = %nvmet_format_ana_group.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %grpid.052.i)
  %cmp1255.i = icmp ult i32 %grpid.052.i, 129
  br i1 %cmp1255.i, label %for.end.i.for.body13.i_crit_edge, label %for.end.i.for.end21.i_crit_edge

for.end.i.for.end21.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end21.i

for.end.i.for.body13.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.end.i.for.body13.i_crit_edge
  %ngrps.257.i = phi i16 [ %spec.select.i, %for.body13.i.for.body13.i_crit_edge ], [ %ngrps.054.i, %for.end.i.for.body13.i_crit_edge ]
  %grpid.156.i = phi i32 [ %inc20.i, %for.body13.i.for.body13.i_crit_edge ], [ %grpid.052.i, %for.end.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %grpid.156.i
  %221 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool15.not.i = icmp ne i32 %222, 0
  %inc17.i = zext i1 %tobool15.not.i to i16
  %spec.select.i = add i16 %ngrps.257.i, %inc17.i
  %inc20.i = add nuw nsw i32 %grpid.156.i, 1
  %exitcond58.not.i = icmp eq i32 %inc20.i, 129
  br i1 %exitcond58.not.i, label %for.body13.i.for.end21.i_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13.i

for.body13.i.for.end21.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end21.i

for.end21.i:                                      ; preds = %for.body13.i.for.end21.i_crit_edge, %for.end.i.for.end21.i_crit_edge, %for.inc.i.for.end21.i_crit_edge
  %ngrps.2.lcssa.i = phi i16 [ %ngrps.054.i, %for.end.i.for.end21.i_crit_edge ], [ %spec.select.i, %for.body13.i.for.end21.i_crit_edge ], [ %ngrps.1.i, %for.inc.i.for.end21.i_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @nvmet_ana_chgcnt to i32))
  %223 = load i64, ptr @nvmet_ana_chgcnt, align 8
  %224 = call i64 @llvm.bswap.i64(i64 %223) #13
  %225 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %224, ptr %hdr.i, align 8
  %226 = call i16 @llvm.bswap.i16(i16 %ngrps.2.lcssa.i) #13
  %ngrps22.i = getelementptr inbounds %struct.nvme_ana_rsp_hdr, ptr %hdr.i, i32 0, i32 1
  %227 = ptrtoint ptr %ngrps22.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %ngrps22.i, align 8
  %228 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %req, align 8
  %cdw10.i.i68 = getelementptr inbounds %struct.nvme_common_command, ptr %229, i32 0, i32 7
  %230 = ptrtoint ptr %cdw10.i.i68 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cdw10.i.i68, align 8
  %232 = and i32 %231, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i47.i = icmp eq i32 %232, 0
  br i1 %tobool.not.i47.i, label %if.then.i49.i, label %for.end21.i.nvmet_clear_aen_bit.exit.i70_crit_edge

for.end21.i.nvmet_clear_aen_bit.exit.i70_crit_edge: ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_clear_aen_bit.exit.i70

if.then.i49.i:                                    ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %233 = ptrtoint ptr %sq.i.i53 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %sq.i.i53, align 8
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %aen_masked.i.i69 = getelementptr inbounds %struct.nvmet_ctrl, ptr %236, i32 0, i32 12
  call void @_clear_bit(i32 noundef 11, ptr noundef %aen_masked.i.i69) #13
  br label %nvmet_clear_aen_bit.exit.i70

nvmet_clear_aen_bit.exit.i70:                     ; preds = %if.then.i49.i, %for.end21.i.nvmet_clear_aen_bit.exit.i70_crit_edge
  call void @up_read(ptr noundef nonnull @nvmet_ana_sem) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %call23.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %hdr.i, i32 noundef 16) #13
  br label %nvmet_execute_get_log_page_ana.exit

nvmet_execute_get_log_page_ana.exit:              ; preds = %nvmet_clear_aen_bit.exit.i70, %sw.bb7.nvmet_execute_get_log_page_ana.exit_crit_edge
  %status.0.i71 = phi i16 [ %call23.i, %nvmet_clear_aen_bit.exit.i70 ], [ 6, %sw.bb7.nvmet_execute_get_log_page_ana.exit_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0.i71) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr.i) #13
  br label %return

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_execute_get_log_page.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_execute_get_log_page, %if.then11)) #13
          to label %do.end [label %if.then11], !srcloc !37

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %req, align 8
  %lid13 = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %lid13 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %lid13, align 8
  %conv14 = zext i8 %240 to i32
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %241 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %sq, align 8
  %qid = getelementptr inbounds %struct.nvmet_sq, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %qid, align 4
  %conv15 = zext i16 %244 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_execute_get_log_page.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.9, i32 noundef %conv14, i32 noundef %conv15) #13
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %245 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 40, ptr %error_loc, align 4
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 16386) #13
  br label %return

return:                                           ; preds = %do.end, %nvmet_execute_get_log_page_ana.exit, %nvmet_execute_get_log_cmd_effects_ns.exit, %nvmet_execute_get_log_changed_ns.exit, %sw.bb4, %nvmet_execute_get_log_page_smart.exit, %nvmet_execute_get_log_page_error.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_identify(ptr noundef %req) #3 align 64 {
entry:
  %desc.i57.i = alloca %struct.nvme_ns_id_desc, align 2
  %desc.i46.i = alloca %struct.nvme_ns_id_desc, align 2
  %desc.i.i = alloca %struct.nvme_ns_id_desc, align 2
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 4096) #13
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %cns = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cns, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %3, label %if.end.sw.epilog37_crit_edge [
    i8 0, label %sw.bb
    i8 5, label %sw.bb4
    i8 1, label %sw.bb11
    i8 6, label %sw.bb17
    i8 2, label %sw.bb24
    i8 3, label %sw.bb31
  ]

if.end.sw.epilog37_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb:                                            ; preds = %if.end
  %csi = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %csi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %csi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cond41 = icmp eq i8 %6, 0
  br i1 %cond41, label %sw.bb3, label %sw.bb.sw.epilog37_crit_edge

sw.bb.sw.epilog37_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb3:                                           ; preds = %sw.bb
  %nsid.i = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %nsid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %error_loc.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %9 = ptrtoint ptr %error_loc.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %error_loc.i, align 4
  br label %nvmet_execute_identify_ns.exit

if.end.i:                                         ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.nvmet_execute_identify_ns.exit_crit_edge, label %if.end2.i

if.end.i.nvmet_execute_identify_ns.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_identify_ns.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3.i)
  %tobool4.not.i = icmp eq i16 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end2.i.if.then46.i_crit_edge

if.end2.i.if.then46.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i

if.end6.i:                                        ; preds = %if.end2.i
  %ns.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns.i, align 8
  tail call void @nvmet_ns_revalidate(ptr noundef %12) #13
  %13 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns.i, align 8
  %size.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blksize_shift.i, align 8
  %sh_prom.i = zext i32 %18 to i64
  %shr.i = ashr i64 %16, %sh_prom.i
  %19 = tail call i64 @llvm.bswap.i64(i64 %shr.i) #13
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %call7.i.i.i, align 8
  %ncap.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ncap.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %ncap.i, align 8
  %port.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port.i, align 8
  %ana_state.i = getelementptr inbounds %struct.nvmet_port, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ana_state.i, align 4
  %anagrpid.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 9
  %26 = ptrtoint ptr %anagrpid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %anagrpid.i, align 8
  %arrayidx.i = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %.off.i = add i32 %29, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end6.i.sw.epilog.i_crit_edge, label %sw.default.i

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %nuse.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %nuse.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %19, ptr %nuse.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end6.i.sw.epilog.i_crit_edge
  %bdev.i = getelementptr inbounds %struct.nvmet_ns, ptr %14, i32 0, i32 1
  %31 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i, align 8
  %tobool12.not.i = icmp eq ptr %32, null
  br i1 %tobool12.not.i, label %sw.epilog.i.if.end16.i_crit_edge, label %if.then13.i

sw.epilog.i.if.end16.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvmet_bdev_set_limits(ptr noundef nonnull %32, ptr noundef nonnull %call7.i.i.i) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %sw.epilog.i.if.end16.i_crit_edge
  %nlbaf.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %nlbaf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %nlbaf.i, align 1
  %flbas.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %flbas.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %flbas.i, align 2
  %nmic.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %nmic.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %nmic.i, align 2
  %36 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns.i, align 8
  %anagrpid18.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %anagrpid18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %anagrpid18.i, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #13
  %anagrpid19.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 27
  %41 = ptrtoint ptr %anagrpid19.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %anagrpid19.i, align 4
  %nguid.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 32
  %nguid21.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %nguid.i, ptr %nguid21.i, i32 16)
  %blksize_shift23.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 5
  %43 = ptrtoint ptr %blksize_shift23.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blksize_shift23.i, align 8
  %conv.i = trunc i32 %44 to i8
  %lbaf.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 34
  %ds.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 34, i32 0, i32 1
  %45 = ptrtoint ptr %ds.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %ds.i, align 2
  %sq.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %46 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sq.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %pi_support.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %49, i32 0, i32 31
  %50 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pi_support.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not.i = icmp eq i8 %51, 0
  br i1 %tobool25.not.i, label %if.end16.i.if.end38.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end38.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %pi_type.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 21
  %52 = ptrtoint ptr %pi_type.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pi_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end38.i_crit_edge, label %nvmet_ns_has_pi.exit.i

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

nvmet_ns_has_pi.exit.i:                           ; preds = %land.lhs.true.i
  %metadata_size.i.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 22
  %54 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %metadata_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 8
  br i1 %cmp.i.i, label %if.then30.i, label %nvmet_ns_has_pi.exit.i.if.end38.i_crit_edge

nvmet_ns_has_pi.exit.i.if.end38.i_crit_edge:      ; preds = %nvmet_ns_has_pi.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then30.i:                                      ; preds = %nvmet_ns_has_pi.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dpc.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %dpc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 31, ptr %dpc.i, align 4
  %mc.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %mc.i, align 1
  %58 = ptrtoint ptr %pi_type.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pi_type.i.i, align 8
  %conv32.i = trunc i32 %59 to i8
  %dps.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %dps.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv32.i, ptr %dps.i, align 1
  %61 = ptrtoint ptr %flbas.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 16, ptr %flbas.i, align 2
  %62 = ptrtoint ptr %metadata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %metadata_size.i.i, align 4
  %conv35.i = trunc i32 %63 to i16
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv35.i) #13
  %65 = ptrtoint ptr %lbaf.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %lbaf.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then30.i, %nvmet_ns_has_pi.exit.i.if.end38.i_crit_edge, %land.lhs.true.i.if.end38.i_crit_edge, %if.end16.i.if.end38.i_crit_edge
  %readonly.i = getelementptr inbounds %struct.nvmet_ns, ptr %37, i32 0, i32 3
  %66 = ptrtoint ptr %readonly.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %readonly.i, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool40.not.i = icmp eq i8 %67, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.then46.i_crit_edge, label %if.then41.i

if.end38.i.if.then46.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  %nsattr.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i, i32 0, i32 29
  %68 = ptrtoint ptr %nsattr.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nsattr.i, align 1
  %70 = or i8 %69, 1
  store i8 %70, ptr %nsattr.i, align 1
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.then41.i, %if.end38.i.if.then46.i_crit_edge, %if.end2.i.if.then46.i_crit_edge
  %call47.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %nvmet_execute_identify_ns.exit

nvmet_execute_identify_ns.exit:                   ; preds = %if.then46.i, %if.end.i.nvmet_execute_identify_ns.exit_crit_edge, %if.then.i
  %status.2.i = phi i16 [ 16395, %if.then.i ], [ %call47.i, %if.then46.i ], [ 6, %if.end.i.nvmet_execute_identify_ns.exit_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.2.i) #13
  br label %return

sw.bb4:                                           ; preds = %if.end
  %csi6 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %csi6 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %csi6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cond40 = icmp eq i8 %72, 2
  br i1 %cond40, label %sw.bb8, label %sw.bb4.sw.epilog37_crit_edge

sw.bb4.sw.epilog37_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvmet_execute_identify_cns_cs_ns(ptr noundef %req) #13
  br label %return

sw.bb11:                                          ; preds = %if.end
  %csi13 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %73 = ptrtoint ptr %csi13 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %csi13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cond39 = icmp eq i8 %74, 0
  br i1 %cond39, label %sw.bb15, label %sw.bb11.sw.epilog37_crit_edge

sw.bb11.sw.epilog37_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb15:                                          ; preds = %sw.bb11
  %sq.i55 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %75 = ptrtoint ptr %sq.i55 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sq.i55, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %subsys_discovered.i = getelementptr inbounds %struct.nvmet_subsys, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %subsys_discovered.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %subsys_discovered.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i56 = icmp eq i8 %82, 0
  br i1 %tobool.not.i56, label %if.then.i57, label %sw.bb15.if.end.i59_crit_edge

sw.bb15.if.end.i59_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59

if.then.i57:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.nvmet_subsys, ptr %80, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %83 = ptrtoint ptr %subsys_discovered.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %subsys_discovered.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i57, %sw.bb15.if.end.i59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 4096) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i58, null
  br i1 %tobool5.not.i, label %if.end.i59.nvmet_execute_identify_ctrl.exit_crit_edge, label %if.end7.i

if.end.i59.nvmet_execute_identify_ctrl.exit_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_identify_ctrl.exit

if.end7.i:                                        ; preds = %if.end.i59
  %85 = ptrtoint ptr %call7.i.i.i58 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %call7.i.i.i58, align 8
  %ssvid.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 1
  %86 = ptrtoint ptr %ssvid.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %ssvid.i, align 2
  %sn.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 2
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %78, align 8
  %serial.i = getelementptr inbounds %struct.nvmet_subsys, ptr %88, i32 0, i32 13
  %89 = call ptr @memcpy(ptr %sn.i, ptr %serial.i, i32 20)
  %mn.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 3
  %model_number.i = getelementptr inbounds %struct.nvmet_subsys, ptr %80, i32 0, i32 20
  %90 = ptrtoint ptr %model_number.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %model_number.i, align 8
  %call12.i = tail call i32 @strlen(ptr noundef %91) #19
  tail call void @memcpy_and_pad(ptr noundef %mn.i, i32 noundef 40, ptr noundef %91, i32 noundef %call12.i, i32 noundef 32) #13
  %fr.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 4
  tail call void @memcpy_and_pad(ptr noundef %fr.i, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 32) #13
  %rab.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 5
  %92 = ptrtoint ptr %rab.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 6, ptr %rab.i, align 8
  %93 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %78, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp.i.not.i = icmp eq i32 %96, 2
  %spec.select.i = select i1 %cmp.i.not.i, i8 1, i8 2
  %97 = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 16
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.select.i, ptr %97, align 1
  %cmic.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 7
  %99 = ptrtoint ptr %cmic.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 11, ptr %cmic.i, align 4
  %ops.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %78, i32 0, i32 21
  %100 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i, align 8
  %get_mdts.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %get_mdts.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %get_mdts.i, align 4
  %tobool19.not.i = icmp eq ptr %103, null
  br i1 %tobool19.not.i, label %if.end7.i.if.end26.i_crit_edge, label %if.then20.i

if.end7.i.if.end26.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = tail call zeroext i8 %103(ptr noundef %78) #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.end7.i.if.end26.i_crit_edge
  %call23.sink.i = phi i8 [ %call23.i, %if.then20.i ], [ 0, %if.end7.i.if.end26.i_crit_edge ]
  %104 = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %call23.sink.i, ptr %104, align 1
  %cntlid.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %78, i32 0, i32 8
  %106 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cntlid.i, align 8
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #13
  %cntlid27.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 9
  %109 = ptrtoint ptr %cntlid27.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %cntlid27.i, align 2
  %110 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %78, align 8
  %ver.i = getelementptr inbounds %struct.nvmet_subsys, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %ver.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %ver.i, align 8
  %conv.i60 = trunc i64 %113 to i32
  %114 = tail call i32 @llvm.bswap.i32(i32 %conv.i60) #13
  %ver29.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 10
  %115 = ptrtoint ptr %ver29.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ver29.i, align 8
  %oaes.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 13
  %116 = ptrtoint ptr %oaes.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 589824, ptr %oaes.i, align 4
  %ctratt.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 14
  %117 = ptrtoint ptr %ctratt.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1090519040, ptr %ctratt.i, align 8
  %oacs.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 22
  %118 = ptrtoint ptr %oacs.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %oacs.i, align 8
  %acl.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 23
  %119 = ptrtoint ptr %acl.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %acl.i, align 2
  %aerl.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 24
  %120 = ptrtoint ptr %aerl.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %aerl.i, align 1
  %frmw.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 25
  %121 = ptrtoint ptr %frmw.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %frmw.i, align 4
  %lpa.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 26
  %122 = ptrtoint ptr %lpa.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 7, ptr %lpa.i, align 1
  %elpe.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 27
  %123 = ptrtoint ptr %elpe.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 127, ptr %elpe.i, align 2
  %npss.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 28
  %124 = ptrtoint ptr %npss.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %npss.i, align 1
  %kas.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 42
  %125 = ptrtoint ptr %kas.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 2560, ptr %kas.i, align 8
  %sqes.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 55
  %126 = ptrtoint ptr %sqes.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 102, ptr %sqes.i, align 8
  %cqes.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 56
  %127 = ptrtoint ptr %cqes.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 68, ptr %cqes.i, align 1
  %maxcmd.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 57
  %128 = ptrtoint ptr %maxcmd.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 4, ptr %maxcmd.i, align 2
  %nn.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 58
  %129 = ptrtoint ptr %nn.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 262144, ptr %nn.i, align 4
  %mnan.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 70
  %130 = ptrtoint ptr %mnan.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 262144, ptr %mnan.i, align 4
  %oncs.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 59
  %131 = ptrtoint ptr %oncs.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 3072, ptr %oncs.i, align 8
  %vwc.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 62
  %132 = ptrtoint ptr %vwc.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %vwc.i, align 1
  %awun.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 63
  %133 = ptrtoint ptr %awun.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %awun.i, align 2
  %awupf.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 64
  %134 = ptrtoint ptr %awupf.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %awupf.i, align 8
  %sgls.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 69
  %135 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 16777216, ptr %sgls.i, align 8
  %136 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i, align 8
  %flags.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool31.not.i, i32 16777216, i32 83886080
  %140 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %spec.store.select.i, ptr %sgls.i, align 8
  %port.i61 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %141 = ptrtoint ptr %port.i61 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %port.i61, align 8
  %inline_data_size.i = getelementptr inbounds %struct.nvmet_port, ptr %142, i32 0, i32 13
  %143 = ptrtoint ptr %inline_data_size.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %inline_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool35.not.i = icmp eq i32 %144, 0
  br i1 %tobool35.not.i, label %if.end26.i.if.end39.i_crit_edge, label %if.then36.i

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %or38.i = or i32 %spec.store.select.i, 4096
  %145 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or38.i, ptr %sgls.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end26.i.if.end39.i_crit_edge
  %subnqn.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 72
  %146 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %78, align 8
  %subsysnqn.i = getelementptr inbounds %struct.nvmet_subsys, ptr %147, i32 0, i32 15
  %148 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %subsysnqn.i, align 8
  %call42.i = tail call i32 @strlcpy(ptr noundef %subnqn.i, ptr noundef %149, i32 noundef 256) #13
  %pi_support.i62 = getelementptr inbounds %struct.nvmet_ctrl, ptr %78, i32 0, i32 31
  %150 = ptrtoint ptr %pi_support.i62 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %pi_support.i62, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool43.not.i = icmp eq i8 %151, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %if.end39.i.if.end47.i_crit_edge

if.end39.i.if.end47.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %port.i61 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %port.i61, align 8
  %inline_data_size46.i = getelementptr inbounds %struct.nvmet_port, ptr %153, i32 0, i32 13
  %154 = ptrtoint ptr %inline_data_size46.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %inline_data_size46.i, align 4
  %add.i = add i32 %155, 64
  %phi.bo126.i = lshr i32 %add.i, 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end39.i.if.end47.i_crit_edge
  %cmd_capsule_size.0.i = phi i32 [ 4, %if.end39.i.if.end47.i_crit_edge ], [ %phi.bo126.i, %if.then44.i ]
  %156 = tail call i32 @llvm.bswap.i32(i32 %cmd_capsule_size.0.i) #13
  %ioccsz.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 74
  %157 = ptrtoint ptr %ioccsz.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %ioccsz.i, align 8
  %iorcsz.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 75
  %158 = ptrtoint ptr %iorcsz.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 16777216, ptr %iorcsz.i, align 4
  %159 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i, align 8
  %msdbd.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %msdbd.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %msdbd.i, align 4
  %conv49.i = trunc i32 %162 to i8
  %msdbd50.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 78
  %163 = ptrtoint ptr %msdbd50.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv49.i, ptr %msdbd50.i, align 1
  %anacap.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 51
  %164 = ptrtoint ptr %anacap.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 31, ptr %anacap.i, align 1
  %anatt.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 50
  %165 = ptrtoint ptr %anatt.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 10, ptr %anatt.i, align 2
  %anagrpmax.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 52
  %166 = ptrtoint ptr %anagrpmax.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -2147483648, ptr %anagrpmax.i, align 8
  %nanagrpid.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 53
  %167 = ptrtoint ptr %nanagrpid.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -2147483648, ptr %nanagrpid.i, align 4
  %psd.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 80
  %168 = ptrtoint ptr %psd.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -15351, ptr %psd.i, align 8
  %entry_lat.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 80, i32 0, i32 3
  %169 = ptrtoint ptr %entry_lat.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 268435456, ptr %entry_lat.i, align 4
  %exit_lat.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 80, i32 0, i32 4
  %170 = ptrtoint ptr %exit_lat.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 67108864, ptr %exit_lat.i, align 8
  %nwpc.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i58, i32 0, i32 66
  %171 = ptrtoint ptr %nwpc.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %nwpc.i, align 1
  %call55.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i.i58, i32 noundef 4096) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i58) #13
  br label %nvmet_execute_identify_ctrl.exit

nvmet_execute_identify_ctrl.exit:                 ; preds = %if.end47.i, %if.end.i59.nvmet_execute_identify_ctrl.exit_crit_edge
  %status.0.i = phi i16 [ %call55.i, %if.end47.i ], [ 6, %if.end.i59.nvmet_execute_identify_ctrl.exit_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0.i) #13
  br label %return

sw.bb17:                                          ; preds = %if.end
  %csi19 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %172 = ptrtoint ptr %csi19 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %csi19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %173)
  %cond38 = icmp eq i8 %173, 2
  br i1 %cond38, label %sw.bb21, label %sw.bb17.sw.epilog37_crit_edge

sw.bb17.sw.epilog37_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb21:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nvmet_execute_identify_cns_cs_ctrl(ptr noundef %req) #13
  br label %return

sw.bb24:                                          ; preds = %if.end
  %csi26 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %174 = ptrtoint ptr %csi26 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %csi26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cond = icmp eq i8 %175, 0
  br i1 %cond, label %sw.bb28, label %sw.bb24.sw.epilog37_crit_edge

sw.bb24.sw.epilog37_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.bb28:                                          ; preds = %sw.bb24
  %sq.i63 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %176 = ptrtoint ptr %sq.i63 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sq.i63, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #13
  %180 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %idx.i, align 4, !annotation !39
  %nsid.i64 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 3
  %181 = ptrtoint ptr %nsid.i64 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nsid.i64, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %184 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not.i66 = icmp eq ptr %call7.i.i.i65, null
  br i1 %tobool.not.i66, label %sw.bb28.nvmet_execute_identify_nslist.exit_crit_edge, label %if.end.i67

sw.bb28.nvmet_execute_identify_nslist.exit_crit_edge: ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_execute_identify_nslist.exit

if.end.i67:                                       ; preds = %sw.bb28
  %185 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %idx.i, align 4
  %186 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %179, align 8
  %namespaces.i = getelementptr inbounds %struct.nvmet_subsys, ptr %187, i32 0, i32 3
  %call2.i = call ptr @xa_find(ptr noundef %namespaces.i, ptr noundef nonnull %idx.i, i32 noundef -1, i32 noundef 8) #13
  %tobool3.not25.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not25.i, label %if.end.i67.for.end.i_crit_edge, label %if.end.i67.for.body.i_crit_edge

if.end.i67.for.body.i_crit_edge:                  ; preds = %if.end.i67
  br label %for.body.i

if.end.i67.for.end.i_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i67.for.body.i_crit_edge
  %i.027.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i67.for.body.i_crit_edge ]
  %ns.026.i = phi ptr [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i67.for.body.i_crit_edge ]
  %nsid4.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns.026.i, i32 0, i32 4
  %188 = ptrtoint ptr %nsid4.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %nsid4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %183)
  %cmp.not.i = icmp ugt i32 %189, %183
  br i1 %cmp.not.i, label %if.end6.i69, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end6.i69:                                      ; preds = %for.body.i
  %190 = call i32 @llvm.bswap.i32(i32 %189) #13
  %inc.i = add i32 %i.027.i, 1
  %arrayidx.i68 = getelementptr i32, ptr %call7.i.i.i65, i32 %i.027.i
  %191 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %cmp8.i = icmp eq i32 %inc.i, 1024
  br i1 %cmp8.i, label %if.end6.i69.for.end.i_crit_edge, label %if.end6.i69.for.inc.i_crit_edge

if.end6.i69.for.inc.i_crit_edge:                  ; preds = %if.end6.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end6.i69.for.end.i_crit_edge:                  ; preds = %if.end6.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end6.i69.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.027.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end6.i69.for.inc.i_crit_edge ]
  %192 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %179, align 8
  %namespaces12.i = getelementptr inbounds %struct.nvmet_subsys, ptr %193, i32 0, i32 3
  %call13.i = call ptr @xa_find_after(ptr noundef %namespaces12.i, ptr noundef nonnull %idx.i, i32 noundef -1, i32 noundef 8) #13
  %tobool3.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end6.i69.for.end.i_crit_edge, %if.end.i67.for.end.i_crit_edge
  %call14.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i.i65, i32 noundef 4096) #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i65) #13
  br label %nvmet_execute_identify_nslist.exit

nvmet_execute_identify_nslist.exit:               ; preds = %for.end.i, %sw.bb28.nvmet_execute_identify_nslist.exit_crit_edge
  %status.0.i70 = phi i16 [ %call14.i, %for.end.i ], [ 6, %sw.bb28.nvmet_execute_identify_nslist.exit_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0.i70) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #13
  br label %return

sw.bb31:                                          ; preds = %if.end
  %csi.i = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %194 = ptrtoint ptr %csi.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %csi.i, align 1
  %196 = zext i8 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %195, label %sw.bb31.sw.epilog37_crit_edge [
    i8 0, label %sw.bb31.return.sink.split.i_crit_edge
    i8 2, label %sw.bb31.return.sink.split.i_crit_edge87
  ]

sw.bb31.return.sink.split.i_crit_edge87:          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

sw.bb31.return.sink.split.i_crit_edge:            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

sw.bb31.sw.epilog37_crit_edge:                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

return.sink.split.i:                              ; preds = %sw.bb31.return.sink.split.i_crit_edge, %sw.bb31.return.sink.split.i_crit_edge87
  %call.i = tail call zeroext i16 @nvmet_req_find_ns(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i75 = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i75, label %if.end.i77, label %return.sink.split.i.nvmet_handle_identify_desclist.exit.thread_crit_edge

return.sink.split.i.nvmet_handle_identify_desclist.exit.thread_crit_edge: ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_handle_identify_desclist.exit.thread

if.end.i77:                                       ; preds = %return.sink.split.i
  %ns.i76 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %197 = ptrtoint ptr %ns.i76 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ns.i76, align 8
  %uuid.i = getelementptr inbounds %struct.nvmet_ns, ptr %198, i32 0, i32 8
  %call1.i = tail call ptr @memchr_inv(ptr noundef %uuid.i, i32 noundef 0, i32 noundef 16) #13
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i77.if.end10.i_crit_edge, label %if.then3.i

if.end.i77.if.end10.i_crit_edge:                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i77
  %199 = ptrtoint ptr %ns.i76 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ns.i76, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i.i) #13
  %201 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i.i, i32 0, i32 1
  %202 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i.i, i32 0, i32 2
  %203 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 3, ptr %desc.i.i, align 2
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 16, ptr %201, align 1
  %205 = ptrtoint ptr %202 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %202, align 2
  %call.i.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %desc.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i78 = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i78, label %if.end.i.i, label %if.then3.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge

if.then3.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit.thread.i

if.end.i.i:                                       ; preds = %if.then3.i
  %uuid5.i = getelementptr inbounds %struct.nvmet_ns, ptr %200, i32 0, i32 8
  %call1.i.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 4, ptr noundef %uuid5.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i.i)
  %tobool2.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %nvmet_copy_ns_identifier.exit.i, label %if.end.i.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge

if.end.i.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit.thread.i

nvmet_copy_ns_identifier.exit.thread.i:           ; preds = %if.end.i.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge, %if.then3.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i16 [ %call1.i.i, %if.end.i.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge ], [ %call.i.i, %if.then3.i.nvmet_copy_ns_identifier.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i.i) #13
  br label %nvmet_handle_identify_desclist.exit.thread

nvmet_copy_ns_identifier.exit.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %nvmet_copy_ns_identifier.exit.i, %if.end.i77.if.end10.i_crit_edge
  %off.1.i = phi i32 [ 0, %if.end.i77.if.end10.i_crit_edge ], [ 20, %nvmet_copy_ns_identifier.exit.i ]
  %206 = ptrtoint ptr %ns.i76 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ns.i76, align 8
  %nguid.i79 = getelementptr inbounds %struct.nvmet_ns, ptr %207, i32 0, i32 7
  %call12.i80 = call ptr @memchr_inv(ptr noundef %nguid.i79, i32 noundef 0, i32 noundef 16) #13
  %tobool13.not.i = icmp eq ptr %call12.i80, null
  br i1 %tobool13.not.i, label %if.end10.i.if.end21.i_crit_edge, label %if.then14.i

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.end10.i
  %208 = ptrtoint ptr %ns.i76 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ns.i76, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i46.i) #13
  %210 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i46.i, i32 0, i32 1
  %211 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i46.i, i32 0, i32 2
  %212 = ptrtoint ptr %desc.i46.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 2, ptr %desc.i46.i, align 2
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 16, ptr %210, align 1
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %211, align 2
  %call.i47.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %off.1.i, ptr noundef nonnull %desc.i46.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i47.i)
  %tobool.not.i48.i = icmp eq i16 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i52.i, label %if.then14.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge

if.then14.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit56.thread.i

if.end.i52.i:                                     ; preds = %if.then14.i
  %nguid16.i = getelementptr inbounds %struct.nvmet_ns, ptr %209, i32 0, i32 7
  %add.i49.i = add nuw nsw i32 %off.1.i, 4
  %call1.i50.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %add.i49.i, ptr noundef %nguid16.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i50.i)
  %tobool2.not.i51.i = icmp eq i16 %call1.i50.i, 0
  br i1 %tobool2.not.i51.i, label %nvmet_copy_ns_identifier.exit56.i, label %if.end.i52.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge

if.end.i52.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit56.thread.i

nvmet_copy_ns_identifier.exit56.thread.i:         ; preds = %if.end.i52.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge, %if.then14.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge
  %retval.0.i55.ph.i = phi i16 [ %call1.i50.i, %if.end.i52.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge ], [ %call.i47.i, %if.then14.i.nvmet_copy_ns_identifier.exit56.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i46.i) #13
  br label %nvmet_handle_identify_desclist.exit.thread

nvmet_copy_ns_identifier.exit56.i:                ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  %add6.i53.i = add nuw nsw i32 %off.1.i, 20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i46.i) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %nvmet_copy_ns_identifier.exit56.i, %if.end10.i.if.end21.i_crit_edge
  %off.3.i = phi i32 [ %off.1.i, %if.end10.i.if.end21.i_crit_edge ], [ %add6.i53.i, %nvmet_copy_ns_identifier.exit56.i ]
  %215 = ptrtoint ptr %ns.i76 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ns.i76, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i57.i) #13
  %217 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i57.i, i32 0, i32 1
  %218 = getelementptr inbounds %struct.nvme_ns_id_desc, ptr %desc.i57.i, i32 0, i32 2
  %219 = ptrtoint ptr %desc.i57.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 4, ptr %desc.i57.i, align 2
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %217, align 1
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %218, align 2
  %call.i58.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %off.3.i, ptr noundef nonnull %desc.i57.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i58.i)
  %tobool.not.i59.i = icmp eq i16 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i63.i, label %if.end21.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge

if.end21.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit67.thread.i

if.end.i63.i:                                     ; preds = %if.end21.i
  %csi.i81 = getelementptr inbounds %struct.nvmet_ns, ptr %216, i32 0, i32 23
  %add.i60.i = add nuw nsw i32 %off.3.i, 4
  %call1.i61.i = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef %add.i60.i, ptr noundef %csi.i81, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i61.i)
  %tobool2.not.i62.i = icmp eq i16 %call1.i61.i, 0
  br i1 %tobool2.not.i62.i, label %if.end26.i84, label %if.end.i63.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge

if.end.i63.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge: ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nvmet_copy_ns_identifier.exit67.thread.i

nvmet_copy_ns_identifier.exit67.thread.i:         ; preds = %if.end.i63.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge, %if.end21.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge
  %retval.0.i66.ph.i = phi i16 [ %call1.i61.i, %if.end.i63.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge ], [ %call.i58.i, %if.end21.i.nvmet_copy_ns_identifier.exit67.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i57.i) #13
  br label %nvmet_handle_identify_desclist.exit.thread

if.end26.i84:                                     ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #15
  %add6.i64.i = add nuw nsw i32 %off.3.i, 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i57.i) #13
  %sg.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 5
  %222 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sg.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %224 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %sg_cnt.i, align 8
  %sub.i = sub nuw nsw i32 4091, %off.3.i
  %call27.i = call i32 @sg_zero_buffer(ptr noundef %223, i32 noundef %225, i32 noundef %sub.i, i32 noundef %add6.i64.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %sub.i)
  %cmp.not.i82 = icmp eq i32 %call27.i, %sub.i
  %spec.select.i83 = select i1 %cmp.not.i82, i16 0, i16 16390
  br label %nvmet_handle_identify_desclist.exit.thread

nvmet_handle_identify_desclist.exit.thread:       ; preds = %if.end26.i84, %nvmet_copy_ns_identifier.exit67.thread.i, %nvmet_copy_ns_identifier.exit56.thread.i, %nvmet_copy_ns_identifier.exit.thread.i, %return.sink.split.i.nvmet_handle_identify_desclist.exit.thread_crit_edge
  %status.0.i85 = phi i16 [ %call.i, %return.sink.split.i.nvmet_handle_identify_desclist.exit.thread_crit_edge ], [ %spec.select.i83, %if.end26.i84 ], [ %retval.0.i.ph.i, %nvmet_copy_ns_identifier.exit.thread.i ], [ %retval.0.i55.ph.i, %nvmet_copy_ns_identifier.exit56.thread.i ], [ %retval.0.i66.ph.i, %nvmet_copy_ns_identifier.exit67.thread.i ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0.i85) #13
  br label %return

sw.epilog37:                                      ; preds = %sw.bb31.sw.epilog37_crit_edge, %sw.bb24.sw.epilog37_crit_edge, %sw.bb17.sw.epilog37_crit_edge, %sw.bb11.sw.epilog37_crit_edge, %sw.bb4.sw.epilog37_crit_edge, %sw.bb.sw.epilog37_crit_edge, %if.end.sw.epilog37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_req_cns_error_complete.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_execute_identify, %if.then.i73)) #13
          to label %nvmet_req_cns_error_complete.exit [label %if.then.i73], !srcloc !37

if.then.i73:                                      ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #15
  %226 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %req, align 8
  %cns.i = getelementptr inbounds %struct.nvme_identify, ptr %227, i32 0, i32 6
  %228 = ptrtoint ptr %cns.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %cns.i, align 8
  %conv.i71 = zext i8 %229 to i32
  %sq.i72 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %230 = ptrtoint ptr %sq.i72 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sq.i72, align 8
  %qid.i = getelementptr inbounds %struct.nvmet_sq, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %qid.i, align 4
  %conv3.i = zext i16 %233 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_req_cns_error_complete.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.14, i32 noundef %conv.i71, i32 noundef %conv3.i) #13
  br label %nvmet_req_cns_error_complete.exit

nvmet_req_cns_error_complete.exit:                ; preds = %if.then.i73, %sw.epilog37
  %error_loc.i74 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %234 = ptrtoint ptr %error_loc.i74 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 40, ptr %error_loc.i74, align 4
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 16386) #13
  br label %return

return:                                           ; preds = %nvmet_req_cns_error_complete.exit, %nvmet_handle_identify_desclist.exit.thread, %nvmet_execute_identify_nslist.exit, %sw.bb21, %nvmet_execute_identify_ctrl.exit, %sw.bb8, %nvmet_execute_identify_ns.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_abort(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #13
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cqe.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %1, align 8
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_report_invalid_opcode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_req_find_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_changed(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_file_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_bdev_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_zero_sgl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_identify_cns_cs_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_identify_cns_cs_ctrl(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_revalidate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_bdev_set_limits(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_and_pad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_zero_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/admin-cmd.c", i32 1003, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nvmet_execute_keep_alive.__UNIQUE_ID_ddebug289, !1, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/admin-cmd.c", i32 764, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvmet_write_protect_flush_sync._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvmet_write_protect_flush_sync._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/admin-cmd.c", i32 339, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvmet_execute_get_log_page.__UNIQUE_ID_ddebug286, !13, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/nvme/target/admin-cmd.c", i32 373, i32 10}
!19 = distinct !{null, !20, !"buf_size", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/admin-cmd.c", i32 575, i32 19}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/nvmet.h", i32 657, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nvmet_req_cns_error_complete.__UNIQUE_ID_ddebug285, !22, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!26 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148978161, i64 2148978166, i64 2148978179, i64 2148978223, i64 2148978257, i64 2148978278}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"auto-init"}
