; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/passthru.c_pt.bc'
source_filename = "../drivers/nvme/target/passthru.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.88, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.88 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.nvme_features = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%struct.nvme_identify = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, [3 x i8], i8, [4 x i32] }
%struct.nvme_feat_host_behavior = type { i8, [511 x i8] }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.nvme_ns = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.kref, ptr, i32, i16, i16, i32, i8, i64, i32, i32, %struct.cdev, %struct.device, %struct.nvme_fault_inject }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_id_ctrl = type { i16, i16, [20 x i8], [40 x i8], [8 x i8], i8, [3 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [11 x i8], i8, [16 x i8], i16, i16, i16, [122 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, [16 x i8], [16 x i8], i32, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, [4 x i8], i8, i8, i32, i32, [160 x i8], i8, i8, i16, i32, i16, i16, i8, i8, i16, i16, i8, i8, i16, [2 x i8], i32, i32, [224 x i8], [256 x i8], [768 x i8], i32, i32, i16, i8, i8, [244 x i8], [32 x %struct.nvme_id_power_state], [1024 x i8] }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvme_id_ns = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, i16, [18 x i8], i32, [3 x i8], i8, i16, i16, [16 x i8], [8 x i8], [16 x %struct.nvme_lbaf], [192 x i8], [3712 x i8] }
%struct.nvme_lbaf = type { i16, i8, i8 }

@__UNIQUE_ID_import_ns333 = internal constant [37 x i8] c"nvmet.import_ns=NVME_TARGET_PASSTHRU\00", section ".modinfo", align 1
@nvmet_passthru_ctrl_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016nvmet: cannot enable both passthru and regular namespaces for a single subsystem\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_passthru_ctrl_enable\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/nvme/target/passthru.c\00", [33 x i8] zeroinitializer }, align 32
@nvmet_passthru_ctrl_enable._entry_ptr = internal global ptr @nvmet_passthru_ctrl_enable._entry, section ".printk_index", align 4
@nvmet_passthru_ctrl_enable._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvmet: failed to open nvme controller %s\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmet_passthru_ctrl_enable._entry_ptr.5 = internal global ptr @nvmet_passthru_ctrl_enable._entry.3, section ".printk_index", align 4
@passthru_subsystems = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_ctrl_enable._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014nvmet: nvme controller version is too old: %llu.%llu.%llu, advertising 1.2.1\0A\00", [48 x i8] zeroinitializer }, align 32
@nvmet_passthru_ctrl_enable._entry_ptr.8 = internal global ptr @nvmet_passthru_ctrl_enable._entry.6, section ".printk_index", align 4
@nvmet_passthru_set_host_behaviour._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014nvmet: target host has requested different behaviour from the local host\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nvmet_passthru_set_host_behaviour\00", [62 x i8] zeroinitializer }, align 32
@nvmet_passthru_set_host_behaviour._entry_ptr = internal global ptr @nvmet_passthru_set_host_behaviour._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvmet_passthru_execute_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvmet: failed to get passthru ns nsid:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_passthru_execute_cmd\00", [37 x i8] zeroinitializer }, align 32
@nvmet_passthru_execute_cmd._entry_ptr = internal global ptr @nvmet_passthru_execute_cmd._entry, section ".printk_index", align 4
@nvmet_passthru_execute_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&req->p.work)\00", [32 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"passthru_subsystems.xa_lock\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 6, i64 9, i64 10, i64 12, i64 24]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 11, i64 15, i64 22, i64 129]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 11, i64 15, i64 129]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.18 = internal global [82 x i64] [i64 80, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 10, i64 12, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22, i64 23, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 523, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 535, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"passthru_subsystems\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 555, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 330, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 245, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 282, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [34 x i8] c"../drivers/nvme/target/passthru.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 21, i32 8 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_import_ns333, ptr @nvmet_passthru_ctrl_enable._entry, ptr @nvmet_passthru_ctrl_enable._entry.3, ptr @nvmet_passthru_ctrl_enable._entry.6, ptr @nvmet_passthru_ctrl_enable._entry_ptr, ptr @nvmet_passthru_ctrl_enable._entry_ptr.5, ptr @nvmet_passthru_ctrl_enable._entry_ptr.8, ptr @nvmet_passthru_execute_cmd._entry, ptr @nvmet_passthru_execute_cmd._entry_ptr, ptr @nvmet_passthru_set_host_behaviour._entry, ptr @nvmet_passthru_set_host_behaviour._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @passthru_subsystems, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nvmet_passthru_execute_cmd.__key, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_ctrl_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_ctrl_enable._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @passthru_subsystems to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_ctrl_enable._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_set_host_behaviour._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_execute_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_execute_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvmet_passthrough_override_cap(ptr nocapture noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 8
  %passthru_ctrl = getelementptr inbounds %struct.nvmet_subsys, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %passthru_ctrl, align 4
  %ctrl_config.i = getelementptr inbounds %struct.nvme_ctrl, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %ctrl_config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_config.i, align 4
  %and.i = and i32 %5, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 96
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cap = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cap, align 8
  %and = and i64 %7, -8796093022209
  store i64 %and, ptr %cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_passthru_io_cmd(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %flags = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 8
  %switch.tableidx = add i8 %6, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 9
  br i1 %7, label %switch.hole_check, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %use_workqueue.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %use_workqueue.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %use_workqueue.i, align 8
  %execute.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %9 = ptrtoint ptr %execute.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute.i, align 4
  br label %return

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 275, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.hole_check.return_crit_edge

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

return:                                           ; preds = %switch.hole_check.return_crit_edge, %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog ], [ 2, %entry.return_crit_edge ], [ 16385, %switch.hole_check.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_passthru_admin_cmd(ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %flags = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %6)
  %cmp = icmp ugt i8 %6, -65
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %use_workqueue.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %7 = ptrtoint ptr %use_workqueue.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %use_workqueue.i, align 8
  %execute.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %8 = ptrtoint ptr %execute.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute.i, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.default51 [
    i8 12, label %sw.bb
    i8 24, label %sw.bb9
    i8 9, label %sw.bb11
    i8 10, label %sw.bb18
    i8 6, label %sw.bb25
    i8 2, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %10 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvmet_execute_async_event, ptr %execute, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %execute10 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %11 = ptrtoint ptr %execute10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nvmet_execute_keep_alive, ptr %execute10, align 4
  br label %return

sw.bb11:                                          ; preds = %if.end5
  %fid = getelementptr inbounds %struct.nvme_features, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fid, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %14, label %sw.default [
    i32 11, label %sw.bb11.sw.bb13_crit_edge
    i32 15, label %sw.bb11.sw.bb13_crit_edge84
    i32 7, label %sw.bb11.sw.bb13_crit_edge85
    i32 129, label %sw.bb11.sw.bb13_crit_edge86
    i32 22, label %sw.bb15
  ]

sw.bb11.sw.bb13_crit_edge86:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.bb11.sw.bb13_crit_edge85:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.bb11.sw.bb13_crit_edge84:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.bb11.sw.bb13_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb11.sw.bb13_crit_edge, %sw.bb11.sw.bb13_crit_edge84, %sw.bb11.sw.bb13_crit_edge85, %sw.bb11.sw.bb13_crit_edge86
  %execute14 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %16 = ptrtoint ptr %execute14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvmet_execute_set_features, ptr %execute14, align 4
  br label %return

sw.bb15:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %execute16 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %17 = ptrtoint ptr %execute16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nvmet_passthru_set_host_behaviour, ptr %execute16, align 4
  br label %return

sw.default:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc zeroext i16 @nvmet_passthru_get_set_features(ptr noundef %req)
  br label %return

sw.bb18:                                          ; preds = %if.end5
  %fid20 = getelementptr inbounds %struct.nvme_features, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %fid20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fid20, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %20, label %sw.default23 [
    i32 11, label %sw.bb18.sw.bb21_crit_edge
    i32 15, label %sw.bb18.sw.bb21_crit_edge87
    i32 7, label %sw.bb18.sw.bb21_crit_edge88
    i32 129, label %sw.bb18.sw.bb21_crit_edge89
  ]

sw.bb18.sw.bb21_crit_edge89:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

sw.bb18.sw.bb21_crit_edge88:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

sw.bb18.sw.bb21_crit_edge87:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

sw.bb18.sw.bb21_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb18.sw.bb21_crit_edge, %sw.bb18.sw.bb21_crit_edge87, %sw.bb18.sw.bb21_crit_edge88, %sw.bb18.sw.bb21_crit_edge89
  %execute22 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %22 = ptrtoint ptr %execute22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nvmet_execute_get_features, ptr %execute22, align 4
  br label %return

sw.default23:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call fastcc zeroext i16 @nvmet_passthru_get_set_features(ptr noundef %req)
  br label %return

sw.bb25:                                          ; preds = %if.end5
  %cns = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %cns to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cns, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %24, label %sw.default47 [
    i8 1, label %sw.bb28
    i8 6, label %sw.bb30
    i8 0, label %sw.bb36
    i8 5, label %sw.bb39
  ]

sw.bb28:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %execute29 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %26 = ptrtoint ptr %execute29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute29, align 4
  %use_workqueue = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %27 = ptrtoint ptr %use_workqueue to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %use_workqueue, align 8
  br label %return

sw.bb30:                                          ; preds = %sw.bb25
  %csi = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %csi to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %csi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cond53 = icmp eq i8 %29, 2
  br i1 %cond53, label %sw.bb33, label %sw.bb30.return_crit_edge

sw.bb30.return_crit_edge:                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb33:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %execute34 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %30 = ptrtoint ptr %execute34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute34, align 4
  %use_workqueue35 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %31 = ptrtoint ptr %use_workqueue35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %use_workqueue35, align 8
  br label %return

sw.bb36:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %execute37 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %32 = ptrtoint ptr %execute37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute37, align 4
  %use_workqueue38 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %33 = ptrtoint ptr %use_workqueue38 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %use_workqueue38, align 8
  br label %return

sw.bb39:                                          ; preds = %sw.bb25
  %csi41 = getelementptr inbounds %struct.nvme_identify, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %csi41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %csi41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cond = icmp eq i8 %35, 2
  br i1 %cond, label %sw.bb43, label %sw.bb39.return_crit_edge

sw.bb39.return_crit_edge:                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb43:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %execute44 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %36 = ptrtoint ptr %execute44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute44, align 4
  %use_workqueue45 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %37 = ptrtoint ptr %use_workqueue45 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %use_workqueue45, align 8
  br label %return

sw.default47:                                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %use_workqueue.i80 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %38 = ptrtoint ptr %use_workqueue.i80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %use_workqueue.i80, align 8
  %execute.i81 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %39 = ptrtoint ptr %execute.i81 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute.i81, align 4
  br label %return

sw.bb49:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %use_workqueue.i82 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %40 = ptrtoint ptr %use_workqueue.i82 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %use_workqueue.i82, align 8
  %execute.i83 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %41 = ptrtoint ptr %execute.i83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute.i83, align 4
  br label %return

sw.default51:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call zeroext i16 @nvmet_report_invalid_opcode(ptr noundef %req) #8
  br label %return

return:                                           ; preds = %sw.default51, %sw.bb49, %sw.default47, %sw.bb43, %sw.bb39.return_crit_edge, %sw.bb36, %sw.bb33, %sw.bb30.return_crit_edge, %sw.bb28, %sw.default23, %sw.bb21, %sw.default, %sw.bb15, %sw.bb13, %sw.bb9, %sw.bb, %if.then4, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %if.then4 ], [ %call52, %sw.default51 ], [ 0, %sw.bb49 ], [ 0, %sw.default47 ], [ 0, %sw.bb43 ], [ 0, %sw.bb36 ], [ 0, %sw.bb33 ], [ 0, %sw.bb28 ], [ %call24, %sw.default23 ], [ 0, %sw.bb21 ], [ %call17, %sw.default ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ 2, %entry.return_crit_edge ], [ 16385, %sw.bb30.return_crit_edge ], [ 16385, %sw.bb39.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_async_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_keep_alive(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_set_features(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_passthru_set_host_behaviour(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %passthru_ctrl = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %passthru_ctrl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1024) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_complete_req_crit_edge, label %if.end

entry.out_complete_req_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_complete_req

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nvme_get_features(ptr noundef %7, i32 noundef 22, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 512, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_free_host_crit_edge

if.end.out_free_host_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_host

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.nvme_feat_host_behavior, ptr %call7.i.i, i32 1
  %call6 = tail call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %req, i32 noundef 0, ptr noundef %arrayidx, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %tobool7.not = icmp eq i16 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_free_host_crit_edge

if.end5.out_free_host_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_host

if.end9:                                          ; preds = %if.end5
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(512) %call7.i.i, ptr noundef dereferenceable(512) %arrayidx, i32 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end9.out_free_host_crit_edge, label %do.end

if.end9.out_free_host_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_host

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %out_free_host

out_free_host:                                    ; preds = %do.end, %if.end9.out_free_host_crit_edge, %if.end5.out_free_host_crit_edge, %if.end.out_free_host_crit_edge
  %status.0 = phi i16 [ 6, %if.end.out_free_host_crit_edge ], [ %call6, %if.end5.out_free_host_crit_edge ], [ 6, %do.end ], [ 0, %if.end9.out_free_host_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out_complete_req

out_complete_req:                                 ; preds = %out_free_host, %entry.out_complete_req_crit_edge
  %status.1 = phi i16 [ %status.0, %out_free_host ], [ 6, %entry.out_complete_req_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.1) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @nvmet_passthru_get_set_features(ptr nocapture noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %fid = getelementptr inbounds %struct.nvme_features, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fid, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %4, label %entry.return_crit_edge [
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge4
    i32 3, label %entry.sw.bb1_crit_edge5
    i32 4, label %entry.sw.bb1_crit_edge6
    i32 5, label %entry.sw.bb1_crit_edge7
    i32 6, label %entry.sw.bb1_crit_edge8
    i32 10, label %entry.sw.bb1_crit_edge9
    i32 12, label %entry.sw.bb1_crit_edge10
    i32 14, label %entry.sw.bb1_crit_edge11
    i32 16, label %entry.sw.bb1_crit_edge12
    i32 17, label %entry.sw.bb1_crit_edge13
    i32 18, label %entry.sw.bb1_crit_edge14
    i32 19, label %entry.sw.bb1_crit_edge15
    i32 20, label %entry.sw.bb1_crit_edge16
    i32 22, label %entry.sw.bb1_crit_edge17
    i32 23, label %entry.sw.bb1_crit_edge18
    i32 192, label %entry.sw.bb1_crit_edge19
    i32 193, label %entry.sw.bb1_crit_edge20
    i32 194, label %entry.sw.bb1_crit_edge21
    i32 195, label %entry.sw.bb1_crit_edge22
    i32 196, label %entry.sw.bb1_crit_edge23
    i32 197, label %entry.sw.bb1_crit_edge24
    i32 198, label %entry.sw.bb1_crit_edge25
    i32 199, label %entry.sw.bb1_crit_edge26
    i32 200, label %entry.sw.bb1_crit_edge27
    i32 201, label %entry.sw.bb1_crit_edge28
    i32 202, label %entry.sw.bb1_crit_edge29
    i32 203, label %entry.sw.bb1_crit_edge30
    i32 204, label %entry.sw.bb1_crit_edge31
    i32 205, label %entry.sw.bb1_crit_edge32
    i32 206, label %entry.sw.bb1_crit_edge33
    i32 207, label %entry.sw.bb1_crit_edge34
    i32 208, label %entry.sw.bb1_crit_edge35
    i32 209, label %entry.sw.bb1_crit_edge36
    i32 210, label %entry.sw.bb1_crit_edge37
    i32 211, label %entry.sw.bb1_crit_edge38
    i32 212, label %entry.sw.bb1_crit_edge39
    i32 213, label %entry.sw.bb1_crit_edge40
    i32 214, label %entry.sw.bb1_crit_edge41
    i32 215, label %entry.sw.bb1_crit_edge42
    i32 216, label %entry.sw.bb1_crit_edge43
    i32 217, label %entry.sw.bb1_crit_edge44
    i32 218, label %entry.sw.bb1_crit_edge45
    i32 219, label %entry.sw.bb1_crit_edge46
    i32 220, label %entry.sw.bb1_crit_edge47
    i32 221, label %entry.sw.bb1_crit_edge48
    i32 222, label %entry.sw.bb1_crit_edge49
    i32 223, label %entry.sw.bb1_crit_edge50
    i32 224, label %entry.sw.bb1_crit_edge51
    i32 225, label %entry.sw.bb1_crit_edge52
    i32 226, label %entry.sw.bb1_crit_edge53
    i32 227, label %entry.sw.bb1_crit_edge54
    i32 228, label %entry.sw.bb1_crit_edge55
    i32 229, label %entry.sw.bb1_crit_edge56
    i32 230, label %entry.sw.bb1_crit_edge57
    i32 231, label %entry.sw.bb1_crit_edge58
    i32 232, label %entry.sw.bb1_crit_edge59
    i32 233, label %entry.sw.bb1_crit_edge60
    i32 234, label %entry.sw.bb1_crit_edge61
    i32 235, label %entry.sw.bb1_crit_edge62
    i32 236, label %entry.sw.bb1_crit_edge63
    i32 237, label %entry.sw.bb1_crit_edge64
    i32 238, label %entry.sw.bb1_crit_edge65
    i32 239, label %entry.sw.bb1_crit_edge66
    i32 240, label %entry.sw.bb1_crit_edge67
    i32 241, label %entry.sw.bb1_crit_edge68
    i32 242, label %entry.sw.bb1_crit_edge69
    i32 243, label %entry.sw.bb1_crit_edge70
    i32 244, label %entry.sw.bb1_crit_edge71
    i32 245, label %entry.sw.bb1_crit_edge72
    i32 246, label %entry.sw.bb1_crit_edge73
    i32 247, label %entry.sw.bb1_crit_edge74
    i32 248, label %entry.sw.bb1_crit_edge75
    i32 249, label %entry.sw.bb1_crit_edge76
    i32 250, label %entry.sw.bb1_crit_edge77
    i32 251, label %entry.sw.bb1_crit_edge78
    i32 252, label %entry.sw.bb1_crit_edge79
    i32 253, label %entry.sw.bb1_crit_edge80
    i32 254, label %entry.sw.bb1_crit_edge81
    i32 255, label %entry.sw.bb1_crit_edge82
  ]

entry.sw.bb1_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge4, %entry.sw.bb1_crit_edge5, %entry.sw.bb1_crit_edge6, %entry.sw.bb1_crit_edge7, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30, %entry.sw.bb1_crit_edge31, %entry.sw.bb1_crit_edge32, %entry.sw.bb1_crit_edge33, %entry.sw.bb1_crit_edge34, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36, %entry.sw.bb1_crit_edge37, %entry.sw.bb1_crit_edge38, %entry.sw.bb1_crit_edge39, %entry.sw.bb1_crit_edge40, %entry.sw.bb1_crit_edge41, %entry.sw.bb1_crit_edge42, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44, %entry.sw.bb1_crit_edge45, %entry.sw.bb1_crit_edge46, %entry.sw.bb1_crit_edge47, %entry.sw.bb1_crit_edge48, %entry.sw.bb1_crit_edge49, %entry.sw.bb1_crit_edge50, %entry.sw.bb1_crit_edge51, %entry.sw.bb1_crit_edge52, %entry.sw.bb1_crit_edge53, %entry.sw.bb1_crit_edge54, %entry.sw.bb1_crit_edge55, %entry.sw.bb1_crit_edge56, %entry.sw.bb1_crit_edge57, %entry.sw.bb1_crit_edge58, %entry.sw.bb1_crit_edge59, %entry.sw.bb1_crit_edge60, %entry.sw.bb1_crit_edge61, %entry.sw.bb1_crit_edge62, %entry.sw.bb1_crit_edge63, %entry.sw.bb1_crit_edge64, %entry.sw.bb1_crit_edge65, %entry.sw.bb1_crit_edge66, %entry.sw.bb1_crit_edge67, %entry.sw.bb1_crit_edge68, %entry.sw.bb1_crit_edge69, %entry.sw.bb1_crit_edge70, %entry.sw.bb1_crit_edge71, %entry.sw.bb1_crit_edge72, %entry.sw.bb1_crit_edge73, %entry.sw.bb1_crit_edge74, %entry.sw.bb1_crit_edge75, %entry.sw.bb1_crit_edge76, %entry.sw.bb1_crit_edge77, %entry.sw.bb1_crit_edge78, %entry.sw.bb1_crit_edge79, %entry.sw.bb1_crit_edge80, %entry.sw.bb1_crit_edge81, %entry.sw.bb1_crit_edge82
  %use_workqueue.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %use_workqueue.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %use_workqueue.i, align 8
  %execute.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %7 = ptrtoint ptr %execute.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvmet_passthru_execute_cmd, ptr %execute.i, align 4
  br label %return

return:                                           ; preds = %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.bb1 ], [ 16385, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_get_features(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_passthru_execute_cmd(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %passthru_ctrl = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %passthru_ctrl, align 4
  %qid = getelementptr inbounds %struct.nvmet_sq, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %qid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  br i1 %cmp.not, label %if.else, label %if.then, !prof !41

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 8
  %nsid3 = getelementptr inbounds %struct.nvme_common_command, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %nsid3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsid3, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call4 = tail call ptr @nvme_find_get_ns(ptr noundef %7, i32 noundef %14) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup, label %cleanup.thread, !prof !41

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %call4, i32 0, i32 2
  %15 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sq.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %io_timeout = getelementptr inbounds %struct.nvmet_subsys, ptr %20, i32 0, i32 25
  br label %if.end18

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %14) #13
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %7, i32 0, i32 6
  %admin_timeout = getelementptr inbounds %struct.nvmet_subsys, ptr %5, i32 0, i32 24
  br label %if.end18

if.end18:                                         ; preds = %if.else, %cleanup.thread
  %ns.0 = phi ptr [ null, %if.else ], [ %call4, %cleanup.thread ]
  %timeout.1.in = phi ptr [ %admin_timeout, %if.else ], [ %io_timeout, %cleanup.thread ]
  %q.1.in = phi ptr [ %admin_q, %if.else ], [ %queue, %cleanup.thread ]
  %21 = ptrtoint ptr %q.1.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %q.1 = load ptr, ptr %q.1.in, align 4
  %22 = ptrtoint ptr %timeout.1.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %timeout.1 = load i32, ptr %timeout.1.in, align 4
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req, align 8
  %call20 = tail call ptr @nvme_alloc_request(ptr noundef %q.1, ptr noundef %24, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.out_put_ns_crit_edge, label %if.end23

if.end18.out_put_ns_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_ns

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool24.not = icmp eq i32 %timeout.1, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %timeout26 = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 7
  %25 = ptrtoint ptr %timeout26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %timeout.1, ptr %timeout26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %sg_cnt = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %26 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  br i1 %tobool28.not, label %if.end27.if.end40_crit_edge, label %if.then29

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %cmp.i113 = icmp ugt i32 %27, 256
  br i1 %cmp.i113, label %if.then29.if.then38_crit_edge, label %if.end.i

if.then29.if.then38_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.end.i:                                         ; preds = %if.then29
  %transfer_len.i.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 11
  %28 = ptrtoint ptr %transfer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %29)
  %cmp.i.i = icmp ult i32 %29, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %27)
  %cmp1.i.i = icmp ult i32 %27, 9
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %inline_bvec.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 7
  tail call void @bio_init(ptr noundef %30, ptr noundef %inline_bvec.i, i16 noundef zeroext 8) #8
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %27 to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #8
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bio_put, ptr %bi_end_io.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then1.i
  %bio.0.i = phi ptr [ %30, %if.then1.i ], [ %call.i.i, %if.else.i ]
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 3
  %32 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %33, 255
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %bi_opf.i, align 8
  %35 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp843.i = icmp sgt i32 %36, 0
  br i1 %cmp843.i, label %for.body.preheader.i, label %if.end5.i.nvmet_passthru_map_sg.exit_crit_edge

if.end5.i.nvmet_passthru_map_sg.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvmet_passthru_map_sg.exit

for.body.preheader.i:                             ; preds = %if.end5.i
  %sg6.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 5
  %37 = ptrtoint ptr %sg6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg6.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.044.i = phi ptr [ %call17.i, %for.inc.i.for.body.i_crit_edge ], [ %38, %for.body.preheader.i ]
  %39 = ptrtoint ptr %sg.044.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg.044.i, align 4
  %and.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !42

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %41 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call20, align 8
  %and.i.i = and i32 %40, -4
  %43 = inttoptr i32 %and.i.i to ptr
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.044.i, i32 0, i32 2
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.044.i, i32 0, i32 1
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i, align 4
  %call11.i = tail call i32 @bio_add_pc_page(ptr noundef %42, ptr noundef %bio.0.i, ptr noundef %43, i32 noundef %45, i32 noundef %47) #8
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %49)
  %cmp13.i = icmp ult i32 %call11.i, %49
  br i1 %cmp13.i, label %if.then15.i, label %for.inc.i

if.then15.i:                                      ; preds = %sg_page.exit.i
  %50 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %cmp.not.i.i = icmp eq ptr %50, %bio.0.i
  br i1 %cmp.not.i.i, label %if.then15.i.if.then38_crit_edge, label %if.then.i.i

if.then15.i.if.then38_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bio_put(ptr noundef %bio.0.i) #8
  br label %if.then38

for.inc.i:                                        ; preds = %sg_page.exit.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %call17.i = tail call ptr @sg_next(ptr noundef %sg.044.i) #8
  %51 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg_cnt, align 8
  %cmp8.i = icmp slt i32 %inc.i, %52
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nvmet_passthru_map_sg.exit_crit_edge

for.inc.i.nvmet_passthru_map_sg.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvmet_passthru_map_sg.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nvmet_passthru_map_sg.exit:                       ; preds = %for.inc.i.nvmet_passthru_map_sg.exit_crit_edge, %if.end5.i.nvmet_passthru_map_sg.exit_crit_edge
  %.lcssa.i = phi i32 [ %36, %if.end5.i.nvmet_passthru_map_sg.exit_crit_edge ], [ %52, %for.inc.i.nvmet_passthru_map_sg.exit_crit_edge ]
  %conv.i.i = trunc i32 %.lcssa.i to i16
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 19
  %53 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i, ptr %nr_phys_segments.i.i, align 4
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_size.i.i, align 8
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 8
  %56 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %__data_len.i.i, align 8
  %biotail.i.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 11
  %57 = ptrtoint ptr %biotail.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bio.0.i, ptr %biotail.i.i, align 4
  %bio1.i.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 10
  %58 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %bio.0.i, ptr %bio1.i.i, align 8
  %bi_ioprio.i.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 4
  %59 = ptrtoint ptr %bi_ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bi_ioprio.i.i, align 2
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 24
  %61 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %ioprio.i.i, align 2
  br label %if.end40

if.then38:                                        ; preds = %if.then.i.i, %if.then15.i.if.then38_crit_edge, %if.then29.if.then38_crit_edge
  tail call void @blk_mq_free_request(ptr noundef %call20) #8
  br label %out_put_ns

if.end40:                                         ; preds = %nvmet_passthru_map_sg.exit, %if.end27.if.end40_crit_edge
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 8
  %call42 = tail call i32 @nvme_command_effects(ptr noundef %7, ptr noundef %ns.0, i8 noundef zeroext %65) #8
  %use_workqueue = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 3
  %66 = ptrtoint ptr %use_workqueue to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %use_workqueue, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool43.not = icmp eq i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool45.not = icmp eq i32 %call42, 0
  %or.cond = select i1 %tobool43.not, i1 %tobool45.not, i1 false
  br i1 %or.cond, label %if.else58, label %do.body47

do.body47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %68 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @nvmet_passthru_execute_cmd.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry51 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry51, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nvmet_passthru_execute_cmd_work, ptr %func, align 4
  %rq55 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 1
  %72 = ptrtoint ptr %rq55 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call20, ptr %rq55, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %73 = load ptr, ptr @system_wq, align 4
  %call.i.i114 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %work) #8
  br label %if.end59

if.else58:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %end_io_data = getelementptr inbounds %struct.request, ptr %call20, i32 0, i32 33
  %74 = ptrtoint ptr %end_io_data to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %req, ptr %end_io_data, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call20, i1 noundef zeroext false, ptr noundef nonnull @nvmet_passthru_req_done) #8
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %do.body47
  %tobool60.not = icmp eq ptr %ns.0, null
  br i1 %tobool60.not, label %if.end59.cleanup66_crit_edge, label %if.then61

if.end59.cleanup66_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvme_put_ns(ptr noundef nonnull %ns.0) #8
  br label %cleanup66

out_put_ns:                                       ; preds = %if.then38, %if.end18.out_put_ns_crit_edge
  %tobool63.not = icmp eq ptr %ns.0, null
  br i1 %tobool63.not, label %out_put_ns.out_crit_edge, label %if.then64

out_put_ns.out_crit_edge:                         ; preds = %out_put_ns
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then64:                                        ; preds = %out_put_ns
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvme_put_ns(ptr noundef nonnull %ns.0) #8
  br label %out

out:                                              ; preds = %if.then64, %out_put_ns.out_crit_edge, %cleanup
  %status.2 = phi i16 [ 16395, %cleanup ], [ 6, %if.then64 ], [ 6, %out_put_ns.out_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.2) #8
  br label %cleanup66

cleanup66:                                        ; preds = %out, %if.then61, %if.end59.cleanup66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_report_invalid_opcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_passthru_ctrl_enable(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %passthru_ctrl_path = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 22
  %0 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %passthru_ctrl_path, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %entry
  %passthru_ctrl = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 21
  %2 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %passthru_ctrl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %nr_namespaces = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 4
  %4 = ptrtoint ptr %nr_namespaces to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_namespaces, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %call8 = tail call ptr @filp_open(ptr noundef nonnull %1, i32 noundef 2, i16 noundef zeroext 0) #8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call8 to i32
  br label %out_unlock

if.end12:                                         ; preds = %if.end6
  %call13 = tail call ptr @nvme_ctrl_from_file(ptr noundef %call8) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %passthru_ctrl_path, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8) #13
  br label %out_put_file

if.end22:                                         ; preds = %if.end12
  %cntlid = getelementptr inbounds %struct.nvme_ctrl, ptr %call13, i32 0, i32 27
  %9 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cntlid, align 8
  %conv = zext i16 %10 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @passthru_subsystems) #8
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @passthru_subsystems, i32 noundef %conv, ptr noundef null, ptr noundef %subsys, i32 noundef 3264) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @passthru_subsystems) #8
  %11 = ptrtoint ptr %call.i to i32
  %and.i.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 2
  %cmp.i75 = icmp uge ptr %call.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i = and i1 %cmp.i75, %cmp.i.i
  br i1 %spec.select.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = ashr i32 %11, 2
  br label %out_put_file

if.end27:                                         ; preds = %if.end22
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %if.end30, label %if.end27.out_put_file_crit_edge

if.end27.out_put_file_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_file

if.end30:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %passthru_ctrl, align 4
  %vs = getelementptr inbounds %struct.nvme_ctrl, ptr %call13, i32 0, i32 48
  %13 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vs, align 8
  %conv32 = zext i32 %14 to i64
  %ver = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 12
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv32, ptr %ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66049, i32 %14)
  %cmp = icmp ult i32 %14, 66049
  br i1 %cmp, label %do.end38, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %conv32, 16
  %shr42 = lshr i64 %conv32, 8
  %and = and i64 %shr42, 255
  %and44 = and i64 %conv32, 255
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %shr, i64 noundef %and, i64 noundef %and44) #13
  %16 = ptrtoint ptr %ver to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 66049, ptr %ver, align 8
  br label %if.end47

if.end47:                                         ; preds = %do.end38, %if.end30.if.end47_crit_edge
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %call13, i32 0, i32 17
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 8
  %call.i77 = tail call ptr @get_device(ptr noundef %18) #8
  %19 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %passthru_ctrl, align 4
  %ops = getelementptr inbounds %struct.nvme_ctrl, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %module = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module, align 4
  tail call void @__module_get(ptr noundef %24) #8
  br label %out_put_file

out_put_file:                                     ; preds = %if.end47, %if.end27.out_put_file_crit_edge, %if.then25, %do.end18
  %ret.0 = phi i32 [ %shr.i, %if.then25 ], [ -22, %if.end27.out_put_file_crit_edge ], [ 0, %if.end47 ], [ -22, %do.end18 ]
  %call49 = tail call i32 @filp_close(ptr noundef %call8, ptr noundef null) #8
  br label %out_unlock

out_unlock:                                       ; preds = %out_put_file, %if.then10, %do.end, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.1 = phi i32 [ -22, %if.end.out_unlock_crit_edge ], [ -22, %do.end ], [ %6, %if.then10 ], [ %ret.0, %out_put_file ], [ -22, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_ctrl_from_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_passthru_ctrl_disable(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %passthru_ctrl.i = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 21
  %0 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %passthru_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__nvmet_passthru_ctrl_disable.exit_crit_edge, label %if.then.i

entry.__nvmet_passthru_ctrl_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nvmet_passthru_ctrl_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cntlid.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cntlid.i, align 8
  %conv.i = zext i16 %3 to i32
  %call.i = tail call ptr @xa_erase(ptr noundef nonnull @passthru_subsystems, i32 noundef %conv.i) #8
  %4 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %passthru_ctrl.i, align 4
  %ops.i = getelementptr inbounds %struct.nvme_ctrl, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %module.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %9) #8
  %10 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %passthru_ctrl.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i.i, align 8
  tail call void @put_device(ptr noundef %13) #8
  br label %__nvmet_passthru_ctrl_disable.exit

__nvmet_passthru_ctrl_disable.exit:               ; preds = %if.then.i, %entry.__nvmet_passthru_ctrl_disable.exit_crit_edge
  %14 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %passthru_ctrl.i, align 4
  %ver.i = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 12
  %15 = ptrtoint ptr %ver.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 66304, ptr %ver.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_passthru_subsys_free(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %passthru_ctrl.i = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 21
  %0 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %passthru_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__nvmet_passthru_ctrl_disable.exit_crit_edge, label %if.then.i

entry.__nvmet_passthru_ctrl_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nvmet_passthru_ctrl_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cntlid.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cntlid.i, align 8
  %conv.i = zext i16 %3 to i32
  %call.i = tail call ptr @xa_erase(ptr noundef nonnull @passthru_subsystems, i32 noundef %conv.i) #8
  %4 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %passthru_ctrl.i, align 4
  %ops.i = getelementptr inbounds %struct.nvme_ctrl, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %module.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %9) #8
  %10 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %passthru_ctrl.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i.i, align 8
  tail call void @put_device(ptr noundef %13) #8
  br label %__nvmet_passthru_ctrl_disable.exit

__nvmet_passthru_ctrl_disable.exit:               ; preds = %if.then.i, %entry.__nvmet_passthru_ctrl_disable.exit_crit_edge
  %14 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %passthru_ctrl.i, align 4
  %ver.i = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 12
  %15 = ptrtoint ptr %ver.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 66304, ptr %ver.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %passthru_ctrl_path = getelementptr inbounds %struct.nvmet_subsys, ptr %subsys, i32 0, i32 22
  %16 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %passthru_ctrl_path, align 8
  tail call void @kfree(ptr noundef %17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_get_features(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_from_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_find_get_ns(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_alloc_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_command_effects(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_passthru_execute_cmd_work(ptr noundef %w) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -236
  %rq1 = getelementptr i8, ptr %w, i32 -4
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 8
  %call = tail call i32 @nvme_execute_passthru_rq(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp2 = icmp eq i8 %5, 6
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %cns = getelementptr inbounds %struct.nvme_identify, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %cns to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cns, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %7, label %if.then.if.end12_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb7
  ]

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

sw.bb:                                            ; preds = %if.then
  %sq.i = getelementptr i8, ptr %w, i32 -228
  %9 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sq.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %passthru_ctrl.i = getelementptr inbounds %struct.nvmet_subsys, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %passthru_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %passthru_ctrl.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 4096) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.if.end12_crit_edge, label %if.end.i

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i)
  %tobool3.not.i = icmp eq i16 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out_free.i_crit_edge

if.end.i.out_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

if.end5.i:                                        ; preds = %if.end.i
  %cntlid.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %12, i32 0, i32 8
  %18 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cntlid.i, align 8
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #8
  %cntlid6.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %cntlid6.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %cntlid6.i, align 2
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 8
  %ver.i = getelementptr inbounds %struct.nvmet_subsys, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %ver.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ver.i, align 8
  %conv.i = trunc i64 %25 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %ver8.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %ver8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ver8.i, align 8
  %cap.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %12, i32 0, i32 4
  %28 = ptrtoint ptr %cap.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cap.i, align 8
  %shr.i = lshr i64 %29, 48
  %30 = trunc i64 %shr.i to i32
  %31 = and i32 %30, 15
  %max_segments.i = getelementptr inbounds %struct.nvme_ctrl, ptr %16, i32 0, i32 33
  %32 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_segments.i, align 4
  %shl.i = shl i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp.i = icmp eq i32 %shl.i, 0
  %max_hw_sectors9.i = getelementptr inbounds %struct.nvme_ctrl, ptr %16, i32 0, i32 32
  %34 = ptrtoint ptr %max_hw_sectors9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_hw_sectors9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp11.i = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %35) #8
  %spec.select.i = select i1 %cmp11.i, i32 %shl.i, i32 %36
  %cond23.i = select i1 %cmp.i, i32 %35, i32 %spec.select.i
  %37 = tail call i32 @llvm.umin.i32(i32 %cond23.i, i32 2048) #8
  %38 = call i32 @llvm.ctlz.i32(i32 %37, i1 false), !range !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond23.i)
  %cmp31.i = icmp eq i32 %cond23.i, 0
  %.op = sub nsw i32 31, %38
  %sub.i.i = select i1 %cmp31.i, i32 11, i32 %.op
  %39 = sub nsw i32 %sub.i.i, %31
  %40 = trunc i32 %39 to i8
  %conv61.i = add i8 %40, -3
  %mdts.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %mdts.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv61.i, ptr %mdts.i, align 1
  %acl.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 23
  %42 = ptrtoint ptr %acl.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %acl.i, align 2
  %aerl.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 24
  %43 = ptrtoint ptr %aerl.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %aerl.i, align 1
  %kas.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 42
  %44 = ptrtoint ptr %kas.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2560, ptr %kas.i, align 8
  %hmpre.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 34
  %45 = ptrtoint ptr %hmpre.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hmpre.i, align 8
  %hmmin.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 35
  %46 = ptrtoint ptr %hmmin.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %hmmin.i, align 4
  %sqes.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 55
  %47 = ptrtoint ptr %sqes.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sqes.i, align 8
  %49 = tail call i8 @llvm.umin.i8(i8 %48, i8 102) #8
  %50 = ptrtoint ptr %sqes.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %sqes.i, align 8
  %cqes.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 56
  %51 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cqes.i, align 1
  %53 = tail call i8 @llvm.umin.i8(i8 %52, i8 68) #8
  %54 = ptrtoint ptr %cqes.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %cqes.i, align 1
  %maxcmd.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 57
  %55 = ptrtoint ptr %maxcmd.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 4, ptr %maxcmd.i, align 2
  %fuses.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 60
  %56 = ptrtoint ptr %fuses.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %fuses.i, align 2
  %sgls.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 69
  %57 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16777216, ptr %sgls.i, align 8
  %ops.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %12, i32 0, i32 21
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 8
  %flags.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 4
  %and88.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  %spec.store.select.i = select i1 %tobool89.not.i, i32 16777216, i32 83886080
  %62 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.store.select.i, ptr %sgls.i, align 8
  %port.i = getelementptr i8, ptr %w, i32 68
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port.i, align 8
  %inline_data_size.i = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 13
  %65 = ptrtoint ptr %inline_data_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %inline_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool93.not.i = icmp eq i32 %66, 0
  br i1 %tobool93.not.i, label %if.end5.i.if.end97.i_crit_edge, label %if.then94.i

if.end5.i.if.end97.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97.i

if.then94.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %or96.i = or i32 %spec.store.select.i, 4096
  %67 = ptrtoint ptr %sgls.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or96.i, ptr %sgls.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then94.i, %if.end5.i.if.end97.i_crit_edge
  %subnqn.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 72
  %subsysnqn.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %12, i32 0, i32 24
  %68 = call ptr @memcpy(ptr %subnqn.i, ptr %subsysnqn.i, i32 256)
  %69 = ptrtoint ptr %inline_data_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %inline_data_size.i, align 4
  %add101.i = add i32 %70, 64
  %div1.i = lshr i32 %add101.i, 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %div1.i) #8
  %ioccsz.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 74
  %72 = ptrtoint ptr %ioccsz.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %ioccsz.i, align 8
  %iorcsz.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 75
  %73 = ptrtoint ptr %iorcsz.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16777216, ptr %iorcsz.i, align 4
  %74 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i, align 8
  %msdbd.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %msdbd.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msdbd.i, align 4
  %conv103.i = trunc i32 %77 to i8
  %msdbd104.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 78
  %78 = ptrtoint ptr %msdbd104.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv103.i, ptr %msdbd104.i, align 1
  %cmic.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %cmic.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cmic.i, align 4
  %81 = or i8 %80, 2
  store i8 %81, ptr %cmic.i, align 4
  %oncs.i = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i.i, i32 0, i32 59
  %82 = ptrtoint ptr %oncs.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %oncs.i, align 8
  %84 = and i16 %83, -8193
  store i16 %84, ptr %oncs.i, align 8
  %call111.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #8
  br label %out_free.i

out_free.i:                                       ; preds = %if.end97.i, %if.end.i.out_free.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end12

sw.bb7:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 4096) #11
  %tobool.not.i27 = icmp eq ptr %call7.i.i.i26, null
  br i1 %tobool.not.i27, label %sw.bb7.if.end12_crit_edge, label %if.end.i28

sw.bb7.if.end12_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i28:                                       ; preds = %sw.bb7
  %call1.i = tail call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call7.i.i.i26, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.not.i = icmp eq i16 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i28.out_free.i30_crit_edge

if.end.i28.out_free.i30_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i30

for.cond.preheader.i:                             ; preds = %if.end.i28
  %nlbaf.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i26, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.02.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvme_id_ns, ptr %call7.i.i.i26, i32 0, i32 34, i32 %i.02.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool6.not.i = icmp eq i16 %87, 0
  br i1 %tobool6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %89 = ptrtoint ptr %nlbaf.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nlbaf.i, align 1
  %conv.i29 = zext i8 %90 to i32
  %cmp.not.not.i = icmp ult i32 %i.02.i, %conv.i29
  br i1 %cmp.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %flbas.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i26, i32 0, i32 5
  %91 = ptrtoint ptr %flbas.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flbas.i, align 2
  %93 = and i8 %92, -17
  store i8 %93, ptr %flbas.i, align 2
  %mc.i = getelementptr inbounds %struct.nvme_id_ns, ptr %call7.i.i.i26, i32 0, i32 6
  %94 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %mc.i, align 1
  %call14.i = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call7.i.i.i26, i32 noundef 4096) #8
  br label %out_free.i30

out_free.i30:                                     ; preds = %for.end.i, %if.end.i28.out_free.i30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i26) #8
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  %95 = trunc i32 %call to i16
  %phi.cast = select i1 %cmp9, i16 6, i16 %95
  br label %if.end12

if.end12:                                         ; preds = %if.else, %out_free.i30, %sw.bb7.if.end12_crit_edge, %out_free.i, %sw.bb.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %status.0 = phi i16 [ 0, %if.then.if.end12_crit_edge ], [ %phi.cast, %if.else ], [ 0, %sw.bb.if.end12_crit_edge ], [ 0, %out_free.i ], [ 0, %sw.bb7.if.end12_crit_edge ], [ 0, %out_free.i30 ]
  %cqe = getelementptr i8, ptr %w, i32 -232
  %96 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cqe, align 4
  %result14 = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %98 = ptrtoint ptr %result14 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %result14, align 8
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %97, align 8
  tail call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %status.0) #8
  tail call void @blk_mq_free_request(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_passthru_req_done(ptr noundef %rq, i8 noundef zeroext %blk_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqe, align 4
  %result1 = getelementptr %struct.request, ptr %rq, i32 1, i32 2
  %4 = ptrtoint ptr %result1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %result1, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %3, align 8
  %status = getelementptr %struct.request, ptr %rq, i32 1, i32 5
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status, align 4
  tail call void @nvmet_req_complete(ptr noundef %1, i16 noundef zeroext %8) #8
  tail call void @blk_mq_free_request(ptr noundef %rq) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_put_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_execute_passthru_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_to_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_import_ns333, !1, !"__UNIQUE_ID_import_ns333", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/passthru.c", i32 16, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nvme/target/passthru.c", i32 523, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvmet_passthru_ctrl_enable._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvmet_passthru_ctrl_enable._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvme/target/passthru.c", i32 535, i32 3}
!10 = !{ptr @nvmet_passthru_ctrl_enable._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvmet_passthru_ctrl_enable._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/passthru.c", i32 555, i32 3}
!14 = !{ptr @nvmet_passthru_ctrl_enable._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvmet_passthru_ctrl_enable._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/passthru.c", i32 330, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvmet_passthru_set_host_behaviour._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvmet_passthru_set_host_behaviour._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/passthru.c", i32 245, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvmet_passthru_execute_cmd._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvmet_passthru_execute_cmd._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nvmet_passthru_execute_cmd.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/nvme/target/passthru.c", i32 282, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nvme/target/passthru.c", i32 21, i32 8}
!31 = !{ptr @passthru_subsystems, !30, !"passthru_subsystems", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2154440261, i64 2154440753, i64 2154440298, i64 2154440354, i64 2154440388, i64 2154440412, i64 2154440453, i64 2154440474, i64 2154440502, i64 2154440536}
!44 = !{i8 0, i8 2}
!45 = !{i32 20, i32 33}
