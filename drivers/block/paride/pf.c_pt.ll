; ModuleID = '/llk/IR_all_yes/drivers/block/paride/pf.c_pt.bc'
source_filename = "../drivers/block/paride/pf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pf_unit = type { %struct.pi_adapter, ptr, i32, i32, i32, i32, i32, i32, [8 x i8], ptr, %struct.blk_mq_tag_set, %struct.list_head }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__param_str_verbose = internal constant [11 x i8] c"pf.verbose\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype278 = internal constant [25 x i8] c"pf.parmtype=verbose:bool\00", section ".modinfo", align 1
@__param_str_major = internal constant [9 x i8] c"pf.major\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@major = internal global { i32, [28 x i8] } { i32 47, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype279 = internal constant [22 x i8] c"pf.parmtype=major:int\00", section ".modinfo", align 1
@__param_str_name = internal constant [8 x i8] c"pf.name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_name = internal constant %struct.kernel_param { ptr @__param_str_name, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @name } }, section "__param", align 4
@__UNIQUE_ID_nametype280 = internal constant [23 x i8] c"pf.parmtype=name:charp\00", section ".modinfo", align 1
@__param_str_cluster = internal constant [11 x i8] c"pf.cluster\00", align 1
@cluster = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_cluster = internal constant %struct.kernel_param { ptr @__param_str_cluster, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @cluster } }, section "__param", align 4
@__UNIQUE_ID_clustertype281 = internal constant [24 x i8] c"pf.parmtype=cluster:int\00", section ".modinfo", align 1
@__param_str_nice = internal constant [8 x i8] c"pf.nice\00", align 1
@nice = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nice = internal constant %struct.kernel_param { ptr @__param_str_nice, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nice } }, section "__param", align 4
@__UNIQUE_ID_nicetype282 = internal constant [21 x i8] c"pf.parmtype=nice:int\00", section ".modinfo", align 1
@__param_str_drive0 = internal constant [10 x i8] c"pf.drive0\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_drive0 = internal constant %struct.kparam_array { i32 7, i32 4, ptr null, ptr @param_ops_int, ptr @drive0 }, align 4
@__param_drive0 = internal constant %struct.kernel_param { ptr @__param_str_drive0, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive0 } }, section "__param", align 4
@__UNIQUE_ID_drive0type283 = internal constant [32 x i8] c"pf.parmtype=drive0:array of int\00", section ".modinfo", align 1
@__param_str_drive1 = internal constant [10 x i8] c"pf.drive1\00", align 1
@__param_arr_drive1 = internal constant %struct.kparam_array { i32 7, i32 4, ptr null, ptr @param_ops_int, ptr @drive1 }, align 4
@__param_drive1 = internal constant %struct.kernel_param { ptr @__param_str_drive1, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive1 } }, section "__param", align 4
@__UNIQUE_ID_drive1type284 = internal constant [32 x i8] c"pf.parmtype=drive1:array of int\00", section ".modinfo", align 1
@__param_str_drive2 = internal constant [10 x i8] c"pf.drive2\00", align 1
@__param_arr_drive2 = internal constant %struct.kparam_array { i32 7, i32 4, ptr null, ptr @param_ops_int, ptr @drive2 }, align 4
@__param_drive2 = internal constant %struct.kernel_param { ptr @__param_str_drive2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive2 } }, section "__param", align 4
@__UNIQUE_ID_drive2type285 = internal constant [32 x i8] c"pf.parmtype=drive2:array of int\00", section ".modinfo", align 1
@__param_str_drive3 = internal constant [10 x i8] c"pf.drive3\00", align 1
@__param_arr_drive3 = internal constant %struct.kparam_array { i32 7, i32 4, ptr null, ptr @param_ops_int, ptr @drive3 }, align 4
@__param_drive3 = internal constant %struct.kernel_param { ptr @__param_str_drive3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive3 } }, section "__param", align 4
@__UNIQUE_ID_drive3type286 = internal constant [32 x i8] c"pf.parmtype=drive3:array of int\00", section ".modinfo", align 1
@units = internal global { [4 x %struct.pf_unit], [320 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file287 = internal constant [32 x i8] c"pf.file=drivers/block/paride/pf\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [15 x i8] c"pf.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pf__289_1056_pf_init6 = internal global ptr @pf_init, section ".initcall6.init", align 4
@__exitcall_pf_exit = internal global ptr @pf_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pf\00", [29 x i8] zeroinitializer }, align 32
@drive0 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@drive1 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@drive2 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@drive3 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@pf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: %s version %s, major %d, cluster %d, nice %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pf_init\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/block/paride/pf.c\00", [38 x i8] zeroinitializer }, align 32
@pf_init._entry_ptr = internal global ptr @pf_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.04\00", [27 x i8] zeroinitializer }, align 32
@par_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pf_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@pf_init._entry_ptr.7 = internal global ptr @pf_init._entry.5, section ".printk_index", align 4
@drives = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3], [16 x i8] zeroinitializer }, align 32
@pf_drive_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No ATAPI disk detected\0A\00", [36 x i8] zeroinitializer }, align 32
@pf_init._entry_ptr.10 = internal global ptr @pf_init._entry.8, section ".printk_index", align 4
@pf_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pf_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @pf_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pf_init_unit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pf_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @pf_open, ptr @pf_release, ptr null, ptr @pf_ioctl, ptr @pf_ioctl, ptr @pf_check_events, ptr null, ptr @pf_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@pf_scratch = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@pf_spin_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pf_spin_lock\00", [19 x i8] zeroinitializer }, align 32
@pf_req = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pf_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pf_block = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_cmd = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pf_retries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pf_queue = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ps_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ps_continuation = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ps_ready = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ps_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ps_nice = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ps_tq_active = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ps_tq = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @ps_tq, i64 4), ptr getelementptr (i8, ptr @ps_tq, i64 4) }, ptr @ps_tq_int, %struct.lockdep_map { ptr @ps_tq, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.15, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ps_spinlock __attribute__((unused))\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(ps_tq).work\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/block/paride/pseudo.h:48\00", [63 x i8] zeroinitializer }, align 32
@pf_mask = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start i/o\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before command\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"command DRQ\00", [20 x i8] zeroinitializer }, align 32
@pf_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: command phase error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pf_command\00", [21 x i8] zeroinitializer }, align 32
@pf_command._entry_ptr = internal global ptr @pf_command._entry, section ".printk_index", align 4
@pf_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: %s %s: alt=0x%x stat=0x%x err=0x%x loop=%d phase=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pf_wait\00", [24 x i8] zeroinitializer }, align 32
@pf_wait._entry_ptr = internal global ptr @pf_wait._entry, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read block\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"completion\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Request sense\00", [18 x i8] zeroinitializer }, align 32
@pf_req_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Sense key: %x, ASC: %x, ASQ: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pf_req_sense\00", [19 x i8] zeroinitializer }, align 32
@pf_req_sense._entry_ptr = internal global ptr @pf_req_sense._entry, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data done\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write block\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data wait\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@pf_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pf_mutex, i64 52), ptr getelementptr (i8, ptr @pf_mutex, i64 52) }, ptr @pf_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pf_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pf_mutex\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@__const.pf_identify.ms = private unnamed_addr constant [2 x ptr] [ptr @.str.34, ptr @.str.35], align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"identify\00", [23 x i8] zeroinitializer }, align 32
@pf_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Drive %d, LUN %d, unsupported type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pf_identify\00", [20 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr = internal global ptr @pf_identify._entry, section ".printk_index", align 4
@pf_identify._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %s %s, %s LUN %d, type %d\00", [34 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr.41 = internal global ptr @pf_identify._entry.39, section ".printk_index", align 4
@pf_identify._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", removable\00", [20 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr.44 = internal global ptr @pf_identify._entry.42, section ".printk_index", align 4
@pf_identify._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", no media\0A\00", [20 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr.47 = internal global ptr @pf_identify._entry.45, section ".printk_index", align 4
@pf_identify._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", RO\00", [27 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr.50 = internal global ptr @pf_identify._entry.48, section ".printk_index", align 4
@pf_identify._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.3, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", %llu blocks\0A\00", [17 x i8] zeroinitializer }, align 32
@pf_identify._entry_ptr.53 = internal global ptr @pf_identify._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode sense\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get capacity\00", [19 x i8] zeroinitializer }, align 32
@pf_get_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Drive %d, LUN %d, unsupported block size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pf_get_capacity\00", [16 x i8] zeroinitializer }, align 32
@pf_get_capacity._entry_ptr = internal global ptr @pf_get_capacity._entry, section ".printk_index", align 4
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlock\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eject\00", [26 x i8] zeroinitializer }, align 32
@pf_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Reset (%d) signature = \00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pf_reset\00", [23 x i8] zeroinitializer }, align 32
@pf_reset._entry_ptr = internal global ptr @pf_reset._entry, section ".printk_index", align 4
@pf_reset._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3x\00", [28 x i8] zeroinitializer }, align 32
@pf_reset._entry_ptr.65 = internal global ptr @pf_reset._entry.63, section ".printk_index", align 4
@pf_reset._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (incorrect)\00", [19 x i8] zeroinitializer }, align 32
@pf_reset._entry_ptr.68 = internal global ptr @pf_reset._entry.66, section ".printk_index", align 4
@pf_reset._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pf_reset._entry_ptr.71 = internal global ptr @pf_reset._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 7]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 129, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 130, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 131, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 132, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 133, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 245, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 131, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"drive0\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 136, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"drive1\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 137, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"drive2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 138, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"drive3\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 139, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 995, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [8 x i8] c"par_drv\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 269, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1000, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 141, i32 14 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"pf_drive_count\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 142, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1025, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [8 x i8] c"pf_busy\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"pf_mq_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 283, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 935, i32 9 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"pf_fops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 273, i32 45 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 958, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"pf_scratch\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 253, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"pf_spin_lock\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 161, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"pf_req\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 261, i32 24 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"pf_current\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 266, i32 24 }
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"pf_block\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 262, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"pf_run\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 264, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"pf_count\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 263, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"pf_cmd\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 265, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"pf_buf\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 268, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant [11 x i8] c"pf_retries\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 259, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [9 x i8] c"pf_queue\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 708, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"ps_spinlock\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"ps_continuation\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 40, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant [9 x i8] c"ps_ready\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 41, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"ps_timeout\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 42, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [8 x i8] c"ps_nice\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 44, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"ps_tq_active\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [6 x i8] c"ps_tq\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 46, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant [33 x i8] c"../drivers/block/paride/pseudo.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 48, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant [8 x i8] c"pf_mask\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 696, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 415, i32 48 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 424, i32 44 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 430, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 401, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 849, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 849, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 467, i32 33 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 473, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 453, i32 57 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 890, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 890, i32 23 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 910, i32 55 }
@___asan_gen_.291 = private unnamed_addr constant [9 x i8] c"pf_mutex\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 160, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 610, i32 18 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 610, i32 28 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 616, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 623, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 639, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 642, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 644, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 647, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 648, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 556, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 592, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 601, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 495, i32 45 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 495, i32 54 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 503, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 538, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 540, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 542, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [29 x i8] c"../drivers/block/paride/pf.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 543, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_clustertype281, ptr @__UNIQUE_ID_drive0type283, ptr @__UNIQUE_ID_drive1type284, ptr @__UNIQUE_ID_drive2type285, ptr @__UNIQUE_ID_drive3type286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_majortype279, ptr @__UNIQUE_ID_nametype280, ptr @__UNIQUE_ID_nicetype282, ptr @__UNIQUE_ID_verbosetype278, ptr @__exitcall_pf_exit, ptr @__initcall__kmod_pf__289_1056_pf_init6, ptr @__param_cluster, ptr @__param_drive0, ptr @__param_drive1, ptr @__param_drive2, ptr @__param_drive3, ptr @__param_major, ptr @__param_name, ptr @__param_nice, ptr @__param_verbose, ptr @pf_command._entry, ptr @pf_command._entry_ptr, ptr @pf_exit, ptr @pf_get_capacity._entry, ptr @pf_get_capacity._entry_ptr, ptr @pf_identify._entry, ptr @pf_identify._entry.39, ptr @pf_identify._entry.42, ptr @pf_identify._entry.45, ptr @pf_identify._entry.48, ptr @pf_identify._entry.51, ptr @pf_identify._entry_ptr, ptr @pf_identify._entry_ptr.41, ptr @pf_identify._entry_ptr.44, ptr @pf_identify._entry_ptr.47, ptr @pf_identify._entry_ptr.50, ptr @pf_identify._entry_ptr.53, ptr @pf_init._entry, ptr @pf_init._entry.5, ptr @pf_init._entry.8, ptr @pf_init._entry_ptr, ptr @pf_init._entry_ptr.10, ptr @pf_init._entry_ptr.7, ptr @pf_req_sense._entry, ptr @pf_req_sense._entry_ptr, ptr @pf_reset._entry, ptr @pf_reset._entry.63, ptr @pf_reset._entry.66, ptr @pf_reset._entry.69, ptr @pf_reset._entry_ptr, ptr @pf_reset._entry_ptr.65, ptr @pf_reset._entry_ptr.68, ptr @pf_reset._entry_ptr.71, ptr @pf_wait._entry, ptr @pf_wait._entry_ptr, ptr @verbose, ptr @major, ptr @name, ptr @cluster, ptr @nice, ptr @units, ptr @.str, ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @par_drv, ptr @.str.6, ptr @drives, ptr @pf_drive_count, ptr @.str.9, ptr @pf_busy, ptr @pf_mq_ops, ptr @pf_init_unit.__key, ptr @pf_fops, ptr @.str.11, ptr @pf_scratch, ptr @pf_spin_lock, ptr @.str.12, ptr @pf_req, ptr @pf_current, ptr @pf_block, ptr @pf_run, ptr @pf_count, ptr @pf_cmd, ptr @pf_buf, ptr @pf_retries, ptr @pf_queue, ptr @ps_spinlock, ptr @ps_continuation, ptr @ps_ready, ptr @ps_timeout, ptr @ps_nice, ptr @ps_tq_active, ptr @ps_tq, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pf_mask, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @pf_mutex, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @units to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drives to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_drive_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_init_unit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_scratch to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_spin_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_block to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_continuation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_ready to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_tq_active to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_tq to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_req_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_identify._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_get_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_reset._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_reset._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_reset._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pf_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %unit.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %pf.08 = phi ptr [ @units, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %present = getelementptr inbounds %struct.pf_unit, ptr %pf.08, i32 0, i32 7
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %disk = getelementptr inbounds %struct.pf_unit, ptr %pf.08, i32 0, i32 9
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %3) #9
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %5) #9
  %tag_set = getelementptr inbounds %struct.pf_unit, ptr %pf.08, i32 0, i32 10
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #9
  %pi = getelementptr inbounds %struct.pf_unit, ptr %pf.08, i32 0, i32 1
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %7) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.pf_unit, ptr %pf.08, i32 1
  %inc = add nuw nsw i32 %unit.09, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %8 = load i32, ptr @major, align 4
  %9 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %8, ptr noundef %9) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pf_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  %1 = load ptr, ptr @name, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %entry.cleanup60_crit_edge

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr @name, align 4
  %3 = load i32, ptr @major, align 4
  %4 = load i32, ptr @cluster, align 4
  %5 = load i32, ptr @nice, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  %6 = load ptr, ptr @name, align 4
  %call5 = tail call ptr @pi_register_driver(ptr noundef %6) #9
  store ptr %call5, ptr @par_drv, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %pf_drive_count.promoted = load i32, ptr @pf_drive_count, align 4
  br label %for.body

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = load ptr, ptr @name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %7) #12
  br label %out_unregister_blkdev

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %unit.086 = phi i32 [ 0, %for.cond.preheader ], [ %inc18, %for.inc.for.body_crit_edge ]
  %inc8485 = phi i32 [ %pf_drive_count.promoted, %for.cond.preheader ], [ %inc83, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.086
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %inc8485, 1
  store i32 %inc, ptr @pf_drive_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc83 = phi i32 [ %inc8485, %for.body.for.inc_crit_edge ], [ %inc, %if.then16 ]
  %inc18 = add nuw nsw i32 %unit.086, 1
  %exitcond.not = icmp eq i32 %inc18, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %12 = load i32, ptr @pf_drive_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.then20, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

if.then20:                                        ; preds = %for.end
  %call22 = tail call fastcc i32 @pf_init_unit(ptr noundef nonnull @units, i1 noundef zeroext true, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.do.end56_crit_edge, label %if.then20.if.end59_crit_edge

if.then20.if.end59_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then20.do.end56_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

for.body30:                                       ; preds = %cleanup.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %pf.089 = phi ptr [ %incdec.ptr, %cleanup.for.body30_crit_edge ], [ @units, %for.end.for.body30_crit_edge ]
  %found.088 = phi i32 [ %found.2, %cleanup.for.body30_crit_edge ], [ 0, %for.end.for.body30_crit_edge ]
  %unit.187 = phi i32 [ %inc49, %cleanup.for.body30_crit_edge ], [ 0, %for.end.for.body30_crit_edge ]
  %arrayidx31 = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.187
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx31, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %for.body30.cleanup_crit_edge, label %if.end35

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37 = getelementptr i32, ptr %14, i32 3
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %14, i32 2
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %14, i32 1
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %14, i32 6
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx40, align 4
  %call43 = tail call fastcc i32 @pf_init_unit(ptr noundef %pf.089, i1 noundef zeroext false, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp ne i32 %call43, 0
  %inc46 = zext i1 %tobool44.not to i32
  %spec.select77 = add i32 %found.088, %inc46
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %for.body30.cleanup_crit_edge
  %found.2 = phi i32 [ %spec.select77, %if.end35 ], [ %found.088, %for.body30.cleanup_crit_edge ]
  %inc49 = add nuw nsw i32 %unit.187, 1
  %incdec.ptr = getelementptr %struct.pf_unit, ptr %pf.089, i32 1
  %exitcond91.not = icmp eq i32 %inc49, 4
  br i1 %exitcond91.not, label %if.end51, label %cleanup.for.body30_crit_edge

cleanup.for.body30_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

if.end51:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.2)
  %tobool52.not = icmp eq i32 %found.2, 0
  br i1 %tobool52.not, label %if.end51.do.end56_crit_edge, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end51.do.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

do.end56:                                         ; preds = %if.end51.do.end56_crit_edge, %if.then20.do.end56_crit_edge
  %25 = load ptr, ptr @name, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %25) #12
  %26 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %26) #9
  br label %out_unregister_blkdev

if.end59:                                         ; preds = %if.end51.if.end59_crit_edge, %if.then20.if.end59_crit_edge
  store i1 false, ptr @pf_busy, align 4
  br label %cleanup60

out_unregister_blkdev:                            ; preds = %do.end56, %do.end10
  %27 = load i32, ptr @major, align 4
  %28 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %27, ptr noundef %28) #9
  br label %cleanup60

cleanup60:                                        ; preds = %out_unregister_blkdev, %if.end59, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -19, %out_unregister_blkdev ], [ -16, %entry.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_init_unit(ptr noundef %pf, i1 noundef zeroext %autoprobe, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 10
  %call = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef %tag_set, ptr noundef nonnull @pf_mq_ops, i32 noundef 1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %pf, ptr noundef nonnull @pf_init_unit.__key) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call2 to i32
  br label %out_free_tag_set

if.end6:                                          ; preds = %if.end
  %1 = load i32, ptr @major, align 4
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call2, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %pf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @units to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 344
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.ptr.div, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %minors, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 3
  %name = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %call8 = tail call ptr @strcpy(ptr noundef %disk_name, ptr noundef %name) #14
  %fops = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 8
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pf_fops, ptr %fops, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %flags, align 4
  %events = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 4
  %8 = ptrtoint ptr %events to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %events, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 10
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pf, ptr %private_data, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 9
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %12 = load i32, ptr @cluster, align 4
  %conv = trunc i32 %12 to i16
  tail call void @blk_queue_max_segments(ptr noundef %11, i16 noundef zeroext %conv) #9
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %14, i32 noundef 1) #9
  %rq_list = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 11
  %15 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rq_list, ptr %rq_list, align 4
  %prev.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rq_list, ptr %prev.i, align 4
  %disk10 = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 9
  %17 = ptrtoint ptr %disk10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %disk10, align 4
  %pi = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 1
  %18 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pf, ptr %pi, align 4
  %media_status = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 3
  %19 = ptrtoint ptr %media_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %media_status, align 4
  %20 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_minor, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr [7 x i32], ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %drive = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %26 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %drive, align 4
  %27 = load i32, ptr %first_minor, align 4
  %arrayidx14 = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr [7 x i32], ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15, align 4
  %lun = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 5
  %32 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lun, align 4
  %33 = load ptr, ptr @name, align 4
  %34 = load i32, ptr %first_minor, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 8, ptr noundef nonnull @.str.11, ptr noundef %33, i32 noundef %34)
  %35 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pi, align 4
  %conv22 = zext i1 %autoprobe to i32
  %37 = load i8, ptr @verbose, align 1, !range !255
  %38 = zext i8 %37 to i32
  %call27 = tail call i32 @pi_init(ptr noundef %36, i32 noundef %conv22, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay, ptr noundef nonnull @pf_scratch, i32 noundef 2, i32 noundef %38, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end6.out_free_disk_crit_edge, label %if.end30

if.end6.out_free_disk_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_disk

if.end30:                                         ; preds = %if.end6
  %39 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i1 = icmp eq i32 %40, -1
  br i1 %cmp.i1, label %for.cond.preheader.i, label %if.else23.i

for.cond.preheader.i:                             ; preds = %if.end30
  %41 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %drive, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %for.cond.preheader.i
  %call.i = tail call fastcc i32 @pf_reset(ptr noundef %pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %for.body.i.for.inc19.i_crit_edge

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.i

if.then4.i:                                       ; preds = %for.body.i
  %42 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp5.not.i = icmp eq i32 %43, -1
  br i1 %cmp5.not.i, label %for.cond9.preheader.i, label %if.then4.i.pf_probe.exit_crit_edge

if.then4.i.pf_probe.exit_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_probe.exit

for.cond9.preheader.i:                            ; preds = %if.then4.i
  %44 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %lun, align 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.cond9.preheader.i
  %call13.i = tail call fastcc i32 @pf_identify(ptr noundef %pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.body12.i.if.end34_crit_edge, label %for.inc.i

for.body12.i.if.end34_crit_edge:                  ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.inc.i:                                        ; preds = %for.body12.i
  %45 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lun, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %lun, align 4
  %cmp11.i = icmp slt i32 %inc.i, 8
  br i1 %cmp11.i, label %for.inc.i.for.body12.i_crit_edge, label %for.inc.i.for.inc19.i_crit_edge

for.inc.i.for.inc19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.i

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.inc19.i:                                      ; preds = %for.inc.i.for.inc19.i_crit_edge, %for.body.i.for.inc19.i_crit_edge
  %47 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %drive, align 4
  %inc21.i = add i32 %48, 1
  store i32 %inc21.i, ptr %drive, align 4
  %cmp3.i = icmp slt i32 %inc21.i, 2
  br i1 %cmp3.i, label %for.inc19.i.for.body.i_crit_edge, label %for.inc19.i.out_pi_release_crit_edge

for.inc19.i.out_pi_release_crit_edge:             ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pi_release

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else23.i:                                      ; preds = %if.end30
  %call24.i = tail call fastcc i32 @pf_reset(ptr noundef %pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.else23.i.out_pi_release_crit_edge

if.else23.i.out_pi_release_crit_edge:             ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pi_release

if.end27.i:                                       ; preds = %if.else23.i
  %49 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp29.not.i = icmp eq i32 %50, -1
  br i1 %cmp29.not.i, label %for.cond34.preheader.i, label %if.end27.i.pf_probe.exit_crit_edge

if.end27.i.pf_probe.exit_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_probe.exit

for.cond34.preheader.i:                           ; preds = %if.end27.i
  %51 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %lun, align 4
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.inc42.i.for.body37.i_crit_edge, %for.cond34.preheader.i
  %call38.i = tail call fastcc i32 @pf_identify(ptr noundef %pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %for.body37.i.if.end34_crit_edge, label %for.inc42.i

for.body37.i.if.end34_crit_edge:                  ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.inc42.i:                                      ; preds = %for.body37.i
  %52 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lun, align 4
  %inc44.i = add i32 %53, 1
  store i32 %inc44.i, ptr %lun, align 4
  %cmp36.i = icmp slt i32 %inc44.i, 8
  br i1 %cmp36.i, label %for.inc42.i.for.body37.i_crit_edge, label %for.inc42.i.out_pi_release_crit_edge

for.inc42.i.out_pi_release_crit_edge:             ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pi_release

for.inc42.i.for.body37.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.i

pf_probe.exit:                                    ; preds = %if.end27.i.pf_probe.exit_crit_edge, %if.then4.i.pf_probe.exit_crit_edge
  %call31.i = tail call fastcc i32 @pf_identify(ptr noundef %pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not, label %pf_probe.exit.if.end34_crit_edge, label %pf_probe.exit.out_pi_release_crit_edge

pf_probe.exit.out_pi_release_crit_edge:           ; preds = %pf_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pi_release

pf_probe.exit.if.end34_crit_edge:                 ; preds = %pf_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %pf_probe.exit.if.end34_crit_edge, %for.body37.i.if.end34_crit_edge, %for.body12.i.if.end34_crit_edge
  %call.i2 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %call2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool36.not = icmp eq i32 %call.i2, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_pi_release_crit_edge

if.end34.out_pi_release_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pi_release

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %present = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 7
  %54 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %present, align 4
  br label %cleanup

out_pi_release:                                   ; preds = %if.end34.out_pi_release_crit_edge, %pf_probe.exit.out_pi_release_crit_edge, %for.inc42.i.out_pi_release_crit_edge, %if.else23.i.out_pi_release_crit_edge, %for.inc19.i.out_pi_release_crit_edge
  %ret.0 = phi i32 [ %call31.i, %pf_probe.exit.out_pi_release_crit_edge ], [ %call.i2, %if.end34.out_pi_release_crit_edge ], [ -1, %if.else23.i.out_pi_release_crit_edge ], [ -19, %for.inc19.i.out_pi_release_crit_edge ], [ -19, %for.inc42.i.out_pi_release_crit_edge ]
  %55 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %56) #9
  br label %out_free_disk

out_free_disk:                                    ; preds = %out_pi_release, %if.end6.out_free_disk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_pi_release ], [ -19, %if.end6.out_free_disk_crit_edge ]
  %57 = ptrtoint ptr %disk10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk10, align 4
  tail call void @blk_cleanup_disk(ptr noundef %58) #9
  br label %out_free_tag_set

out_free_tag_set:                                 ; preds = %out_free_disk, %if.then4
  %ret.2 = phi i32 [ %0, %if.then4 ], [ %ret.1, %out_free_disk ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_tag_set, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free_tag_set ], [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pf_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pf_spin_lock) #9
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  %6 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 12
  %rq_list = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %8, ptr noundef %rq_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rq_list, ptr %6, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 12, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call fastcc void @pf_request()
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pf_spin_lock) #9
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pf_request() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pf_busy, align 4
  br i1 %.b, label %entry.if.end27_crit_edge, label %entry.repeat_crit_edge

entry.repeat_crit_edge:                           ; preds = %entry
  br label %repeat

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

repeat:                                           ; preds = %repeat.backedge, %entry.repeat_crit_edge
  %0 = load ptr, ptr @pf_req, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %land.lhs.true, label %repeat.if.end4_crit_edge

repeat.if.end4_crit_edge:                         ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %repeat
  %1 = load i32, ptr @pf_queue, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %land.lhs.true
  %spec.store.select9.i = phi i32 [ %spec.store.select.i, %do.cond.i.do.body.i_crit_edge ], [ %1, %land.lhs.true ]
  %inc.i = add i32 %spec.store.select9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 4
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %present.i = getelementptr [4 x %struct.pf_unit], ptr @units, i32 0, i32 %spec.store.select9.i, i32 7
  %2 = ptrtoint ptr %present.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %land.lhs.true.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %rq_list.i = getelementptr [4 x %struct.pf_unit], ptr @units, i32 0, i32 %spec.store.select9.i, i32 11
  %4 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %rq_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.do.cond.i_crit_edge, label %if.then2.i

land.lhs.true.i.do.cond.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  store i32 %spec.store.select.i, ptr @pf_queue, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -56
  store ptr %add.ptr.i, ptr @pf_req, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.i.list_del_init.exit.i_crit_edge

if.then2.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then2.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %14 = load ptr, ptr @pf_req, align 4
  tail call void @blk_mq_start_request(ptr noundef %14) #9
  br label %set_next_request.exit

do.cond.i:                                        ; preds = %land.lhs.true.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %cmp5.not.i = icmp eq i32 %spec.store.select.i, %1
  br i1 %cmp5.not.i, label %do.cond.i.set_next_request.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.set_next_request.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_next_request.exit

set_next_request.exit:                            ; preds = %do.cond.i.set_next_request.exit_crit_edge, %list_del_init.exit.i
  %15 = load ptr, ptr @pf_req, align 4
  %cmp6.i.not = icmp eq ptr %15, null
  br i1 %cmp6.i.not, label %set_next_request.exit.if.end27_crit_edge, label %set_next_request.exit.if.end4_crit_edge

set_next_request.exit.if.end4_crit_edge:          ; preds = %set_next_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

set_next_request.exit.if.end27_crit_edge:         ; preds = %set_next_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end4:                                          ; preds = %set_next_request.exit.if.end4_crit_edge, %repeat.if.end4_crit_edge
  %16 = phi ptr [ %15, %set_next_request.exit.if.end4_crit_edge ], [ %0, %repeat.if.end4_crit_edge ]
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 8
  store ptr %22, ptr @pf_current, align 4
  %__sector.i = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 9
  %23 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %24 to i32
  store i32 %conv, ptr @pf_block, align 4
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %26, 9
  store i32 %shr.i, ptr @pf_run, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 10
  %27 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end4.blk_rq_cur_sectors.exit_crit_edge, label %land.lhs.true.i.i.i

if.end4.blk_rq_cur_sectors.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true.i.i.i:                              ; preds = %if.end4
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %32 to i8
  %33 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge70
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge71
  ]

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge71: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge70: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 20
  %34 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %35, i32 %37, i32 1
  %40 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %41, %39
  %42 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub.i.i) #9
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %35, i32 %37, i32 2
  %43 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %44, %39
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %45 = tail call i32 @llvm.umin.i32(i32 %42, i32 %sub41.i.i) #9
  br label %blk_rq_cur_sectors.exit

blk_rq_cur_sectors.exit:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge70, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge71, %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge, %if.end4.blk_rq_cur_sectors.exit_crit_edge
  %retval.0.i.i = phi i32 [ %45, %if.end4.i.i ], [ 0, %if.end4.blk_rq_cur_sectors.exit_crit_edge ], [ %30, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge ], [ %30, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge70 ], [ %30, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge71 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge ]
  %shr.i28 = ashr i32 %retval.0.i.i, 9
  store i32 %shr.i28, ptr @pf_count, align 4
  %add = add i32 %shr.i28, %conv
  %conv8 = sext i32 %add to i64
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 7
  %46 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %conv8)
  %cmp = icmp ult i64 %49, %conv8
  br i1 %cmp, label %if.end.i, label %if.end14

if.end.i:                                         ; preds = %blk_rq_cur_sectors.exit
  br i1 %tobool.not.i.i, label %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i34

if.end.i.blk_rq_cur_bytes.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i34:                            ; preds = %if.end.i
  %bi_size.i.i.i32 = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %bi_size.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_size.i.i.i32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i.i.i33 = icmp eq i32 %51, 0
  br i1 %tobool1.not.i.i.i33, label %land.lhs.true.i.i.i34.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i37

land.lhs.true.i.i.i34.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i37:                           ; preds = %land.lhs.true.i.i.i34
  %bi_opf.i.i.i35 = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_opf.i.i.i35, align 8
  %trunc.i.i.i36 = trunc i32 %53 to i8
  %54 = zext i8 %trunc.i.i.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.i.i.i36, label %if.end4.i.i47 [
    i8 3, label %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge72
    i8 9, label %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge73
  ]

land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge73: ; preds = %land.lhs.true2.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge72: ; preds = %land.lhs.true2.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i47:                                    ; preds = %land.lhs.true2.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i38 = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 20
  %55 = ptrtoint ptr %bi_io_vec.i.i38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bi_io_vec.i.i38, align 8
  %bi_idx.i.i39 = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 2
  %57 = ptrtoint ptr %bi_idx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bi_idx.i.i39, align 4
  %bi_bvec_done.i.i40 = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 3
  %59 = ptrtoint ptr %bi_bvec_done.i.i40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_bvec_done.i.i40, align 8
  %bv_len26.i.i41 = getelementptr %struct.bio_vec, ptr %56, i32 %58, i32 1
  %61 = ptrtoint ptr %bv_len26.i.i41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bv_len26.i.i41, align 4
  %sub.i.i42 = sub i32 %62, %60
  %63 = tail call i32 @llvm.umin.i32(i32 %51, i32 %sub.i.i42) #9
  %bv_offset36.i.i43 = getelementptr %struct.bio_vec, ptr %56, i32 %58, i32 2
  %64 = ptrtoint ptr %bv_offset36.i.i43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bv_offset36.i.i43, align 4
  %add40.i.i44 = add i32 %65, %60
  %rem.i.i45 = and i32 %add40.i.i44, 4095
  %sub41.i.i46 = sub nuw nsw i32 4096, %rem.i.i45
  %66 = tail call i32 @llvm.umin.i32(i32 %63, i32 %sub41.i.i46) #9
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i47, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge72, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge73, %land.lhs.true.i.i.i34.blk_rq_cur_bytes.exit.i_crit_edge, %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i.i48 = phi i32 [ %66, %if.end4.i.i47 ], [ 0, %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %51, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge ], [ %51, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge72 ], [ %51, %land.lhs.true2.i.i.i37.blk_rq_cur_bytes.exit.i_crit_edge73 ], [ 0, %land.lhs.true.i.i.i34.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call1.i = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %16, i8 noundef zeroext 10, i32 noundef %retval.0.i.i48) #9
  br i1 %call1.i, label %blk_rq_cur_bytes.exit.i.repeat.backedge_crit_edge, label %if.then2.i49

blk_rq_cur_bytes.exit.i.repeat.backedge_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.then2.i49, %blk_rq_cur_bytes.exit.i.repeat.backedge_crit_edge
  br label %repeat

if.then2.i49:                                     ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %67, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %repeat.backedge

if.end14:                                         ; preds = %blk_rq_cur_sectors.exit
  %cmd_flags = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 3
  %68 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %69, 1
  store i32 %and.i, ptr @pf_cmd, align 4
  br i1 %tobool.not.i.i, label %if.end14.bio_data.exit_crit_edge, label %land.lhs.true.i.i

if.end14.bio_data.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true.i.i:                                ; preds = %if.end14
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool1.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.bio_data.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.bio_data.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 2
  %72 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %73 to i8
  %74 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc.i.i, label %if.then.i [
    i8 3, label %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge
    i8 5, label %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge74
    i8 9, label %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge75
  ]

land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge75: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exitthread-pre-split

land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge74: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exitthread-pre-split

land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exitthread-pre-split

if.then.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 20
  %75 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 2
  %77 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %76, i32 %78, i32 2
  %81 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %28, i32 0, i32 8, i32 3
  %83 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i = add i32 %84, %82
  %div24.i = lshr i32 %add.i, 12
  %add.ptr.i51 = getelementptr %struct.page, ptr %80, i32 %div24.i
  %call6.i = tail call ptr @page_address(ptr noundef %add.ptr.i51) #9
  %85 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_io_vec.i, align 8
  %87 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bi_idx.i, align 4
  %bv_offset11.i = getelementptr %struct.bio_vec, ptr %86, i32 %88, i32 2
  %89 = ptrtoint ptr %bv_offset11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_offset11.i, align 4
  %91 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bi_bvec_done.i, align 8
  %add14.i = add i32 %92, %90
  %rem.i = and i32 %add14.i, 4095
  %add.ptr15.i = getelementptr i8, ptr %call6.i, i32 %rem.i
  br label %bio_data.exitthread-pre-split

bio_data.exitthread-pre-split:                    ; preds = %if.then.i, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge74, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge75
  %retval.0.i.ph = phi ptr [ null, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge74 ], [ null, %land.lhs.true2.i.i.bio_data.exitthread-pre-split_crit_edge75 ], [ %add.ptr15.i, %if.then.i ]
  %.pr = load i32, ptr @pf_cmd, align 4
  br label %bio_data.exit

bio_data.exit:                                    ; preds = %bio_data.exitthread-pre-split, %land.lhs.true.i.i.bio_data.exit_crit_edge, %if.end14.bio_data.exit_crit_edge
  %93 = phi i32 [ %.pr, %bio_data.exitthread-pre-split ], [ %and.i, %if.end14.bio_data.exit_crit_edge ], [ %and.i, %land.lhs.true.i.i.bio_data.exit_crit_edge ]
  %retval.0.i = phi ptr [ %retval.0.i.ph, %bio_data.exitthread-pre-split ], [ null, %if.end14.bio_data.exit_crit_edge ], [ null, %land.lhs.true.i.i.bio_data.exit_crit_edge ]
  store ptr %retval.0.i, ptr @pf_buf, align 4
  store i32 0, ptr @pf_retries, align 4
  store i1 true, ptr @pf_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp18 = icmp eq i32 %93, 0
  %94 = load ptr, ptr @pf_current, align 4
  %pi = getelementptr inbounds %struct.pf_unit, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pi, align 4
  %do_pf_read.do_pf_write = select i1 %cmp18, ptr @do_pf_read, ptr @do_pf_write
  tail call void @pi_do_claimed(ptr noundef %96, ptr noundef nonnull %do_pf_read.do_pf_write) #9
  br label %if.end27

if.end27:                                         ; preds = %bio_data.exit, %set_next_request.exit.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_do_claimed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_read() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nice, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #9
  store ptr @do_pf_read_start, ptr @ps_continuation, align 4
  store ptr null, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  store i32 %1, ptr @ps_timeout, align 4
  store i32 %0, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %entry.ps_set_intr.exit_crit_edge, label %if.then.i

entry.ps_set_intr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ps_set_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool5.not.i = icmp eq i32 %0, 0
  %sub.i = add i32 %0, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #9
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i, %entry.ps_set_intr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_write() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nice, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #9
  store ptr @do_pf_write_start, ptr @ps_continuation, align 4
  store ptr null, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  store i32 %1, ptr @ps_timeout, align 4
  store i32 %0, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %entry.ps_set_intr.exit_crit_edge, label %if.then.i

entry.ps_set_intr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ps_set_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool5.not.i = icmp eq i32 %0, 0
  %sub.i = add i32 %0, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #9
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i, %entry.ps_set_intr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_read_start() #6 align 64 {
entry:
  %io_cmd.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pf_busy, align 4
  %0 = load ptr, ptr @pf_current, align 4
  %1 = load i32, ptr @pf_block, align 4
  %2 = load i32, ptr @pf_run, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %io_cmd.i) #9
  %3 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 3
  %6 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 4
  %7 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 5
  %8 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 8
  %10 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 40, ptr %io_cmd.i, align 1
  %lun.i = getelementptr inbounds %struct.pf_unit, ptr %0, i32 0, i32 5
  %11 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lun.i, align 4
  %.tr.i = trunc i32 %12 to i8
  %conv1.i = shl i8 %.tr.i, 5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %3, align 1
  %conv13.i = trunc i32 %1 to i8
  %14 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 6
  %15 = call ptr @memset(ptr %14, i32 0, i32 6)
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.i, ptr %7, align 1
  %17 = lshr i32 %1, 8
  %conv13.1.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13.1.i, ptr %6, align 1
  %19 = lshr i32 %1, 16
  %conv13.2.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13.2.i, ptr %5, align 1
  %21 = lshr i32 %1, 24
  %conv13.3.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13.3.i, ptr %4, align 1
  %conv15.i = trunc i32 %2 to i8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv15.i, ptr %9, align 1
  %24 = lshr i32 %2, 8
  %conv19.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv19.i, ptr %8, align 1
  %mul.i = shl i32 %2, 9
  %call.i = call fastcc i32 @pf_command(ptr noundef %0, ptr noundef nonnull %io_cmd.i, i32 noundef %mul.i, ptr noundef nonnull @.str.16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %io_cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %27 = load ptr, ptr @pf_current, align 4
  %pi = getelementptr inbounds %struct.pf_unit, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pi, align 4
  call void @pi_disconnect(ptr noundef %29) #9
  %30 = load i32, ptr @pf_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp = icmp slt i32 %30, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr @pf_retries, align 4
  %31 = load ptr, ptr @pf_current, align 4
  %pi2 = getelementptr inbounds %struct.pf_unit, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %pi2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pi2, align 4
  call void @pi_do_claimed(ptr noundef %33, ptr noundef nonnull @do_pf_read_start) #9
  br label %return

if.end:                                           ; preds = %if.then
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %34 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.next_request.exit_crit_edge, label %if.end.i.i

if.end.next_request.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.end.i.i:                                       ; preds = %if.end
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.not.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %trunc.i.i.i.i = trunc i32 %40 to i8
  %41 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.i.i.i.i, label %if.end4.i.i.i [
    i8 3, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge5
    i8 9, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge6
  ]

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge6: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge5: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 20
  %42 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_idx.i.i.i, align 4
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_bvec_done.i.i.i, align 8
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %43, i32 %45, i32 1
  %48 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i.i = sub i32 %49, %47
  %50 = call i32 @llvm.umin.i32(i32 %38, i32 %sub.i.i.i) #9
  %bv_offset36.i.i.i = getelementptr %struct.bio_vec, ptr %43, i32 %45, i32 2
  %51 = ptrtoint ptr %bv_offset36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bv_offset36.i.i.i, align 4
  %add40.i.i.i = add i32 %52, %47
  %rem.i.i.i = and i32 %add40.i.i.i, 4095
  %sub41.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %53 = call i32 @llvm.umin.i32(i32 %50, i32 %sub41.i.i.i) #9
  br label %blk_rq_cur_bytes.exit.i.i

blk_rq_cur_bytes.exit.i.i:                        ; preds = %if.end4.i.i.i, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge5, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge6, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %53, %if.end4.i.i.i ], [ 0, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge5 ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge6 ], [ 0, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ]
  %call1.i.i = call zeroext i1 @blk_update_request(ptr noundef nonnull %34, i8 noundef zeroext 10, i32 noundef %retval.0.i.i.i) #9
  br i1 %call1.i.i, label %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, label %if.then2.i.i

blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.then2.i.i:                                     ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = load ptr, ptr @pf_req, align 4
  call void @__blk_mq_end_request(ptr noundef %54, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then2.i.i, %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, %if.end.next_request.exit_crit_edge
  store i1 false, ptr @pf_busy, align 4
  call fastcc void @pf_request() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i) #9
  br label %return

if.end3:                                          ; preds = %entry
  store i1 true, ptr @pf_mask, align 4
  %55 = load i32, ptr @nice, align 4
  %call2.i4 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #9
  store ptr @do_pf_read_drq, ptr @ps_continuation, align 4
  store ptr @pf_ready, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %56, 800
  store i32 %add.i, ptr @ps_timeout, align 4
  store i32 %55, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %if.end3.ps_set_intr.exit_crit_edge, label %if.then.i

if.end3.ps_set_intr.exit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ps_set_intr.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool5.not.i = icmp eq i32 %55, 0
  %sub.i = add i32 %55, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #9
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i, %if.end3.ps_set_intr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i4) #9
  br label %return

return:                                           ; preds = %ps_set_intr.exit, %next_request.exit, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps_tq_int(ptr nocapture noundef readnone %work) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #9
  %0 = load ptr, ptr @ps_continuation, align 4
  store i1 false, ptr @ps_tq_active, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @ps_ready, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 %1() #9, !callees !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load i32, ptr @ps_timeout, align 4
  %sub = sub i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %lor.lhs.false8.if.then11_crit_edge, label %if.end12

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  store ptr null, ptr @ps_continuation, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #9
  tail call void %0() #9, !callees !257
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ps_tq_active, align 4
  %4 = load i32, ptr @ps_nice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  %sub16 = add i32 %4, -1
  %sub16.sink = select i1 %tobool13.not, i32 0, i32 %sub16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull @ps_tq, i32 noundef %sub16.sink) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_read_drq() #6 align 64 {
entry:
  %rs_cmd.i = alloca [12 x i8], align 1
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %entry
  %0 = load ptr, ptr @pf_current, align 4
  %call = tail call fastcc i32 @pf_wait(ptr noundef %0, i32 noundef 128, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %1 = load ptr, ptr @pf_current, align 4
  %pi4 = getelementptr inbounds %struct.pf_unit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pi4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi4, align 4
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %while.body
  tail call void @pi_disconnect(ptr noundef %3) #9
  %4 = load i32, ptr @pf_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr @pf_current, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  %6 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 5
  %11 = ptrtoint ptr %rs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %rs_cmd.i, align 1
  %lun.i = getelementptr inbounds %struct.pf_unit, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lun.i, align 4
  %.tr.i = trunc i32 %13 to i8
  %conv.i = shl i8 %.tr.i, 5
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %9, align 1
  %18 = call ptr @memset(ptr %10, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #9
  %19 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i = call fastcc i32 @pf_command(ptr noundef %5, ptr noundef nonnull %rs_cmd.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then1.pf_req_sense.exit_crit_edge

if.then1.pf_req_sense.exit_crit_edge:             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_req_sense.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %21 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 13
  %22 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 12
  %23 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %call12.i = call fastcc i32 @pf_completion(ptr noundef %5, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.25) #9
  %name.i = getelementptr inbounds %struct.pf_unit, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = and i8 %25, 15
  %and.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %22, align 1
  %conv19.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %21, align 1
  %conv21.i = zext i8 %30 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #12
  br label %pf_req_sense.exit

pf_req_sense.exit:                                ; preds = %if.then.i, %if.then1.pf_req_sense.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  %31 = load i32, ptr @pf_retries, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr @pf_retries, align 4
  %32 = load ptr, ptr @pf_current, align 4
  %pi2 = getelementptr inbounds %struct.pf_unit, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %pi2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pi2, align 4
  call void @pi_do_claimed(ptr noundef %34, ptr noundef nonnull @do_pf_read_start) #9
  br label %return

if.end:                                           ; preds = %if.then
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %35 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.next_request.exit_crit_edge, label %if.end.i.i

if.end.next_request.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.end.i.i:                                       ; preds = %if.end
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %trunc.i.i.i.i = trunc i32 %41 to i8
  %42 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %trunc.i.i.i.i, label %if.end4.i.i.i [
    i8 3, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge39
    i8 9, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge40
  ]

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge40: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge39: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 20
  %43 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_idx.i.i.i, align 4
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8, i32 3
  %47 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_bvec_done.i.i.i, align 8
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %44, i32 %46, i32 1
  %49 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i.i = sub i32 %50, %48
  %51 = tail call i32 @llvm.umin.i32(i32 %39, i32 %sub.i.i.i) #9
  %bv_offset36.i.i.i = getelementptr %struct.bio_vec, ptr %44, i32 %46, i32 2
  %52 = ptrtoint ptr %bv_offset36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_offset36.i.i.i, align 4
  %add40.i.i.i = add i32 %53, %48
  %rem.i.i.i = and i32 %add40.i.i.i, 4095
  %sub41.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %54 = tail call i32 @llvm.umin.i32(i32 %51, i32 %sub41.i.i.i) #9
  br label %blk_rq_cur_bytes.exit.i.i

blk_rq_cur_bytes.exit.i.i:                        ; preds = %if.end4.i.i.i, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge39, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge40, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %54, %if.end4.i.i.i ], [ 0, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %39, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %39, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge39 ], [ %39, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge40 ], [ 0, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %35, i8 noundef zeroext 10, i32 noundef %retval.0.i.i.i) #9
  br i1 %call1.i.i, label %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, label %if.then2.i.i

blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.then2.i.i:                                     ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %55, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then2.i.i, %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, %if.end.next_request.exit_crit_edge
  store i1 false, ptr @pf_busy, align 4
  tail call fastcc void @pf_request() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i) #9
  br label %return

if.end3:                                          ; preds = %while.body
  %56 = load ptr, ptr @pf_buf, align 4
  tail call void @pi_read_block(ptr noundef %3, ptr noundef %56, i32 noundef 512) #9
  %call5 = tail call fastcc i32 @pf_next_buf()
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.while.body_crit_edge, label %while.end

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end3
  %57 = load ptr, ptr @pf_current, align 4
  %pi9 = getelementptr inbounds %struct.pf_unit, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pi9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pi9, align 4
  tail call void @pi_disconnect(ptr noundef %59) #9
  %call2.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %60 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i11 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i11, label %while.end.next_request.exit35_crit_edge, label %if.end.i.i14

while.end.next_request.exit35_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit35

if.end.i.i14:                                     ; preds = %while.end
  %bio.i.i.i12 = getelementptr inbounds %struct.request, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %bio.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bio.i.i.i12, align 8
  %tobool.not.i.i.i13 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i13, label %if.end.i.i14.blk_rq_cur_bytes.exit.i.i33_crit_edge, label %land.lhs.true.i.i.i.i17

if.end.i.i14.blk_rq_cur_bytes.exit.i.i33_crit_edge: ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i33

land.lhs.true.i.i.i.i17:                          ; preds = %if.end.i.i14
  %bi_size.i.i.i.i15 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %bi_size.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bi_size.i.i.i.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool1.not.i.i.i.i16 = icmp eq i32 %64, 0
  br i1 %tobool1.not.i.i.i.i16, label %land.lhs.true.i.i.i.i17.blk_rq_cur_bytes.exit.i.i33_crit_edge, label %land.lhs.true2.i.i.i.i20

land.lhs.true.i.i.i.i17.blk_rq_cur_bytes.exit.i.i33_crit_edge: ; preds = %land.lhs.true.i.i.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i33

land.lhs.true2.i.i.i.i20:                         ; preds = %land.lhs.true.i.i.i.i17
  %bi_opf.i.i.i.i18 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bi_opf.i.i.i.i18, align 8
  %trunc.i.i.i.i19 = trunc i32 %66 to i8
  %67 = zext i8 %trunc.i.i.i.i19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc.i.i.i.i19, label %if.end4.i.i.i30 [
    i8 3, label %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge41
    i8 9, label %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge42
  ]

land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge42: ; preds = %land.lhs.true2.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i33

land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge41: ; preds = %land.lhs.true2.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i33

land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge: ; preds = %land.lhs.true2.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i33

if.end4.i.i.i30:                                  ; preds = %land.lhs.true2.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i21 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 20
  %68 = ptrtoint ptr %bi_io_vec.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bi_io_vec.i.i.i21, align 8
  %bi_idx.i.i.i22 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 8, i32 2
  %70 = ptrtoint ptr %bi_idx.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_idx.i.i.i22, align 4
  %bi_bvec_done.i.i.i23 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 8, i32 3
  %72 = ptrtoint ptr %bi_bvec_done.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bi_bvec_done.i.i.i23, align 8
  %bv_len26.i.i.i24 = getelementptr %struct.bio_vec, ptr %69, i32 %71, i32 1
  %74 = ptrtoint ptr %bv_len26.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_len26.i.i.i24, align 4
  %sub.i.i.i25 = sub i32 %75, %73
  %76 = tail call i32 @llvm.umin.i32(i32 %64, i32 %sub.i.i.i25) #9
  %bv_offset36.i.i.i26 = getelementptr %struct.bio_vec, ptr %69, i32 %71, i32 2
  %77 = ptrtoint ptr %bv_offset36.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_offset36.i.i.i26, align 4
  %add40.i.i.i27 = add i32 %78, %73
  %rem.i.i.i28 = and i32 %add40.i.i.i27, 4095
  %sub41.i.i.i29 = sub nuw nsw i32 4096, %rem.i.i.i28
  %79 = tail call i32 @llvm.umin.i32(i32 %76, i32 %sub41.i.i.i29) #9
  br label %blk_rq_cur_bytes.exit.i.i33

blk_rq_cur_bytes.exit.i.i33:                      ; preds = %if.end4.i.i.i30, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge41, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge42, %land.lhs.true.i.i.i.i17.blk_rq_cur_bytes.exit.i.i33_crit_edge, %if.end.i.i14.blk_rq_cur_bytes.exit.i.i33_crit_edge
  %retval.0.i.i.i31 = phi i32 [ %79, %if.end4.i.i.i30 ], [ 0, %if.end.i.i14.blk_rq_cur_bytes.exit.i.i33_crit_edge ], [ %64, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge ], [ %64, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge41 ], [ %64, %land.lhs.true2.i.i.i.i20.blk_rq_cur_bytes.exit.i.i33_crit_edge42 ], [ 0, %land.lhs.true.i.i.i.i17.blk_rq_cur_bytes.exit.i.i33_crit_edge ]
  %call1.i.i32 = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %60, i8 noundef zeroext 0, i32 noundef %retval.0.i.i.i31) #9
  br i1 %call1.i.i32, label %blk_rq_cur_bytes.exit.i.i33.next_request.exit35_crit_edge, label %if.then2.i.i34

blk_rq_cur_bytes.exit.i.i33.next_request.exit35_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit35

if.then2.i.i34:                                   ; preds = %blk_rq_cur_bytes.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  %80 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %80, i8 noundef zeroext 0) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit35

next_request.exit35:                              ; preds = %if.then2.i.i34, %blk_rq_cur_bytes.exit.i.i33.next_request.exit35_crit_edge, %while.end.next_request.exit35_crit_edge
  store i1 false, ptr @pf_busy, align 4
  tail call fastcc void @pf_request() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i10) #9
  br label %return

return:                                           ; preds = %next_request.exit35, %next_request.exit, %pf_req_sense.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf_ready() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pf_current, align 4
  %pi.i = getelementptr inbounds %struct.pf_unit, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 1, i32 noundef 6) #9
  %.b = load i1, ptr @pf_mask, align 4
  %3 = select i1 %.b, i32 8, i32 0
  %or = or i32 %3, 128
  %and = and i32 %or, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp = icmp eq i32 %and, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_command(ptr noundef %pf, ptr noundef %cmd, i32 noundef %dlen, ptr noundef %fun) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pi = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  tail call void @pi_connect(ptr noundef %1) #9
  %drive = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %2 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive, align 4
  %mul = shl i32 %3, 4
  %add = add i32 %mul, 160
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %5, i32 noundef 0, i32 noundef 6, i32 noundef %add) #9
  %call = tail call fastcc i32 @pf_wait(ptr noundef %pf, i32 noundef 136, i32 noundef 0, ptr noundef %fun, ptr noundef nonnull @.str.17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 4
  tail call void @pi_disconnect(ptr noundef %7) #9
  br label %return

if.end:                                           ; preds = %entry
  %div = sdiv i32 %dlen, 256
  %8 = mul i32 %div, 256
  %rem.decomposed = sub i32 %dlen, %8
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %10, i32 noundef 0, i32 noundef 4, i32 noundef %rem.decomposed) #9
  %11 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %12, i32 noundef 0, i32 noundef 5, i32 noundef %div) #9
  %13 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %14, i32 noundef 0, i32 noundef 7, i32 noundef 160) #9
  %call2 = tail call fastcc i32 @pf_wait(ptr noundef %pf, i32 noundef 128, i32 noundef 8, ptr noundef %fun, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %15 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pi, align 4
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pi_disconnect(ptr noundef %16) #9
  br label %return

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @pi_read_regr(ptr noundef %16, i32 noundef 0, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef %fun) #12
  %17 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pi, align 4
  tail call void @pi_disconnect(ptr noundef %18) #9
  br label %return

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pi, align 4
  tail call void @pi_write_block(ptr noundef %20, ptr noundef %cmd, i32 noundef 12) #9
  br label %return

return:                                           ; preds = %if.end11, %do.end, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_wait(ptr noundef %pf, i32 noundef %go, i32 noundef %stop, ptr noundef %fun, ptr noundef %msg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pi.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool1.not = icmp ne i32 %stop, 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %0 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 1, i32 noundef 6) #9
  %and = and i32 %call.i, %go
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %and2 = and i32 %call.i, %stop
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.land.rhs_crit_edge, label %while.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %exitcond.not = icmp eq i32 %j.0, 160000
  br i1 %exitcond.not, label %land.rhs.if.then_crit_edge, label %while.body

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i32 %j.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #9
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false
  %and5 = and i32 %and2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %j.0)
  %cmp8 = icmp ugt i32 %j.0, 160000
  %or.cond39 = select i1 %tobool6.not, i1 true, i1 %cmp8
  br i1 %or.cond39, label %while.end.if.then_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %cmp853 = phi i1 [ %cmp8, %while.end.if.then_crit_edge ], [ true, %land.rhs.if.then_crit_edge ]
  %j.152 = phi i32 [ %j.0, %while.end.if.then_crit_edge ], [ 160001, %land.rhs.if.then_crit_edge ]
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi.i, align 4
  %call.i41 = tail call i32 @pi_read_regr(ptr noundef %4, i32 noundef 0, i32 noundef 7) #9
  %5 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi.i, align 4
  %call.i43 = tail call i32 @pi_read_regr(ptr noundef %6, i32 noundef 0, i32 noundef 1) #9
  %7 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.i, align 4
  %call.i45 = tail call i32 @pi_read_regr(ptr noundef %8, i32 noundef 0, i32 noundef 2) #9
  %or = or i32 %call.i43, 256
  %spec.select = select i1 %cmp853, i32 %or, i32 %call.i43
  %tobool14.not = icmp eq ptr %fun, null
  br i1 %tobool14.not, label %if.then.if.end17_crit_edge, label %do.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef nonnull %fun, ptr noundef %msg, i32 noundef %call.i, i32 noundef %call.i41, i32 noundef %spec.select, i32 noundef %j.152, i32 noundef %call.i45) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then.if.end17_crit_edge
  %shl = shl i32 %spec.select, 8
  %add = add i32 %shl, %call.i41
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end17 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_regr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_read_regr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_next_buf() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pf_count, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @pf_count, align 4
  %1 = load i32, ptr @pf_run, align 4
  %dec1 = add i32 %1, -1
  store i32 %dec1, ptr @pf_run, align 4
  %2 = load ptr, ptr @pf_buf, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 512
  store ptr %add.ptr, ptr @pf_buf, align 4
  %3 = load i32, ptr @pf_block, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @pf_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec1)
  %tobool.not = icmp eq i32 %dec1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %4 = load ptr, ptr @pf_req, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body4.pf_end_request.exit_crit_edge, label %if.end.i

do.body4.pf_end_request.exit_crit_edge:           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_end_request.exit

if.end.i:                                         ; preds = %do.body4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.blk_rq_cur_bytes.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %10 to i8
  %11 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge40
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge41
  ]

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge41: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge40: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 20
  %12 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %13, i32 %15, i32 1
  %18 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %19, %17
  %20 = tail call i32 @llvm.umin.i32(i32 %8, i32 %sub.i.i) #9
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %13, i32 %15, i32 2
  %21 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %22, %17
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub41.i.i) #9
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge40, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge41, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %23, %if.end4.i.i ], [ 0, %if.end.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge40 ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge41 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call1.i = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef %retval.0.i.i) #9
  br i1 %call1.i, label %blk_rq_cur_bytes.exit.i.pf_end_request.exit_crit_edge, label %if.then2.i

blk_rq_cur_bytes.exit.i.pf_end_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_end_request.exit

if.then2.i:                                       ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %24, i8 noundef zeroext 0) #9
  store ptr null, ptr @pf_req, align 4
  br label %pf_end_request.exit

pf_end_request.exit:                              ; preds = %if.then2.i, %blk_rq_cur_bytes.exit.i.pf_end_request.exit_crit_edge, %do.body4.pf_end_request.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call5) #9
  %25 = load ptr, ptr @pf_req, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %pf_end_request.exit.cleanup_crit_edge, label %if.end10

pf_end_request.exit.cleanup_crit_edge:            ; preds = %pf_end_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %pf_end_request.exit
  %bio.i.i14 = getelementptr inbounds %struct.request, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %bio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio.i.i14, align 8
  %tobool.not.i.i15 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i15, label %blk_rq_cur_sectors.exit, label %land.lhs.true.i.i.i18

land.lhs.true.i.i.i18:                            ; preds = %if.end10
  %bi_size.i.i.i16 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %bi_size.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bi_size.i.i.i16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i.i.i17 = icmp eq i32 %29, 0
  br i1 %tobool1.not.i.i.i17, label %land.lhs.true.i.i.thread, label %land.lhs.true2.i.i.i21

land.lhs.true.i.i.thread:                         ; preds = %land.lhs.true.i.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @pf_count, align 4
  br label %bio_data.exit

land.lhs.true2.i.i.i21:                           ; preds = %land.lhs.true.i.i.i18
  %bi_opf.i.i.i19 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.i.i.i19, align 8
  %trunc.i.i.i20 = trunc i32 %31 to i8
  %32 = zext i8 %trunc.i.i.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %trunc.i.i.i20, label %if.end4.i.i31 [
    i8 3, label %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge42
    i8 9, label %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge43
  ]

land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge43: ; preds = %land.lhs.true2.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge42: ; preds = %land.lhs.true2.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end4.i.i31:                                    ; preds = %land.lhs.true2.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i22 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 20
  %33 = ptrtoint ptr %bi_io_vec.i.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_io_vec.i.i22, align 8
  %bi_idx.i.i23 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %bi_idx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_idx.i.i23, align 4
  %bi_bvec_done.i.i24 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %bi_bvec_done.i.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_bvec_done.i.i24, align 8
  %bv_len26.i.i25 = getelementptr %struct.bio_vec, ptr %34, i32 %36, i32 1
  %39 = ptrtoint ptr %bv_len26.i.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len26.i.i25, align 4
  %sub.i.i26 = sub i32 %40, %38
  %41 = tail call i32 @llvm.umin.i32(i32 %29, i32 %sub.i.i26) #9
  %bv_offset36.i.i27 = getelementptr %struct.bio_vec, ptr %34, i32 %36, i32 2
  %42 = ptrtoint ptr %bv_offset36.i.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset36.i.i27, align 4
  %add40.i.i28 = add i32 %43, %38
  %rem.i.i29 = and i32 %add40.i.i28, 4095
  %sub41.i.i30 = sub nuw nsw i32 4096, %rem.i.i29
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %sub41.i.i30) #9
  br label %land.lhs.true.i.i

blk_rq_cur_sectors.exit:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @pf_count, align 4
  br label %bio_data.exit

land.lhs.true.i.i:                                ; preds = %if.end4.i.i31, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge42, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge43
  %retval.0.i.i32.ph.ph = phi i32 [ %44, %if.end4.i.i31 ], [ %29, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge ], [ %29, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge42 ], [ %29, %land.lhs.true2.i.i.i21.land.lhs.true.i.i_crit_edge43 ]
  %45 = ptrtoint ptr %bi_size.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %bi_size.i.i.i16, align 8
  %shr.i36 = ashr i32 %retval.0.i.i32.ph.ph, 9
  store i32 %shr.i36, ptr @pf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool1.not.i.i = icmp eq i32 %.pr, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.bio_data.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.bio_data.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  %46 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %47 to i8
  %48 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %trunc.i.i, label %if.then.i [
    i8 3, label %land.lhs.true2.i.i.bio_data.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.bio_data.exit_crit_edge44
    i8 9, label %land.lhs.true2.i.i.bio_data.exit_crit_edge45
  ]

land.lhs.true2.i.i.bio_data.exit_crit_edge45:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge44:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

if.then.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 20
  %49 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 2
  %51 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %50, i32 %52, i32 2
  %55 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 3
  %57 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i = add i32 %58, %56
  %div24.i = lshr i32 %add.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %54, i32 %div24.i
  %call6.i = tail call ptr @page_address(ptr noundef %add.ptr.i) #9
  %59 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_io_vec.i, align 8
  %61 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_idx.i, align 4
  %bv_offset11.i = getelementptr %struct.bio_vec, ptr %60, i32 %62, i32 2
  %63 = ptrtoint ptr %bv_offset11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bv_offset11.i, align 4
  %65 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bi_bvec_done.i, align 8
  %add14.i = add i32 %66, %64
  %rem.i = and i32 %add14.i, 4095
  %add.ptr15.i = getelementptr i8, ptr %call6.i, i32 %rem.i
  br label %bio_data.exit

bio_data.exit:                                    ; preds = %if.then.i, %land.lhs.true2.i.i.bio_data.exit_crit_edge, %land.lhs.true2.i.i.bio_data.exit_crit_edge44, %land.lhs.true2.i.i.bio_data.exit_crit_edge45, %land.lhs.true.i.i.bio_data.exit_crit_edge, %blk_rq_cur_sectors.exit, %land.lhs.true.i.i.thread
  %retval.0.i = phi ptr [ %add.ptr15.i, %if.then.i ], [ null, %blk_rq_cur_sectors.exit ], [ null, %land.lhs.true.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge44 ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge45 ], [ null, %land.lhs.true.i.i.thread ]
  store ptr %retval.0.i, ptr @pf_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %bio_data.exit, %pf_end_request.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %pf_end_request.exit.cleanup_crit_edge ], [ 0, %bio_data.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef %buf, ptr noundef %fun) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pf_wait(ptr noundef %pf, i32 noundef 128, i32 noundef 73, ptr noundef %fun, ptr noundef nonnull @.str.24)
  %pi.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #9
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi.i, align 4
  %call.i22 = tail call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 7) #9
  %and3 = and i32 %call.i22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi.i, align 4
  %call.i24 = tail call i32 @pi_read_regr(ptr noundef %5, i32 noundef 0, i32 noundef 4) #9
  %6 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi.i, align 4
  %call.i26 = tail call i32 @pi_read_regr(ptr noundef %7, i32 noundef 0, i32 noundef 5) #9
  %mul = shl i32 %call.i26, 8
  %add = add i32 %call.i24, 3
  %add7 = add i32 %add, %mul
  %and8 = and i32 %add7, 65532
  %8 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi.i, align 4
  tail call void @pi_read_block(ptr noundef %9, ptr noundef %buf, i32 noundef %and8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call fastcc i32 @pf_wait(ptr noundef %pf, i32 noundef 128, i32 noundef 65, ptr noundef %fun, ptr noundef nonnull @.str.28)
  %10 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi.i, align 4
  tail call void @pi_disconnect(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  %call9.call = select i1 %tobool11.not, i32 %call9, i32 %call
  ret i32 %call9.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_write_start() #6 align 64 {
entry:
  %io_cmd.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pf_busy, align 4
  %0 = load ptr, ptr @pf_current, align 4
  %1 = load i32, ptr @pf_block, align 4
  %2 = load i32, ptr @pf_run, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %io_cmd.i) #9
  %3 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 3
  %6 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 4
  %7 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 5
  %8 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 8
  %10 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 42, ptr %io_cmd.i, align 1
  %lun.i = getelementptr inbounds %struct.pf_unit, ptr %0, i32 0, i32 5
  %11 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lun.i, align 4
  %.tr.i = trunc i32 %12 to i8
  %conv1.i = shl i8 %.tr.i, 5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %3, align 1
  %conv13.i = trunc i32 %1 to i8
  %14 = getelementptr inbounds [12 x i8], ptr %io_cmd.i, i32 0, i32 6
  %15 = call ptr @memset(ptr %14, i32 0, i32 6)
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.i, ptr %7, align 1
  %17 = lshr i32 %1, 8
  %conv13.1.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13.1.i, ptr %6, align 1
  %19 = lshr i32 %1, 16
  %conv13.2.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13.2.i, ptr %5, align 1
  %21 = lshr i32 %1, 24
  %conv13.3.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13.3.i, ptr %4, align 1
  %conv15.i = trunc i32 %2 to i8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv15.i, ptr %9, align 1
  %24 = lshr i32 %2, 8
  %conv19.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv19.i, ptr %8, align 1
  %mul.i = shl i32 %2, 9
  %call.i = call fastcc i32 @pf_command(ptr noundef %0, ptr noundef nonnull %io_cmd.i, i32 noundef %mul.i, ptr noundef nonnull @.str.16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %io_cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.while.body_crit_edge, label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

if.then:                                          ; preds = %entry
  %27 = load ptr, ptr @pf_current, align 4
  %pi = getelementptr inbounds %struct.pf_unit, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pi, align 4
  call void @pi_disconnect(ptr noundef %29) #9
  %30 = load i32, ptr @pf_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp = icmp slt i32 %30, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr @pf_retries, align 4
  %31 = load ptr, ptr @pf_current, align 4
  %pi2 = getelementptr inbounds %struct.pf_unit, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %pi2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pi2, align 4
  call void @pi_do_claimed(ptr noundef %33, ptr noundef nonnull @do_pf_write_start) #9
  br label %return

if.end:                                           ; preds = %if.then
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %34 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.next_request.exit_crit_edge, label %if.end.i.i

if.end.next_request.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.end.i.i:                                       ; preds = %if.end
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.not.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %trunc.i.i.i.i = trunc i32 %40 to i8
  %41 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %trunc.i.i.i.i, label %if.end4.i.i.i [
    i8 3, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge50
    i8 9, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge51
  ]

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge51: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge50: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 20
  %42 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_idx.i.i.i, align 4
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_bvec_done.i.i.i, align 8
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %43, i32 %45, i32 1
  %48 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i.i = sub i32 %49, %47
  %50 = call i32 @llvm.umin.i32(i32 %38, i32 %sub.i.i.i) #9
  %bv_offset36.i.i.i = getelementptr %struct.bio_vec, ptr %43, i32 %45, i32 2
  %51 = ptrtoint ptr %bv_offset36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bv_offset36.i.i.i, align 4
  %add40.i.i.i = add i32 %52, %47
  %rem.i.i.i = and i32 %add40.i.i.i, 4095
  %sub41.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %53 = call i32 @llvm.umin.i32(i32 %50, i32 %sub41.i.i.i) #9
  br label %blk_rq_cur_bytes.exit.i.i

blk_rq_cur_bytes.exit.i.i:                        ; preds = %if.end4.i.i.i, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge50, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge51, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %53, %if.end4.i.i.i ], [ 0, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge50 ], [ %38, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge51 ], [ 0, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ]
  %call1.i.i = call zeroext i1 @blk_update_request(ptr noundef nonnull %34, i8 noundef zeroext 10, i32 noundef %retval.0.i.i.i) #9
  br i1 %call1.i.i, label %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, label %if.then2.i.i

blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.then2.i.i:                                     ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = load ptr, ptr @pf_req, align 4
  call void @__blk_mq_end_request(ptr noundef %54, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then2.i.i, %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, %if.end.next_request.exit_crit_edge
  store i1 false, ptr @pf_busy, align 4
  call fastcc void @pf_request() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i) #9
  br label %return

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %entry.while.body_crit_edge
  %55 = load ptr, ptr @pf_current, align 4
  %call4 = call fastcc i32 @pf_wait(ptr noundef %55, i32 noundef 128, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  %and = and i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %56 = load ptr, ptr @pf_current, align 4
  %pi14 = getelementptr inbounds %struct.pf_unit, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pi14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pi14, align 4
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %while.body
  call void @pi_disconnect(ptr noundef %58) #9
  %59 = load i32, ptr @pf_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %59)
  %cmp8 = icmp slt i32 %59, 5
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %inc10 = add nsw i32 %59, 1
  store i32 %inc10, ptr @pf_retries, align 4
  %60 = load ptr, ptr @pf_current, align 4
  %pi11 = getelementptr inbounds %struct.pf_unit, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pi11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pi11, align 4
  call void @pi_do_claimed(ptr noundef %62, ptr noundef nonnull @do_pf_write_start) #9
  br label %return

if.end12:                                         ; preds = %if.then6
  %call2.i20 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %63 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i21 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i21, label %if.end12.next_request.exit45_crit_edge, label %if.end.i.i24

if.end12.next_request.exit45_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit45

if.end.i.i24:                                     ; preds = %if.end12
  %bio.i.i.i22 = getelementptr inbounds %struct.request, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %bio.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bio.i.i.i22, align 8
  %tobool.not.i.i.i23 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i23, label %if.end.i.i24.blk_rq_cur_bytes.exit.i.i43_crit_edge, label %land.lhs.true.i.i.i.i27

if.end.i.i24.blk_rq_cur_bytes.exit.i.i43_crit_edge: ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i43

land.lhs.true.i.i.i.i27:                          ; preds = %if.end.i.i24
  %bi_size.i.i.i.i25 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %bi_size.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bi_size.i.i.i.i25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool1.not.i.i.i.i26 = icmp eq i32 %67, 0
  br i1 %tobool1.not.i.i.i.i26, label %land.lhs.true.i.i.i.i27.blk_rq_cur_bytes.exit.i.i43_crit_edge, label %land.lhs.true2.i.i.i.i30

land.lhs.true.i.i.i.i27.blk_rq_cur_bytes.exit.i.i43_crit_edge: ; preds = %land.lhs.true.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i43

land.lhs.true2.i.i.i.i30:                         ; preds = %land.lhs.true.i.i.i.i27
  %bi_opf.i.i.i.i28 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %bi_opf.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bi_opf.i.i.i.i28, align 8
  %trunc.i.i.i.i29 = trunc i32 %69 to i8
  %70 = zext i8 %trunc.i.i.i.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %trunc.i.i.i.i29, label %if.end4.i.i.i40 [
    i8 3, label %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge52
    i8 9, label %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge53
  ]

land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge53: ; preds = %land.lhs.true2.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i43

land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge52: ; preds = %land.lhs.true2.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i43

land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge: ; preds = %land.lhs.true2.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i43

if.end4.i.i.i40:                                  ; preds = %land.lhs.true2.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i31 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 20
  %71 = ptrtoint ptr %bi_io_vec.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bi_io_vec.i.i.i31, align 8
  %bi_idx.i.i.i32 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %bi_idx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bi_idx.i.i.i32, align 4
  %bi_bvec_done.i.i.i33 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 8, i32 3
  %75 = ptrtoint ptr %bi_bvec_done.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bi_bvec_done.i.i.i33, align 8
  %bv_len26.i.i.i34 = getelementptr %struct.bio_vec, ptr %72, i32 %74, i32 1
  %77 = ptrtoint ptr %bv_len26.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_len26.i.i.i34, align 4
  %sub.i.i.i35 = sub i32 %78, %76
  %79 = call i32 @llvm.umin.i32(i32 %67, i32 %sub.i.i.i35) #9
  %bv_offset36.i.i.i36 = getelementptr %struct.bio_vec, ptr %72, i32 %74, i32 2
  %80 = ptrtoint ptr %bv_offset36.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bv_offset36.i.i.i36, align 4
  %add40.i.i.i37 = add i32 %81, %76
  %rem.i.i.i38 = and i32 %add40.i.i.i37, 4095
  %sub41.i.i.i39 = sub nuw nsw i32 4096, %rem.i.i.i38
  %82 = call i32 @llvm.umin.i32(i32 %79, i32 %sub41.i.i.i39) #9
  br label %blk_rq_cur_bytes.exit.i.i43

blk_rq_cur_bytes.exit.i.i43:                      ; preds = %if.end4.i.i.i40, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge52, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge53, %land.lhs.true.i.i.i.i27.blk_rq_cur_bytes.exit.i.i43_crit_edge, %if.end.i.i24.blk_rq_cur_bytes.exit.i.i43_crit_edge
  %retval.0.i.i.i41 = phi i32 [ %82, %if.end4.i.i.i40 ], [ 0, %if.end.i.i24.blk_rq_cur_bytes.exit.i.i43_crit_edge ], [ %67, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge ], [ %67, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge52 ], [ %67, %land.lhs.true2.i.i.i.i30.blk_rq_cur_bytes.exit.i.i43_crit_edge53 ], [ 0, %land.lhs.true.i.i.i.i27.blk_rq_cur_bytes.exit.i.i43_crit_edge ]
  %call1.i.i42 = call zeroext i1 @blk_update_request(ptr noundef nonnull %63, i8 noundef zeroext 10, i32 noundef %retval.0.i.i.i41) #9
  br i1 %call1.i.i42, label %blk_rq_cur_bytes.exit.i.i43.next_request.exit45_crit_edge, label %if.then2.i.i44

blk_rq_cur_bytes.exit.i.i43.next_request.exit45_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit45

if.then2.i.i44:                                   ; preds = %blk_rq_cur_bytes.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  %83 = load ptr, ptr @pf_req, align 4
  call void @__blk_mq_end_request(ptr noundef %83, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit45

next_request.exit45:                              ; preds = %if.then2.i.i44, %blk_rq_cur_bytes.exit.i.i43.next_request.exit45_crit_edge, %if.end12.next_request.exit45_crit_edge
  store i1 false, ptr @pf_busy, align 4
  call fastcc void @pf_request() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i20) #9
  br label %return

if.end13:                                         ; preds = %while.body
  %84 = load ptr, ptr @pf_buf, align 4
  call void @pi_write_block(ptr noundef %58, ptr noundef %84, i32 noundef 512) #9
  %call15 = call fastcc i32 @pf_next_buf()
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.while.body_crit_edge, label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end13
  store i1 false, ptr @pf_mask, align 4
  %85 = load i32, ptr @nice, align 4
  %call2.i46 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #9
  store ptr @do_pf_write_done, ptr @ps_continuation, align 4
  store ptr @pf_ready, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %86, 800
  store i32 %add.i, ptr @ps_timeout, align 4
  store i32 %85, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %while.end.ps_set_intr.exit_crit_edge, label %if.then.i

while.end.ps_set_intr.exit_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ps_set_intr.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool5.not.i = icmp eq i32 %85, 0
  %sub.i = add i32 %85, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %87 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %87, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #9
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i, %while.end.ps_set_intr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i46) #9
  br label %return

return:                                           ; preds = %ps_set_intr.exit, %next_request.exit45, %if.then9, %next_request.exit, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pf_write_done() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pf_current, align 4
  %call = tail call fastcc i32 @pf_wait(ptr noundef %0, i32 noundef 128, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %1 = load ptr, ptr @pf_current, align 4
  %pi4 = getelementptr inbounds %struct.pf_unit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pi4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi4, align 4
  tail call void @pi_disconnect(ptr noundef %3) #9
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @pf_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @pf_retries, align 4
  %5 = load ptr, ptr @pf_current, align 4
  %pi2 = getelementptr inbounds %struct.pf_unit, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pi2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi2, align 4
  tail call void @pi_do_claimed(ptr noundef %7, ptr noundef nonnull @do_pf_write_start) #9
  br label %return

if.end:                                           ; preds = %if.then
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %8 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.next_request.exit_crit_edge, label %if.end.i.i

if.end.next_request.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.end.i.i:                                       ; preds = %if.end
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %trunc.i.i.i.i = trunc i32 %14 to i8
  %15 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %trunc.i.i.i.i, label %if.end4.i.i.i [
    i8 3, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge31
    i8 9, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge32
  ]

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge32: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge31: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 20
  %16 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_idx.i.i.i, align 4
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bi_bvec_done.i.i.i, align 8
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %17, i32 %19, i32 1
  %22 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i.i = sub i32 %23, %21
  %24 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub.i.i.i) #9
  %bv_offset36.i.i.i = getelementptr %struct.bio_vec, ptr %17, i32 %19, i32 2
  %25 = ptrtoint ptr %bv_offset36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset36.i.i.i, align 4
  %add40.i.i.i = add i32 %26, %21
  %rem.i.i.i = and i32 %add40.i.i.i, 4095
  %sub41.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %sub41.i.i.i) #9
  br label %blk_rq_cur_bytes.exit.i.i

blk_rq_cur_bytes.exit.i.i:                        ; preds = %if.end4.i.i.i, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge31, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge32, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %27, %if.end4.i.i.i ], [ 0, %if.end.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %12, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %12, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge31 ], [ %12, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge32 ], [ 0, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %8, i8 noundef zeroext 10, i32 noundef %retval.0.i.i.i) #9
  br i1 %call1.i.i, label %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, label %if.then2.i.i

blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit

if.then2.i.i:                                     ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %28, i8 noundef zeroext 10) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then2.i.i, %blk_rq_cur_bytes.exit.i.i.next_request.exit_crit_edge, %if.end.next_request.exit_crit_edge
  store i1 false, ptr @pf_busy, align 4
  tail call fastcc void @pf_request() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i) #9
  br label %return

if.end3:                                          ; preds = %entry
  %call2.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pf_spin_lock) #9
  %29 = load ptr, ptr @pf_req, align 4
  %tobool.not.i.i6 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i6, label %if.end3.next_request.exit30_crit_edge, label %if.end.i.i9

if.end3.next_request.exit30_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit30

if.end.i.i9:                                      ; preds = %if.end3
  %bio.i.i.i7 = getelementptr inbounds %struct.request, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %bio.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bio.i.i.i7, align 8
  %tobool.not.i.i.i8 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i8, label %if.end.i.i9.blk_rq_cur_bytes.exit.i.i28_crit_edge, label %land.lhs.true.i.i.i.i12

if.end.i.i9.blk_rq_cur_bytes.exit.i.i28_crit_edge: ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i28

land.lhs.true.i.i.i.i12:                          ; preds = %if.end.i.i9
  %bi_size.i.i.i.i10 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %bi_size.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_size.i.i.i.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i.i.i.i11 = icmp eq i32 %33, 0
  br i1 %tobool1.not.i.i.i.i11, label %land.lhs.true.i.i.i.i12.blk_rq_cur_bytes.exit.i.i28_crit_edge, label %land.lhs.true2.i.i.i.i15

land.lhs.true.i.i.i.i12.blk_rq_cur_bytes.exit.i.i28_crit_edge: ; preds = %land.lhs.true.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i28

land.lhs.true2.i.i.i.i15:                         ; preds = %land.lhs.true.i.i.i.i12
  %bi_opf.i.i.i.i13 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_opf.i.i.i.i13, align 8
  %trunc.i.i.i.i14 = trunc i32 %35 to i8
  %36 = zext i8 %trunc.i.i.i.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc.i.i.i.i14, label %if.end4.i.i.i25 [
    i8 3, label %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge33
    i8 9, label %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge34
  ]

land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge34: ; preds = %land.lhs.true2.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i28

land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge33: ; preds = %land.lhs.true2.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i28

land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge: ; preds = %land.lhs.true2.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i28

if.end4.i.i.i25:                                  ; preds = %land.lhs.true2.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i16 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 20
  %37 = ptrtoint ptr %bi_io_vec.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bi_io_vec.i.i.i16, align 8
  %bi_idx.i.i.i17 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 2
  %39 = ptrtoint ptr %bi_idx.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_idx.i.i.i17, align 4
  %bi_bvec_done.i.i.i18 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %bi_bvec_done.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_bvec_done.i.i.i18, align 8
  %bv_len26.i.i.i19 = getelementptr %struct.bio_vec, ptr %38, i32 %40, i32 1
  %43 = ptrtoint ptr %bv_len26.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_len26.i.i.i19, align 4
  %sub.i.i.i20 = sub i32 %44, %42
  %45 = tail call i32 @llvm.umin.i32(i32 %33, i32 %sub.i.i.i20) #9
  %bv_offset36.i.i.i21 = getelementptr %struct.bio_vec, ptr %38, i32 %40, i32 2
  %46 = ptrtoint ptr %bv_offset36.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bv_offset36.i.i.i21, align 4
  %add40.i.i.i22 = add i32 %47, %42
  %rem.i.i.i23 = and i32 %add40.i.i.i22, 4095
  %sub41.i.i.i24 = sub nuw nsw i32 4096, %rem.i.i.i23
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %sub41.i.i.i24) #9
  br label %blk_rq_cur_bytes.exit.i.i28

blk_rq_cur_bytes.exit.i.i28:                      ; preds = %if.end4.i.i.i25, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge33, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge34, %land.lhs.true.i.i.i.i12.blk_rq_cur_bytes.exit.i.i28_crit_edge, %if.end.i.i9.blk_rq_cur_bytes.exit.i.i28_crit_edge
  %retval.0.i.i.i26 = phi i32 [ %48, %if.end4.i.i.i25 ], [ 0, %if.end.i.i9.blk_rq_cur_bytes.exit.i.i28_crit_edge ], [ %33, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge ], [ %33, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge33 ], [ %33, %land.lhs.true2.i.i.i.i15.blk_rq_cur_bytes.exit.i.i28_crit_edge34 ], [ 0, %land.lhs.true.i.i.i.i12.blk_rq_cur_bytes.exit.i.i28_crit_edge ]
  %call1.i.i27 = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %29, i8 noundef zeroext 0, i32 noundef %retval.0.i.i.i26) #9
  br i1 %call1.i.i27, label %blk_rq_cur_bytes.exit.i.i28.next_request.exit30_crit_edge, label %if.then2.i.i29

blk_rq_cur_bytes.exit.i.i28.next_request.exit30_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_request.exit30

if.then2.i.i29:                                   ; preds = %blk_rq_cur_bytes.exit.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  %49 = load ptr, ptr @pf_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %49, i8 noundef zeroext 0) #9
  store ptr null, ptr @pf_req, align 4
  br label %next_request.exit30

next_request.exit30:                              ; preds = %if.then2.i.i29, %blk_rq_cur_bytes.exit.i.i28.next_request.exit30_crit_edge, %if.end3.next_request.exit30_crit_edge
  store i1 false, ptr @pf_busy, align 4
  tail call fastcc void @pf_request() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pf_spin_lock, i32 noundef %call2.i5) #9
  br label %return

return:                                           ; preds = %next_request.exit30, %next_request.exit, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pf_mutex, i32 noundef 0) #9
  %call = tail call fastcc i32 @pf_identify(ptr noundef %3)
  %media_status = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %media_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %media_status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %entry.if.end4_crit_edge [
    i32 0, label %entry.out_crit_edge
    i32 1, label %land.lhs.true
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %access = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %access, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %access, align 4
  %removable = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end4.out_crit_edge, label %if.then6

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pf_lock(ptr noundef %3, i32 noundef 1)
  br label %out

out:                                              ; preds = %if.then6, %if.end4.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -19, %entry.out_crit_edge ], [ -30, %land.lhs.true.out_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end4.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @pf_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pf_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pf_mutex, i32 noundef 0) #9
  %access = getelementptr inbounds %struct.pf_unit, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @pf_mutex) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 353, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end16:                                         ; preds = %entry
  %dec = add nsw i32 %3, -1
  %4 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %removable = getelementptr inbounds %struct.pf_unit, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %if.then21

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pf_lock(ptr noundef %1, i32 noundef 0)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pf_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #6 align 64 {
entry:
  %rs_cmd.i.i = alloca [12 x i8], align 1
  %buf.i.i = alloca [16 x i8], align 1
  %ej_cmd.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21257, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 21257
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %access = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @pf_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ej_cmd.i) #9
  %6 = getelementptr inbounds [12 x i8], ptr %ej_cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [12 x i8], ptr %ej_cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [12 x i8], ptr %ej_cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [12 x i8], ptr %ej_cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [12 x i8], ptr %ej_cmd.i, i32 0, i32 5
  %11 = ptrtoint ptr %ej_cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 27, ptr %ej_cmd.i, align 1
  %lun.i = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lun.i, align 4
  %.tr.i = trunc i32 %13 to i8
  %conv.i = shl i8 %.tr.i, 5
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %9, align 1
  %18 = call ptr @memset(ptr %10, i32 0, i32 7)
  tail call fastcc void @pf_lock(ptr noundef %3, i32 noundef 0) #9
  %call.i.i = call fastcc i32 @pf_command(ptr noundef %3, ptr noundef nonnull %ej_cmd.i, i32 noundef 0, ptr noundef nonnull @.str.60) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.if.then3.i.i_crit_edge

if.end3.if.then3.i.i_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %if.end3
  %call1.i.i = call fastcc i32 @pf_completion(ptr noundef %3, ptr noundef nonnull @pf_scratch, ptr noundef nonnull @.str.60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.pf_eject.exit_crit_edge, label %if.end.i.i.if.then3.i.i_crit_edge

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i.i.pf_eject.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_eject.exit

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %if.end3.if.then3.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i.i) #9
  %20 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 2
  %22 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 3
  %23 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 4
  %24 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %rs_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %rs_cmd.i.i, align 1
  %26 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lun.i, align 4
  %.tr.i.i = trunc i32 %27 to i8
  %conv.i.i = shl i8 %.tr.i.i, 5
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.i, ptr %20, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %23, align 1
  %32 = call ptr @memset(ptr %24, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #9
  %33 = call ptr @memset(ptr %buf.i.i, i32 255, i32 16)
  %call.i13.i = call fastcc i32 @pf_command(ptr noundef %3, ptr noundef nonnull %rs_cmd.i.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool.not.i14.i, label %if.then.i.i, label %if.then3.i.i.pf_req_sense.exit.i_crit_edge

if.then3.i.i.pf_req_sense.exit.i_crit_edge:       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_req_sense.exit.i

if.then.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 13
  %36 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 12
  %37 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 2
  %call12.i.i = call fastcc i32 @pf_completion(ptr noundef %3, ptr noundef nonnull %buf.i.i, ptr noundef nonnull @.str.25) #9
  %name.i.i = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = and i8 %39, 15
  %and.i.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %36, align 1
  %conv19.i.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %35, align 1
  %conv21.i.i = zext i8 %44 to i32
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i, i32 noundef %and.i.i, i32 noundef %conv19.i.i, i32 noundef %conv21.i.i) #12
  br label %pf_req_sense.exit.i

pf_req_sense.exit.i:                              ; preds = %if.then.i.i, %if.then3.i.i.pf_req_sense.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i.i) #9
  br label %pf_eject.exit

pf_eject.exit:                                    ; preds = %pf_req_sense.exit.i, %if.end.i.i.pf_eject.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ej_cmd.i) #9
  call void @mutex_unlock(ptr noundef nonnull @pf_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %pf_eject.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pf_eject.exit ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pf_check_events(ptr nocapture noundef readnone %disk, i32 noundef %clearing) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %disk = getelementptr inbounds %struct.pf_unit, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %9)
  %cmp = icmp ult i64 %9, 8192
  %conv17 = trunc i64 %9 to i16
  br i1 %cmp, label %if.end181, label %if.end404

if.end181:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %9) #15, !srcloc !258
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %9, i64 %10, i32 0) #15, !srcloc !259
  %asmresult10.i = extractvalue { i64, i32 } %11, 0
  %div161575 = lshr i64 %asmresult10.i, 5
  %conv162 = trunc i64 %div161575 to i16
  %mul163.neg = mul i16 %conv162, -36
  %sub164 = add i16 %mul163.neg, %conv17
  br label %if.end410

if.end404:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv194 = and i16 %conv17, 2047
  br label %if.end410

if.end410:                                        ; preds = %if.end404, %if.end181
  %conv194.sink = phi i16 [ %conv194, %if.end404 ], [ %sub164, %if.end181 ]
  %storemerge = phi i8 [ 64, %if.end404 ], [ 2, %if.end181 ]
  %.sink = phi i8 [ 32, %if.end404 ], [ 18, %if.end181 ]
  %cylinders407 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %12 = ptrtoint ptr %cylinders407 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv194.sink, ptr %cylinders407, align 2
  %13 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %geo, align 4
  %14 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_identify(ptr noundef %pf) unnamed_addr #6 align 64 {
entry:
  %rs_cmd.i = alloca [12 x i8], align 1
  %buf.i128 = alloca [16 x i8], align 1
  %rs_cmd.i.i = alloca [12 x i8], align 1
  %buf.i.i = alloca [16 x i8], align 1
  %rc_cmd.i = alloca [12 x i8], align 1
  %buf.i = alloca [8 x i8], align 8
  %mf = alloca [10 x i8], align 1
  %id = alloca [18 x i8], align 1
  %id_cmd = alloca [12 x i8], align 1
  %buf = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mf) #9
  %0 = getelementptr inbounds [10 x i8], ptr %mf, i32 0, i32 1
  %1 = call ptr @memset(ptr %mf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %id) #9
  %2 = call ptr @memset(ptr %id, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %id_cmd) #9
  %3 = getelementptr inbounds [12 x i8], ptr %id_cmd, i32 0, i32 1
  %4 = getelementptr inbounds [12 x i8], ptr %id_cmd, i32 0, i32 2
  %5 = getelementptr inbounds [12 x i8], ptr %id_cmd, i32 0, i32 3
  %6 = getelementptr inbounds [12 x i8], ptr %id_cmd, i32 0, i32 4
  %7 = getelementptr inbounds [12 x i8], ptr %id_cmd, i32 0, i32 5
  %8 = ptrtoint ptr %id_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 18, ptr %id_cmd, align 1
  %lun = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 5
  %9 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lun, align 4
  %.tr = trunc i32 %10 to i8
  %conv = shl i8 %.tr, 5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 36, ptr %6, align 1
  %15 = call ptr @memset(ptr %7, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #9
  %16 = call ptr @memset(ptr %buf, i32 255, i32 36)
  %call.i = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %id_cmd, i32 noundef 36, ptr noundef nonnull @.str.36) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then3.i_crit_edge

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf, ptr noundef nonnull @.str.36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %entry.if.then3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  %18 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 1
  %19 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 2
  %20 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 3
  %21 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 4
  %22 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 5
  %23 = ptrtoint ptr %rs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %rs_cmd.i, align 1
  %24 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lun, align 4
  %.tr.i130 = trunc i32 %25 to i8
  %conv.i131 = shl i8 %.tr.i130, 5
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i131, ptr %18, align 1
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %19, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %20, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %21, align 1
  %30 = call ptr @memset(ptr %22, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i128) #9
  %31 = call ptr @memset(ptr %buf.i128, i32 255, i32 16)
  %call.i132 = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %rs_cmd.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.then.i134, label %if.then3.i.pf_atapi.exit_crit_edge

if.then3.i.pf_atapi.exit_crit_edge:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_atapi.exit

if.then.i134:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = getelementptr inbounds [16 x i8], ptr %buf.i128, i32 0, i32 13
  %34 = getelementptr inbounds [16 x i8], ptr %buf.i128, i32 0, i32 12
  %35 = getelementptr inbounds [16 x i8], ptr %buf.i128, i32 0, i32 2
  %call12.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf.i128, ptr noundef nonnull @.str.25) #9
  %name.i135 = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %38 = and i8 %37, 15
  %and.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %34, align 1
  %conv19.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %33, align 1
  %conv21.i = zext i8 %42 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i135, i32 noundef %and.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #12
  br label %pf_atapi.exit

pf_atapi.exit:                                    ; preds = %if.then.i134, %if.then3.i.pf_atapi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i128) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf, align 1
  %45 = and i8 %44, 31
  %and = zext i8 %45 to i32
  %trunc = trunc i8 %44 to i5
  %46 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.85)
  switch i5 %trunc, label %if.then16 [
    i5 0, label %if.end.for.inc.i_crit_edge
    i5 7, label %if.end.for.inc.i_crit_edge146
  ]

if.end.for.inc.i_crit_edge146:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then16:                                        ; preds = %if.end
  %47 = load i8, ptr @verbose, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not = icmp eq i8 %47, 0
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %do.end

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %drive = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %48 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %drive, align 4
  %50 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lun, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %49, i32 noundef %51, i32 noundef %and) #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.for.inc.i_crit_edge, %if.end.for.inc.i_crit_edge146
  %arrayidx.i = getelementptr inbounds i8, ptr %buf, i32 8
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i, align 1
  %54 = ptrtoint ptr %mf to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %mf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %53)
  %phi.cmp = icmp eq i8 %53, 32
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %buf, i32 9
  %55 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp1.not.i.1 = icmp eq i8 %56, 32
  %or.cond.i.1 = select i1 %cmp1.not.i.1, i1 %phi.cmp, i1 false
  br i1 %or.cond.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %phi.cmp139 = icmp eq i8 %56, 32
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %j.1.i.1 = phi i32 [ 2, %if.then.i.1 ], [ 1, %for.inc.i.for.inc.i.1_crit_edge ]
  %l.1.i.1 = phi i1 [ %phi.cmp139, %if.then.i.1 ], [ true, %for.inc.i.for.inc.i.1_crit_edge ]
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %buf, i32 10
  %58 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %59)
  %cmp1.not.i.2 = icmp eq i8 %59, 32
  %or.cond.i.2 = select i1 %cmp1.not.i.2, i1 %l.1.i.1, i1 false
  br i1 %or.cond.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge, label %if.then.i.2

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.2 = add nuw nsw i32 %j.1.i.1, 1
  %arrayidx10.i.2 = getelementptr i8, ptr %mf, i32 %j.1.i.1
  %60 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx10.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %59)
  %phi.cmp140 = icmp eq i8 %59, 32
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %j.1.i.2 = phi i32 [ %inc.i.2, %if.then.i.2 ], [ %j.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ]
  %l.1.i.2 = phi i1 [ %phi.cmp140, %if.then.i.2 ], [ true, %for.inc.i.1.for.inc.i.2_crit_edge ]
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %buf, i32 11
  %61 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %62)
  %cmp1.not.i.3 = icmp eq i8 %62, 32
  %or.cond.i.3 = select i1 %cmp1.not.i.3, i1 %l.1.i.2, i1 false
  br i1 %or.cond.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge, label %if.then.i.3

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.3 = add nuw nsw i32 %j.1.i.2, 1
  %arrayidx10.i.3 = getelementptr i8, ptr %mf, i32 %j.1.i.2
  %63 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx10.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %62)
  %phi.cmp141 = icmp eq i8 %62, 32
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %for.inc.i.2.for.inc.i.3_crit_edge
  %j.1.i.3 = phi i32 [ %inc.i.3, %if.then.i.3 ], [ %j.1.i.2, %for.inc.i.2.for.inc.i.3_crit_edge ]
  %l.1.i.3 = phi i1 [ %phi.cmp141, %if.then.i.3 ], [ true, %for.inc.i.2.for.inc.i.3_crit_edge ]
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %buf, i32 12
  %64 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %65)
  %cmp1.not.i.4 = icmp eq i8 %65, 32
  %or.cond.i.4 = select i1 %cmp1.not.i.4, i1 %l.1.i.3, i1 false
  br i1 %or.cond.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge, label %if.then.i.4

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.then.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.4 = add nuw nsw i32 %j.1.i.3, 1
  %arrayidx10.i.4 = getelementptr i8, ptr %mf, i32 %j.1.i.3
  %66 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx10.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %65)
  %phi.cmp142 = icmp eq i8 %65, 32
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then.i.4, %for.inc.i.3.for.inc.i.4_crit_edge
  %j.1.i.4 = phi i32 [ %inc.i.4, %if.then.i.4 ], [ %j.1.i.3, %for.inc.i.3.for.inc.i.4_crit_edge ]
  %l.1.i.4 = phi i1 [ %phi.cmp142, %if.then.i.4 ], [ true, %for.inc.i.3.for.inc.i.4_crit_edge ]
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %buf, i32 13
  %67 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %68)
  %cmp1.not.i.5 = icmp eq i8 %68, 32
  %or.cond.i.5 = select i1 %cmp1.not.i.5, i1 %l.1.i.4, i1 false
  br i1 %or.cond.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge, label %if.then.i.5

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.then.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.5 = add nuw nsw i32 %j.1.i.4, 1
  %arrayidx10.i.5 = getelementptr i8, ptr %mf, i32 %j.1.i.4
  %69 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx10.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %68)
  %phi.cmp143 = icmp eq i8 %68, 32
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then.i.5, %for.inc.i.4.for.inc.i.5_crit_edge
  %j.1.i.5 = phi i32 [ %inc.i.5, %if.then.i.5 ], [ %j.1.i.4, %for.inc.i.4.for.inc.i.5_crit_edge ]
  %l.1.i.5 = phi i1 [ %phi.cmp143, %if.then.i.5 ], [ true, %for.inc.i.4.for.inc.i.5_crit_edge ]
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %buf, i32 14
  %70 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %cmp1.not.i.6 = icmp eq i8 %71, 32
  %or.cond.i.6 = select i1 %cmp1.not.i.6, i1 %l.1.i.5, i1 false
  br i1 %or.cond.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge, label %if.then.i.6

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.then.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.6 = add nuw nsw i32 %j.1.i.5, 1
  %arrayidx10.i.6 = getelementptr i8, ptr %mf, i32 %j.1.i.5
  %72 = ptrtoint ptr %arrayidx10.i.6 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx10.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %phi.cmp144 = icmp eq i8 %71, 32
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.then.i.6, %for.inc.i.5.for.inc.i.6_crit_edge
  %j.1.i.6 = phi i32 [ %inc.i.6, %if.then.i.6 ], [ %j.1.i.5, %for.inc.i.5.for.inc.i.6_crit_edge ]
  %l.1.i.6 = phi i1 [ %phi.cmp144, %if.then.i.6 ], [ true, %for.inc.i.5.for.inc.i.6_crit_edge ]
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %buf, i32 15
  %73 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %74)
  %cmp1.not.i.7 = icmp eq i8 %74, 32
  %or.cond.i.7 = select i1 %cmp1.not.i.7, i1 %l.1.i.6, i1 false
  br i1 %or.cond.i.7, label %for.inc.i.6.for.inc.i.7_crit_edge, label %if.then.i.7

for.inc.i.6.for.inc.i.7_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.then.i.7:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.7 = add nuw nsw i32 %j.1.i.6, 1
  %arrayidx10.i.7 = getelementptr i8, ptr %mf, i32 %j.1.i.6
  %75 = ptrtoint ptr %arrayidx10.i.7 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx10.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %74)
  %phi.cmp145 = icmp eq i8 %74, 32
  %phi.cast = sext i1 %phi.cmp145 to i32
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.then.i.7, %for.inc.i.6.for.inc.i.7_crit_edge
  %j.1.i.7 = phi i32 [ %inc.i.7, %if.then.i.7 ], [ %j.1.i.6, %for.inc.i.6.for.inc.i.7_crit_edge ]
  %l.1.i.7 = phi i32 [ %phi.cast, %if.then.i.7 ], [ -1, %for.inc.i.6.for.inc.i.7_crit_edge ]
  %spec.select.i = add nsw i32 %j.1.i.7, %l.1.i.7
  %arrayidx17.i = getelementptr i8, ptr %mf, i32 %spec.select.i
  %76 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx17.i, align 1
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.inc.i119.for.body.i110_crit_edge, %for.inc.i.7
  %l.033.i102 = phi i32 [ %l.1.i116, %for.inc.i119.for.body.i110_crit_edge ], [ 0, %for.inc.i.7 ]
  %k.032.i103 = phi i32 [ %inc12.i117, %for.inc.i119.for.body.i110_crit_edge ], [ 0, %for.inc.i.7 ]
  %j.031.i104 = phi i32 [ %j.1.i115, %for.inc.i119.for.body.i110_crit_edge ], [ 0, %for.inc.i.7 ]
  %add.i105 = add nuw nsw i32 %k.032.i103, 16
  %arrayidx.i106 = getelementptr i8, ptr %buf, i32 %add.i105
  %77 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %78)
  %cmp1.not.i107 = icmp eq i8 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.033.i102)
  %cmp6.not.i108 = icmp eq i32 %l.033.i102, 32
  %or.cond.i109 = select i1 %cmp1.not.i107, i1 %cmp6.not.i108, i1 false
  br i1 %or.cond.i109, label %for.body.i110.for.inc.i119_crit_edge, label %if.then.i114

for.body.i110.for.inc.i119_crit_edge:             ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i119

if.then.i114:                                     ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i111 = add i32 %j.031.i104, 1
  %arrayidx10.i112 = getelementptr i8, ptr %id, i32 %j.031.i104
  %79 = ptrtoint ptr %arrayidx10.i112 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx10.i112, align 1
  %conv11.i113 = zext i8 %78 to i32
  br label %for.inc.i119

for.inc.i119:                                     ; preds = %if.then.i114, %for.body.i110.for.inc.i119_crit_edge
  %j.1.i115 = phi i32 [ %inc.i111, %if.then.i114 ], [ %j.031.i104, %for.body.i110.for.inc.i119_crit_edge ]
  %l.1.i116 = phi i32 [ %conv11.i113, %if.then.i114 ], [ 32, %for.body.i110.for.inc.i119_crit_edge ]
  %inc12.i117 = add nuw nsw i32 %k.032.i103, 1
  %exitcond.not.i118 = icmp eq i32 %inc12.i117, 16
  br i1 %exitcond.not.i118, label %xs.exit124, label %for.inc.i119.for.body.i110_crit_edge

for.inc.i119.for.body.i110_crit_edge:             ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i110

xs.exit124:                                       ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.1.i116)
  %cmp13.i120 = icmp eq i32 %l.1.i116, 32
  %dec.i121 = sext i1 %cmp13.i120 to i32
  %spec.select.i122 = add i32 %j.1.i115, %dec.i121
  %arrayidx17.i123 = getelementptr i8, ptr %id, i32 %spec.select.i122
  %80 = ptrtoint ptr %arrayidx17.i123 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx17.i123, align 1
  %arrayidx28 = getelementptr inbounds [36 x i8], ptr %buf, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx28, align 1
  %83 = and i8 %82, -128
  %and30 = zext i8 %83 to i32
  %removable = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 2
  %84 = ptrtoint ptr %removable to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and30, ptr %removable, align 4
  call fastcc void @pf_mode_sense(ptr noundef %pf)
  call fastcc void @pf_mode_sense(ptr noundef %pf)
  call fastcc void @pf_mode_sense(ptr noundef %pf)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rc_cmd.i) #9
  %85 = getelementptr inbounds [12 x i8], ptr %rc_cmd.i, i32 0, i32 1
  %86 = getelementptr inbounds [12 x i8], ptr %rc_cmd.i, i32 0, i32 2
  %87 = ptrtoint ptr %rc_cmd.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 37, ptr %rc_cmd.i, align 1
  %88 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lun, align 4
  %.tr.i = trunc i32 %89 to i8
  %conv.i = shl i8 %.tr.i, 5
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.i, ptr %85, align 1
  %91 = call ptr @memset(ptr %86, i32 0, i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #9
  %92 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 1
  %93 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %94 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 3
  %95 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %96 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 5
  %97 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 6
  %98 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 7
  %99 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 -1, ptr %buf.i, align 8
  %call.i.i = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %rc_cmd.i, i32 noundef 8, ptr noundef nonnull @.str.55) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %xs.exit124.if.then3.i.i_crit_edge

xs.exit124.if.then3.i.i_crit_edge:                ; preds = %xs.exit124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %xs.exit124
  %call1.i.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i127, label %if.end.i.i.if.then3.i.i_crit_edge

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %xs.exit124.if.then3.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i.i) #9
  %101 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 1
  %102 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 2
  %103 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 3
  %104 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 4
  %105 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %rs_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %rs_cmd.i.i, align 1
  %107 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lun, align 4
  %.tr.i.i = trunc i32 %108 to i8
  %conv.i48.i = shl i8 %.tr.i.i, 5
  %109 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i48.i, ptr %101, align 1
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %102, align 1
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %103, align 1
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 16, ptr %104, align 1
  %113 = call ptr @memset(ptr %105, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #9
  %114 = call ptr @memset(ptr %buf.i.i, i32 255, i32 16)
  %call.i49.i = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %rs_cmd.i.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i50.i, label %if.then.i.i, label %if.then3.i.i.if.then.i125_crit_edge

if.then3.i.i.if.then.i125_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i125

if.then.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 13
  %117 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 12
  %118 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 2
  %call12.i.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf.i.i, ptr noundef nonnull @.str.25) #9
  %name.i.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 1
  %121 = and i8 %120, 15
  %and.i.i = zext i8 %121 to i32
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %117, align 1
  %conv19.i.i = zext i8 %123 to i32
  %124 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %116, align 1
  %conv21.i.i = zext i8 %125 to i32
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i.i, i32 noundef %and.i.i, i32 noundef %conv19.i.i, i32 noundef %conv21.i.i) #12
  br label %if.then.i125

if.then.i125:                                     ; preds = %if.then.i.i, %if.then3.i.i.if.then.i125_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i.i) #9
  %media_status.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 3
  %126 = ptrtoint ptr %media_status.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %media_status.i, align 4
  br label %pf_get_capacity.exit

if.end.i127:                                      ; preds = %if.end.i.i
  %disk.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 9
  %127 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %disk.i, align 4
  %129 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %buf.i, align 8
  %conv.i.i = zext i8 %130 to i32
  %131 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %92, align 1
  %conv.1.i.i = zext i8 %132 to i32
  %133 = shl nuw nsw i32 %conv.i.i, 16
  %134 = shl nuw nsw i32 %conv.1.i.i, 8
  %mul.2.i.i = or i32 %134, %133
  %135 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %93, align 2
  %conv.2.i.i = zext i8 %136 to i32
  %add1.2.i.i = or i32 %mul.2.i.i, %conv.2.i.i
  %mul.3.i.i = shl nuw i32 %add1.2.i.i, 8
  %137 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %94, align 1
  %conv.3.i.i = zext i8 %138 to i32
  %add1.3.i.i = or i32 %mul.3.i.i, %conv.3.i.i
  %add.i126 = add i32 %add1.3.i.i, 1
  %conv14.i = sext i32 %add.i126 to i64
  call void @set_capacity(ptr noundef %128, i64 noundef %conv14.i) #9
  %139 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %95, align 4
  %conv.i37.i = zext i8 %140 to i32
  %141 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %96, align 1
  %conv.1.i39.i = zext i8 %142 to i32
  %143 = shl nuw nsw i32 %conv.i37.i, 16
  %144 = shl nuw nsw i32 %conv.1.i39.i, 8
  %mul.2.i40.i = or i32 %144, %143
  %145 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %97, align 2
  %conv.2.i42.i = zext i8 %146 to i32
  %add1.2.i43.i = or i32 %mul.2.i40.i, %conv.2.i42.i
  %mul.3.i44.i = shl nuw i32 %add1.2.i43.i, 8
  %147 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %98, align 1
  %conv.3.i46.i = zext i8 %148 to i32
  %add1.3.i47.i = or i32 %mul.3.i44.i, %conv.3.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add1.3.i47.i)
  %cmp.not.i = icmp eq i32 %add1.3.i47.i, 512
  br i1 %cmp.not.i, label %if.end.i127.pf_get_capacity.exit_crit_edge, label %if.then18.i

if.end.i127.pf_get_capacity.exit_crit_edge:       ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_get_capacity.exit

if.then18.i:                                      ; preds = %if.end.i127
  %149 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %disk.i, align 4
  call void @set_capacity(ptr noundef %150, i64 noundef 0) #9
  %151 = load i8, ptr @verbose, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool20.not.i = icmp eq i8 %151, 0
  br i1 %tobool20.not.i, label %if.then18.i.pf_get_capacity.exit_crit_edge, label %do.end.i

if.then18.i.pf_get_capacity.exit_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_get_capacity.exit

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %drive.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %152 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %drive.i, align 4
  %154 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %lun, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i, i32 noundef %153, i32 noundef %155, i32 noundef %add1.3.i47.i) #12
  br label %pf_get_capacity.exit

pf_get_capacity.exit:                             ; preds = %do.end.i, %if.then18.i.pf_get_capacity.exit_crit_edge, %if.end.i127.pf_get_capacity.exit_crit_edge, %if.then.i125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rc_cmd.i) #9
  %name35 = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %drive39 = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %156 = ptrtoint ptr %drive39 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %drive39, align 4
  %arrayidx40 = getelementptr [2 x ptr], ptr @__const.pf_identify.ms, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx40, align 4
  %160 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %lun, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name35, ptr noundef nonnull %mf, ptr noundef nonnull %id, ptr noundef %159, i32 noundef %161, i32 noundef %and) #12
  %162 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool44.not = icmp eq i32 %163, 0
  br i1 %tobool44.not, label %pf_get_capacity.exit.if.end51_crit_edge, label %do.end48

pf_get_capacity.exit.if.end51_crit_edge:          ; preds = %pf_get_capacity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end48:                                         ; preds = %pf_get_capacity.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %pf_get_capacity.exit.if.end51_crit_edge
  %media_status = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 3
  %164 = ptrtoint ptr %media_status to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %media_status, align 4
  %166 = zext i32 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %165, label %if.end51.do.end72_crit_edge [
    i32 0, label %do.end57
    i32 1, label %do.end66
  ]

if.end51.do.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %cleanup

do.end66:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %do.end72

do.end72:                                         ; preds = %do.end66, %if.end51.do.end72_crit_edge
  %disk = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 9
  %167 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %disk, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %168, i32 0, i32 7
  %169 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i64 noundef %172) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %do.end57, %do.end, %if.then16.cleanup_crit_edge, %pf_atapi.exit
  %retval.0 = phi i32 [ -1, %pf_atapi.exit ], [ -1, %do.end ], [ -1, %if.then16.cleanup_crit_edge ], [ 0, %do.end72 ], [ 0, %do.end57 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %id_cmd) #9
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %id) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %mf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pf_lock(ptr noundef %pf, i32 noundef %func) unnamed_addr #6 align 64 {
entry:
  %rs_cmd.i = alloca [12 x i8], align 1
  %buf.i = alloca [16 x i8], align 1
  %lo_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lo_cmd) #9
  %0 = getelementptr inbounds [12 x i8], ptr %lo_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %lo_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %lo_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %lo_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [12 x i8], ptr %lo_cmd, i32 0, i32 5
  %5 = ptrtoint ptr %lo_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 30, ptr %lo_cmd, align 1
  %lun = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 5
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lun, align 4
  %.tr = trunc i32 %7 to i8
  %conv = shl i8 %.tr, 5
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %conv4 = trunc i32 %func to i8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %func)
  %tobool.not = icmp eq i32 %func, 0
  %cond = select i1 %tobool.not, ptr @.str.59, ptr @.str.58
  %12 = call ptr @memset(ptr %4, i32 0, i32 7)
  %call.i = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %lo_cmd, i32 noundef 0, ptr noundef nonnull %cond) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then3.i_crit_edge

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull @pf_scratch, ptr noundef nonnull %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.pf_atapi.exit_crit_edge, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i.pf_atapi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_atapi.exit

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %entry.if.then3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  %14 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 1
  %15 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 2
  %16 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 3
  %17 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 4
  %18 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 5
  %19 = ptrtoint ptr %rs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %rs_cmd.i, align 1
  %20 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lun, align 4
  %.tr.i = trunc i32 %21 to i8
  %conv.i = shl i8 %.tr.i, 5
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %14, align 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %15, align 1
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %16, align 1
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %17, align 1
  %26 = call ptr @memset(ptr %18, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #9
  %27 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i14 = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %rs_cmd.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.then.i, label %if.then3.i.pf_req_sense.exit_crit_edge

if.then3.i.pf_req_sense.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_req_sense.exit

if.then.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 13
  %30 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 12
  %31 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %call12.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.25) #9
  %name.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %34 = and i8 %33, 15
  %and.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %30, align 1
  %conv19.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %29, align 1
  %conv21.i = zext i8 %38 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #12
  br label %pf_req_sense.exit

pf_req_sense.exit:                                ; preds = %if.then.i, %if.then3.i.pf_req_sense.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  br label %pf_atapi.exit

pf_atapi.exit:                                    ; preds = %pf_req_sense.exit, %if.end.i.pf_atapi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lo_cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pf_mode_sense(ptr noundef %pf) unnamed_addr #6 align 64 {
entry:
  %rs_cmd.i = alloca [12 x i8], align 1
  %buf.i = alloca [16 x i8], align 1
  %ms_cmd = alloca [12 x i8], align 1
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ms_cmd) #9
  %0 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 8
  %3 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 9
  %4 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 10
  %5 = getelementptr inbounds [12 x i8], ptr %ms_cmd, i32 0, i32 11
  %6 = ptrtoint ptr %ms_cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 90, ptr %ms_cmd, align 1
  %lun = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 5
  %7 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lun, align 4
  %.tr = trunc i32 %8 to i8
  %conv = shl i8 %.tr, 5
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %0, align 1
  %10 = call ptr @memset(ptr %1, i32 0, i32 6)
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %3, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %buf, align 8
  %call.i = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %ms_cmd, i32 noundef 8, ptr noundef nonnull @.str.54) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then3.i_crit_edge

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf, ptr noundef nonnull @.str.54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.pf_atapi.exit_crit_edge, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i.pf_atapi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_atapi.exit

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %entry.if.then3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  %17 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 1
  %18 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 2
  %19 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 3
  %20 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 4
  %21 = getelementptr inbounds [12 x i8], ptr %rs_cmd.i, i32 0, i32 5
  %22 = ptrtoint ptr %rs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %rs_cmd.i, align 1
  %23 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lun, align 4
  %.tr.i = trunc i32 %24 to i8
  %conv.i = shl i8 %.tr.i, 5
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %17, align 1
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %18, align 1
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %19, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %20, align 1
  %29 = call ptr @memset(ptr %21, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #9
  %30 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i17 = call fastcc i32 @pf_command(ptr noundef %pf, ptr noundef nonnull %rs_cmd.i, i32 noundef 16, ptr noundef nonnull @.str.25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.then.i, label %if.then3.i.pf_req_sense.exit_crit_edge

if.then3.i.pf_req_sense.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_req_sense.exit

if.then.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 13
  %33 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 12
  %34 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %call12.i = call fastcc i32 @pf_completion(ptr noundef %pf, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.25) #9
  %name.i = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %37 = and i8 %36, 15
  %and.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %33, align 1
  %conv19.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %32, align 1
  %conv21.i = zext i8 %41 to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %conv19.i, i32 noundef %conv21.i) #12
  br label %pf_req_sense.exit

pf_req_sense.exit:                                ; preds = %if.then.i, %if.then3.i.pf_req_sense.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i) #9
  br label %pf_atapi.exit

pf_atapi.exit:                                    ; preds = %pf_req_sense.exit, %if.end.i.pf_atapi.exit_crit_edge
  %42 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %media_status = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool.not = icmp sgt i8 %44, -1
  %spec.store.select = select i1 %tobool.not, i32 2, i32 1
  %45 = ptrtoint ptr %media_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %media_status, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ms_cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pf_reset(ptr noundef %pf) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pi = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  tail call void @pi_connect(ptr noundef %1) #9
  %drive = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 4
  %2 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive, align 4
  %mul = shl i32 %3, 4
  %add = add i32 %mul, 160
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %5, i32 noundef 0, i32 noundef 6, i32 noundef %add) #9
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %7, i32 noundef 0, i32 noundef 7, i32 noundef 8) #9
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 2) #9
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %inc62 = phi i32 [ 1, %entry ], [ %inc, %while.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi, align 4
  %call.i56 = tail call i32 @pi_read_regr(ptr noundef %9, i32 noundef 1, i32 noundef 6) #9
  %and = and i32 %call.i56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i57 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #9
  %inc = add nuw nsw i32 %inc62, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %inc.lcssa = phi i32 [ 31, %while.body.while.end_crit_edge ], [ %inc62, %land.rhs.while.end_crit_edge ]
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi, align 4
  %call.i59 = tail call i32 @pi_read_regr(ptr noundef %11, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp4 = icmp eq i32 %call.i59, 1
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi, align 4
  %call.i59.1 = tail call i32 @pi_read_regr(ptr noundef %13, i32 noundef 0, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.1)
  %cmp4.1 = icmp eq i32 %call.i59.1, 1
  %and5.168 = and i1 %cmp4, %cmp4.1
  %14 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pi, align 4
  %call.i59.2 = tail call i32 @pi_read_regr(ptr noundef %15, i32 noundef 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.2)
  %cmp4.2 = icmp eq i32 %call.i59.2, 1
  %and5.269 = and i1 %and5.168, %cmp4.2
  %16 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pi, align 4
  %call.i59.3 = tail call i32 @pi_read_regr(ptr noundef %17, i32 noundef 0, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i59.3)
  %cmp4.3 = icmp eq i32 %call.i59.3, 20
  %and5.370 = and i1 %and5.269, %cmp4.3
  %18 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pi, align 4
  %call.i59.4 = tail call i32 @pi_read_regr(ptr noundef %19, i32 noundef 0, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 235, i32 %call.i59.4)
  %cmp4.4 = icmp eq i32 %call.i59.4, 235
  %and5.471 = and i1 %and5.370, %cmp4.4
  %20 = load i8, ptr @verbose, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  br i1 %tobool7.not, label %while.end.if.end35_crit_edge, label %do.end

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %while.end
  %name = getelementptr inbounds %struct.pf_unit, ptr %pf, i32 0, i32 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %inc.lcssa) #12
  %21 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pi, align 4
  %call.i61 = tail call i32 @pi_read_regr(ptr noundef %22, i32 noundef 0, i32 noundef 1) #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i61) #12
  %23 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pi, align 4
  %call.i61.1 = tail call i32 @pi_read_regr(ptr noundef %24, i32 noundef 0, i32 noundef 2) #9
  %call19.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i61.1) #12
  %25 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pi, align 4
  %call.i61.2 = tail call i32 @pi_read_regr(ptr noundef %26, i32 noundef 0, i32 noundef 3) #9
  %call19.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i61.2) #12
  %27 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pi, align 4
  %call.i61.3 = tail call i32 @pi_read_regr(ptr noundef %28, i32 noundef 0, i32 noundef 4) #9
  %call19.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i61.3) #12
  %29 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pi, align 4
  %call.i61.4 = tail call i32 @pi_read_regr(ptr noundef %30, i32 noundef 0, i32 noundef 5) #9
  %call19.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call.i61.4) #12
  br i1 %and5.471, label %do.end.do.end32_crit_edge, label %do.end27

do.end.do.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.end.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %while.end.if.end35_crit_edge
  %31 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pi, align 4
  tail call void @pi_disconnect(ptr noundef %32) #9
  %not.and5.471 = xor i1 %and5.471, true
  %sub = sext i1 %not.and5.471 to i32
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !178, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/pf.c", i32 163, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype278, !1, !"__UNIQUE_ID_verbosetype278", i1 false, i1 false}
!3 = !{ptr @__param_major, !4, !"__param_major", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/pf.c", i32 164, i32 1}
!5 = !{ptr @__UNIQUE_ID_majortype279, !4, !"__UNIQUE_ID_majortype279", i1 false, i1 false}
!6 = !{ptr @__param_name, !7, !"__param_name", i1 false, i1 false}
!7 = !{!"../drivers/block/paride/pf.c", i32 165, i32 1}
!8 = !{ptr @__UNIQUE_ID_nametype280, !7, !"__UNIQUE_ID_nametype280", i1 false, i1 false}
!9 = !{ptr @__param_cluster, !10, !"__param_cluster", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/pf.c", i32 166, i32 1}
!11 = !{ptr @__UNIQUE_ID_clustertype281, !10, !"__UNIQUE_ID_clustertype281", i1 false, i1 false}
!12 = !{ptr @__param_nice, !13, !"__param_nice", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/pf.c", i32 167, i32 1}
!14 = !{ptr @__UNIQUE_ID_nicetype282, !13, !"__UNIQUE_ID_nicetype282", i1 false, i1 false}
!15 = !{ptr @__param_drive0, !16, !"__param_drive0", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/pf.c", i32 168, i32 1}
!17 = !{ptr @__UNIQUE_ID_drive0type283, !16, !"__UNIQUE_ID_drive0type283", i1 false, i1 false}
!18 = !{ptr @__param_drive1, !19, !"__param_drive1", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/pf.c", i32 169, i32 1}
!20 = !{ptr @__UNIQUE_ID_drive1type284, !19, !"__UNIQUE_ID_drive1type284", i1 false, i1 false}
!21 = !{ptr @__param_drive2, !22, !"__param_drive2", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/pf.c", i32 170, i32 1}
!23 = !{ptr @__UNIQUE_ID_drive2type285, !22, !"__UNIQUE_ID_drive2type285", i1 false, i1 false}
!24 = !{ptr @__param_drive3, !25, !"__param_drive3", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/pf.c", i32 171, i32 1}
!26 = !{ptr @__UNIQUE_ID_drive3type286, !25, !"__UNIQUE_ID_drive3type286", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file287, !28, !"__UNIQUE_ID_file287", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/pf.c", i32 1055, i32 1}
!29 = !{ptr @__UNIQUE_ID_license288, !28, !"__UNIQUE_ID_license288", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_pf__289_1056_pf_init6, !31, !"__initcall__kmod_pf__289_1056_pf_init6", i1 false, i1 false}
!31 = !{!"../drivers/block/paride/pf.c", i32 1056, i32 1}
!32 = !{ptr @__exitcall_pf_exit, !33, !"__exitcall_pf_exit", i1 false, i1 false}
!33 = !{!"../drivers/block/paride/pf.c", i32 1057, i32 1}
!34 = !{ptr @units, !35, !"units", i1 false, i1 false}
!35 = !{!"../drivers/block/paride/pf.c", i32 245, i32 23}
!36 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!37 = !{ptr @verbose, !38, !"verbose", i1 false, i1 false}
!38 = !{!"../drivers/block/paride/pf.c", i32 129, i32 13}
!39 = !{ptr @__param_str_major, !4, !"__param_str_major", i1 false, i1 false}
!40 = !{ptr @major, !41, !"major", i1 false, i1 false}
!41 = !{!"../drivers/block/paride/pf.c", i32 130, i32 12}
!42 = !{ptr @__param_str_name, !7, !"__param_str_name", i1 false, i1 false}
!43 = !{ptr @.str, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/block/paride/pf.c", i32 131, i32 21}
!45 = !{ptr @name, !46, !"name", i1 false, i1 false}
!46 = !{!"../drivers/block/paride/pf.c", i32 131, i32 14}
!47 = !{ptr @__param_str_cluster, !10, !"__param_str_cluster", i1 false, i1 false}
!48 = !{ptr @cluster, !49, !"cluster", i1 false, i1 false}
!49 = !{!"../drivers/block/paride/pf.c", i32 132, i32 12}
!50 = !{ptr @__param_str_nice, !13, !"__param_str_nice", i1 false, i1 false}
!51 = !{ptr @nice, !52, !"nice", i1 false, i1 false}
!52 = !{!"../drivers/block/paride/pf.c", i32 133, i32 12}
!53 = !{ptr @__param_str_drive0, !16, !"__param_str_drive0", i1 false, i1 false}
!54 = !{ptr @__param_arr_drive0, !16, !"__param_arr_drive0", i1 false, i1 false}
!55 = !{ptr @drive0, !56, !"drive0", i1 false, i1 false}
!56 = !{!"../drivers/block/paride/pf.c", i32 136, i32 12}
!57 = !{ptr @__param_str_drive1, !19, !"__param_str_drive1", i1 false, i1 false}
!58 = !{ptr @__param_arr_drive1, !19, !"__param_arr_drive1", i1 false, i1 false}
!59 = !{ptr @drive1, !60, !"drive1", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/pf.c", i32 137, i32 12}
!61 = !{ptr @__param_str_drive2, !22, !"__param_str_drive2", i1 false, i1 false}
!62 = !{ptr @__param_arr_drive2, !22, !"__param_arr_drive2", i1 false, i1 false}
!63 = !{ptr @drive2, !64, !"drive2", i1 false, i1 false}
!64 = !{!"../drivers/block/paride/pf.c", i32 138, i32 12}
!65 = !{ptr @__param_str_drive3, !25, !"__param_str_drive3", i1 false, i1 false}
!66 = !{ptr @__param_arr_drive3, !25, !"__param_arr_drive3", i1 false, i1 false}
!67 = !{ptr @drive3, !68, !"drive3", i1 false, i1 false}
!68 = !{!"../drivers/block/paride/pf.c", i32 139, i32 12}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/paride/pf.c", i32 995, i32 2}
!71 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pf_init._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @pf_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/paride/pf.c", i32 1000, i32 3}
!78 = !{ptr @pf_init._entry.5, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pf_init._entry_ptr.7, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/paride/pf.c", i32 1025, i32 3}
!82 = !{ptr @pf_init._entry.8, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pf_init._entry_ptr.10, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"disable", i1 false, i1 false}
!85 = !{!"../drivers/block/paride/pf.c", i32 134, i32 12}
!86 = !{ptr @par_drv, !87, !"par_drv", i1 false, i1 false}
!87 = !{!"../drivers/block/paride/pf.c", i32 269, i32 14}
!88 = !{ptr @drives, !89, !"drives", i1 false, i1 false}
!89 = !{!"../drivers/block/paride/pf.c", i32 141, i32 14}
!90 = !{ptr @pf_drive_count, !91, !"pf_drive_count", i1 false, i1 false}
!91 = !{!"../drivers/block/paride/pf.c", i32 142, i32 12}
!92 = !{ptr @pf_init_unit.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/block/paride/pf.c", i32 935, i32 9}
!94 = !{ptr @.str.11, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/paride/pf.c", i32 958, i32 33}
!96 = !{ptr @pf_mq_ops, !97, !"pf_mq_ops", i1 false, i1 false}
!97 = !{!"../drivers/block/paride/pf.c", i32 283, i32 32}
!98 = !{ptr @.str.12, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/paride/pf.c", i32 161, i32 8}
!100 = !{ptr @pf_spin_lock, !99, !"pf_spin_lock", i1 false, i1 false}
!101 = !{ptr @pf_req, !102, !"pf_req", i1 false, i1 false}
!102 = !{!"../drivers/block/paride/pf.c", i32 261, i32 24}
!103 = !{ptr @pf_queue, !104, !"pf_queue", i1 false, i1 false}
!104 = !{!"../drivers/block/paride/pf.c", i32 708, i32 12}
!105 = !{ptr @pf_current, !106, !"pf_current", i1 false, i1 false}
!106 = !{!"../drivers/block/paride/pf.c", i32 266, i32 24}
!107 = !{ptr @pf_block, !108, !"pf_block", i1 false, i1 false}
!108 = !{!"../drivers/block/paride/pf.c", i32 262, i32 12}
!109 = !{ptr @pf_run, !110, !"pf_run", i1 false, i1 false}
!110 = !{!"../drivers/block/paride/pf.c", i32 264, i32 12}
!111 = !{ptr @pf_count, !112, !"pf_count", i1 false, i1 false}
!112 = !{!"../drivers/block/paride/pf.c", i32 263, i32 12}
!113 = !{ptr @pf_cmd, !114, !"pf_cmd", i1 false, i1 false}
!114 = !{!"../drivers/block/paride/pf.c", i32 265, i32 12}
!115 = !{ptr @pf_buf, !116, !"pf_buf", i1 false, i1 false}
!116 = !{!"../drivers/block/paride/pf.c", i32 268, i32 14}
!117 = !{ptr @pf_retries, !118, !"pf_retries", i1 false, i1 false}
!118 = !{!"../drivers/block/paride/pf.c", i32 259, i32 12}
!119 = !{ptr @.str.13, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/block/paride/pseudo.h", i32 46, i32 8}
!121 = !{ptr @ps_spinlock, !120, !"ps_spinlock", i1 false, i1 false}
!122 = !{ptr @ps_continuation, !123, !"ps_continuation", i1 false, i1 false}
!123 = !{!"../drivers/block/paride/pseudo.h", i32 40, i32 16}
!124 = !{ptr @ps_ready, !125, !"ps_ready", i1 false, i1 false}
!125 = !{!"../drivers/block/paride/pseudo.h", i32 41, i32 15}
!126 = !{ptr @ps_timeout, !127, !"ps_timeout", i1 false, i1 false}
!127 = !{!"../drivers/block/paride/pseudo.h", i32 42, i32 22}
!128 = !{ptr @ps_nice, !129, !"ps_nice", i1 false, i1 false}
!129 = !{!"../drivers/block/paride/pseudo.h", i32 44, i32 12}
!130 = distinct !{null, !131, !"ps_tq_active", i1 false, i1 false}
!131 = !{!"../drivers/block/paride/pseudo.h", i32 43, i32 12}
!132 = !{ptr @.str.14, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/paride/pseudo.h", i32 48, i32 8}
!134 = !{ptr @.str.15, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ps_tq, !133, !"ps_tq", i1 false, i1 false}
!136 = !{ptr @.str.16, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/block/paride/pf.c", i32 696, i32 38}
!138 = !{ptr @.str.17, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/block/paride/pf.c", i32 415, i32 48}
!140 = !{ptr @.str.18, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/block/paride/pf.c", i32 424, i32 44}
!142 = !{ptr @.str.19, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/paride/pf.c", i32 430, i32 3}
!144 = !{ptr @.str.20, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pf_command._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @pf_command._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.21, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/paride/pf.c", i32 401, i32 4}
!149 = !{ptr @.str.22, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pf_wait._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @pf_wait._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"pf_mask", i1 false, i1 false}
!153 = !{!"../drivers/block/paride/pf.c", i32 267, i32 12}
!154 = !{ptr @.str.23, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/block/paride/pf.c", i32 849, i32 8}
!156 = !{ptr @.str.24, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/paride/pf.c", i32 849, i32 22}
!158 = !{ptr @.str.25, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/block/paride/pf.c", i32 467, i32 33}
!160 = !{ptr @.str.26, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/paride/pf.c", i32 473, i32 3}
!162 = !{ptr @.str.27, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @pf_req_sense._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @pf_req_sense._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.28, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/block/paride/pf.c", i32 453, i32 57}
!167 = !{ptr @.str.29, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/block/paride/pf.c", i32 890, i32 8}
!169 = !{ptr @.str.30, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/block/paride/pf.c", i32 890, i32 23}
!171 = !{ptr @.str.31, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/paride/pf.c", i32 910, i32 55}
!173 = !{ptr @pf_fops, !174, !"pf_fops", i1 false, i1 false}
!174 = !{!"../drivers/block/paride/pf.c", i32 273, i32 45}
!175 = !{ptr @.str.32, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/block/paride/pf.c", i32 160, i32 8}
!177 = !{ptr @.str.33, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pf_mutex, !176, !"pf_mutex", i1 false, i1 false}
!179 = !{ptr @.str.34, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/block/paride/pf.c", i32 610, i32 18}
!181 = !{ptr @.str.35, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/block/paride/pf.c", i32 610, i32 28}
!183 = !{ptr @.str.36, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/paride/pf.c", i32 616, i32 36}
!185 = !{ptr @.str.37, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/block/paride/pf.c", i32 623, i32 4}
!187 = !{ptr @.str.38, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @pf_identify._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @pf_identify._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.40, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/block/paride/pf.c", i32 639, i32 2}
!192 = !{ptr @pf_identify._entry.39, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @pf_identify._entry_ptr.41, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.43, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/block/paride/pf.c", i32 642, i32 3}
!196 = !{ptr @pf_identify._entry.42, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @pf_identify._entry_ptr.44, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.46, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/paride/pf.c", i32 644, i32 3}
!200 = !{ptr @pf_identify._entry.45, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @pf_identify._entry_ptr.47, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.49, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/paride/pf.c", i32 647, i32 4}
!204 = !{ptr @pf_identify._entry.48, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @pf_identify._entry_ptr.50, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.52, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/block/paride/pf.c", i32 648, i32 3}
!208 = !{ptr @pf_identify._entry.51, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @pf_identify._entry_ptr.53, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.54, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/block/paride/pf.c", i32 556, i32 31}
!212 = !{ptr @.str.55, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/paride/pf.c", i32 592, i32 35}
!214 = !{ptr @.str.56, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/block/paride/pf.c", i32 601, i32 4}
!216 = !{ptr @.str.57, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @pf_get_capacity._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @pf_get_capacity._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.58, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/block/paride/pf.c", i32 495, i32 45}
!221 = !{ptr @.str.59, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/block/paride/pf.c", i32 495, i32 54}
!223 = !{ptr @.str.60, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/block/paride/pf.c", i32 503, i32 38}
!225 = !{ptr @pf_scratch, !226, !"pf_scratch", i1 false, i1 false}
!226 = !{!"../drivers/block/paride/pf.c", i32 253, i32 13}
!227 = !{ptr @.str.61, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/block/paride/pf.c", i32 538, i32 3}
!229 = !{ptr @.str.62, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @pf_reset._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @pf_reset._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.64, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/block/paride/pf.c", i32 540, i32 4}
!234 = !{ptr @pf_reset._entry.63, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @pf_reset._entry_ptr.65, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.67, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/block/paride/pf.c", i32 542, i32 4}
!238 = !{ptr @pf_reset._entry.66, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @pf_reset._entry_ptr.68, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.70, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/block/paride/pf.c", i32 543, i32 3}
!242 = !{ptr @pf_reset._entry.69, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @pf_reset._entry_ptr.71, !241, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !245, !"pf_busy", i1 false, i1 false}
!245 = !{!"../drivers/block/paride/pf.c", i32 260, i32 12}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{i8 0, i8 2}
!256 = !{ptr @pf_ready}
!257 = !{ptr @do_pf_read_drq, ptr @do_pf_read_start, ptr @do_pf_write_done, ptr @do_pf_write_start}
!258 = !{i64 724887, i64 724914}
!259 = !{i64 725582, i64 725609, i64 725642, i64 725663, i64 725690, i64 725716}
