; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/multipath.c_pt.bc'
source_filename = "../drivers/nvme/host/multipath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.81 }
%union.anon.81 = type { ptr }
%struct.pr_ops = type opaque
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.82 }
%struct.atomic_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_subsystem = type { i32, %struct.device, %struct.kref, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, [223 x i8], [20 x i8], [40 x i8], [8 x i8], i8, i32, i16, i16, %struct.ida, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.nvme_ns = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.kref, ptr, i32, i16, i16, i32, i8, i64, i32, i32, %struct.cdev, %struct.device, %struct.nvme_fault_inject }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.nvme_ns_head = type { %struct.list_head, %struct.srcu_struct, ptr, i32, %struct.nvme_ns_ids, %struct.list_head, %struct.kref, i8, i32, ptr, %struct.cdev, %struct.device, ptr, %struct.bio_list, %struct.spinlock, %struct.work_struct, %struct.mutex, i32, [0 x ptr] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvme_ns_ids = type { [8 x i8], [16 x i8], %struct.uuid_t, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.bio_list = type { ptr, ptr }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvme_command = type { %union.anon.90 }
%union.anon.90 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.91 }
%struct.anon.91 = type { i64, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.nvme_ana_group_desc = type { i32, i32, i64, i8, [15 x i8], [0 x i32] }
%struct.nvme_id_ns = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, i16, [18 x i8], i32, [3 x i8], i8, i16, i16, [16 x i8], [8 x i8], [16 x %struct.nvme_lbaf], [192 x i8], [3712 x i8] }
%struct.nvme_lbaf = type { i16, i8, i8 }
%struct.nvme_ana_rsp_hdr = type { i64, i16, [3 x i16] }
%struct.nvme_id_ctrl = type { i16, i16, [20 x i8], [40 x i8], [8 x i8], i8, [3 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [11 x i8], i8, [16 x i8], i16, i16, i16, [122 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, [16 x i8], [16 x i8], i32, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, [4 x i8], i8, i8, i32, i32, [160 x i8], i8, i8, i16, i32, i16, i16, i8, i8, i16, i16, i8, i8, i16, [2 x i8], i32, i32, [224 x i8], [256 x i8], [768 x i8], i32, i32, i16, i8, i8, [244 x i8], [32 x %struct.nvme_id_power_state], [1024 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.84 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.86 = type { ptr }

@__param_str_multipath = internal constant [20 x i8] c"nvme_core.multipath\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@multipath = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_multipath = internal constant %struct.kernel_param { ptr @__param_str_multipath, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.81 { ptr @multipath } }, section "__param", align 4
@__UNIQUE_ID_multipathtype339 = internal constant [34 x i8] c"nvme_core.parmtype=multipath:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_multipath340 = internal constant [87 x i8] c"nvme_core.parm=multipath:turn on native support for multiple controllers per subsystem\00", section ".modinfo", align 1
@__param_str_iopolicy = internal constant [19 x i8] c"nvme_core.iopolicy\00", align 1
@__param_ops_iopolicy = internal constant %struct.kernel_param_ops { i32 0, ptr @nvme_set_iopolicy, ptr @nvme_get_iopolicy, ptr null }, align 4
@iopolicy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_iopolicy = internal constant %struct.kernel_param { ptr @__param_str_iopolicy, ptr null, ptr @__param_ops_iopolicy, i16 420, i8 -1, i8 0, %union.anon.81 { ptr @iopolicy } }, section "__param", align 4
@__UNIQUE_ID_iopolicy341 = internal constant [88 x i8] c"nvme_core.parm=iopolicy:Default multipath I/O policy; 'numa' (default) or 'round-robin'\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/nvme/host/multipath.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvme%dn%d\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme%dc%dn%d\00", [19 x i8] zeroinitializer }, align 32
@nvme_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_mpath_revalidate_paths.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nvme_find_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nvme_pr_ops = external dso_local constant %struct.pr_ops, align 1
@nvme_ns_head_ops = dso_local constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @nvme_ns_head_submit_bio, ptr @nvme_ns_head_open, ptr @nvme_ns_head_release, ptr null, ptr @nvme_ns_head_ioctl, ptr null, ptr null, ptr null, ptr @nvme_getgeo, ptr null, ptr null, ptr @nvme_ns_head_report_zones, ptr null, ptr null, ptr null, ptr @nvme_pr_ops, ptr null }, [60 x i8] zeroinitializer }, align 32
@nvme_mpath_alloc_disk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&head->lock\00", [20 x i8] zeroinitializer }, align 32
@nvme_mpath_alloc_disk.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&head->requeue_lock\00", [44 x i8] zeroinitializer }, align 32
@nvme_mpath_alloc_disk.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&head->requeue_work)\00", [57 x i8] zeroinitializer }, align 32
@nvme_mpath_alloc_disk.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iopolicy\00", [23 x i8] zeroinitializer }, align 32
@subsys_attr_iopolicy = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nvme_subsys_iopolicy_show, ptr @nvme_subsys_iopolicy_store }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ana_grpid\00", [22 x i8] zeroinitializer }, align 32
@dev_attr_ana_grpid = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ana_grpid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ana_state\00", [22 x i8] zeroinitializer }, align 32
@dev_attr_ana_state = dso_local global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ana_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvme_mpath_init_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl->ana_lock\00", [16 x i8] zeroinitializer }, align 32
@nvme_mpath_init_ctrl.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&ctrl->anatt_timer)\00", [43 x i8] zeroinitializer }, align 32
@nvme_mpath_init_ctrl.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ctrl->ana_work)\00", [61 x i8] zeroinitializer }, align 32
@nvme_mpath_init_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 879, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid MNAN value %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_mpath_init_identify\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_mpath_init_identify._entry_ptr = internal global ptr @nvme_mpath_init_identify._entry, section ".printk_index", align 4
@nvme_mpath_init_identify._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str, i32 894, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ANA log page size (%zd) larger than MDTS (%zd).\0A\00", [47 x i8] zeroinitializer }, align 32
@nvme_mpath_init_identify._entry_ptr.25 = internal global ptr @nvme_mpath_init_identify._entry.23, section ".printk_index", align 4
@nvme_mpath_init_identify._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str, i32 895, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disabling ANA support.\0A\00", [40 x i8] zeroinitializer }, align 32
@nvme_mpath_init_identify._entry_ptr.28 = internal global ptr @nvme_mpath_init_identify._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"numa\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"round-robin\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@nvme_iopolicy_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@__nvme_find_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nvme_ns_head_submit_bio._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nvme_ns_head_submit_bio = private unnamed_addr constant [24 x i8] c"nvme_ns_head_submit_bio\00", align 1
@nvme_ns_head_submit_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.nvme_ns_head_submit_bio, ptr @.str, i32 381, ptr @.str.34, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no usable path - requeuing I/O\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nvme_ns_head_submit_bio._entry_ptr = internal global ptr @nvme_ns_head_submit_bio._entry, section ".printk_index", align 4
@nvme_ns_head_submit_bio._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nvme_ns_head_submit_bio._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.nvme_ns_head_submit_bio, ptr @.str, i32 387, ptr @.str.34, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no available path - failing I/O\0A\00", [63 x i8] zeroinitializer }, align 32
@nvme_ns_head_submit_bio._entry_ptr.38 = internal global ptr @nvme_ns_head_submit_bio._entry.36, section ".printk_index", align 4
@__tracepoint_block_bio_remap = external dso_local global %struct.tracepoint, align 4
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_bio_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@nvme_available_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nvme_ana_state_names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"optimized\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-optimized\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inaccessible\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"persistent-loss\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@nvme_parse_ana_log.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_parse_ana_log.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_parse_ana_log.__already_done.50 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_parse_ana_log.__already_done.51 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_parse_ana_log.__already_done.52 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_parse_ana_log.__already_done.53 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_ns_id_attr_groups = external dso_local global [0 x ptr], align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ng%dn%d\00", [24 x i8] zeroinitializer }, align 32
@nvme_ns_head_chr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_ns_head_chr_ioctl, ptr null, ptr null, i32 0, ptr @nvme_ns_head_chr_open, ptr null, ptr @nvme_ns_head_chr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nvme_anatt_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 729, ptr @.str.57, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ANATT timeout, resetting controller.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_anatt_timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvme_anatt_timeout._entry_ptr = internal global ptr @nvme_anatt_timeout._entry, section ".printk_index", align 4
@nvme_read_ana_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str, i32 686, ptr @.str.34, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get ANA log: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_read_ana_log\00", [46 x i8] zeroinitializer }, align 32
@nvme_read_ana_log._entry_ptr = internal global ptr @nvme_read_ana_log._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nvme_update_ana_state.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.61, ptr @.str, ptr @.str.62, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvme_core\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_update_ana_state\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ANA group %d: %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"multipath\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 11, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"iopolicy\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 21, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 56, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 94, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 98, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 199, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 327, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"nvme_ns_head_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 427, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 500, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 502, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 503, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 513, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"subsys_attr_iopolicy\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 771, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"dev_attr_ana_grpid\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 779, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"dev_attr_ana_state\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 788, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 860, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 861, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 862, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 878, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 892, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 895, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 27, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 29, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 39, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"nvme_iopolicy_names\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 16, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 381, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 387, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 456, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 108, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 189, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 777, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant [21 x i8] c"nvme_ana_state_names\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 153, i32 20 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 154, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 155, i32 26 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 156, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 157, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 158, i32 31 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 159, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 469, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant [22 x i8] c"nvme_ns_head_chr_fops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 456, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 729, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 686, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [33 x i8] c"../drivers/nvme/host/multipath.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 649, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_iopolicy341, ptr @__UNIQUE_ID_multipath340, ptr @__UNIQUE_ID_multipathtype339, ptr @__param_iopolicy, ptr @__param_multipath, ptr @nvme_anatt_timeout._entry, ptr @nvme_anatt_timeout._entry_ptr, ptr @nvme_mpath_init_identify._entry, ptr @nvme_mpath_init_identify._entry.23, ptr @nvme_mpath_init_identify._entry.26, ptr @nvme_mpath_init_identify._entry_ptr, ptr @nvme_mpath_init_identify._entry_ptr.25, ptr @nvme_mpath_init_identify._entry_ptr.28, ptr @nvme_ns_head_submit_bio._entry, ptr @nvme_ns_head_submit_bio._entry.36, ptr @nvme_ns_head_submit_bio._entry_ptr, ptr @nvme_ns_head_submit_bio._entry_ptr.38, ptr @nvme_read_ana_log._entry, ptr @nvme_read_ana_log._entry_ptr, ptr @multipath, ptr @iopolicy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvme_ns_head_ops, ptr @nvme_mpath_alloc_disk.__key, ptr @.str.5, ptr @nvme_mpath_alloc_disk.__key.6, ptr @.str.7, ptr @nvme_mpath_alloc_disk.__key.8, ptr @.str.9, ptr @nvme_mpath_alloc_disk.__key.10, ptr @.str.11, ptr @subsys_attr_iopolicy, ptr @.str.12, ptr @dev_attr_ana_grpid, ptr @.str.13, ptr @dev_attr_ana_state, ptr @nvme_mpath_init_ctrl.__key, ptr @.str.14, ptr @nvme_mpath_init_ctrl.__key.15, ptr @.str.16, ptr @nvme_mpath_init_ctrl.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @nvme_iopolicy_names, ptr @nvme_ns_head_submit_bio._rs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @nvme_ns_head_submit_bio._rs.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @nvme_ana_state_names, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.54, ptr @nvme_ns_head_chr_fops, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopolicy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_alloc_disk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_alloc_disk.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_alloc_disk.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_alloc_disk.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsys_attr_iopolicy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ana_grpid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ana_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_ctrl.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_ctrl.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_identify._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_mpath_init_identify._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_iopolicy_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_submit_bio._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_submit_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_submit_bio._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_submit_bio._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ana_state_names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_ns_head_chr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_anatt_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_read_ana_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvme_mpath_default_iopolicy(ptr nocapture noundef writeonly %subsys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iopolicy, align 4
  %iopolicy = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 16
  %1 = ptrtoint ptr %iopolicy to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %iopolicy, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_unfreeze(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !167

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nsheads = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 6
  %1 = ptrtoint ptr %nsheads to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45 = load ptr, ptr %nsheads, align 4
  %cmp27.not46 = icmp eq ptr %.pn45, %nsheads
  br i1 %cmp27.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %if.end.for.body_crit_edge ]
  %disk = getelementptr i8, ptr %.pn47, i32 1116
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool30.not = icmp eq ptr %3, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %5) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp27.not = icmp eq ptr %.pn, %nsheads
  br i1 %cmp27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_wait_freeze(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !167

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nsheads = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 6
  %1 = ptrtoint ptr %nsheads to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45 = load ptr, ptr %nsheads, align 4
  %cmp27.not46 = icmp eq ptr %.pn45, %nsheads
  br i1 %cmp27.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %if.end.for.body_crit_edge ]
  %disk = getelementptr i8, ptr %.pn47, i32 1116
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool30.not = icmp eq ptr %3, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_freeze_queue_wait(ptr noundef %5) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp27.not = icmp eq ptr %.pn, %nsheads
  br i1 %cmp27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_start_freeze(ptr noundef %subsys) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !167

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nsheads = getelementptr inbounds %struct.nvme_subsystem, ptr %subsys, i32 0, i32 6
  %1 = ptrtoint ptr %nsheads to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45 = load ptr, ptr %nsheads, align 4
  %cmp27.not46 = icmp eq ptr %.pn45, %nsheads
  br i1 %cmp27.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %if.end.for.body_crit_edge ]
  %disk = getelementptr i8, ptr %.pn47, i32 1116
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool30.not = icmp eq ptr %3, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_freeze_queue_start(ptr noundef %5) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp27.not = icmp eq ptr %.pn, %nsheads
  br i1 %cmp27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvme_mpath_set_disk_name(ptr nocapture noundef readonly %ns, ptr nocapture noundef writeonly %disk_name, ptr nocapture noundef writeonly %flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @multipath, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk, align 8
  %tobool1.not = icmp eq ptr %4, null
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 8
  %subsys = getelementptr inbounds %struct.nvme_ctrl, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsys, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %instance4 = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 8
  %11 = ptrtoint ptr %instance4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %instance4, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef %12)
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %instance10 = getelementptr inbounds %struct.nvme_ctrl, ptr %6, i32 0, i32 10
  %13 = ptrtoint ptr %instance10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %instance10, align 8
  %instance12 = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 8
  %15 = ptrtoint ptr %instance12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %instance12, align 4
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %14, i32 noundef %16)
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %entry.return_crit_edge
  %18 = xor i1 %tobool.not, true
  ret i1 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_failover_req(ptr noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %status1 = getelementptr %struct.request, ptr %req, i32 1, i32 5
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status1, align 4
  %6 = and i16 %5, 2047
  %head1.i = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head1.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.nvme_mpath_clear_current_path.exit_crit_edge, label %for.cond.preheader.i

entry.nvme_mpath_clear_current_path.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_mpath_clear_current_path.exit

for.cond.preheader.i:                             ; preds = %entry
  %current_path.i = getelementptr inbounds %struct.nvme_ns_head, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %current_path.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %current_path.i, align 4
  %cmp3.i = icmp eq ptr %10, %3
  br i1 %cmp3.i, label %do.body12.i, label %for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge

for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_mpath_clear_current_path.exit

do.body12.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %current_path.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %current_path.i, align 4
  br label %nvme_mpath_clear_current_path.exit

nvme_mpath_clear_current_path.exit:               ; preds = %do.body12.i, %for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge, %entry.nvme_mpath_clear_current_path.exit_crit_edge
  %and.i = zext i16 %6 to i32
  %and.off.i = add nsw i32 %and.i, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off.i)
  %switch.i = icmp ult i32 %and.off.i, 3
  br i1 %switch.i, label %land.lhs.true, label %nvme_mpath_clear_current_path.exit.do.body9_crit_edge

nvme_mpath_clear_current_path.exit.do.body9_crit_edge: ; preds = %nvme_mpath_clear_current_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

land.lhs.true:                                    ; preds = %nvme_mpath_clear_current_path.exit
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 8
  %ana_log_buf = getelementptr inbounds %struct.nvme_ctrl, ptr %13, i32 0, i32 77
  %14 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ana_log_buf, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %land.lhs.true.do.body9_crit_edge, label %if.then

land.lhs.true.do.body9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %flags6 = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags6) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %16 = load ptr, ptr @nvme_wq, align 4
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl, align 8
  %ana_work = getelementptr inbounds %struct.nvme_ctrl, ptr %18, i32 0, i32 80
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ana_work) #15
  br label %do.body9

do.body9:                                         ; preds = %if.then, %land.lhs.true.do.body9_crit_edge, %nvme_mpath_clear_current_path.exit.do.body9_crit_edge
  %19 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head1.i, align 8
  %requeue_lock = getelementptr inbounds %struct.nvme_ns_head, ptr %20, i32 0, i32 14
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %requeue_lock) #15
  %bio15 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %21 = ptrtoint ptr %bio15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bio.049 = load ptr, ptr %bio15, align 8
  %tobool16.not50 = icmp eq ptr %bio.049, null
  br i1 %tobool16.not50, label %do.body9.for.end_crit_edge, label %do.body9.for.body_crit_edge

do.body9.for.body_crit_edge:                      ; preds = %do.body9
  br label %for.body

do.body9.for.end_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body9.for.body_crit_edge
  %bio.051 = phi ptr [ %bio.0, %for.inc.for.body_crit_edge ], [ %bio.049, %do.body9.for.body_crit_edge ]
  %22 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head1.i, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part0, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.051, i32 0, i32 3
  %28 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %29, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.051, i32 0, i32 1
  %30 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %31, %27
  br i1 %cmp.not.i, label %for.body.bio_set_dev.exit_crit_edge, label %if.then.i

for.body.bio_set_dev.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i = and i16 %29, -2177
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %for.body.bio_set_dev.exit_crit_edge
  %33 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %27, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %bio.051) #15
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.051, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_opf, align 8
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not = icmp eq i32 %36, 0
  br i1 %tobool20.not, label %bio_set_dev.exit.for.inc_crit_edge, label %if.then21

bio_set_dev.exit.for.inc_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then21:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  %and24 = and i32 %35, -16777217
  %37 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and24, ptr %bi_opf, align 8
  %bi_cookie = getelementptr inbounds %struct.bio, ptr %bio.051, i32 0, i32 9
  %38 = ptrtoint ptr %bi_cookie to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %bi_cookie, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %bio_set_dev.exit.for.inc_crit_edge
  %39 = ptrtoint ptr %bio.051 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bio.0 = load ptr, ptr %bio.051, align 8
  %tobool16.not = icmp eq ptr %bio.0, null
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body9.for.end_crit_edge
  %40 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head1.i, align 8
  %requeue_list = getelementptr inbounds %struct.nvme_ns_head, ptr %41, i32 0, i32 13
  tail call void @blk_steal_bios(ptr noundef %requeue_list, ptr noundef %req) #15
  %42 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head1.i, align 8
  %requeue_lock29 = getelementptr inbounds %struct.nvme_ns_head, ptr %43, i32 0, i32 14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock29, i32 noundef %call12) #15
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext 0) #15
  %44 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head1.i, align 8
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %45, i32 0, i32 15
  %call31 = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvme_mpath_clear_current_path(ptr noundef readonly %ns) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %entry
  %current_path = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %current_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %current_path, align 4
  %cmp3 = icmp eq ptr %3, %ns
  br i1 %cmp3, label %do.body12, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body12:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %current_path to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %current_path, align 4
  br label %out

out:                                              ; preds = %do.body12, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %changed.2.off0 = phi i1 [ false, %entry.out_crit_edge ], [ true, %do.body12 ], [ false, %for.cond.preheader.out_crit_edge ]
  ret i1 %changed.2.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_steal_bios(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_schedule_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_kick_requeue_lists(ptr noundef %ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %namespaces_rwsem = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 15
  tail call void @down_read(ptr noundef %namespaces_rwsem) #15
  %namespaces = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 14
  %0 = ptrtoint ptr %namespaces to i32
  call void @__asan_load4_noabort(i32 %0)
  %ns.022 = load ptr, ptr %namespaces, align 8
  %cmp.not23 = icmp eq ptr %ns.022, %namespaces
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ns.024 = phi ptr [ %ns.022, %for.body.lr.ph ], [ %ns.0, %for.inc.for.body_crit_edge ]
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns.024, i32 0, i32 8
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 15
  %call = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head, align 8
  %disk6 = getelementptr inbounds %struct.nvme_ns_head, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %disk6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk6, align 8
  tail call void @disk_uevent(ptr noundef %10, i32 noundef 2) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %ns.024 to i32
  call void @__asan_load4_noabort(i32 %11)
  %ns.0 = load ptr, ptr %ns.024, align 8
  %cmp.not = icmp eq ptr %ns.0, %namespaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef %namespaces_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_clear_ctrl_paths(ptr noundef %ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %namespaces_rwsem = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 15
  tail call void @down_read(ptr noundef %namespaces_rwsem) #15
  %namespaces = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 14
  %0 = ptrtoint ptr %namespaces to i32
  call void @__asan_load4_noabort(i32 %0)
  %ns.015 = load ptr, ptr %namespaces, align 8
  %cmp.not16 = icmp eq ptr %ns.015, %namespaces
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %nvme_mpath_clear_current_path.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ns.017 = phi ptr [ %ns.0, %nvme_mpath_clear_current_path.exit.for.body_crit_edge ], [ %ns.015, %entry.for.body_crit_edge ]
  %head1.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.017, i32 0, i32 8
  %1 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head1.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.nvme_mpath_clear_current_path.exit_crit_edge, label %for.cond.preheader.i

for.body.nvme_mpath_clear_current_path.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_mpath_clear_current_path.exit

for.cond.preheader.i:                             ; preds = %for.body
  %current_path.i = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %current_path.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %current_path.i, align 4
  %cmp3.i = icmp eq ptr %4, %ns.017
  br i1 %cmp3.i, label %do.body12.i, label %for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge

for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_mpath_clear_current_path.exit

do.body12.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %current_path.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %current_path.i, align 4
  br label %nvme_mpath_clear_current_path.exit

nvme_mpath_clear_current_path.exit:               ; preds = %do.body12.i, %for.cond.preheader.i.nvme_mpath_clear_current_path.exit_crit_edge, %for.body.nvme_mpath_clear_current_path.exit_crit_edge
  %6 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head1.i, align 8
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %7, i32 0, i32 15
  %call2 = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  %8 = ptrtoint ptr %ns.017 to i32
  call void @__asan_load4_noabort(i32 %8)
  %ns.0 = load ptr, ptr %ns.017, align 8
  %cmp.not = icmp eq ptr %ns.0, %namespaces
  br i1 %cmp.not, label %nvme_mpath_clear_current_path.exit.for.end_crit_edge, label %nvme_mpath_clear_current_path.exit.for.body_crit_edge

nvme_mpath_clear_current_path.exit.for.body_crit_edge: ; preds = %nvme_mpath_clear_current_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

nvme_mpath_clear_current_path.exit.for.end_crit_edge: ; preds = %nvme_mpath_clear_current_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %nvme_mpath_clear_current_path.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef %namespaces_rwsem) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_revalidate_paths(ptr nocapture noundef readonly %ns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %call2 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b81 = load i1, ptr @nvme_mpath_revalidate_paths.__warned, align 1
  br i1 %.b81, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nvme_mpath_revalidate_paths.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.3) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn84 = load volatile ptr, ptr %1, align 4
  %cmp.not85 = icmp eq ptr %.pn84, %1
  br i1 %cmp.not85, label %do.end.do.body36_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn86 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn84, %do.end.for.body_crit_edge ]
  %disk12 = getelementptr i8, ptr %.pn86, i32 -12
  %9 = ptrtoint ptr %disk12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk12, align 8
  %part0.i82 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %part0.i82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0.i82, align 4
  %bd_nr_sectors.i.i83 = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bd_nr_sectors.i.i83 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bd_nr_sectors.i.i83, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %14)
  %cmp14.not = icmp eq i64 %7, %14
  br i1 %cmp14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr i8, ptr %.pn86, i32 48
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn86, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %for.inc.do.body36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.body36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

do.body36:                                        ; preds = %for.inc.do.body36_crit_edge, %do.end.do.body36_crit_edge
  %current_path = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %current_path to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %current_path, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvme_find_path(ptr noundef %head) local_unnamed_addr #7 align 64 {
entry:
  %__next.i13.i = alloca ptr, align 4
  %__next11.i14.i = alloca ptr, align 4
  %__next.i.i = alloca ptr, align 4
  %__next11.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %current_path = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 18
  %0 = ptrtoint ptr %current_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %current_path, align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end8_crit_edge, label %srcu_read_lock_held.exit

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

srcu_read_lock_held.exit:                         ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 1, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end8_crit_edge

srcu_read_lock_held.exit.do.end8_crit_edge:       ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @nvme_find_path.__warned, align 1
  br i1 %.b48, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nvme_find_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @.str.4) #15
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %srcu_read_lock_held.exit.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.then14, label %do.end19, !prof !167

if.then14:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call fastcc ptr @__nvme_find_path(ptr noundef %head)
  br label %cleanup

do.end19:                                         ; preds = %do.end8
  %subsys = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 2
  %2 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subsys, align 8
  %iopolicy = getelementptr inbounds %struct.nvme_subsystem, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %iopolicy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iopolicy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.end19
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %head
  br i1 %cmp.i.not.i.i, label %if.then21.if.end3.i_crit_edge, label %list_is_singular.exit.i

if.then21.if.end3.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

list_is_singular.exit.i:                          ; preds = %if.then21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %9
  br i1 %cmp.i.not.i, label %if.then.i, label %list_is_singular.exit.i.if.end3.i_crit_edge

list_is_singular.exit.i.if.end3.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then.i:                                        ; preds = %list_is_singular.exit.i
  %ctrl.i.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then.i.nvme_path_is_disabled.exit.thread.i_crit_edge [
    i32 1, label %if.then.i.if.end.i.i_crit_edge
    i32 4, label %if.then.i.if.end.i.i_crit_edge59
  ]

if.then.i.if.end.i.i_crit_edge59:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.nvme_path_is_disabled.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_path_is_disabled.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge59
  %flags.i.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %nvme_path_is_disabled.exit.i, label %if.end.i.i.nvme_path_is_disabled.exit.thread.i_crit_edge

if.end.i.i.nvme_path_is_disabled.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_path_is_disabled.exit.thread.i

nvme_path_is_disabled.exit.i:                     ; preds = %if.end.i.i
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i.i, label %nvme_path_is_disabled.exit.i.nvme_path_is_disabled.exit.thread.i_crit_edge, label %nvme_path_is_disabled.exit.i.cleanup_crit_edge

nvme_path_is_disabled.exit.i.cleanup_crit_edge:   ; preds = %nvme_path_is_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nvme_path_is_disabled.exit.i.nvme_path_is_disabled.exit.thread.i_crit_edge: ; preds = %nvme_path_is_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_path_is_disabled.exit.thread.i

nvme_path_is_disabled.exit.thread.i:              ; preds = %nvme_path_is_disabled.exit.i.nvme_path_is_disabled.exit.thread.i_crit_edge, %if.end.i.i.nvme_path_is_disabled.exit.thread.i_crit_edge, %if.then.i.nvme_path_is_disabled.exit.thread.i_crit_edge
  br label %cleanup

if.end3.i:                                        ; preds = %list_is_singular.exit.i.if.end3.i_crit_edge, %if.then21.if.end3.i_crit_edge
  %siblings.i.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i.i)
  %21 = ptrtoint ptr %siblings.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %siblings.i.i, align 4
  %23 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %__next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %22, %head
  br i1 %cmp.not.i.i, label %cond.end.thread.i.i, label %cond.end.i.i, !prof !167

cond.end.thread.i.i:                              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  br label %if.end.i2.i

cond.end.i.i:                                     ; preds = %if.end3.i
  %24 = ptrtoint ptr %__next.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.38.i.i = load volatile ptr, ptr %__next.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %__next.i.i.0.__next.i.i.0.__next.i.0.__next.i.0.__next.0.__next.0.__next.0.38.i.i, i32 -28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i.i)
  %tobool8.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not.i.i, label %cond.end.i.i.if.end.i2.i_crit_edge, label %cond.end.i.i.nvme_next_ns.exit.i_crit_edge

cond.end.i.i.nvme_next_ns.exit.i_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_next_ns.exit.i

cond.end.i.i.if.end.i2.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i2.i

if.end.i2.i:                                      ; preds = %cond.end.i.i.if.end.i2.i_crit_edge, %cond.end.thread.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next11.i.i)
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %head, align 4
  %27 = ptrtoint ptr %__next11.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %__next11.i.i, align 4
  %cmp18.not.i.i = icmp eq ptr %26, %head
  br i1 %cmp18.not.i.i, label %if.end.i2.i.cond.end34.i.i_crit_edge, label %cond.true25.i.i, !prof !167

if.end.i2.i.cond.end34.i.i_crit_edge:             ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end34.i.i

cond.true25.i.i:                                  ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %__next11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %__next11.i.i.0.__next11.i.i.0.__next11.i.0.__next11.i.0.__next11.0.__next11.0.__next11.0.36.i.i = load volatile ptr, ptr %__next11.i.i, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %__next11.i.i.0.__next11.i.i.0.__next11.i.0.__next11.i.0.__next11.0.__next11.0.__next11.0.36.i.i, i32 -28
  br label %cond.end34.i.i

cond.end34.i.i:                                   ; preds = %cond.true25.i.i, %if.end.i2.i.cond.end34.i.i_crit_edge
  %cond35.i.i = phi ptr [ %add.ptr32.i.i, %cond.true25.i.i ], [ null, %if.end.i2.i.cond.end34.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next11.i.i)
  br label %nvme_next_ns.exit.i

nvme_next_ns.exit.i:                              ; preds = %cond.end34.i.i, %cond.end.i.i.nvme_next_ns.exit.i_crit_edge
  %retval.0.i3.i = phi ptr [ %cond35.i.i, %cond.end34.i.i ], [ %add.ptr.i.i, %cond.end.i.i.nvme_next_ns.exit.i_crit_edge ]
  %tobool5.not46.i = icmp eq ptr %retval.0.i3.i, null
  %cmp.not47.i = icmp eq ptr %retval.0.i3.i, %1
  %or.cond48.i = or i1 %tobool5.not46.i, %cmp.not47.i
  br i1 %or.cond48.i, label %nvme_next_ns.exit.i.for.end.i_crit_edge, label %nvme_next_ns.exit.i.for.body.i_crit_edge

nvme_next_ns.exit.i.for.body.i_crit_edge:         ; preds = %nvme_next_ns.exit.i
  br label %for.body.i

nvme_next_ns.exit.i.for.end.i_crit_edge:          ; preds = %nvme_next_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %nvme_next_ns.exit30.i.for.body.i_crit_edge, %nvme_next_ns.exit.i.for.body.i_crit_edge
  %found.051.i = phi ptr [ %found.1.i, %nvme_next_ns.exit30.i.for.body.i_crit_edge ], [ null, %nvme_next_ns.exit.i.for.body.i_crit_edge ]
  %ns.049.i = phi ptr [ %retval.0.i29.i, %nvme_next_ns.exit30.i.for.body.i_crit_edge ], [ %retval.0.i3.i, %nvme_next_ns.exit.i.for.body.i_crit_edge ]
  %ctrl.i4.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.049.i, i32 0, i32 1
  %29 = ptrtoint ptr %ctrl.i4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl.i4.i, align 8
  %state.i5.i = getelementptr inbounds %struct.nvme_ctrl, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %state.i5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i5.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %32, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %for.body.i.if.end.i8.i_crit_edge
    i32 4, label %for.body.i.if.end.i8.i_crit_edge60
  ]

for.body.i.if.end.i8.i_crit_edge60:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i8.i

for.body.i.if.end.i8.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i8.i:                                      ; preds = %for.body.i.if.end.i8.i_crit_edge, %for.body.i.if.end.i8.i_crit_edge60
  %flags.i6.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.049.i, i32 0, i32 16
  %34 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i6.i, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i7.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i7.i, label %nvme_path_is_disabled.exit12.i, label %if.end.i8.i.for.inc.i_crit_edge

if.end.i8.i.for.inc.i_crit_edge:                  ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

nvme_path_is_disabled.exit12.i:                   ; preds = %if.end.i8.i
  %37 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i6.i, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool6.not.i9.i = icmp eq i32 %39, 0
  br i1 %tobool6.not.i9.i, label %nvme_path_is_disabled.exit12.i.for.inc.i_crit_edge, label %if.end8.i

nvme_path_is_disabled.exit12.i.for.inc.i_crit_edge: ; preds = %nvme_path_is_disabled.exit12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end8.i:                                        ; preds = %nvme_path_is_disabled.exit12.i
  %ana_state.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.049.i, i32 0, i32 4
  %40 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ana_state.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %41, label %if.end8.i.for.inc.i_crit_edge [
    i32 1, label %if.end8.i.do.body.i_crit_edge
    i32 2, label %if.then14.i
  ]

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end8.i.for.inc.i_crit_edge, %nvme_path_is_disabled.exit12.i.for.inc.i_crit_edge, %if.end.i8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %found.1.i = phi ptr [ %found.051.i, %nvme_path_is_disabled.exit12.i.for.inc.i_crit_edge ], [ %ns.049.i, %if.then14.i ], [ %found.051.i, %if.end8.i.for.inc.i_crit_edge ], [ %found.051.i, %for.body.i.for.inc.i_crit_edge ], [ %found.051.i, %if.end.i8.i.for.inc.i_crit_edge ]
  %siblings.i15.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.049.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i13.i)
  %43 = ptrtoint ptr %siblings.i15.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %siblings.i15.i, align 4
  %45 = ptrtoint ptr %__next.i13.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %__next.i13.i, align 4
  %cmp.not.i16.i = icmp eq ptr %44, %head
  br i1 %cmp.not.i16.i, label %cond.end.thread.i17.i, label %cond.end.i21.i, !prof !167

cond.end.thread.i17.i:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i13.i)
  br label %if.end.i23.i

cond.end.i21.i:                                   ; preds = %for.inc.i
  %46 = ptrtoint ptr %__next.i13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %__next.i13.i.0.__next.i13.i.0.__next.i13.0.__next.i13.0.__next.0.__next.0.__next.0.38.i18.i = load volatile ptr, ptr %__next.i13.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %__next.i13.i.0.__next.i13.i.0.__next.i13.0.__next.i13.0.__next.0.__next.0.__next.0.38.i18.i, i32 -28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i13.i)
  %tobool8.not.i20.i = icmp eq ptr %add.ptr.i19.i, null
  br i1 %tobool8.not.i20.i, label %cond.end.i21.i.if.end.i23.i_crit_edge, label %cond.end.i21.i.nvme_next_ns.exit30.i_crit_edge

cond.end.i21.i.nvme_next_ns.exit30.i_crit_edge:   ; preds = %cond.end.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_next_ns.exit30.i

cond.end.i21.i.if.end.i23.i_crit_edge:            ; preds = %cond.end.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i23.i

if.end.i23.i:                                     ; preds = %cond.end.i21.i.if.end.i23.i_crit_edge, %cond.end.thread.i17.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next11.i14.i)
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %head, align 4
  %49 = ptrtoint ptr %__next11.i14.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %__next11.i14.i, align 4
  %cmp18.not.i22.i = icmp eq ptr %48, %head
  br i1 %cmp18.not.i22.i, label %if.end.i23.i.cond.end34.i28.i_crit_edge, label %cond.true25.i26.i, !prof !167

if.end.i23.i.cond.end34.i28.i_crit_edge:          ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end34.i28.i

cond.true25.i26.i:                                ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %__next11.i14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %__next11.i14.i.0.__next11.i14.i.0.__next11.i14.0.__next11.i14.0.__next11.0.__next11.0.__next11.0.36.i24.i = load volatile ptr, ptr %__next11.i14.i, align 4
  %add.ptr32.i25.i = getelementptr i8, ptr %__next11.i14.i.0.__next11.i14.i.0.__next11.i14.0.__next11.i14.0.__next11.0.__next11.0.__next11.0.36.i24.i, i32 -28
  br label %cond.end34.i28.i

cond.end34.i28.i:                                 ; preds = %cond.true25.i26.i, %if.end.i23.i.cond.end34.i28.i_crit_edge
  %cond35.i27.i = phi ptr [ %add.ptr32.i25.i, %cond.true25.i26.i ], [ null, %if.end.i23.i.cond.end34.i28.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next11.i14.i)
  br label %nvme_next_ns.exit30.i

nvme_next_ns.exit30.i:                            ; preds = %cond.end34.i28.i, %cond.end.i21.i.nvme_next_ns.exit30.i_crit_edge
  %retval.0.i29.i = phi ptr [ %cond35.i27.i, %cond.end34.i28.i ], [ %add.ptr.i19.i, %cond.end.i21.i.nvme_next_ns.exit30.i_crit_edge ]
  %tobool5.not.i = icmp eq ptr %retval.0.i29.i, null
  %cmp.not.i = icmp eq ptr %retval.0.i29.i, %1
  %or.cond.i = or i1 %tobool5.not.i, %cmp.not.i
  br i1 %or.cond.i, label %nvme_next_ns.exit30.i.for.end.i_crit_edge, label %nvme_next_ns.exit30.i.for.body.i_crit_edge

nvme_next_ns.exit30.i.for.body.i_crit_edge:       ; preds = %nvme_next_ns.exit30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

nvme_next_ns.exit30.i.for.end.i_crit_edge:        ; preds = %nvme_next_ns.exit30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %nvme_next_ns.exit30.i.for.end.i_crit_edge, %nvme_next_ns.exit.i.for.end.i_crit_edge
  %found.0.lcssa.i = phi ptr [ null, %nvme_next_ns.exit.i.for.end.i_crit_edge ], [ %found.1.i, %nvme_next_ns.exit30.i.for.end.i_crit_edge ]
  %ctrl.i31.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %ctrl.i31.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl.i31.i, align 8
  %state.i32.i = getelementptr inbounds %struct.nvme_ctrl, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %state.i32.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i32.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %54, label %for.end.i.if.end25.i_crit_edge [
    i32 1, label %for.end.i.if.end.i35.i_crit_edge
    i32 4, label %for.end.i.if.end.i35.i_crit_edge61
  ]

for.end.i.if.end.i35.i_crit_edge61:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i35.i

for.end.i.if.end.i35.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i35.i

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.end.i35.i:                                     ; preds = %for.end.i.if.end.i35.i_crit_edge, %for.end.i.if.end.i35.i_crit_edge61
  %flags.i33.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 16
  %56 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i33.i, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i34.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i34.i, label %nvme_path_is_disabled.exit39.i, label %if.end.i35.i.if.end25.i_crit_edge

if.end.i35.i.if.end25.i_crit_edge:                ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

nvme_path_is_disabled.exit39.i:                   ; preds = %if.end.i35.i
  %59 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i33.i, align 4
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool6.not.i36.i = icmp eq i32 %61, 0
  br i1 %tobool6.not.i36.i, label %nvme_path_is_disabled.exit39.i.if.end25.i_crit_edge, label %land.lhs.true.i

nvme_path_is_disabled.exit39.i.if.end25.i_crit_edge: ; preds = %nvme_path_is_disabled.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %nvme_path_is_disabled.exit39.i
  %ana_state18.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %ana_state18.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ana_state18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp19.i = icmp eq i32 %63, 1
  br i1 %cmp19.i, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %tobool20.not.i = icmp eq ptr %found.0.lcssa.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp23.i = icmp eq i32 %63, 2
  %or.cond1.i = select i1 %tobool20.not.i, i1 %cmp23.i, i1 false
  br i1 %or.cond1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.end25.i_crit_edge

lor.lhs.false.i.if.end25.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25.i:                                       ; preds = %lor.lhs.false.i.if.end25.i_crit_edge, %nvme_path_is_disabled.exit39.i.if.end25.i_crit_edge, %if.end.i35.i.if.end25.i_crit_edge, %for.end.i.if.end25.i_crit_edge
  %tobool26.not.i = icmp eq ptr %found.0.lcssa.i, null
  br i1 %tobool26.not.i, label %if.end25.i.cleanup_crit_edge, label %if.end25.i.do.body.i_crit_edge

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end25.i.do.body.i_crit_edge, %if.end8.i.do.body.i_crit_edge
  %found.2.i = phi ptr [ %found.0.lcssa.i, %if.end25.i.do.body.i_crit_edge ], [ %ns.049.i, %if.end8.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  %64 = ptrtoint ptr %current_path to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %found.2.i, ptr %current_path, align 4
  br label %cleanup

if.end23:                                         ; preds = %do.end19
  %ctrl.i = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctrl.i, align 8
  %state.i = getelementptr inbounds %struct.nvme_ctrl, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i = icmp eq i32 %68, 1
  br i1 %cmp.i, label %nvme_path_is_optimized.exit, label %if.end23.if.then33_crit_edge, !prof !170

if.end23.if.then33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33

nvme_path_is_optimized.exit:                      ; preds = %if.end23
  %ana_state.i50 = getelementptr inbounds %struct.nvme_ns, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %ana_state.i50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ana_state.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp1.i = icmp eq i32 %70, 1
  br i1 %cmp1.i, label %nvme_path_is_optimized.exit.cleanup_crit_edge, label %nvme_path_is_optimized.exit.if.then33_crit_edge, !prof !171

nvme_path_is_optimized.exit.if.then33_crit_edge:  ; preds = %nvme_path_is_optimized.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33

nvme_path_is_optimized.exit.cleanup_crit_edge:    ; preds = %nvme_path_is_optimized.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then33:                                        ; preds = %nvme_path_is_optimized.exit.if.then33_crit_edge, %if.end23.if.then33_crit_edge
  %call34 = tail call fastcc ptr @__nvme_find_path(ptr noundef %head)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %nvme_path_is_optimized.exit.cleanup_crit_edge, %do.body.i, %if.end25.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %nvme_path_is_disabled.exit.thread.i, %nvme_path_is_disabled.exit.i.cleanup_crit_edge, %if.then14
  %retval.0 = phi ptr [ %call15, %if.then14 ], [ %call34, %if.then33 ], [ %1, %nvme_path_is_optimized.exit.cleanup_crit_edge ], [ %found.2.i, %do.body.i ], [ %1, %lor.lhs.false.i.cleanup_crit_edge ], [ %1, %land.lhs.true.i.cleanup_crit_edge ], [ null, %if.end25.i.cleanup_crit_edge ], [ null, %nvme_path_is_disabled.exit.thread.i ], [ %1, %nvme_path_is_disabled.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__nvme_find_path(ptr noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @__nvme_find_path.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__nvme_find_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.3) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn7 = load volatile ptr, ptr %head, align 4
  %cmp.not9 = icmp eq ptr %.pn7, %head
  br i1 %cmp.not9, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %subsys = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn14 = phi ptr [ %.pn7, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %found_distance.013 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %found_distance.1, %for.inc.for.body_crit_edge ]
  %fallback_distance.012 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %fallback_distance.1, %for.inc.for.body_crit_edge ]
  %found.011 = phi ptr [ null, %for.body.lr.ph ], [ %found.1, %for.inc.for.body_crit_edge ]
  %fallback.010 = phi ptr [ null, %for.body.lr.ph ], [ %fallback.1, %for.inc.for.body_crit_edge ]
  %ns.015 = getelementptr i8, ptr %.pn14, i32 -28
  %ctrl.i = getelementptr i8, ptr %.pn14, i32 -20
  %1 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl.i, align 8
  %state.i = getelementptr inbounds %struct.nvme_ctrl, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.if.end.i_crit_edge
    i32 4, label %for.body.if.end.i_crit_edge17
  ]

for.body.if.end.i_crit_edge17:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i:                                         ; preds = %for.body.if.end.i_crit_edge, %for.body.if.end.i_crit_edge17
  %flags.i = getelementptr i8, ptr %.pn14, i32 48
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %nvme_path_is_disabled.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

nvme_path_is_disabled.exit:                       ; preds = %if.end.i
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %nvme_path_is_disabled.exit.for.inc_crit_edge, label %do.end15

nvme_path_is_disabled.exit.for.inc_crit_edge:     ; preds = %nvme_path_is_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end15:                                         ; preds = %nvme_path_is_disabled.exit
  %12 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subsys, align 8
  %iopolicy = getelementptr inbounds %struct.nvme_subsystem, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %iopolicy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %iopolicy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %if.then18, label %do.end15.if.end20_crit_edge

do.end15.if.end20_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then18:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl.i, align 8
  %numa_node = getelementptr inbounds %struct.nvme_ctrl, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numa_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19 = icmp eq i32 %19, 0
  %cond = select i1 %cmp19, i32 10, i32 20
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end15.if.end20_crit_edge
  %distance.0 = phi i32 [ %cond, %if.then18 ], [ 10, %do.end15.if.end20_crit_edge ]
  %ana_state = getelementptr i8, ptr %.pn14, i32 -8
  %20 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ana_state, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %21, label %if.end20.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %distance.0, i32 %found_distance.013)
  %cmp21 = icmp slt i32 %distance.0, %found_distance.013
  %spec.select = select i1 %cmp21, ptr %ns.015, ptr %found.011
  %23 = tail call i32 @llvm.smin.i32(i32 %distance.0, i32 %found_distance.013)
  br label %for.inc

sw.bb24:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %distance.0, i32 %fallback_distance.012)
  %cmp25 = icmp slt i32 %distance.0, %fallback_distance.012
  %spec.select3 = select i1 %cmp25, ptr %ns.015, ptr %fallback.010
  %24 = tail call i32 @llvm.smin.i32(i32 %distance.0, i32 %fallback_distance.012)
  br label %for.inc

for.inc:                                          ; preds = %sw.bb24, %sw.bb, %if.end20.for.inc_crit_edge, %nvme_path_is_disabled.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fallback.1 = phi ptr [ %fallback.010, %nvme_path_is_disabled.exit.for.inc_crit_edge ], [ %fallback.010, %if.end20.for.inc_crit_edge ], [ %fallback.010, %sw.bb ], [ %spec.select3, %sw.bb24 ], [ %fallback.010, %for.body.for.inc_crit_edge ], [ %fallback.010, %if.end.i.for.inc_crit_edge ]
  %found.1 = phi ptr [ %found.011, %nvme_path_is_disabled.exit.for.inc_crit_edge ], [ %found.011, %if.end20.for.inc_crit_edge ], [ %spec.select, %sw.bb ], [ %found.011, %sw.bb24 ], [ %found.011, %for.body.for.inc_crit_edge ], [ %found.011, %if.end.i.for.inc_crit_edge ]
  %fallback_distance.1 = phi i32 [ %fallback_distance.012, %nvme_path_is_disabled.exit.for.inc_crit_edge ], [ %fallback_distance.012, %if.end20.for.inc_crit_edge ], [ %fallback_distance.012, %sw.bb ], [ %24, %sw.bb24 ], [ %fallback_distance.012, %for.body.for.inc_crit_edge ], [ %fallback_distance.012, %if.end.i.for.inc_crit_edge ]
  %found_distance.1 = phi i32 [ %found_distance.013, %nvme_path_is_disabled.exit.for.inc_crit_edge ], [ %found_distance.013, %if.end20.for.inc_crit_edge ], [ %23, %sw.bb ], [ %found_distance.013, %sw.bb24 ], [ %found_distance.013, %for.body.for.inc_crit_edge ], [ %found_distance.013, %if.end.i.for.inc_crit_edge ]
  %25 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load volatile ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %fallback.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %fallback.1, %for.inc.for.end_crit_edge ]
  %found.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %found.1, %for.inc.for.end_crit_edge ]
  %tobool37.not = icmp eq ptr %found.0.lcssa, null
  %spec.select5 = select i1 %tobool37.not, ptr %fallback.0.lcssa, ptr %found.0.lcssa
  %tobool40.not = icmp eq ptr %spec.select5, null
  br i1 %tobool40.not, label %for.end.if.end82_crit_edge, label %do.body42

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

do.body42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !172
  %current_path69 = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 18
  %26 = ptrtoint ptr %current_path69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %spec.select5, ptr %current_path69, align 4
  br label %if.end82

if.end82:                                         ; preds = %do.body42, %for.end.if.end82_crit_edge
  ret ptr %spec.select5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_ns_head_submit_bio(ptr noundef %bio) #1 align 64 {
entry:
  %bio.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %bio.addr, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %1 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 10
  call void @blk_queue_split(ptr noundef nonnull %bio.addr) #15
  %srcu = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 1
  %call.i = call i32 @__srcu_read_lock(ptr noundef %srcu) #15
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 1, i32 16
  call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #15
  %call1 = call ptr @nvme_find_path(ptr noundef %6)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !167

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bio.addr, align 4
  %disk4 = getelementptr inbounds %struct.nvme_ns, ptr %call1, i32 0, i32 3
  %13 = ptrtoint ptr %disk4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk4, align 8
  %part05 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %part05 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part05, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %18, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %20, %16
  br i1 %cmp.not.i, label %if.then.bio_set_dev.exit_crit_edge, label %if.then.i

if.then.bio_set_dev.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i = and i16 %18, -2177
  %21 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.then.bio_set_dev.exit_crit_edge
  %22 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %12) #15
  %23 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio.addr, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_opf, align 8
  %27 = or i32 %26, 33554432
  store i32 %27, ptr %bi_opf, align 8
  %head7 = getelementptr inbounds %struct.nvme_ns, ptr %call1, i32 0, i32 8
  %28 = ptrtoint ptr %head7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head7, align 8
  %disk8 = getelementptr inbounds %struct.nvme_ns_head, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %disk8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk8, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i = shl i32 %33, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %35
  %bi_iter = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter, align 8
  call fastcc void @trace_block_bio_remap(ptr noundef %24, i32 noundef %or.i, i64 noundef %37)
  %38 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bio.addr, align 4
  call void @submit_bio_noacct(ptr noundef %39) #15
  br label %if.end31

if.else:                                          ; preds = %entry
  %call10 = call fastcc zeroext i1 @nvme_available_path(ptr noundef %6)
  br i1 %call10, label %do.body, label %do.body20

do.body:                                          ; preds = %if.else
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @nvme_ns_head_submit_bio._rs, ptr noundef nonnull @__func__.nvme_ns_head_submit_bio) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %bd_device, ptr noundef nonnull @.str.33) #18
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %requeue_lock = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %requeue_lock) #15
  %40 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bio.addr, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %41, align 8
  %tail.i = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 13, i32 1
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i43

if.then.i43:                                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %44, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  %requeue_list = getelementptr inbounds %struct.nvme_ns_head, ptr %6, i32 0, i32 13
  %46 = ptrtoint ptr %requeue_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %requeue_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i43
  %47 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %tail.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %requeue_lock) #15
  br label %if.end31

do.body20:                                        ; preds = %if.else
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @nvme_ns_head_submit_bio._rs.35, ptr noundef nonnull @__func__.nvme_ns_head_submit_bio) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.end29_crit_edge, label %do.end26

do.body20.do.end29_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %bd_device, ptr noundef nonnull @.str.37) #18
  br label %do.end29

do.end29:                                         ; preds = %do.end26, %do.body20.do.end29_crit_edge
  %48 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio.addr, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 10, ptr %bi_status, align 2
  call void @bio_endio(ptr noundef %49) #15
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %bio_list_add.exit, %bio_set_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i44 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i44, label %if.end31.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end31.srcu_read_unlock.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end31
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i45, !prof !171

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

if.then.i45:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 189, i32 noundef 9, ptr noundef null) #15
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i45, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end31.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #15
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_ns_head_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call = tail call zeroext i1 @nvme_tryget_ns_head(ptr noundef %3) #15
  %. = select i1 %call, i32 0, i32 -6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_ns_head_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @nvme_put_ns_head(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_ns_head_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_getgeo(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_ns_head_report_zones(ptr nocapture noundef readonly %disk, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef %cb, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %srcu = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #15
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 1, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #15
  %call1 = tail call ptr @nvme_find_path(ptr noundef %1)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @nvme_ns_report_zones(ptr noundef nonnull %call1, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef %cb, ptr noundef %data) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end.srcu_read_unlock.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !171

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 189, i32 noundef 9, ptr noundef null) #15
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #15
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_mpath_alloc_disk(ptr nocapture noundef readonly %ctrl, ptr noundef %head) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvme_mpath_alloc_disk.__key) #15
  %requeue_list = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 13
  %tail.i = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tail.i, align 4
  %1 = ptrtoint ptr %requeue_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %requeue_list, align 4
  %requeue_lock = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %requeue_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @nvme_mpath_alloc_disk.__key.6, i16 noundef signext 3) #15
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15
  tail call void @__init_work(ptr noundef %requeue_work, i32 noundef 0) #15
  %2 = ptrtoint ptr %requeue_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %requeue_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @nvme_mpath_alloc_disk.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8 = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvme_requeue_work, ptr %func, align 4
  %subsys = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 23
  %6 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subsys, align 4
  %cmic = getelementptr inbounds %struct.nvme_subsystem, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %cmic to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmic, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = load i8, ptr @multipath, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %numa_node = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 11
  %12 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node, align 4
  %call13 = tail call ptr @__blk_alloc_disk(i32 noundef %13, ptr noundef nonnull @nvme_mpath_alloc_disk.__key.10) #15
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 12
  %14 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %disk, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %fops = getelementptr inbounds %struct.gendisk, ptr %call13, i32 0, i32 8
  %15 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nvme_ns_head_ops, ptr %fops, align 8
  %16 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head, ptr %private_data, align 8
  %19 = load ptr, ptr %disk, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subsys, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %instance22 = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 8
  %24 = ptrtoint ptr %instance22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %instance22, align 4
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.1, i32 noundef %23, i32 noundef %25)
  %26 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %29) #15
  %30 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk, align 8
  %queue26 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %queue26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue26, align 4
  tail call void @blk_queue_flag_set(i32 noundef 29, ptr noundef %33) #15
  %tagset = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 12
  %34 = ptrtoint ptr %tagset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tagset, align 8
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp = icmp ugt i32 %37, 2
  br i1 %cmp, label %land.lhs.true, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end17
  %nr_queues = getelementptr [3 x %struct.blk_mq_queue_map], ptr %35, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool29.not = icmp eq i32 %39, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end33_crit_edge, label %if.then30

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disk, align 8
  %queue32 = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %queue32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue32, align 4
  tail call void @blk_queue_flag_set(i32 noundef 16, ptr noundef %43) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %44 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disk, align 8
  %queue35 = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %queue35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue35, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %47, i32 noundef 512) #15
  %48 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disk, align 8
  %queue37 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %queue37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue37, align 4
  %limits = getelementptr inbounds %struct.request_queue, ptr %51, i32 0, i32 37
  tail call void @blk_set_stacking_limits(ptr noundef %limits) #15
  %vwc38 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 47
  %52 = ptrtoint ptr %vwc38 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vwc38, align 4
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool41.not = icmp ne i8 %54, 0
  %55 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disk, align 8
  %queue45 = getelementptr inbounds %struct.gendisk, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %queue45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue45, align 4
  tail call void @blk_queue_write_cache(ptr noundef %58, i1 noundef zeroext %tobool41.not, i1 noundef zeroext %tobool41.not) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_requeue_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %requeue_lock = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_irq(ptr noundef %requeue_lock) #15
  %requeue_list = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %requeue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requeue_list, align 4
  %tail.i = getelementptr i8, ptr %work, i32 -48
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %requeue_list, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %requeue_lock) #15
  %cmp.not7 = icmp eq ptr %1, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %next.08 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %next.08 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next.08, align 8
  store ptr null, ptr %next.08, align 8
  tail call void @submit_bio_noacct(ptr noundef nonnull %next.08) #15
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_stacking_limits(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_stop(ptr noundef %ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_log_buf.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %0 = ptrtoint ptr %ana_log_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ana_log_buf.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %anatt_timer = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 79
  %call1 = tail call i32 @del_timer_sync(ptr noundef %anatt_timer) #15
  %ana_work = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ana_work) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_subsys_iopolicy_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iopolicy = getelementptr i8, ptr %dev, i32 1400
  %0 = ptrtoint ptr %iopolicy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %iopolicy, align 8
  %arrayidx = getelementptr [2 x ptr], ptr @nvme_iopolicy_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef %3) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_subsys_iopolicy_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.29) #15
  br i1 %call, label %entry.do.body2_crit_edge, label %for.inc

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2:                                         ; preds = %for.inc.do.body2_crit_edge, %entry.do.body2_crit_edge
  %i.012.lcssa = phi i32 [ 0, %entry.do.body2_crit_edge ], [ 1, %for.inc.do.body2_crit_edge ]
  %iopolicy = getelementptr i8, ptr %dev, i32 1400
  %0 = ptrtoint ptr %iopolicy to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %i.012.lcssa, ptr %iopolicy, align 8
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.30) #15
  br i1 %call.1, label %for.inc.do.body2_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.do.body2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body2
  %retval.0 = phi i32 [ %count, %do.body2 ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ana_grpid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %ana_grpid = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ana_grpid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ana_grpid, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %5) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ana_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %ana_state = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ana_state, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @nvme_ana_state_names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef %7) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_add_disk(ptr noundef %ns, ptr nocapture noundef readonly %id) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.nvme_ana_group_desc, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 8
  %ana_log_buf.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %ana_log_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ana_log_buf.i, align 8
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #15
  %4 = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %desc, i32 0, i32 3
  %5 = call ptr @memset(ptr %desc, i32 0, i32 32)
  %anagrpid = getelementptr inbounds %struct.nvme_id_ns, ptr %id, i32 0, i32 27
  %6 = ptrtoint ptr %anagrpid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %anagrpid, align 4
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %desc, align 8
  %ana_lock = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 76
  tail call void @mutex_lock_nested(ptr noundef %ana_lock, i32 noundef 0) #15
  %9 = ptrtoint ptr %anagrpid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %anagrpid, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %ana_grpid = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 5
  %12 = ptrtoint ptr %ana_grpid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ana_grpid, align 8
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 8
  %call4 = call fastcc i32 @nvme_parse_ana_log(ptr noundef %14, ptr noundef nonnull %desc, ptr noundef nonnull @nvme_lookup_ana_group_desc)
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 8
  %ana_lock6 = getelementptr inbounds %struct.nvme_ctrl, ptr %16, i32 0, i32 76
  call void @mutex_unlock(ptr noundef %ana_lock6) #15
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20) #15
  %22 = ptrtoint ptr %ana_grpid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ana_grpid, align 8
  %conv.i = zext i8 %18 to i32
  %ana_state.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 4
  %23 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %ana_state.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 16
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  %24 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ana_state.i, align 4
  %26 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %if.then.i, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @nvme_mpath_set_live(ptr noundef %ns) #15
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 16
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %28 = load ptr, ptr @nvme_wq, align 4
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl, align 8
  %ana_work = getelementptr inbounds %struct.nvme_ctrl, ptr %30, i32 0, i32 80
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %ana_work) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then7.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #15
  br label %if.end11

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ana_state = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 4
  %31 = ptrtoint ptr %ana_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %ana_state, align 4
  tail call fastcc void @nvme_mpath_set_live(ptr noundef %ns)
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.end
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %queue_flags, align 4
  %36 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not = icmp eq i32 %36, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %land.lhs.true

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disk, align 8
  %tobool14.not = icmp eq ptr %40, null
  br i1 %tobool14.not, label %land.lhs.true.if.end19_crit_edge, label %if.then15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %queue18 = getelementptr inbounds %struct.gendisk, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %queue18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue18, align 4
  call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %42) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %43 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 37, i32 27
  %45 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %land.lhs.true22, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true22:                                  ; preds = %if.end19
  %head23 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %47 = ptrtoint ptr %head23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head23, align 8
  %disk24 = getelementptr inbounds %struct.nvme_ns_head, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %disk24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %disk24, align 8
  %tobool25.not = icmp eq ptr %50, null
  br i1 %tobool25.not, label %land.lhs.true22.if.end32_crit_edge, label %if.then26

land.lhs.true22.if.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 39
  %51 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_zones, align 4
  %queue30 = getelementptr inbounds %struct.gendisk, ptr %50, i32 0, i32 9
  %53 = ptrtoint ptr %queue30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue30, align 4
  %nr_zones31 = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 39
  %55 = ptrtoint ptr %nr_zones31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %nr_zones31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %land.lhs.true22.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_parse_ana_log(ptr noundef %ctrl, ptr noundef %data, ptr nocapture noundef readonly %cb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_log_buf = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %0 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ana_log_buf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 76, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !167

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ana_log_buf, align 8
  %ngrps448 = getelementptr inbounds %struct.nvme_ana_rsp_hdr, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ngrps448 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ngrps448, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp25450.not = icmp eq i16 %6, 0
  br i1 %cmp25450.not, label %if.end.cleanup393_crit_edge, label %for.body.lr.ph

if.end.cleanup393_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

for.body.lr.ph:                                   ; preds = %if.end
  %ana_log_size = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 78
  %anagrpmax = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 74
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.0452 = phi i32 [ 16, %for.body.lr.ph ], [ %add390, %for.inc.for.body_crit_edge ]
  %i.0451 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %offset.0452
  %7 = ptrtoint ptr %ana_log_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ana_log_size, align 4
  %sub = add i32 %8, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0452, i32 %sub)
  %cmp27 = icmp ugt i32 %offset.0452, %sub
  br i1 %cmp27, label %land.rhs35, label %if.end83

land.rhs35:                                       ; preds = %for.body
  %.b438 = load i1, ptr @nvme_parse_ana_log.__already_done, align 1
  br i1 %.b438, label %land.rhs35.cleanup393_crit_edge, label %land.rhs35.cleanup393.sink.split_crit_edge, !prof !171

land.rhs35.cleanup393.sink.split_crit_edge:       ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs35.cleanup393_crit_edge:                  ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end83:                                         ; preds = %for.body
  %nnsids = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %nnsids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nnsids, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #15
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %retval.0.i = select i1 %13, i32 -1, i32 %14
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp86 = icmp eq i32 %16, 0
  br i1 %cmp86, label %land.rhs95, label %if.end143

land.rhs95:                                       ; preds = %if.end83
  %.b428437 = load i1, ptr @nvme_parse_ana_log.__already_done.49, align 1
  br i1 %.b428437, label %land.rhs95.cleanup393_crit_edge, label %land.rhs95.cleanup393.sink.split_crit_edge, !prof !171

land.rhs95.cleanup393.sink.split_crit_edge:       ; preds = %land.rhs95
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs95.cleanup393_crit_edge:                  ; preds = %land.rhs95
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end143:                                        ; preds = %if.end83
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %anagrpmax to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %anagrpmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp146 = icmp ugt i32 %17, %19
  br i1 %cmp146, label %land.rhs155, label %if.end203

land.rhs155:                                      ; preds = %if.end143
  %.b429436 = load i1, ptr @nvme_parse_ana_log.__already_done.50, align 1
  br i1 %.b429436, label %land.rhs155.cleanup393_crit_edge, label %land.rhs155.cleanup393.sink.split_crit_edge, !prof !171

land.rhs155.cleanup393.sink.split_crit_edge:      ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs155.cleanup393_crit_edge:                 ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end203:                                        ; preds = %if.end143
  %state = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %add.ptr, i32 0, i32 3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp206 = icmp eq i8 %21, 0
  br i1 %cmp206, label %land.rhs215, label %if.end263

land.rhs215:                                      ; preds = %if.end203
  %.b430435 = load i1, ptr @nvme_parse_ana_log.__already_done.51, align 1
  br i1 %.b430435, label %land.rhs215.cleanup393_crit_edge, label %land.rhs215.cleanup393.sink.split_crit_edge, !prof !171

land.rhs215.cleanup393.sink.split_crit_edge:      ; preds = %land.rhs215
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs215.cleanup393_crit_edge:                 ; preds = %land.rhs215
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end263:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %21)
  %cmp267 = icmp ugt i8 %21, 15
  br i1 %cmp267, label %land.rhs276, label %if.end324

land.rhs276:                                      ; preds = %if.end263
  %.b431434 = load i1, ptr @nvme_parse_ana_log.__already_done.52, align 1
  br i1 %.b431434, label %land.rhs276.cleanup393_crit_edge, label %land.rhs276.cleanup393.sink.split_crit_edge, !prof !171

land.rhs276.cleanup393.sink.split_crit_edge:      ; preds = %land.rhs276
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs276.cleanup393_crit_edge:                 ; preds = %land.rhs276
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end324:                                        ; preds = %if.end263
  %add = add i32 %offset.0452, 32
  %sub327 = sub i32 %8, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub327)
  %cmp328 = icmp ugt i32 %add, %sub327
  br i1 %cmp328, label %land.rhs337, label %if.end385

land.rhs337:                                      ; preds = %if.end324
  %.b432433 = load i1, ptr @nvme_parse_ana_log.__already_done.53, align 1
  br i1 %.b432433, label %land.rhs337.cleanup393_crit_edge, label %land.rhs337.cleanup393.sink.split_crit_edge, !prof !171

land.rhs337.cleanup393.sink.split_crit_edge:      ; preds = %land.rhs337
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393.sink.split

land.rhs337.cleanup393_crit_edge:                 ; preds = %land.rhs337
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

if.end385:                                        ; preds = %if.end324
  %call386 = tail call i32 %cb(ptr noundef %ctrl, ptr noundef %add.ptr, ptr noundef %data) #15, !callees !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %for.inc, label %if.end385.cleanup393_crit_edge

if.end385.cleanup393_crit_edge:                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

for.inc:                                          ; preds = %if.end385
  %add390 = add i32 %retval.0.i, %add
  %inc = add nuw nsw i32 %i.0451, 1
  %22 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ana_log_buf, align 8
  %ngrps = getelementptr inbounds %struct.nvme_ana_rsp_hdr, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ngrps to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ngrps, align 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  %cmp25 = icmp ult i32 %inc, %conv
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.cleanup393_crit_edge

for.inc.cleanup393_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup393

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup393.sink.split:                            ; preds = %land.rhs337.cleanup393.sink.split_crit_edge, %land.rhs276.cleanup393.sink.split_crit_edge, %land.rhs215.cleanup393.sink.split_crit_edge, %land.rhs155.cleanup393.sink.split_crit_edge, %land.rhs95.cleanup393.sink.split_crit_edge, %land.rhs35.cleanup393.sink.split_crit_edge
  %nvme_parse_ana_log.__already_done.53.sink = phi ptr [ @nvme_parse_ana_log.__already_done, %land.rhs35.cleanup393.sink.split_crit_edge ], [ @nvme_parse_ana_log.__already_done.49, %land.rhs95.cleanup393.sink.split_crit_edge ], [ @nvme_parse_ana_log.__already_done.50, %land.rhs155.cleanup393.sink.split_crit_edge ], [ @nvme_parse_ana_log.__already_done.51, %land.rhs215.cleanup393.sink.split_crit_edge ], [ @nvme_parse_ana_log.__already_done.52, %land.rhs276.cleanup393.sink.split_crit_edge ], [ @nvme_parse_ana_log.__already_done.53, %land.rhs337.cleanup393.sink.split_crit_edge ]
  %.sink = phi i32 [ 597, %land.rhs35.cleanup393.sink.split_crit_edge ], [ 603, %land.rhs95.cleanup393.sink.split_crit_edge ], [ 605, %land.rhs155.cleanup393.sink.split_crit_edge ], [ 607, %land.rhs215.cleanup393.sink.split_crit_edge ], [ 609, %land.rhs276.cleanup393.sink.split_crit_edge ], [ 613, %land.rhs337.cleanup393.sink.split_crit_edge ]
  %27 = ptrtoint ptr %nvme_parse_ana_log.__already_done.53.sink to i32
  call void @__asan_store1_noabort(i32 %27)
  store i1 true, ptr %nvme_parse_ana_log.__already_done.53.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #15
  br label %cleanup393

cleanup393:                                       ; preds = %cleanup393.sink.split, %for.inc.cleanup393_crit_edge, %if.end385.cleanup393_crit_edge, %land.rhs337.cleanup393_crit_edge, %land.rhs276.cleanup393_crit_edge, %land.rhs215.cleanup393_crit_edge, %land.rhs155.cleanup393_crit_edge, %land.rhs95.cleanup393_crit_edge, %land.rhs35.cleanup393_crit_edge, %if.end.cleanup393_crit_edge
  %retval.2 = phi i32 [ -22, %land.rhs337.cleanup393_crit_edge ], [ -22, %land.rhs276.cleanup393_crit_edge ], [ -22, %land.rhs215.cleanup393_crit_edge ], [ -22, %land.rhs155.cleanup393_crit_edge ], [ -22, %land.rhs95.cleanup393_crit_edge ], [ -22, %land.rhs35.cleanup393_crit_edge ], [ 0, %if.end.cleanup393_crit_edge ], [ -22, %cleanup393.sink.split ], [ 0, %for.inc.cleanup393_crit_edge ], [ %call386, %if.end385.cleanup393_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_lookup_ana_group_desc(ptr nocapture noundef readnone %ctrl, ptr nocapture noundef readonly %desc, ptr nocapture noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = call ptr @memcpy(ptr %data, ptr %desc, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_mpath_set_live(ptr noundef %ns) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 8
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 17
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %subsys = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subsys, align 8
  %dev = getelementptr inbounds %struct.nvme_subsystem, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk, align 8
  %call5 = tail call i32 @device_add_disk(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull @nvme_ns_id_attr_groups) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %flags8 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags8) #15
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %8 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subsys, align 8
  %dev.i = getelementptr inbounds %struct.nvme_subsystem, ptr %9, i32 0, i32 1
  %cdev_device.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 11
  %parent.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev.i, ptr %parent.i, align 8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %9, align 8
  %instance3.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %instance3.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %cdev_device.i, ptr noundef nonnull @.str.54, i32 noundef %12, i32 noundef %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.if.end11_crit_edge

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %cdev.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 10
  %call5.i = tail call i32 @nvme_cdev_add(ptr noundef %cdev.i, ptr noundef %cdev_device.i, ptr noundef nonnull @nvme_ns_head_chr_fops, ptr noundef null) #15
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %if.end9.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %lock = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %ctrl.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl.i, align 8
  %state.i = getelementptr inbounds %struct.nvme_ctrl, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %nvme_path_is_optimized.exit, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

nvme_path_is_optimized.exit:                      ; preds = %if.end11
  %ana_state.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 4
  %19 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ana_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp1.i = icmp eq i32 %20, 1
  br i1 %cmp1.i, label %if.then13, label %nvme_path_is_optimized.exit.if.end17_crit_edge

nvme_path_is_optimized.exit.if.end17_crit_edge:   ; preds = %nvme_path_is_optimized.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then13:                                        ; preds = %nvme_path_is_optimized.exit
  %srcu = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 1
  %call.i36 = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #15
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 1, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #15
  %21 = tail call fastcc ptr @__nvme_find_path(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i36)
  %tobool.not.i37 = icmp ult i32 %call.i36, 2
  br i1 %tobool.not.i37, label %if.then13.srcu_read_unlock.exit_crit_edge, label %land.rhs.i38

if.then13.srcu_read_unlock.exit_crit_edge:        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

land.rhs.i38:                                     ; preds = %if.then13
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i38.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !171

land.rhs.i38.srcu_read_unlock.exit_crit_edge:     ; preds = %land.rhs.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i38
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 189, i32 noundef 9, ptr noundef null) #15
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i38.srcu_read_unlock.exit_crit_edge, %if.then13.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #15
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i36) #15
  br label %if.end17

if.end17:                                         ; preds = %srcu_read_unlock.exit, %nvme_path_is_optimized.exit.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %srcu19 = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 1
  tail call void @synchronize_srcu(ptr noundef %srcu19) #15
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 15
  %call20 = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_shutdown_disk(ptr noundef %head) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 12
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end:                                           ; preds = %entry
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15
  %call = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  %flags = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 17
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cdev = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 10
  %cdev_device = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 11
  tail call void @nvme_cdev_del(ptr noundef %cdev, ptr noundef %cdev_device) #15
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  tail call void @del_gendisk(ptr noundef %5) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cdev_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_remove_disk(ptr noundef %head) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 12
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mark_disk_dead(ptr noundef nonnull %1) #15
  %requeue_work = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 15
  %call = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #15
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %requeue_work) #15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  tail call void @blk_cleanup_disk(ptr noundef %3) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mark_disk_dead(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_init_ctrl(ptr noundef %ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_lock = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 76
  tail call void @__mutex_init(ptr noundef %ana_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @nvme_mpath_init_ctrl.__key) #15
  %anatt_timer = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 79
  tail call void @init_timer_key(ptr noundef %anatt_timer, ptr noundef nonnull @nvme_anatt_timeout, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvme_mpath_init_ctrl.__key.15) #15
  %ana_work = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80
  tail call void @__init_work(ptr noundef %ana_work, i32 noundef 0) #15
  %0 = ptrtoint ptr %ana_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %ana_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @nvme_mpath_init_ctrl.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry7 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80, i32 1
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvme_ana_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_anatt_timeout(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3272
  %device = getelementptr i8, ptr %t, i32 -2056
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.55) #18
  %call = tail call i32 @nvme_reset_ctrl(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_ana_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %work, i32 -3316
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %work, i32 -3320
  %call = tail call fastcc i32 @nvme_read_ana_log(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_mpath_init_identify(ptr noundef %ctrl, ptr nocapture noundef readonly %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_hw_sectors = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 32
  %0 = ptrtoint ptr %max_hw_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hw_sectors, align 8
  %shl = shl i32 %1, 9
  %2 = load i8, ptr @multipath, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %subsys = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 23
  %3 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subsys, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cmic = getelementptr inbounds %struct.nvme_subsystem, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %cmic to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmic, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %max_namespaces = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 45
  %8 = ptrtoint ptr %max_namespaces to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_namespaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %lor.lhs.false6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false6:                                   ; preds = %if.end
  %nn = getelementptr inbounds %struct.nvme_id_ctrl, ptr %id, i32 0, i32 58
  %10 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nn, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp = icmp ugt i32 %9, %12
  br i1 %cmp, label %lor.lhs.false6.do.end_crit_edge, label %if.end11

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false6.do.end_crit_edge, %if.end.do.end_crit_edge
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %9) #18
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false6
  %anacap = getelementptr inbounds %struct.nvme_id_ctrl, ptr %id, i32 0, i32 51
  %15 = ptrtoint ptr %anacap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %anacap, align 1
  %anacap12 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 72
  %17 = ptrtoint ptr %anacap12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %anacap12, align 8
  %anatt = getelementptr inbounds %struct.nvme_id_ctrl, ptr %id, i32 0, i32 50
  %18 = ptrtoint ptr %anatt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %anatt, align 2
  %anatt13 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 73
  %20 = ptrtoint ptr %anatt13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %anatt13, align 1
  %nanagrpid = getelementptr inbounds %struct.nvme_id_ctrl, ptr %id, i32 0, i32 53
  %21 = ptrtoint ptr %nanagrpid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nanagrpid, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %nanagrpid14 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 75
  %24 = ptrtoint ptr %nanagrpid14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nanagrpid14, align 8
  %anagrpmax = getelementptr inbounds %struct.nvme_id_ctrl, ptr %id, i32 0, i32 52
  %25 = ptrtoint ptr %anagrpmax to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %anagrpmax, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %anagrpmax15 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 74
  %28 = ptrtoint ptr %anagrpmax15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %anagrpmax15, align 4
  %mul = shl i32 %23, 5
  %mul18 = shl i32 %9, 2
  %add = add i32 %mul18, 16
  %add19 = add i32 %add, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %shl)
  %cmp20 = icmp ugt i32 %add19, %shl
  br i1 %cmp20, label %do.end25, label %if.end31

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %device26 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %29 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.24, i32 noundef %add19, i32 noundef %shl) #18
  %31 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.27) #18
  br label %out_uninit

if.end31:                                         ; preds = %if.end11
  %ana_log_size32 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 78
  %33 = ptrtoint ptr %ana_log_size32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ana_log_size32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %34)
  %cmp33 = icmp ugt i32 %add19, %34
  br i1 %cmp33, label %if.then35, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then35:                                        ; preds = %if.end31
  %ana_log_buf.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %35 = ptrtoint ptr %ana_log_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ana_log_buf.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %36, null
  br i1 %cmp.i.not.i, label %if.then35.nvme_mpath_stop.exit_crit_edge, label %if.end.i81

if.then35.nvme_mpath_stop.exit_crit_edge:         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvme_mpath_stop.exit

if.end.i81:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %anatt_timer.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 79
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %anatt_timer.i) #15
  %ana_work.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 80
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ana_work.i) #15
  br label %nvme_mpath_stop.exit

nvme_mpath_stop.exit:                             ; preds = %if.end.i81, %if.then35.nvme_mpath_stop.exit_crit_edge
  %37 = ptrtoint ptr %ana_log_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ana_log_buf.i.i, align 8
  tail call void @kfree(ptr noundef %38) #15
  %39 = ptrtoint ptr %ana_log_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ana_log_buf.i.i, align 8
  %40 = ptrtoint ptr %ana_log_size32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ana_log_size32, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add19, i32 noundef 3264) #19
  %41 = ptrtoint ptr %ana_log_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i, ptr %ana_log_buf.i.i, align 8
  %tobool37.not = icmp eq ptr %call9.i, null
  br i1 %tobool37.not, label %nvme_mpath_stop.exit.cleanup_crit_edge, label %nvme_mpath_stop.exit.if.end40_crit_edge

nvme_mpath_stop.exit.if.end40_crit_edge:          ; preds = %nvme_mpath_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

nvme_mpath_stop.exit.cleanup_crit_edge:           ; preds = %nvme_mpath_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end40:                                         ; preds = %nvme_mpath_stop.exit.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %42 = ptrtoint ptr %ana_log_size32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add19, ptr %ana_log_size32, align 4
  %call42 = tail call fastcc i32 @nvme_read_ana_log(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end40.out_uninit_crit_edge

if.end40.out_uninit_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_uninit

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_uninit:                                       ; preds = %if.end40.out_uninit_crit_edge, %do.end25
  %error.0 = phi i32 [ 0, %do.end25 ], [ %call42, %if.end40.out_uninit_crit_edge ]
  %ana_log_buf.i82 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %43 = ptrtoint ptr %ana_log_buf.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ana_log_buf.i82, align 8
  tail call void @kfree(ptr noundef %44) #15
  %45 = ptrtoint ptr %ana_log_buf.i82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ana_log_buf.i82, align 8
  %ana_log_size.i83 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 78
  %46 = ptrtoint ptr %ana_log_size.i83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ana_log_size.i83, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_uninit, %if.end40.cleanup_crit_edge, %nvme_mpath_stop.exit.cleanup_crit_edge, %do.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %error.0, %out_uninit ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %nvme_mpath_stop.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_mpath_uninit(ptr nocapture noundef %ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_log_buf = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %0 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ana_log_buf, align 8
  tail call void @kfree(ptr noundef %1) #15
  %2 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ana_log_buf, align 8
  %ana_log_size = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 78
  %3 = ptrtoint ptr %ana_log_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ana_log_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_read_ana_log(ptr noundef %ctrl) unnamed_addr #1 align 64 {
entry:
  %nr_change_groups = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_change_groups) #15
  %0 = ptrtoint ptr %nr_change_groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_change_groups, align 4
  %ana_lock = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 76
  tail call void @mutex_lock_nested(ptr noundef %ana_lock, i32 noundef 0) #15
  %ana_log_buf = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 77
  %1 = ptrtoint ptr %ana_log_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ana_log_buf, align 8
  %ana_log_size = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 78
  %3 = ptrtoint ptr %ana_log_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ana_log_size, align 4
  %call = tail call i32 @nvme_get_log(ptr noundef %ctrl, i32 noundef -1, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %2, i32 noundef %4, i64 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.58, i32 noundef %call) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @nvme_parse_ana_log(ptr noundef %ctrl, ptr noundef nonnull %nr_change_groups, ptr noundef nonnull @nvme_update_ana_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %nr_change_groups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_change_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %anatt_timer9 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 79
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %anatt = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 73
  %9 = ptrtoint ptr %anatt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %anatt, align 1
  %conv = zext i8 %10 to i32
  %mul7 = mul nuw nsw i32 %conv, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %mul7, %11
  %call8 = call i32 @mod_timer(ptr noundef %anatt_timer9, i32 noundef %add) #15
  br label %out_unlock

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = call i32 @del_timer_sync(ptr noundef %anatt_timer9) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.else, %if.then6, %if.end.out_unlock_crit_edge, %do.end
  %error.0 = phi i32 [ %call, %do.end ], [ %call1, %if.end.out_unlock_crit_edge ], [ 0, %if.then6 ], [ 0, %if.else ]
  call void @mutex_unlock(ptr noundef %ana_lock) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_change_groups) #15
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_set_iopolicy(ptr noundef readonly %val, ptr nocapture noundef readnone %kp) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %val, ptr noundef nonnull dereferenceable(5) @.str.29, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %val, ptr noundef nonnull dereferenceable(12) @.str.30, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end8_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %storemerge = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ 1, %if.else.if.end8_crit_edge ]
  store i32 %storemerge, ptr @iopolicy, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.return_crit_edge ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_get_iopolicy(ptr nocapture noundef writeonly %buf, ptr nocapture noundef readnone %kp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iopolicy, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @nvme_iopolicy_names, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_split(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_remap(ptr noundef %bio, i32 noundef %dev, i64 noundef %from) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 1), ptr blockaddress(@trace_block_bio_remap, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !175
  %call42 = tail call i32 @__traceiter_block_bio_remap(ptr noundef null, ptr noundef %bio, i32 noundef %dev, i64 noundef %from) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !176
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_block_bio_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 486, ptr noundef nonnull @.str.4) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !178
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nvme_available_path(ptr noundef %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @nvme_available_path.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nvme_available_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 342, ptr noundef nonnull @.str.3) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load volatile ptr, ptr %head, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %head
  br i1 %cmp.not30, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %do.end.for.body_crit_edge ]
  %ctrl = getelementptr i8, ptr %.pn31, i32 -20
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 8
  %flags = getelementptr inbounds %struct.nvme_ctrl, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %state = getelementptr inbounds %struct.nvme_ctrl, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end13.cleanup_crit_edge, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %if.end13.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_remap(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_tryget_ns_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_put_ns_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_ns_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_cdev_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_ns_head_chr_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_ns_head_chr_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -908
  %call1 = tail call zeroext i1 @nvme_tryget_ns_head(ptr noundef %add.ptr.i) #15
  %. = select i1 %call1, i32 0, i32 -6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_ns_head_chr_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -908
  tail call void @nvme_put_ns_head(ptr noundef %add.ptr.i) #15
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_reset_ctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_get_log(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_update_ana_state(ptr noundef %ctrl, ptr nocapture noundef readonly %desc, ptr nocapture noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nnsids = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %nnsids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nnsids, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_update_ana_state.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_update_ana_state, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 8
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %state = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 8
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [16 x ptr], ptr @nvme_ana_state_names, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvme_update_ana_state.__UNIQUE_ID_ddebug370, ptr noundef %4, ptr noundef nonnull @.str.62, i32 noundef %7, ptr noundef %11) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state3 = getelementptr inbounds %struct.nvme_ana_group_desc, ptr %desc, i32 0, i32 3
  %12 = ptrtoint ptr %state3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp = icmp eq i8 %13, 15
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end6.cleanup44_crit_edge, label %if.end9

if.end6.cleanup44_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end9:                                          ; preds = %if.end6
  %namespaces_rwsem = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 15
  tail call void @down_read(ptr noundef %namespaces_rwsem) #15
  %namespaces = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 14
  %16 = ptrtoint ptr %namespaces to i32
  call void @__asan_load4_noabort(i32 %16)
  %ns.074 = load ptr, ptr %namespaces, align 8
  %cmp12.not75 = icmp eq ptr %ns.074, %namespaces
  br i1 %cmp12.not75, label %if.end9.for.end_crit_edge, label %if.end9.again.preheader_crit_edge

if.end9.again.preheader_crit_edge:                ; preds = %if.end9
  br label %again.preheader

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

again.preheader:                                  ; preds = %cleanup.again.preheader_crit_edge, %if.end9.again.preheader_crit_edge
  %ns.077 = phi ptr [ %ns.0, %cleanup.again.preheader_crit_edge ], [ %ns.074, %if.end9.again.preheader_crit_edge ]
  %n.076 = phi i32 [ %n.2, %cleanup.again.preheader_crit_edge ], [ 0, %if.end9.again.preheader_crit_edge ]
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns.077, i32 0, i32 8
  %ana_grpid.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.077, i32 0, i32 5
  %ana_state.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.077, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.nvme_ns, ptr %ns.077, i32 0, i32 16
  br label %again

again:                                            ; preds = %if.end31.again_crit_edge, %again.preheader
  %n.1 = phi i32 [ %inc27, %if.end31.again_crit_edge ], [ %n.076, %again.preheader ]
  %arrayidx16 = getelementptr %struct.nvme_ana_group_desc, ptr %desc, i32 0, i32 5, i32 %n.1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head, align 8
  %ns_id = getelementptr inbounds %struct.nvme_ns_head, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ns_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp17 = icmp ult i32 %23, %19
  br i1 %cmp17, label %again.cleanup_crit_edge, label %if.end20

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %again
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp23 = icmp eq i32 %23, %19
  br i1 %cmp23, label %if.then25, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then25:                                        ; preds = %if.end20
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  %27 = ptrtoint ptr %ana_grpid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ana_grpid.i, align 8
  %28 = ptrtoint ptr %state3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %state3, align 8
  %conv.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %ana_state.i, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  %31 = ptrtoint ptr %ana_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ana_state.i, align 4
  %33 = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %if.then.i, label %if.then25.if.end26_crit_edge

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nvme_mpath_set_live(ptr noundef %ns.077) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %if.then25.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %inc27 = add i32 %n.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27, i32 %2)
  %cmp28 = icmp eq i32 %inc27, %2
  br i1 %cmp28, label %if.end26.for.end_crit_edge, label %if.end31

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end31:                                         ; preds = %if.end26
  %35 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head, align 8
  %ns_id33 = getelementptr inbounds %struct.nvme_ns_head, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ns_id33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ns_id33, align 4
  %cmp34 = icmp ugt i32 %38, %19
  br i1 %cmp34, label %if.end31.again_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31.again_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %again.cleanup_crit_edge
  %n.2 = phi i32 [ %n.1, %again.cleanup_crit_edge ], [ %inc27, %if.end31.cleanup_crit_edge ]
  %39 = ptrtoint ptr %ns.077 to i32
  call void @__asan_load4_noabort(i32 %39)
  %ns.0 = load ptr, ptr %ns.077, align 8
  %cmp12.not = icmp eq ptr %ns.0, %namespaces
  br i1 %cmp12.not, label %cleanup.for.end_crit_edge, label %cleanup.again.preheader_crit_edge

cleanup.again.preheader_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.preheader

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end26.for.end_crit_edge, %if.end9.for.end_crit_edge
  tail call void @up_read(ptr noundef %namespaces_rwsem) #15
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %if.end6.cleanup44_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__param_multipath, !1, !"__param_multipath", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/multipath.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_multipathtype339, !1, !"__UNIQUE_ID_multipathtype339", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_multipath340, !4, !"__UNIQUE_ID_multipath340", i1 false, i1 false}
!4 = !{!"../drivers/nvme/host/multipath.c", i32 13, i32 1}
!5 = !{ptr @__param_iopolicy, !6, !"__param_iopolicy", i1 false, i1 false}
!6 = !{!"../drivers/nvme/host/multipath.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_iopolicy341, !8, !"__UNIQUE_ID_iopolicy341", i1 false, i1 false}
!8 = !{!"../drivers/nvme/host/multipath.c", i32 44, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/nvme/host/multipath.c", i32 56, i32 2}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/nvme/host/multipath.c", i32 94, i32 22}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/nvme/host/multipath.c", i32 98, i32 21}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/nvme/host/multipath.c", i32 199, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/nvme/host/multipath.c", i32 327, i32 7}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nvme_ns_head_ops, !22, !"nvme_ns_head_ops", i1 false, i1 false}
!22 = !{!"../drivers/nvme/host/multipath.c", i32 427, i32 38}
!23 = !{ptr @nvme_mpath_alloc_disk.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/nvme/host/multipath.c", i32 500, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvme_mpath_alloc_disk.__key.6, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/multipath.c", i32 502, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvme_mpath_alloc_disk.__key.8, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/nvme/host/multipath.c", i32 503, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nvme_mpath_alloc_disk.__key.10, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/nvme/host/multipath.c", i32 513, i32 15}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nvme/host/multipath.c", i32 771, i32 1}
!36 = !{ptr @subsys_attr_iopolicy, !35, !"subsys_attr_iopolicy", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nvme/host/multipath.c", i32 779, i32 1}
!39 = !{ptr @dev_attr_ana_grpid, !38, !"dev_attr_ana_grpid", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nvme/host/multipath.c", i32 788, i32 1}
!42 = !{ptr @dev_attr_ana_state, !41, !"dev_attr_ana_state", i1 false, i1 false}
!43 = !{ptr @nvme_mpath_init_ctrl.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/nvme/host/multipath.c", i32 860, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nvme_mpath_init_ctrl.__key.15, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/nvme/host/multipath.c", i32 861, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nvme_mpath_init_ctrl.__key.17, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/nvme/host/multipath.c", i32 862, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nvme/host/multipath.c", i32 878, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nvme_mpath_init_identify._entry, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @nvme_mpath_init_identify._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nvme/host/multipath.c", i32 892, i32 3}
!61 = !{ptr @nvme_mpath_init_identify._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvme_mpath_init_identify._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nvme/host/multipath.c", i32 895, i32 3}
!65 = !{ptr @nvme_mpath_init_identify._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @nvme_mpath_init_identify._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__param_str_multipath, !1, !"__param_str_multipath", i1 false, i1 false}
!68 = !{ptr @multipath, !69, !"multipath", i1 false, i1 false}
!69 = !{!"../drivers/nvme/host/multipath.c", i32 11, i32 13}
!70 = !{ptr @__param_str_iopolicy, !6, !"__param_str_iopolicy", i1 false, i1 false}
!71 = !{ptr @__param_ops_iopolicy, !6, !"__param_ops_iopolicy", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nvme/host/multipath.c", i32 27, i32 20}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/nvme/host/multipath.c", i32 29, i32 25}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/nvme/host/multipath.c", i32 39, i32 22}
!78 = !{ptr @nvme_iopolicy_names, !79, !"nvme_iopolicy_names", i1 false, i1 false}
!79 = !{!"../drivers/nvme/host/multipath.c", i32 16, i32 20}
!80 = !{ptr @iopolicy, !81, !"iopolicy", i1 false, i1 false}
!81 = !{!"../drivers/nvme/host/multipath.c", i32 21, i32 12}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../drivers/nvme/host/multipath.c", i32 229, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/nvme/host/multipath.c", i32 381, i32 3}
!86 = !{ptr @nvme_ns_head_submit_bio._rs, !85, !"_rs", i1 false, i1 false}
!87 = !{ptr @__func__.nvme_ns_head_submit_bio, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nvme_ns_head_submit_bio._entry, !85, !"_entry", i1 false, i1 false}
!91 = !{ptr @nvme_ns_head_submit_bio._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @nvme_ns_head_submit_bio._rs.35, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/nvme/host/multipath.c", i32 387, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nvme_ns_head_submit_bio._entry.36, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nvme_ns_head_submit_bio._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/trace/events/block.h", i32 456, i32 1}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../drivers/nvme/host/multipath.c", i32 342, i32 2}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/nvme/host/multipath.c", i32 777, i32 25}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/nvme/host/multipath.c", i32 154, i32 11}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/nvme/host/multipath.c", i32 155, i32 26}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/nvme/host/multipath.c", i32 156, i32 29}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/nvme/host/multipath.c", i32 157, i32 29}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/nvme/host/multipath.c", i32 158, i32 31}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/nvme/host/multipath.c", i32 159, i32 23}
!123 = !{ptr @nvme_ana_state_names, !124, !"nvme_ana_state_names", i1 false, i1 false}
!124 = !{!"../drivers/nvme/host/multipath.c", i32 153, i32 20}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/nvme/host/multipath.c", i32 597, i32 7}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/nvme/host/multipath.c", i32 603, i32 7}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../drivers/nvme/host/multipath.c", i32 605, i32 7}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/nvme/host/multipath.c", i32 607, i32 7}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/nvme/host/multipath.c", i32 609, i32 7}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/nvme/host/multipath.c", i32 613, i32 7}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/nvme/host/multipath.c", i32 469, i32 41}
!139 = !{ptr @nvme_ns_head_chr_fops, !140, !"nvme_ns_head_chr_fops", i1 false, i1 false}
!140 = !{!"../drivers/nvme/host/multipath.c", i32 456, i32 37}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/nvme/host/multipath.c", i32 729, i32 2}
!143 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @nvme_anatt_timeout._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @nvme_anatt_timeout._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nvme/host/multipath.c", i32 686, i32 3}
!149 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nvme_read_ana_log._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @nvme_read_ana_log._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/host/multipath.c", i32 649, i32 2}
!154 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @nvme_update_ana_state.__UNIQUE_ID_ddebug370, !153, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i8 0, i8 2}
!169 = !{i64 2156163766}
!170 = !{!"branch_weights", i32 2146410443, i32 1073205}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2156117087}
!173 = !{ptr @nvme_lookup_ana_group_desc, ptr @nvme_update_ana_state}
!174 = !{i64 2148725657, i64 2148725662, i64 2148725675, i64 2148725719, i64 2148725753, i64 2148725774}
!175 = !{i64 2155457324}
!176 = !{i64 2155457545}
!177 = !{i64 2149507382}
!178 = !{i64 2149508418}
