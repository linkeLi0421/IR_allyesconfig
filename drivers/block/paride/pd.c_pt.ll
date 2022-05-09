; ModuleID = '/llk/IR_all_yes/drivers/block/paride/pd.c_pt.bc'
source_filename = "../drivers/block/paride/pd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pd_unit = type { %struct.pi_adapter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], ptr, %struct.blk_mq_tag_set, %struct.list_head }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
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
%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__param_str_verbose = internal constant [11 x i8] c"pd.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype278 = internal constant [24 x i8] c"pd.parmtype=verbose:int\00", section ".modinfo", align 1
@__param_str_major = internal constant [9 x i8] c"pd.major\00", align 1
@major = internal global { i32, [28 x i8] } { i32 45, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype279 = internal constant [22 x i8] c"pd.parmtype=major:int\00", section ".modinfo", align 1
@__param_str_name = internal constant [8 x i8] c"pd.name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_name = internal constant %struct.kernel_param { ptr @__param_str_name, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @name } }, section "__param", align 4
@__UNIQUE_ID_nametype280 = internal constant [23 x i8] c"pd.parmtype=name:charp\00", section ".modinfo", align 1
@__param_str_cluster = internal constant [11 x i8] c"pd.cluster\00", align 1
@cluster = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_cluster = internal constant %struct.kernel_param { ptr @__param_str_cluster, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @cluster } }, section "__param", align 4
@__UNIQUE_ID_clustertype281 = internal constant [24 x i8] c"pd.parmtype=cluster:int\00", section ".modinfo", align 1
@__param_str_nice = internal constant [8 x i8] c"pd.nice\00", align 1
@nice = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nice = internal constant %struct.kernel_param { ptr @__param_str_nice, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nice } }, section "__param", align 4
@__UNIQUE_ID_nicetype282 = internal constant [21 x i8] c"pd.parmtype=nice:int\00", section ".modinfo", align 1
@__param_str_drive0 = internal constant [10 x i8] c"pd.drive0\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_drive0 = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @drive0 }, align 4
@__param_drive0 = internal constant %struct.kernel_param { ptr @__param_str_drive0, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive0 } }, section "__param", align 4
@__UNIQUE_ID_drive0type283 = internal constant [32 x i8] c"pd.parmtype=drive0:array of int\00", section ".modinfo", align 1
@__param_str_drive1 = internal constant [10 x i8] c"pd.drive1\00", align 1
@__param_arr_drive1 = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @drive1 }, align 4
@__param_drive1 = internal constant %struct.kernel_param { ptr @__param_str_drive1, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive1 } }, section "__param", align 4
@__UNIQUE_ID_drive1type284 = internal constant [32 x i8] c"pd.parmtype=drive1:array of int\00", section ".modinfo", align 1
@__param_str_drive2 = internal constant [10 x i8] c"pd.drive2\00", align 1
@__param_arr_drive2 = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @drive2 }, align 4
@__param_drive2 = internal constant %struct.kernel_param { ptr @__param_str_drive2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive2 } }, section "__param", align 4
@__UNIQUE_ID_drive2type285 = internal constant [32 x i8] c"pd.parmtype=drive2:array of int\00", section ".modinfo", align 1
@__param_str_drive3 = internal constant [10 x i8] c"pd.drive3\00", align 1
@__param_arr_drive3 = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @drive3 }, align 4
@__param_drive3 = internal constant %struct.kernel_param { ptr @__param_str_drive3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive3 } }, section "__param", align 4
@__UNIQUE_ID_drive3type286 = internal constant [32 x i8] c"pd.parmtype=drive3:array of int\00", section ".modinfo", align 1
@pd = internal global { [4 x %struct.pd_unit], [368 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file287 = internal constant [32 x i8] c"pd.file=drivers/block/paride/pd\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [15 x i8] c"pd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pd__289_1029_pd_init6 = internal global ptr @pd_init, section ".initcall6.init", align 4
@__exitcall_pd_exit = internal global ptr @pd_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pd\00", [29 x i8] zeroinitializer }, align 32
@drive0 = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@drive1 = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@drive2 = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@drive3 = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@pd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: %s version %s, major %d, cluster %d, nice %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/block/paride/pd.c\00", [38 x i8] zeroinitializer }, align 32
@pd_init._entry_ptr = internal global ptr @pd_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.05\00", [27 x i8] zeroinitializer }, align 32
@par_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@pd_init._entry_ptr.7 = internal global ptr @pd_init._entry.5, section ".printk_index", align 4
@drives = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3], [16 x i8] zeroinitializer }, align 32
@pd_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: no valid drive found\0A\00", [38 x i8] zeroinitializer }, align 32
@pd_init._entry_ptr.10 = internal global ptr @pd_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%c\00", [27 x i8] zeroinitializer }, align 32
@pd_scratch = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@pd_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @pd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pd_probe_drive.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pd_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @pd_open, ptr @pd_release, ptr null, ptr @pd_ioctl, ptr @pd_ioctl, ptr @pd_check_events, ptr null, ptr @pd_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@pd_req = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pd_lock\00", [24 x i8] zeroinitializer }, align 32
@phase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pd_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pi_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pd_claimed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pd_block = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pd_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pd_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pd_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pd_retries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_pd_read\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pd_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pd_print_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s: status = 0x%x =\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pd_print_error\00", [17 x i8] zeroinitializer }, align 32
@pd_print_error._entry_ptr = internal global ptr @pd_print_error._entry, section ".printk_index", align 4
@pd_print_error._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@pd_print_error._entry_ptr.18 = internal global ptr @pd_print_error._entry.16, section ".printk_index", align 4
@pd_errs = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [60 x i8] zeroinitializer }, align 32
@pd_print_error._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pd_print_error._entry_ptr.21 = internal global ptr @pd_print_error._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ERR\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INDEX\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ECC\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRQ\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SEEK\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRERR\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"READY\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AMNF\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TK0NF\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ABRT\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCR\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDNF\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UNC\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TMO\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_pd_read_drq\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_pd_write\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_pd_write_drq\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_pd_write_done\00", [47 x i8] zeroinitializer }, align 32
@pd_queue = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fsm_tq = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @fsm_tq, i64 4), ptr getelementptr (i8, ptr @fsm_tq, i64 4) }, ptr @ps_tq_int, %struct.lockdep_map { ptr @fsm_tq, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.44, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(fsm_tq).work\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/paride/pd.c:369\00", [34 x i8] zeroinitializer }, align 32
@pd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pd_mutex, i64 52), ptr getelementptr (i8, ptr @pd_mutex, i64 52) }, ptr @pd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pd_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pd_mutex\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"before media_check\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RDY after READ_VRFY\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RDY after ACKCHANGE\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RDY after VRFY\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lock\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Lock done\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"before unlock on eject\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"after unlock on eject\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"before eject\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"after eject\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"before IDENT\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IDENT DRQ\00", [22 x i8] zeroinitializer }, align 32
@pd_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: %s, %s, %d blocks [%dM], (%d/%d/%d), %s media\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pd_identify\00", [20 x i8] zeroinitializer }, align 32
@pd_identify._entry_ptr = internal global ptr @pd_identify._entry, section ".printk_index", align 4
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"removable\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"before init_dev_parms\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Initialise device parameters\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before STANDBY\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"after STANDBY\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 34]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 129, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 130, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 131, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 132, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 133, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 243, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 131, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"drive0\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 136, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"drive1\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 137, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"drive2\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 138, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"drive3\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 139, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 968, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"par_drv\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 257, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 973, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 141, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 998, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 891, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"pd_scratch\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 250, i32 13 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"pd_mq_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 874, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 912, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant [8 x i8] c"pd_fops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 862, i32 45 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"pd_lock\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"pd_req\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 362, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 162, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 363, i32 22 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"pd_current\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 394, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant [11 x i8] c"pi_current\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 395, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"pd_claimed\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 392, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"pd_block\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 480, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant [9 x i8] c"pd_count\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 481, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"pd_run\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 482, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"pd_buf\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 483, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant [11 x i8] c"pd_retries\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 479, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 545, i32 42 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"pd_timeout\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 541, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 290, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 293, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [8 x i8] c"pd_errs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 294, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 46 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 53 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 60 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 252, i32 68 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 44 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 254, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 254, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 254, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 254, i32 23 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 254, i32 30 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 596, i32 41 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 560, i32 42 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 569, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 616, i32 42 }
@___asan_gen_.287 = private unnamed_addr constant [9 x i8] c"pd_queue\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 391, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"fsm_tq\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 369, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [9 x i8] c"pd_mutex\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 161, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 675, i32 40 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 678, i32 37 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 684, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 686, i32 37 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 646, i32 38 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 648, i32 33 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 664, i32 23 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 666, i32 23 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 667, i32 23 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 669, i32 23 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 713, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 716, i32 34 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 738, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 637, i32 23 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 641, i32 23 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 693, i32 23 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private constant [29 x i8] c"../drivers/block/paride/pd.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 695, i32 23 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_clustertype281, ptr @__UNIQUE_ID_drive0type283, ptr @__UNIQUE_ID_drive1type284, ptr @__UNIQUE_ID_drive2type285, ptr @__UNIQUE_ID_drive3type286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_majortype279, ptr @__UNIQUE_ID_nametype280, ptr @__UNIQUE_ID_nicetype282, ptr @__UNIQUE_ID_verbosetype278, ptr @__exitcall_pd_exit, ptr @__initcall__kmod_pd__289_1029_pd_init6, ptr @__param_cluster, ptr @__param_drive0, ptr @__param_drive1, ptr @__param_drive2, ptr @__param_drive3, ptr @__param_major, ptr @__param_name, ptr @__param_nice, ptr @__param_verbose, ptr @pd_exit, ptr @pd_identify._entry, ptr @pd_identify._entry_ptr, ptr @pd_init._entry, ptr @pd_init._entry.5, ptr @pd_init._entry.8, ptr @pd_init._entry_ptr, ptr @pd_init._entry_ptr.10, ptr @pd_init._entry_ptr.7, ptr @pd_print_error._entry, ptr @pd_print_error._entry.16, ptr @pd_print_error._entry.19, ptr @pd_print_error._entry_ptr, ptr @pd_print_error._entry_ptr.18, ptr @pd_print_error._entry_ptr.21, ptr @verbose, ptr @major, ptr @name, ptr @cluster, ptr @nice, ptr @pd, ptr @.str, ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @par_drv, ptr @.str.6, ptr @drives, ptr @.str.9, ptr @.str.11, ptr @pd_scratch, ptr @pd_mq_ops, ptr @pd_probe_drive.__key, ptr @pd_fops, ptr @pd_lock, ptr @pd_req, ptr @.str.12, ptr @phase, ptr @pd_current, ptr @pi_current, ptr @pd_claimed, ptr @pd_block, ptr @pd_count, ptr @pd_run, ptr @pd_buf, ptr @pd_retries, ptr @.str.13, ptr @pd_timeout, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @pd_errs, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pd_queue, ptr @fsm_tq, ptr @.str.43, ptr @.str.44, ptr @pd_mutex, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd to i32), i32 1456, i32 1824, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drives to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_scratch to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_probe_drive.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_claimed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_block to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_print_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_print_error._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_errs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_print_error._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsm_tq to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @major, align 4
  %1 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef %1) #9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %unit.010 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %disk.09 = phi ptr [ @pd, %entry ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %gd = getelementptr inbounds %struct.pd_unit, ptr %disk.09, i32 0, i32 14
  %2 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %gd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gd, align 4
  tail call void @del_gendisk(ptr noundef nonnull %3) #9
  tail call void @blk_cleanup_disk(ptr noundef nonnull %3) #9
  %tag_set = getelementptr inbounds %struct.pd_unit, ptr %disk.09, i32 0, i32 15
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #9
  %pi = getelementptr inbounds %struct.pd_unit, ptr %disk.09, i32 0, i32 1
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %unit.010, 1
  %incdec.ptr = getelementptr %struct.pd_unit, ptr %disk.09, i32 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  %1 = load ptr, ptr @name, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

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
  br i1 %tobool6.not, label %do.end10, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = load ptr, ptr @name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %7) #12
  br label %out_unregister_blkdev

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %unit.084 = phi i32 [ %inc18, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %pd_drive_count.083 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.084
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp ne i32 %11, 0
  %inc = zext i1 %tobool15.not to i32
  %spec.select = add i32 %pd_drive_count.083, %inc
  %inc18 = add nuw nsw i32 %unit.084, 1
  %exitcond.not = icmp eq i32 %inc18, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp19 = icmp eq i32 %spec.select, 0
  br i1 %cmp19, label %if.then20, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

if.then20:                                        ; preds = %for.end
  %call21 = tail call fastcc i32 @pd_probe_drive(ptr noundef nonnull @pd, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.cleanup58_crit_edge, label %if.then20.do.end54_crit_edge

if.then20.do.end54_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then20.cleanup58_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

for.body28:                                       ; preds = %cleanup.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %found.087 = phi i32 [ %found.2, %cleanup.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %unit.186 = phi i32 [ %inc47, %cleanup.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %disk.085 = phi ptr [ %incdec.ptr, %cleanup.for.body28_crit_edge ], [ @pd, %for.end.for.body28_crit_edge ]
  %arrayidx30 = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.186
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx30, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33.not = icmp eq i32 %15, 0
  br i1 %tobool33.not, label %for.body28.cleanup_crit_edge, label %if.end35

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37 = getelementptr i32, ptr %13, i32 3
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %13, i32 2
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %13, i32 1
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %13, i32 6
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx40, align 4
  %call41 = tail call fastcc i32 @pd_probe_drive(ptr noundef %disk.085, i32 noundef 0, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %inc44 = zext i1 %tobool42.not to i32
  %spec.select77 = add i32 %found.087, %inc44
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %for.body28.cleanup_crit_edge
  %found.2 = phi i32 [ %spec.select77, %if.end35 ], [ %found.087, %for.body28.cleanup_crit_edge ]
  %inc47 = add nuw nsw i32 %unit.186, 1
  %incdec.ptr = getelementptr %struct.pd_unit, ptr %disk.085, i32 1
  %exitcond88.not = icmp eq i32 %inc47, 4
  br i1 %exitcond88.not, label %if.end49, label %cleanup.for.body28_crit_edge

cleanup.for.body28_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

if.end49:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.2)
  %tobool50.not = icmp eq i32 %found.2, 0
  br i1 %tobool50.not, label %if.end49.do.end54_crit_edge, label %if.end49.cleanup58_crit_edge

if.end49.cleanup58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.end49.do.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %if.end49.do.end54_crit_edge, %if.then20.do.end54_crit_edge
  %24 = load ptr, ptr @name, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %24) #12
  %25 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %25) #9
  br label %out_unregister_blkdev

out_unregister_blkdev:                            ; preds = %do.end54, %do.end10
  %26 = load i32, ptr @major, align 4
  %27 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %26, ptr noundef %27) #9
  br label %cleanup58

cleanup58:                                        ; preds = %out_unregister_blkdev, %if.end49.cleanup58_crit_edge, %if.then20.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ -19, %out_unregister_blkdev ], [ -19, %entry.cleanup58_crit_edge ], [ 0, %if.end49.cleanup58_crit_edge ], [ 0, %if.then20.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pd_probe_drive(ptr noundef %disk, i32 noundef %autoprobe, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %disk to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @pd to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 364
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %sub.ptr.div
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %pi = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 1
  %2 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %disk, ptr %pi, align 4
  %access = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 2
  %3 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %access, align 4
  %changed = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 9
  %4 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %changed, align 4
  %capacity = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 3
  %5 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %capacity, align 4
  %arrayidx1 = getelementptr i32, ptr %1, i32 7
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %drive = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 8
  %8 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %drive, align 4
  %name = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 13
  %9 = load ptr, ptr @name, align 4
  %add = add nsw i32 %sub.ptr.div, 97
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 8, ptr noundef nonnull @.str.11, ptr noundef %9, i32 noundef %add)
  %arrayidx3 = getelementptr i32, ptr %1, i32 4
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %alt_geom = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 12
  %12 = ptrtoint ptr %alt_geom to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %alt_geom, align 4
  %arrayidx4 = getelementptr i32, ptr %1, i32 5
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %standby = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 11
  %15 = ptrtoint ptr %standby to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %standby, align 4
  %rq_list = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 16
  %16 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %rq_list, ptr %rq_list, align 4
  %prev.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rq_list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pi, align 4
  %20 = load i32, ptr @verbose, align 4
  %call8 = tail call i32 @pi_init(ptr noundef %19, i32 noundef %autoprobe, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay, ptr noundef nonnull @pd_scratch, i32 noundef 0, i32 noundef %20, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tag_set = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15
  %21 = call ptr @memset(ptr %tag_set, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 2
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pd_mq_ops, ptr %ops, align 4
  %cmd_size = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 6
  %23 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %cmd_size, align 4
  %nr_hw_queues = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %nr_hw_queues, align 4
  %nr_maps = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %nr_maps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nr_maps, align 4
  %queue_depth = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 4
  %26 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %queue_depth, align 4
  %numa_node = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 7
  %27 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %numa_node, align 4
  %flags = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 15, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 33, ptr %flags, align 4
  %call17 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.pi_release_crit_edge

if.end.pi_release_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pi_release

if.end20:                                         ; preds = %if.end
  %call22 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %disk, ptr noundef nonnull @pd_probe_drive.__key) #9
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call22 to i32
  br label %free_tag_set

if.end26:                                         ; preds = %if.end20
  %gd = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 14
  %30 = ptrtoint ptr %gd to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call22, ptr %gd, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 3
  %call30 = tail call ptr @strcpy(ptr noundef %disk_name, ptr noundef %name) #13
  %fops = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 8
  %31 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @pd_fops, ptr %fops, align 8
  %32 = load i32, ptr @major, align 4
  %33 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call22, align 8
  %shl = shl nsw i32 %sub.ptr.div, 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 1
  %34 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 2
  %35 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %minors, align 8
  %events = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 4
  %36 = ptrtoint ptr %events to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %events, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 10
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %disk, ptr %private_data, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %call22, i32 0, i32 9
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  %40 = load i32, ptr @cluster, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %39, i32 noundef %40) #9
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %42, i32 noundef 1) #9
  %43 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %drive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp = icmp eq i32 %44, -1
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end26
  %45 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %drive, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %46 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gd, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %49, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.inc, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.inc:                                          ; preds = %for.body
  %50 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drive, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %drive, align 4
  %cmp39 = icmp slt i32 %inc, 2
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.inc.if.end46_crit_edge

for.inc.if.end46_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %if.end26
  %52 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gd, align 4
  %queue.i124 = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %queue.i124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queue.i124, align 4
  %call.i125 = tail call ptr @blk_mq_alloc_request(ptr noundef %55, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i126 = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i126, label %if.else.if.end46_crit_edge, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %if.else.if.end46_crit_edge, %for.inc.if.end46_crit_edge
  %ret.1.in = phi ptr [ %call.i125, %if.else.if.end46_crit_edge ], [ %call.i, %for.inc.if.end46_crit_edge ]
  %ret.1 = ptrtoint ptr %ret.1.in to i32
  br label %put_disk

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %for.body.if.end49_crit_edge
  %call.i125.sink143 = phi ptr [ %call.i125, %if.else.if.end49_crit_edge ], [ %call.i, %for.body.if.end49_crit_edge ]
  %add.ptr.i.i128 = getelementptr %struct.request, ptr %call.i125.sink143, i32 1
  %56 = ptrtoint ptr %add.ptr.i.i128 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pd_identify, ptr %add.ptr.i.i128, align 4
  %call5.i129 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i125.sink143, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i125.sink143) #9
  %57 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gd, align 4
  %59 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %capacity, align 4
  %conv = sext i32 %60 to i64
  tail call void @set_capacity(ptr noundef %58, i64 noundef %conv) #9
  %61 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gd, align 4
  %call.i133 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %62, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool54.not = icmp eq i32 %call.i133, 0
  br i1 %tobool54.not, label %if.end49.cleanup_crit_edge, label %cleanup_disk

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup_disk:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gd, align 4
  tail call void @blk_cleanup_disk(ptr noundef %64) #9
  br label %put_disk

put_disk:                                         ; preds = %cleanup_disk, %if.end46
  %ret.2 = phi i32 [ %ret.1, %if.end46 ], [ %call.i133, %cleanup_disk ]
  tail call void @put_disk(ptr noundef %call22) #9
  %65 = ptrtoint ptr %gd to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %gd, align 4
  br label %free_tag_set

free_tag_set:                                     ; preds = %put_disk, %if.then24
  %ret.3 = phi i32 [ %29, %if.then24 ], [ %ret.2, %put_disk ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #9
  br label %pi_release

pi_release:                                       ; preds = %free_tag_set, %if.end.pi_release_crit_edge
  %ret.4 = phi i32 [ %call17, %if.end.pi_release_crit_edge ], [ %ret.3, %free_tag_set ]
  %66 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %67) #9
  br label %cleanup

cleanup:                                          ; preds = %pi_release, %if.end49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %pi_release ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_identify(ptr noundef %disk) #4 align 64 {
entry:
  %id = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %id) #9
  %0 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 1
  %1 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 2
  %2 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 3
  %3 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 4
  %4 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 5
  %5 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 6
  %6 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 7
  %7 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 8
  %8 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 9
  %9 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 10
  %10 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 11
  %11 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 12
  %12 = getelementptr inbounds [15 x i8], ptr %id, i32 0, i32 13
  %drive = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 8
  %13 = getelementptr inbounds i8, ptr %id, i32 14
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1
  %15 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pi.i.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 1
  %17 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pi.i.i, align 4
  tail call void @pi_write_regr(ptr noundef %18, i32 noundef 1, i32 noundef 6, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #9
  %20 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pi.i.i, align 4
  tail call void @pi_write_regr(ptr noundef %21, i32 noundef 1, i32 noundef 6, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 53687000) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drive, align 4
  %25 = shl i32 %24, 4
  %conv.i = add i32 %25, 160
  %conv = and i32 %conv.i, 240
  %pi.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 1
  %26 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %27, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #9
  %28 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp1 = icmp sgt i32 %28, 1
  %cond = select i1 %cmp1, ptr @.str.57, ptr null
  %call3 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond)
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 236)
  %29 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp4 = icmp sgt i32 %29, 1
  %cond6 = select i1 %cmp4, ptr @.str.58, ptr null
  %call7 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 8, ptr noundef %cond6)
  %and = and i32 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %30 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pi.i, align 4
  tail call void @pi_read_block(ptr noundef %31, ptr noundef nonnull @pd_scratch, i32 noundef 512) #9
  %32 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 99), align 1
  %33 = and i8 %32, 2
  %and11 = zext i8 %33 to i32
  %can_lba = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 7
  %34 = ptrtoint ptr %can_lba to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and11, ptr %can_lba, align 4
  %35 = load i16, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 12), align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv12 = zext i16 %36 to i32
  %sectors = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 5
  %37 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv12, ptr %sectors, align 4
  %38 = load i16, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 6), align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv13 = zext i16 %39 to i32
  %heads = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 4
  %40 = ptrtoint ptr %heads to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv13, ptr %heads, align 4
  %41 = load i16, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 2), align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv14 = zext i16 %42 to i32
  %cylinders = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 6
  %43 = ptrtoint ptr %cylinders to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv14, ptr %cylinders, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool16.not = icmp eq i8 %33, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %44 = load i32, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 120), align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  br label %if.end23

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw i32 %conv13, %conv12
  %mul21 = mul i32 %mul, %conv14
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then17
  %.sink = phi i32 [ %mul21, %if.else ], [ %45, %if.then17 ]
  %46 = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %46, align 4
  %48 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 54), align 1
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %0, align 1
  %50 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 55), align 1
  %51 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %id, align 1
  %52 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 56), align 1
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %2, align 1
  %54 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 57), align 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %1, align 1
  %56 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 58), align 1
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %4, align 1
  %58 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 59), align 1
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %3, align 1
  %60 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 60), align 1
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %6, align 1
  %62 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 61), align 1
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %5, align 1
  %64 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 62), align 1
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %8, align 1
  %66 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 63), align 1
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %7, align 1
  %68 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 64), align 1
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %10, align 1
  %70 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 65), align 1
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %9, align 1
  %72 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 66), align 1
  %73 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %12, align 1
  %74 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @pd_scratch, i32 0, i32 67), align 1
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %72)
  %cmp31 = icmp ult i8 %72, 33
  br i1 %cmp31, label %while.body, label %if.end23.while.end_crit_edge

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end23
  %76 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %77)
  %cmp31.1 = icmp ult i8 %77, 33
  br i1 %cmp31.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %79)
  %cmp31.2 = icmp ult i8 %79, 33
  br i1 %cmp31.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %80 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %81)
  %cmp31.3 = icmp ult i8 %81, 33
  br i1 %cmp31.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %83)
  %cmp31.4 = icmp ult i8 %83, 33
  br i1 %cmp31.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %85)
  %cmp31.5 = icmp ult i8 %85, 33
  br i1 %cmp31.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %87)
  %cmp31.6 = icmp ult i8 %87, 33
  br i1 %cmp31.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %89)
  %cmp31.7 = icmp ult i8 %89, 33
  br i1 %cmp31.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %91)
  %cmp31.8 = icmp ult i8 %91, 33
  br i1 %cmp31.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %93)
  %cmp31.9 = icmp ult i8 %93, 33
  br i1 %cmp31.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %95)
  %cmp31.10 = icmp ult i8 %95, 33
  br i1 %cmp31.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %97)
  %cmp31.11 = icmp ult i8 %97, 33
  br i1 %cmp31.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %99)
  %cmp31.12 = icmp ult i8 %99, 33
  br i1 %cmp31.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %101)
  %cmp31.13 = icmp ugt i8 %101, 32
  %spec.select = zext i1 %cmp31.13 to i32
  br label %while.end

while.end:                                        ; preds = %while.body.12, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end23.while.end_crit_edge
  %j.1.lcssa = phi i32 [ 14, %if.end23.while.end_crit_edge ], [ 13, %while.body.while.end_crit_edge ], [ 12, %while.body.1.while.end_crit_edge ], [ 11, %while.body.2.while.end_crit_edge ], [ 10, %while.body.3.while.end_crit_edge ], [ 9, %while.body.4.while.end_crit_edge ], [ 8, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 6, %while.body.7.while.end_crit_edge ], [ 5, %while.body.8.while.end_crit_edge ], [ 4, %while.body.9.while.end_crit_edge ], [ 3, %while.body.10.while.end_crit_edge ], [ 2, %while.body.11.while.end_crit_edge ], [ %spec.select, %while.body.12 ]
  %arrayidx34 = getelementptr [15 x i8], ptr %id, i32 0, i32 %j.1.lcssa
  %102 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx34, align 1
  %103 = load i8, ptr @pd_scratch, align 1
  %104 = and i8 %103, -128
  %and36 = zext i8 %104 to i32
  %removable = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 10
  %105 = ptrtoint ptr %removable to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and36, ptr %removable, align 4
  %name = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 13
  %106 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %drive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool39.not = icmp eq i32 %107, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.62, ptr @.str.61
  %108 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %46, align 4
  %div = sdiv i32 %109, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool47.not = icmp eq i8 %104, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.64, ptr @.str.63
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name, ptr noundef nonnull %id, ptr noundef nonnull %cond40, i32 noundef %109, i32 noundef %div, i32 noundef %conv14, i32 noundef %conv13, i32 noundef %conv12, ptr noundef nonnull %cond48) #12
  %110 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool51.not = icmp eq i32 %111, 0
  br i1 %tobool51.not, label %while.end.if.end53_crit_edge, label %if.then52

while.end.if.end53_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %112 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i = icmp sgt i32 %112, 1
  %cond.i = select i1 %cmp.i, ptr @.str.65, ptr null
  %call.i = call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond.i) #9
  %113 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sectors, align 4
  %115 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %heads, align 4
  %sub.i = add i32 %116, -1
  call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef %114, i32 noundef 0, i32 noundef %sub.i, i32 noundef 0, i32 noundef 0, i32 noundef 145) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 64424400) #9
  %call1.i = call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef nonnull @.str.66) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %while.end.if.end53_crit_edge
  %standby = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 11
  %118 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %standby, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool54.not = icmp eq i32 %119, 0
  br i1 %tobool54.not, label %if.then55, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %120 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp.i96 = icmp sgt i32 %120, 1
  %cond.i97 = select i1 %cmp.i96, ptr @.str.67, ptr null
  %call.i98 = call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond.i97) #9
  call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 150) #9
  %121 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp1.i = icmp sgt i32 %121, 1
  %cond2.i = select i1 %cmp1.i, ptr @.str.68, ptr null
  %call3.i = call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end53.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then55 ], [ 1, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pd_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #4 align 64 {
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
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pd_lock) #9
  %4 = load ptr, ptr @pd_req, align 4
  %tobool.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %6, ptr @pd_req, align 4
  tail call void @blk_mq_start_request(ptr noundef %6) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 12
  %rq_list = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %9, ptr noundef %rq_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rq_list, ptr %7, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 12, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %7, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pd_lock) #9
  tail call void @run_fsm()
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @run_fsm() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %0 = load ptr, ptr @phase, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @pd_req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 8
  store ptr %7, ptr @pd_current, align 4
  %pi = getelementptr inbounds %struct.pd_unit, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi, align 4
  store ptr %9, ptr @pi_current, align 4
  store ptr @do_pd_io_start, ptr @phase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %10 = load i32, ptr @pd_claimed, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb4_crit_edge
  ]

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  store i32 1, ptr @pd_claimed, align 4
  %12 = load ptr, ptr @pi_current, align 4
  %call = tail call i32 @pi_schedule_claimed(ptr noundef %12, ptr noundef nonnull @run_fsm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %sw.bb.return_crit_edge, label %sw.bb.sw.bb4_crit_edge

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %sw.bb.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge
  store i32 2, ptr @pd_claimed, align 4
  %13 = load ptr, ptr @pi_current, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %connect = getelementptr inbounds %struct.pi_protocol, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connect, align 4
  tail call void %17(ptr noundef %13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %18 = load ptr, ptr @phase, align 4
  %call5 = tail call i32 %18() #9
  %19 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call5, label %sw.epilog.while.body.backedge_crit_edge [
    i32 1, label %sw.epilog.sw.bb6_crit_edge
    i32 0, label %sw.epilog.sw.bb6_crit_edge40
    i32 2, label %sw.epilog.sw.bb16_crit_edge
    i32 3, label %sw.bb17
  ]

sw.epilog.sw.bb16_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

sw.epilog.sw.bb6_crit_edge40:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.while.body.backedge_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.backedge

while.body.backedge:                              ; preds = %sw.bb17, %sw.epilog.while.body.backedge_crit_edge
  br label %while.body

sw.bb6:                                           ; preds = %sw.epilog.sw.bb6_crit_edge, %sw.epilog.sw.bb6_crit_edge40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  %conv = select i1 %cmp, i8 0, i8 10
  %20 = load ptr, ptr @pi_current, align 4
  tail call void @pi_disconnect(ptr noundef %20) #9
  store i32 0, ptr @pd_claimed, align 4
  store ptr null, ptr @phase, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pd_lock) #9
  %21 = load ptr, ptr @pd_req, align 4
  %bio.i = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bio.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb6.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true.i.i

sw.bb6.blk_rq_cur_bytes.exit_crit_edge:           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true.i.i:                                ; preds = %sw.bb6
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %27 to i8
  %28 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %trunc.i.i, label %if.end4.i [
    i8 3, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge41
    i8 9, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge42
  ]

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge42: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge41: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

if.end4.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 20
  %29 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_idx.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_bvec_done.i, align 8
  %bv_len26.i = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 1
  %35 = ptrtoint ptr %bv_len26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len26.i, align 4
  %sub.i = sub i32 %36, %34
  %37 = tail call i32 @llvm.umin.i32(i32 %25, i32 %sub.i) #9
  %bv_offset36.i = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 2
  %38 = ptrtoint ptr %bv_offset36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_offset36.i, align 4
  %add40.i = add i32 %39, %34
  %rem.i = and i32 %add40.i, 4095
  %sub41.i = sub nuw nsw i32 4096, %rem.i
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %sub41.i) #9
  br label %blk_rq_cur_bytes.exit

blk_rq_cur_bytes.exit:                            ; preds = %if.end4.i, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge41, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge42, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, %sw.bb6.blk_rq_cur_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %40, %if.end4.i ], [ 0, %sw.bb6.blk_rq_cur_bytes.exit_crit_edge ], [ %25, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge ], [ %25, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge41 ], [ %25, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge42 ], [ 0, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge ]
  %call8 = tail call zeroext i1 @blk_update_request(ptr noundef %21, i8 noundef zeroext %conv, i32 noundef %retval.0.i) #9
  br i1 %call8, label %if.end12.thread, label %if.then9

if.end12.thread:                                  ; preds = %blk_rq_cur_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pd_lock) #9
  br label %sw.bb16

if.then9:                                         ; preds = %blk_rq_cur_bytes.exit
  %41 = load ptr, ptr @pd_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %41, i8 noundef zeroext %conv) #9
  store ptr null, ptr @pd_req, align 4
  %42 = load i32, ptr @pd_queue, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then9
  %spec.store.select2026.i = phi i32 [ %spec.store.select2025.i, %do.cond.i.do.body.i_crit_edge ], [ %42, %if.then9 ]
  %gd.i = getelementptr [4 x %struct.pd_unit], ptr @pd, i32 0, i32 %spec.store.select2026.i, i32 14
  %43 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gd.i, align 4
  %tobool.not.i26 = icmp eq ptr %44, null
  br i1 %tobool.not.i26, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc18.i = add i32 %spec.store.select2026.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc18.i)
  %cmp19.i = icmp eq i32 %inc18.i, 4
  %spec.store.select20.i = select i1 %cmp19.i, i32 0, i32 %inc18.i
  store i32 %spec.store.select20.i, ptr @pd_queue, align 4
  br label %do.cond.i

cond.end.i:                                       ; preds = %do.body.i
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue.i, align 4
  %inc.i = add i32 %spec.store.select2026.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 4
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  store i32 %spec.store.select.i, ptr @pd_queue, align 4
  %tobool1.not.i = icmp eq ptr %46, null
  br i1 %tobool1.not.i, label %cond.end.i.do.cond.i_crit_edge, label %if.then2.i27

cond.end.i.do.cond.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then2.i27:                                     ; preds = %cond.end.i
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queuedata.i, align 4
  %rq_list.i = getelementptr inbounds %struct.pd_unit, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %rq_list.i
  br i1 %cmp.i.not.i, label %if.then2.i27.do.cond.i_crit_edge, label %if.end6.i

if.then2.i27.do.cond.i_crit_edge:                 ; preds = %if.then2.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end6.i:                                        ; preds = %if.then2.i27
  %add.ptr.i = getelementptr i8, ptr %50, i32 -56
  store ptr %add.ptr.i, ptr @pd_req, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.cleanup.i_crit_edge

if.end6.i.cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end6.i.cleanup.i_crit_edge
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %50, ptr %50, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %50, ptr %prev.i3.i.i, align 4
  %59 = load ptr, ptr @pd_req, align 4
  tail call void @blk_mq_start_request(ptr noundef %59) #9
  br label %if.end12

do.cond.i:                                        ; preds = %if.then2.i27.do.cond.i_crit_edge, %cond.end.i.do.cond.i_crit_edge, %cond.end.thread.i
  %spec.store.select2025.i = phi i32 [ %spec.store.select.i, %if.then2.i27.do.cond.i_crit_edge ], [ %spec.store.select20.i, %cond.end.thread.i ], [ %spec.store.select.i, %cond.end.i.do.cond.i_crit_edge ]
  %cmp9.not.i = icmp eq i32 %spec.store.select2025.i, %42
  br i1 %cmp9.not.i, label %do.cond.i.if.end12_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.if.end12_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %do.cond.i.if.end12_crit_edge, %cleanup.i
  %60 = load ptr, ptr @pd_req, align 4
  %cmp10.i.not.not = icmp eq ptr %60, null
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pd_lock) #9
  br i1 %cmp10.i.not.not, label %if.end12.return_crit_edge, label %if.end12.sw.bb16_crit_edge

if.end12.sw.bb16_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb16:                                          ; preds = %if.end12.sw.bb16_crit_edge, %if.end12.thread, %sw.epilog.sw.bb16_crit_edge
  %61 = load i32, ptr @nice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i28 = icmp eq i32 %61, 0
  %sub.i29 = add i32 %61, -1
  %sub.sink.i = select i1 %tobool.not.i28, i32 0, i32 %sub.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i2.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef nonnull @fsm_tq, i32 noundef %sub.sink.i) #9
  br label %return

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %63 = load ptr, ptr @pi_current, align 4
  tail call void @pi_disconnect(ptr noundef %63) #9
  store i32 0, ptr @pd_claimed, align 4
  br label %while.body.backedge

return:                                           ; preds = %sw.bb16, %if.end12.return_crit_edge, %sw.bb.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pd_io_start() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_req, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc, label %entry.return_crit_edge [
    i8 34, label %sw.bb
    i8 0, label %entry.sw.bb1_crit_edge
    i8 1, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @pd_special, ptr @phase, align 4
  %add.ptr.i.i = getelementptr %struct.request, ptr %0, i32 1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %6 = load ptr, ptr @pd_current, align 4
  %call1.i = tail call i32 %5(ptr noundef %6) #9
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18
  %__sector.i = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %7 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, ptr @pd_block, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %9 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %sw.bb1.blk_rq_cur_sectors.exit_crit_edge, label %land.lhs.true.i.i.i

sw.bb1.blk_rq_cur_sectors.exit_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true.i.i.i:                              ; preds = %sw.bb1
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %14 to i8
  %15 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge19
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge20
  ]

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge20: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge19: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_sectors.exit

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 20
  %16 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %17, i32 %19, i32 1
  %22 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %23, %21
  %24 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub.i.i) #9
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %17, i32 %19, i32 2
  %25 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %26, %21
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %sub41.i.i) #9
  br label %blk_rq_cur_sectors.exit

blk_rq_cur_sectors.exit:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge19, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge20, %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge, %sw.bb1.blk_rq_cur_sectors.exit_crit_edge
  %retval.0.i.i = phi i32 [ %27, %if.end4.i.i ], [ 0, %sw.bb1.blk_rq_cur_sectors.exit_crit_edge ], [ %12, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge ], [ %12, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge19 ], [ %12, %land.lhs.true2.i.i.i.blk_rq_cur_sectors.exit_crit_edge20 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_sectors.exit_crit_edge ]
  %shr.i = ashr i32 %retval.0.i.i, 9
  store i32 %shr.i, ptr @pd_count, align 4
  %add = add i32 %shr.i, %conv
  %conv4 = sext i32 %add to i64
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv4)
  %cmp = icmp ult i64 %35, %conv4
  br i1 %cmp, label %blk_rq_cur_sectors.exit.return_crit_edge, label %if.end

blk_rq_cur_sectors.exit.return_crit_edge:         ; preds = %blk_rq_cur_sectors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %blk_rq_cur_sectors.exit
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %36 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__data_len.i.i, align 8
  %shr.i16 = lshr i32 %37, 9
  store i32 %shr.i16, ptr @pd_run, align 4
  br i1 %tobool.not.i.i, label %if.end.bio_data.exit_crit_edge, label %land.lhs.true.i.i

if.end.bio_data.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.bio_data.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.bio_data.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 2
  %40 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %41 to i8
  %42 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc.i.i, label %if.then.i [
    i8 3, label %land.lhs.true2.i.i.bio_data.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.bio_data.exit_crit_edge21
    i8 9, label %land.lhs.true2.i.i.bio_data.exit_crit_edge22
  ]

land.lhs.true2.i.i.bio_data.exit_crit_edge22:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge21:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_data.exit

if.then.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 20
  %43 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %44, i32 %46, i32 2
  %49 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 3
  %51 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i = add i32 %52, %50
  %div24.i = lshr i32 %add.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %48, i32 %div24.i
  %call6.i = tail call ptr @page_address(ptr noundef %add.ptr.i) #9
  %53 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi_io_vec.i, align 8
  %55 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bi_idx.i, align 4
  %bv_offset11.i = getelementptr %struct.bio_vec, ptr %54, i32 %56, i32 2
  %57 = ptrtoint ptr %bv_offset11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_offset11.i, align 4
  %59 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_bvec_done.i, align 8
  %add14.i = add i32 %60, %58
  %rem.i = and i32 %add14.i, 4095
  %add.ptr15.i = getelementptr i8, ptr %call6.i, i32 %rem.i
  br label %bio_data.exit

bio_data.exit:                                    ; preds = %if.then.i, %land.lhs.true2.i.i.bio_data.exit_crit_edge, %land.lhs.true2.i.i.bio_data.exit_crit_edge21, %land.lhs.true2.i.i.bio_data.exit_crit_edge22, %land.lhs.true.i.i.bio_data.exit_crit_edge, %if.end.bio_data.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr15.i, %if.then.i ], [ null, %if.end.bio_data.exit_crit_edge ], [ null, %land.lhs.true.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge21 ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge22 ]
  store ptr %retval.0.i, ptr @pd_buf, align 4
  store i32 0, ptr @pd_retries, align 4
  %61 = load ptr, ptr @pd_req, align 4
  %cmd_flags9 = getelementptr inbounds %struct.request, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cmd_flags9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd_flags9, align 4
  %and10 = and i32 %63, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %bio_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @do_pd_read_start()
  br label %return

if.else:                                          ; preds = %bio_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @do_pd_write_start()
  br label %return

return:                                           ; preds = %if.else, %if.then13, %blk_rq_cur_sectors.exit.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then13 ], [ %call15, %if.else ], [ %call1.i, %sw.bb ], [ 0, %blk_rq_cur_sectors.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_schedule_claimed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_special() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_req, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %0, i32 1
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %3 = load ptr, ptr @pd_current, align 4
  %call1 = tail call i32 %2(ptr noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pd_read_start() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_current, align 4
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.13)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @pd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then1, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @pd_retries, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %2 = load ptr, ptr @pd_current, align 4
  %3 = load i32, ptr @pd_block, align 4
  %4 = load i32, ptr @pd_run, align 4
  %can_lba.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %can_lba.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_lba.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %3, 255
  %7 = lshr i32 %3, 8
  %and1.i = and i32 %7, 255
  %8 = lshr i32 %3, 16
  %and3.i = and i32 %8, 255
  %9 = lshr i32 %3, 24
  %and5.i = and i32 %9, 15
  %add.i = or i32 %and5.i, 64
  br label %pd_ide_command.exit

if.else.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %sectors.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectors.i, align 4
  %.frozen = freeze i32 %3
  %.frozen3 = freeze i32 %11
  %div.i = sdiv i32 %.frozen, %.frozen3
  %12 = mul i32 %div.i, %.frozen3
  %rem.i.decomposed = sub i32 %.frozen, %12
  %add6.i = add i32 %rem.i.decomposed, 1
  %heads.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %heads.i, align 4
  %.frozen4 = freeze i32 %14
  %div10.i = sdiv i32 %div.i, %.frozen4
  %15 = mul i32 %div10.i, %.frozen4
  %rem8.i.decomposed = sub i32 %div.i, %15
  %rem11.i = srem i32 %div10.i, 256
  %shr12.i = ashr i32 %div10.i, 8
  br label %pd_ide_command.exit

pd_ide_command.exit:                              ; preds = %if.else.i, %if.then.i
  %c1.0.i = phi i32 [ %and3.i, %if.then.i ], [ %shr12.i, %if.else.i ]
  %c0.0.i = phi i32 [ %and1.i, %if.then.i ], [ %rem11.i, %if.else.i ]
  %h.0.i = phi i32 [ %add.i, %if.then.i ], [ %rem8.i.decomposed, %if.else.i ]
  %s.0.i = phi i32 [ %and.i, %if.then.i ], [ %add6.i, %if.else.i ]
  tail call fastcc void @pd_send_command(ptr noundef %2, i32 noundef %4, i32 noundef %s.0.i, i32 noundef %h.0.i, i32 noundef %c0.0.i, i32 noundef %c1.0.i, i32 noundef 32) #9
  store ptr @do_pd_read_drq, ptr @phase, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 800
  store i32 %add, ptr @pd_timeout, align 4
  br label %return

return:                                           ; preds = %pd_ide_command.exit, %if.then1, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.then1 ], [ 2, %pd_ide_command.exit ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pd_write_start() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_current, align 4
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.40)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @pd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then1, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @pd_retries, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %2 = load ptr, ptr @pd_current, align 4
  %3 = load i32, ptr @pd_block, align 4
  %4 = load i32, ptr @pd_run, align 4
  %can_lba.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %can_lba.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_lba.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %3, 255
  %7 = lshr i32 %3, 8
  %and1.i = and i32 %7, 255
  %8 = lshr i32 %3, 16
  %and3.i = and i32 %8, 255
  %9 = lshr i32 %3, 24
  %and5.i = and i32 %9, 15
  %add.i = or i32 %and5.i, 64
  br label %pd_ide_command.exit

if.else.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %sectors.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectors.i, align 4
  %.frozen = freeze i32 %3
  %.frozen17 = freeze i32 %11
  %div.i = sdiv i32 %.frozen, %.frozen17
  %12 = mul i32 %div.i, %.frozen17
  %rem.i.decomposed = sub i32 %.frozen, %12
  %add6.i = add i32 %rem.i.decomposed, 1
  %heads.i = getelementptr inbounds %struct.pd_unit, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %heads.i, align 4
  %.frozen18 = freeze i32 %14
  %div10.i = sdiv i32 %div.i, %.frozen18
  %15 = mul i32 %div10.i, %.frozen18
  %rem8.i.decomposed = sub i32 %div.i, %15
  %rem11.i = srem i32 %div10.i, 256
  %shr12.i = ashr i32 %div10.i, 8
  br label %pd_ide_command.exit

pd_ide_command.exit:                              ; preds = %if.else.i, %if.then.i
  %c1.0.i = phi i32 [ %and3.i, %if.then.i ], [ %shr12.i, %if.else.i ]
  %c0.0.i = phi i32 [ %and1.i, %if.then.i ], [ %rem11.i, %if.else.i ]
  %h.0.i = phi i32 [ %add.i, %if.then.i ], [ %rem8.i.decomposed, %if.else.i ]
  %s.0.i = phi i32 [ %and.i, %if.then.i ], [ %add6.i, %if.else.i ]
  tail call fastcc void @pd_send_command(ptr noundef %2, i32 noundef %4, i32 noundef %s.0.i, i32 noundef %h.0.i, i32 noundef %c0.0.i, i32 noundef %c1.0.i, i32 noundef 48) #9
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %pd_ide_command.exit
  %16 = load ptr, ptr @pd_current, align 4
  %call3 = tail call fastcc i32 @pd_wait_for(ptr noundef %16, i32 noundef 8, ptr noundef nonnull @.str.41)
  %and4 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %while.body
  %17 = load i32, ptr @pd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp7 = icmp slt i32 %17, 5
  br i1 %cmp7, label %if.then8, label %if.then6.return_crit_edge

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, ptr @pd_retries, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %18 = load ptr, ptr @pd_current, align 4
  %pi = getelementptr inbounds %struct.pd_unit, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pi, align 4
  %21 = load ptr, ptr @pd_buf, align 4
  tail call void @pi_write_block(ptr noundef %20, ptr noundef %21, i32 noundef 512) #9
  %call12 = tail call fastcc i32 @pd_next_buf()
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.while.body_crit_edge, label %while.end

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @do_pd_write_done, ptr @phase, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 800
  store i32 %add, ptr @pd_timeout, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then6.return_crit_edge, %if.then1, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.then1 ], [ 3, %if.then8 ], [ 2, %while.end ], [ 0, %if.then.return_crit_edge ], [ 0, %if.then6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef %w, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pi.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %k.031 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 1, i32 noundef 6) #9
  %and = and i32 %call.i, %w
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %w)
  %cmp1 = icmp eq i32 %and, %w
  %and2 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %cmp1, %tobool.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %k.031, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #9
  %exitcond.not = icmp eq i32 %inc, 160000
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %k.031.lcssa = phi i32 [ %k.031, %while.body.while.end_crit_edge ], [ 159999, %if.end.while.end_crit_edge ]
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi.i, align 4
  %call.i27 = tail call i32 @pi_read_regr(ptr noundef %4, i32 noundef 0, i32 noundef 1) #9
  %shl = shl i32 %call.i27, 8
  %5 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi.i, align 4
  %call.i29 = tail call i32 @pi_read_regr(ptr noundef %6, i32 noundef 0, i32 noundef 7) #9
  %add = add i32 %call.i29, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 159998, i32 %k.031.lcssa)
  %cmp5 = icmp ugt i32 %k.031.lcssa, 159998
  %or = or i32 %add, 65536
  %spec.select = select i1 %cmp5, i32 %or, i32 %add
  %and8 = and i32 %spec.select, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cmp11.not = icmp eq ptr %msg, null
  %or.cond25 = or i1 %cmp11.not, %tobool9.not
  br i1 %or.cond25, label %while.end.if.end13_crit_edge, label %if.then12

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %while.end
  %name.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 13
  %call.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, ptr noundef nonnull %msg, i32 noundef %spec.select) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12
  %i.015.i = phi i32 [ 0, %if.then12 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.015.i
  %and.i = and i32 %shl.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [17 x ptr], ptr @pd_errs, i32 0, i32 %i.015.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %8) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %pd_print_error.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pd_print_error.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %if.end13

if.end13:                                         ; preds = %pd_print_error.exit, %while.end.if.end13_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pd_read_drq() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_current, align 4
  %pi.i.i = getelementptr inbounds %struct.pd_unit, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i.i, align 4
  %call.i.i = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 1, i32 noundef 6) #9
  %3 = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %entry.while.body.preheader_crit_edge, label %land.lhs.true

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = load i32, ptr @pd_timeout, align 4
  %sub = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true.while.body.preheader_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.while.body.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

while.body.preheader:                             ; preds = %land.lhs.true.while.body.preheader_crit_edge, %entry.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.preheader
  %6 = load ptr, ptr @pd_current, align 4
  %call1 = tail call fastcc i32 @pd_wait_for(ptr noundef %6, i32 noundef 8, ptr noundef nonnull @.str.39)
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load i32, ptr @pd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp4 = icmp slt i32 %7, 5
  br i1 %cmp4, label %if.then5, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @pd_retries, align 4
  store ptr @do_pd_read_start, ptr @phase, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %8 = load ptr, ptr @pd_current, align 4
  %pi = getelementptr inbounds %struct.pd_unit, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 4
  %11 = load ptr, ptr @pd_buf, align 4
  tail call void @pi_read_block(ptr noundef %10, ptr noundef %11, i32 noundef 512) #9
  %call8 = tail call fastcc i32 @pd_next_buf()
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.while.body_crit_edge, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

return:                                           ; preds = %if.end7.return_crit_edge, %if.then5, %if.then3.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.then5 ], [ 2, %land.lhs.true.return_crit_edge ], [ 0, %if.then3.return_crit_edge ], [ 1, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_read_regr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pd_send_command(ptr nocapture noundef readonly %disk, i32 noundef %n, i32 noundef %s, i32 noundef %h, i32 noundef %c0, i32 noundef %c1, i32 noundef %func) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drive.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 8
  %0 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drive.i, align 4
  %2 = shl i32 %1, 4
  %conv.i = add i32 %2, 160
  %conv = and i32 %conv.i, 240
  %add = add i32 %conv, %h
  %pi.i = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 1
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %4, i32 noundef 0, i32 noundef 6, i32 noundef %add) #9
  %5 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %6, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  %7 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %8, i32 noundef 0, i32 noundef 2, i32 noundef %n) #9
  %9 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %10, i32 noundef 0, i32 noundef 3, i32 noundef %s) #9
  %11 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %12, i32 noundef 0, i32 noundef 4, i32 noundef %c0) #9
  %13 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %14, i32 noundef 0, i32 noundef 5, i32 noundef %c1) #9
  %15 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_regr(ptr noundef %16, i32 noundef 0, i32 noundef 7, i32 noundef %func) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_regr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pd_next_buf() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pd_count, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @pd_count, align 4
  %1 = load i32, ptr @pd_run, align 4
  %dec1 = add i32 %1, -1
  store i32 %dec1, ptr @pd_run, align 4
  %2 = load ptr, ptr @pd_buf, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 512
  store ptr %add.ptr, ptr @pd_buf, align 4
  %3 = load i32, ptr @pd_block, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @pd_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec1)
  %tobool.not = icmp eq i32 %dec1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pd_lock) #9
  %4 = load ptr, ptr @pd_req, align 4
  %bio.i = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body5.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true.i.i

do.body5.blk_rq_cur_bytes.exit_crit_edge:         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true.i.i:                                ; preds = %do.body5
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %10 to i8
  %11 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.i.i, label %if.end4.i [
    i8 3, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge33
    i8 9, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge34
  ]

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge34: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge33: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit

if.end4.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 20
  %12 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_idx.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_bvec_done.i, align 8
  %bv_len26.i = getelementptr %struct.bio_vec, ptr %13, i32 %15, i32 1
  %18 = ptrtoint ptr %bv_len26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len26.i, align 4
  %sub.i = sub i32 %19, %17
  %20 = tail call i32 @llvm.umin.i32(i32 %8, i32 %sub.i) #9
  %bv_offset36.i = getelementptr %struct.bio_vec, ptr %13, i32 %15, i32 2
  %21 = ptrtoint ptr %bv_offset36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset36.i, align 4
  %add40.i = add i32 %22, %17
  %rem.i = and i32 %add40.i, 4095
  %sub41.i = sub nuw nsw i32 4096, %rem.i
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub41.i) #9
  br label %blk_rq_cur_bytes.exit

blk_rq_cur_bytes.exit:                            ; preds = %if.end4.i, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge33, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge34, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, %do.body5.blk_rq_cur_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end4.i ], [ 0, %do.body5.blk_rq_cur_bytes.exit_crit_edge ], [ %8, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge ], [ %8, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge33 ], [ %8, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge34 ], [ 0, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge ]
  %call10 = tail call zeroext i1 @blk_update_request(ptr noundef %4, i8 noundef zeroext 0, i32 noundef %retval.0.i) #9
  %24 = load ptr, ptr @pd_req, align 4
  br i1 %call10, label %if.else, label %if.then11

if.then11:                                        ; preds = %blk_rq_cur_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__blk_mq_end_request(ptr noundef %24, i8 noundef zeroext 0) #9
  store ptr null, ptr @pd_req, align 4
  store i32 0, ptr @pd_count, align 4
  br label %if.end14

if.else:                                          ; preds = %blk_rq_cur_bytes.exit
  %bio.i.i = getelementptr inbounds %struct.request, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %blk_rq_cur_sectors.exit, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i19.thread, label %land.lhs.true2.i.i.i

land.lhs.true.i.i19.thread:                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @pd_count, align 4
  br label %if.end14

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %30 to i8
  %31 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge35
    i8 9, label %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge36
  ]

land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge36: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i19

land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge35: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i19

land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i19

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 20
  %32 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %33, i32 %35, i32 1
  %38 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %39, %37
  %40 = tail call i32 @llvm.umin.i32(i32 %28, i32 %sub.i.i) #9
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %33, i32 %35, i32 2
  %41 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %42, %37
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %sub41.i.i) #9
  br label %land.lhs.true.i.i19

blk_rq_cur_sectors.exit:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @pd_count, align 4
  br label %if.end14

land.lhs.true.i.i19:                              ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge35, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge36
  %retval.0.i.i.ph.ph = phi i32 [ %43, %if.end4.i.i ], [ %28, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge ], [ %28, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge35 ], [ %28, %land.lhs.true2.i.i.i.land.lhs.true.i.i19_crit_edge36 ]
  %44 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %bi_size.i.i.i, align 8
  %shr.i29 = ashr i32 %retval.0.i.i.ph.ph, 9
  store i32 %shr.i29, ptr @pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool1.not.i.i18 = icmp eq i32 %.pr, 0
  br i1 %tobool1.not.i.i18, label %land.lhs.true.i.i19.if.end14_crit_edge, label %land.lhs.true2.i.i22

land.lhs.true.i.i19.if.end14_crit_edge:           ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true2.i.i22:                             ; preds = %land.lhs.true.i.i19
  %bi_opf.i.i20 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 2
  %45 = ptrtoint ptr %bi_opf.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_opf.i.i20, align 8
  %trunc.i.i21 = trunc i32 %46 to i8
  %47 = zext i8 %trunc.i.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc.i.i21, label %if.then.i [
    i8 3, label %land.lhs.true2.i.i22.if.end14_crit_edge
    i8 5, label %land.lhs.true2.i.i22.if.end14_crit_edge37
    i8 9, label %land.lhs.true2.i.i22.if.end14_crit_edge38
  ]

land.lhs.true2.i.i22.if.end14_crit_edge38:        ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true2.i.i22.if.end14_crit_edge37:        ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true2.i.i22.if.end14_crit_edge:          ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %land.lhs.true2.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i23 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 20
  %48 = ptrtoint ptr %bi_io_vec.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_io_vec.i23, align 8
  %bi_idx.i24 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 2
  %50 = ptrtoint ptr %bi_idx.i24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_idx.i24, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %49, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %49, i32 %51, i32 2
  %54 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i25 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 3
  %56 = ptrtoint ptr %bi_bvec_done.i25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_bvec_done.i25, align 8
  %add.i = add i32 %57, %55
  %div24.i = lshr i32 %add.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %53, i32 %div24.i
  %call6.i = tail call ptr @page_address(ptr noundef %add.ptr.i) #9
  %58 = ptrtoint ptr %bi_io_vec.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bi_io_vec.i23, align 8
  %60 = ptrtoint ptr %bi_idx.i24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bi_idx.i24, align 4
  %bv_offset11.i = getelementptr %struct.bio_vec, ptr %59, i32 %61, i32 2
  %62 = ptrtoint ptr %bv_offset11.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bv_offset11.i, align 4
  %64 = ptrtoint ptr %bi_bvec_done.i25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bi_bvec_done.i25, align 8
  %add14.i = add i32 %65, %63
  %rem.i26 = and i32 %add14.i, 4095
  %add.ptr15.i = getelementptr i8, ptr %call6.i, i32 %rem.i26
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %land.lhs.true2.i.i22.if.end14_crit_edge, %land.lhs.true2.i.i22.if.end14_crit_edge37, %land.lhs.true2.i.i22.if.end14_crit_edge38, %land.lhs.true.i.i19.if.end14_crit_edge, %blk_rq_cur_sectors.exit, %land.lhs.true.i.i19.thread, %if.then11
  %storemerge = phi ptr [ null, %if.then11 ], [ %add.ptr15.i, %if.then.i ], [ null, %blk_rq_cur_sectors.exit ], [ null, %land.lhs.true.i.i19.if.end14_crit_edge ], [ null, %land.lhs.true2.i.i22.if.end14_crit_edge ], [ null, %land.lhs.true2.i.i22.if.end14_crit_edge37 ], [ null, %land.lhs.true2.i.i22.if.end14_crit_edge38 ], [ null, %land.lhs.true.i.i19.thread ]
  store ptr %storemerge, ptr @pd_buf, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pd_lock, i32 noundef %call6) #9
  %66 = load i32, ptr @pd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool15.not = icmp eq i32 %66, 0
  %lnot.ext = zext i1 %tobool15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end14 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pd_write_done() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pd_current, align 4
  %pi.i.i = getelementptr inbounds %struct.pd_unit, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i.i, align 4
  %call.i.i = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 1, i32 noundef 6) #9
  %3 = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = load i32, ptr @pd_timeout, align 4
  %sub = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = load ptr, ptr @pd_current, align 4
  %call1 = tail call fastcc i32 @pd_wait_for(ptr noundef %6, i32 noundef 64, ptr noundef nonnull @.str.42)
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr @pd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp4 = icmp slt i32 %7, 5
  br i1 %cmp4, label %if.then5, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @pd_retries, align 4
  store ptr @do_pd_write_start, ptr @phase, align 4
  br label %return

return:                                           ; preds = %if.then5, %if.then3.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.then5 ], [ 2, %land.lhs.true.return_crit_edge ], [ 0, %if.then3.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps_tq_int(ptr nocapture noundef readnone %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @run_fsm()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #4 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef nonnull @pd_mutex, i32 noundef 0) #9
  %access = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %access, align 4
  %removable = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %gd.i = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gd.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %11, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.pd_special_command.exit_crit_edge, label %if.end.i

if.then.pd_special_command.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pd_special_command.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr %struct.request, ptr %call.i, i32 1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pd_media_check, ptr %add.ptr.i.i, align 4
  %call5.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i) #9
  br label %pd_special_command.exit

pd_special_command.exit:                          ; preds = %if.end.i, %if.then.pd_special_command.exit_crit_edge
  %13 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gd.i, align 4
  %queue.i6 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %queue.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i6, align 4
  %call.i7 = tail call ptr @blk_mq_alloc_request(ptr noundef %16, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i8 = icmp ugt ptr %call.i7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i8, label %pd_special_command.exit.if.end_crit_edge, label %if.end.i12

pd_special_command.exit.if.end_crit_edge:         ; preds = %pd_special_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i12:                                       ; preds = %pd_special_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i10 = getelementptr %struct.request, ptr %call.i7, i32 1
  %17 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pd_door_lock, ptr %add.ptr.i.i10, align 4
  %call5.i11 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i7, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i7) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i12, %pd_special_command.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pd_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd_release(ptr nocapture noundef readonly %p, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pd_mutex, i32 noundef 0) #9
  %access = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %removable = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %gd.i = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gd.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %9, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr %struct.request, ptr %call.i, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pd_door_unlock, ptr %add.ptr.i.i, align 4
  %call5.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pd_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 21257, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21257
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pd_mutex, i32 noundef 0) #9
  %access = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %gd.i = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gd.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %9, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr %struct.request, ptr %call.i, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pd_eject, ptr %add.ptr.i.i, align 4
  %call5.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %sw.bb.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pd_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_check_events(ptr nocapture noundef readonly %p, i32 noundef %clearing) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %removable = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %removable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gd.i = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gd.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %7, i32 noundef 34, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.pd_special_command.exit_crit_edge, label %if.end.i

if.end.pd_special_command.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pd_special_command.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr %struct.request, ptr %call.i, i32 1
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pd_media_check, ptr %add.ptr.i.i, align 4
  %call5.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext false) #9
  tail call void @blk_mq_free_request(ptr noundef %call.i) #9
  br label %pd_special_command.exit

pd_special_command.exit:                          ; preds = %if.end.i, %if.end.pd_special_command.exit_crit_edge
  %changed = getelementptr inbounds %struct.pd_unit, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %changed, align 4
  store i32 0, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp ne i32 %10, 0
  %cond = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %pd_special_command.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %pd_special_command.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pd_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #7 align 64 {
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
  %alt_geom = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %alt_geom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alt_geom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %7 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %sectors, align 1
  %capacity = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity, align 4
  %div = sdiv i32 %9, 2048
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %heads5 = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %heads5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %heads5, align 4
  %conv6 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %geo, align 4
  %sectors8 = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %sectors8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sectors8, align 4
  %conv9 = trunc i32 %14 to i8
  %sectors10 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %15 = ptrtoint ptr %sectors10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %sectors10, align 1
  %cylinders11 = getelementptr inbounds %struct.pd_unit, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %cylinders11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cylinders11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv4.sink.in = phi i32 [ %17, %if.else ], [ %div, %if.then ]
  %conv4.sink = trunc i32 %conv4.sink.in to i16
  %18 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv4.sink, ptr %18, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_media_check(ptr noundef %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  %cond = select i1 %cmp, ptr @.str.47, ptr null
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef %cond)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 64)
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp sgt i32 %1, 1
  %cond2 = select i1 %cmp1, ptr @.str.48, ptr null
  %call3 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef %cond2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %changed = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 9
  %2 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r.0 = phi i32 [ %call, %if.else ], [ %call3, %if.then ]
  %and4 = and i32 %r.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %changed7 = getelementptr inbounds %struct.pd_unit, ptr %disk, i32 0, i32 9
  %3 = ptrtoint ptr %changed7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %changed7, align 4
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 219)
  %4 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8 = icmp sgt i32 %4, 1
  %cond9 = select i1 %cmp8, ptr @.str.49, ptr null
  %call10 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef %cond9)
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 64)
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp sgt i32 %5, 1
  %cond12 = select i1 %cmp11, ptr @.str.50, ptr null
  %call13 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef %cond12)
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_door_lock(ptr noundef %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef nonnull @.str.51)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 222)
  %call1 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef nonnull @.str.52)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_door_unlock(ptr noundef %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef nonnull @.str.51)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 223)
  %call1 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 64, ptr noundef nonnull @.str.52)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_eject(ptr noundef %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  %cond = select i1 %cmp, ptr @.str.53, ptr null
  %call = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond)
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 223)
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp sgt i32 %1, 1
  %cond2 = select i1 %cmp1, ptr @.str.54, ptr null
  %call3 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond2)
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp4 = icmp sgt i32 %2, 1
  %cond5 = select i1 %cmp4, ptr @.str.55, ptr null
  %call6 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond5)
  tail call fastcc void @pd_send_command(ptr noundef %disk, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 237)
  %3 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp sgt i32 %3, 1
  %cond8 = select i1 %cmp7, ptr @.str.56, ptr null
  %call9 = tail call fastcc i32 @pd_wait_for(ptr noundef %disk, i32 noundef 0, ptr noundef %cond8)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !190, !192, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !222, !223, !224, !225, !226, !227, !229, !231, !233}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/pd.c", i32 164, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype278, !1, !"__UNIQUE_ID_verbosetype278", i1 false, i1 false}
!3 = !{ptr @__param_major, !4, !"__param_major", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/pd.c", i32 165, i32 1}
!5 = !{ptr @__UNIQUE_ID_majortype279, !4, !"__UNIQUE_ID_majortype279", i1 false, i1 false}
!6 = !{ptr @__param_name, !7, !"__param_name", i1 false, i1 false}
!7 = !{!"../drivers/block/paride/pd.c", i32 166, i32 1}
!8 = !{ptr @__UNIQUE_ID_nametype280, !7, !"__UNIQUE_ID_nametype280", i1 false, i1 false}
!9 = !{ptr @__param_cluster, !10, !"__param_cluster", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/pd.c", i32 167, i32 1}
!11 = !{ptr @__UNIQUE_ID_clustertype281, !10, !"__UNIQUE_ID_clustertype281", i1 false, i1 false}
!12 = !{ptr @__param_nice, !13, !"__param_nice", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/pd.c", i32 168, i32 1}
!14 = !{ptr @__UNIQUE_ID_nicetype282, !13, !"__UNIQUE_ID_nicetype282", i1 false, i1 false}
!15 = !{ptr @__param_drive0, !16, !"__param_drive0", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/pd.c", i32 169, i32 1}
!17 = !{ptr @__UNIQUE_ID_drive0type283, !16, !"__UNIQUE_ID_drive0type283", i1 false, i1 false}
!18 = !{ptr @__param_drive1, !19, !"__param_drive1", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/pd.c", i32 170, i32 1}
!20 = !{ptr @__UNIQUE_ID_drive1type284, !19, !"__UNIQUE_ID_drive1type284", i1 false, i1 false}
!21 = !{ptr @__param_drive2, !22, !"__param_drive2", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/pd.c", i32 171, i32 1}
!23 = !{ptr @__UNIQUE_ID_drive2type285, !22, !"__UNIQUE_ID_drive2type285", i1 false, i1 false}
!24 = !{ptr @__param_drive3, !25, !"__param_drive3", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/pd.c", i32 172, i32 1}
!26 = !{ptr @__UNIQUE_ID_drive3type286, !25, !"__UNIQUE_ID_drive3type286", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file287, !28, !"__UNIQUE_ID_file287", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/pd.c", i32 1028, i32 1}
!29 = !{ptr @__UNIQUE_ID_license288, !28, !"__UNIQUE_ID_license288", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_pd__289_1029_pd_init6, !31, !"__initcall__kmod_pd__289_1029_pd_init6", i1 false, i1 false}
!31 = !{!"../drivers/block/paride/pd.c", i32 1029, i32 1}
!32 = !{ptr @__exitcall_pd_exit, !33, !"__exitcall_pd_exit", i1 false, i1 false}
!33 = !{!"../drivers/block/paride/pd.c", i32 1030, i32 1}
!34 = !{ptr @pd, !35, !"pd", i1 false, i1 false}
!35 = !{!"../drivers/block/paride/pd.c", i32 243, i32 23}
!36 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!37 = !{ptr @verbose, !38, !"verbose", i1 false, i1 false}
!38 = !{!"../drivers/block/paride/pd.c", i32 129, i32 12}
!39 = !{ptr @__param_str_major, !4, !"__param_str_major", i1 false, i1 false}
!40 = !{ptr @major, !41, !"major", i1 false, i1 false}
!41 = !{!"../drivers/block/paride/pd.c", i32 130, i32 12}
!42 = !{ptr @__param_str_name, !7, !"__param_str_name", i1 false, i1 false}
!43 = !{ptr @.str, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/block/paride/pd.c", i32 131, i32 21}
!45 = !{ptr @name, !46, !"name", i1 false, i1 false}
!46 = !{!"../drivers/block/paride/pd.c", i32 131, i32 14}
!47 = !{ptr @__param_str_cluster, !10, !"__param_str_cluster", i1 false, i1 false}
!48 = !{ptr @cluster, !49, !"cluster", i1 false, i1 false}
!49 = !{!"../drivers/block/paride/pd.c", i32 132, i32 12}
!50 = !{ptr @__param_str_nice, !13, !"__param_str_nice", i1 false, i1 false}
!51 = !{ptr @nice, !52, !"nice", i1 false, i1 false}
!52 = !{!"../drivers/block/paride/pd.c", i32 133, i32 12}
!53 = !{ptr @__param_str_drive0, !16, !"__param_str_drive0", i1 false, i1 false}
!54 = !{ptr @__param_arr_drive0, !16, !"__param_arr_drive0", i1 false, i1 false}
!55 = !{ptr @drive0, !56, !"drive0", i1 false, i1 false}
!56 = !{!"../drivers/block/paride/pd.c", i32 136, i32 12}
!57 = !{ptr @__param_str_drive1, !19, !"__param_str_drive1", i1 false, i1 false}
!58 = !{ptr @__param_arr_drive1, !19, !"__param_arr_drive1", i1 false, i1 false}
!59 = !{ptr @drive1, !60, !"drive1", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/pd.c", i32 137, i32 12}
!61 = !{ptr @__param_str_drive2, !22, !"__param_str_drive2", i1 false, i1 false}
!62 = !{ptr @__param_arr_drive2, !22, !"__param_arr_drive2", i1 false, i1 false}
!63 = !{ptr @drive2, !64, !"drive2", i1 false, i1 false}
!64 = !{!"../drivers/block/paride/pd.c", i32 138, i32 12}
!65 = !{ptr @__param_str_drive3, !25, !"__param_str_drive3", i1 false, i1 false}
!66 = !{ptr @__param_arr_drive3, !25, !"__param_arr_drive3", i1 false, i1 false}
!67 = !{ptr @drive3, !68, !"drive3", i1 false, i1 false}
!68 = !{!"../drivers/block/paride/pd.c", i32 139, i32 12}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/paride/pd.c", i32 968, i32 2}
!71 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pd_init._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @pd_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/paride/pd.c", i32 973, i32 3}
!78 = !{ptr @pd_init._entry.5, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pd_init._entry_ptr.7, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/paride/pd.c", i32 998, i32 3}
!82 = !{ptr @pd_init._entry.8, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pd_init._entry_ptr.10, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"disable", i1 false, i1 false}
!85 = !{!"../drivers/block/paride/pd.c", i32 134, i32 12}
!86 = !{ptr @par_drv, !87, !"par_drv", i1 false, i1 false}
!87 = !{!"../drivers/block/paride/pd.c", i32 257, i32 14}
!88 = !{ptr @drives, !89, !"drives", i1 false, i1 false}
!89 = !{!"../drivers/block/paride/pd.c", i32 141, i32 14}
!90 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/block/paride/pd.c", i32 891, i32 35}
!92 = !{ptr @pd_probe_drive.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/block/paride/pd.c", i32 912, i32 6}
!94 = !{ptr @pd_scratch, !95, !"pd_scratch", i1 false, i1 false}
!95 = !{!"../drivers/block/paride/pd.c", i32 250, i32 13}
!96 = !{ptr @pd_mq_ops, !97, !"pd_mq_ops", i1 false, i1 false}
!97 = !{!"../drivers/block/paride/pd.c", i32 874, i32 32}
!98 = !{ptr @.str.12, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/paride/pd.c", i32 162, i32 8}
!100 = !{ptr @pd_lock, !99, !"pd_lock", i1 false, i1 false}
!101 = !{ptr @pd_req, !102, !"pd_req", i1 false, i1 false}
!102 = !{!"../drivers/block/paride/pd.c", i32 362, i32 24}
!103 = !{ptr @phase, !104, !"phase", i1 false, i1 false}
!104 = !{!"../drivers/block/paride/pd.c", i32 363, i32 22}
!105 = !{ptr @pd_current, !106, !"pd_current", i1 false, i1 false}
!106 = !{!"../drivers/block/paride/pd.c", i32 394, i32 24}
!107 = !{ptr @pi_current, !108, !"pi_current", i1 false, i1 false}
!108 = !{!"../drivers/block/paride/pd.c", i32 395, i32 13}
!109 = !{ptr @pd_block, !110, !"pd_block", i1 false, i1 false}
!110 = !{!"../drivers/block/paride/pd.c", i32 480, i32 12}
!111 = !{ptr @pd_count, !112, !"pd_count", i1 false, i1 false}
!112 = !{!"../drivers/block/paride/pd.c", i32 481, i32 12}
!113 = !{ptr @pd_run, !114, !"pd_run", i1 false, i1 false}
!114 = !{!"../drivers/block/paride/pd.c", i32 482, i32 12}
!115 = !{ptr @pd_buf, !116, !"pd_buf", i1 false, i1 false}
!116 = !{!"../drivers/block/paride/pd.c", i32 483, i32 14}
!117 = !{ptr @pd_retries, !118, !"pd_retries", i1 false, i1 false}
!118 = !{!"../drivers/block/paride/pd.c", i32 479, i32 12}
!119 = !{ptr @.str.13, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/block/paride/pd.c", i32 545, i32 42}
!121 = !{ptr @.str.14, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/paride/pd.c", i32 290, i32 2}
!123 = !{ptr @.str.15, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pd_print_error._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pd_print_error._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.17, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/paride/pd.c", i32 293, i32 4}
!128 = !{ptr @pd_print_error._entry.16, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @pd_print_error._entry_ptr.18, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.20, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/paride/pd.c", i32 294, i32 2}
!132 = !{ptr @pd_print_error._entry.19, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pd_print_error._entry_ptr.21, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.22, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/paride/pd.c", i32 252, i32 30}
!136 = !{ptr @.str.23, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/block/paride/pd.c", i32 252, i32 37}
!138 = !{ptr @.str.24, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/block/paride/pd.c", i32 252, i32 46}
!140 = !{ptr @.str.25, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/block/paride/pd.c", i32 252, i32 53}
!142 = !{ptr @.str.26, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/paride/pd.c", i32 252, i32 60}
!144 = !{ptr @.str.27, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/block/paride/pd.c", i32 252, i32 68}
!146 = !{ptr @.str.28, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/paride/pd.c", i32 253, i32 2}
!148 = !{ptr @.str.29, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/block/paride/pd.c", i32 253, i32 11}
!150 = !{ptr @.str.30, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/paride/pd.c", i32 253, i32 19}
!152 = !{ptr @.str.31, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/block/paride/pd.c", i32 253, i32 27}
!154 = !{ptr @.str.32, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/block/paride/pd.c", i32 253, i32 36}
!156 = !{ptr @.str.33, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/paride/pd.c", i32 253, i32 44}
!158 = !{ptr @.str.34, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/block/paride/pd.c", i32 254, i32 2}
!160 = !{ptr @.str.35, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/paride/pd.c", i32 254, i32 10}
!162 = !{ptr @.str.36, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/block/paride/pd.c", i32 254, i32 16}
!164 = !{ptr @.str.37, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/paride/pd.c", i32 254, i32 23}
!166 = !{ptr @.str.38, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/block/paride/pd.c", i32 254, i32 30}
!168 = !{ptr @pd_errs, !169, !"pd_errs", i1 false, i1 false}
!169 = !{!"../drivers/block/paride/pd.c", i32 252, i32 14}
!170 = !{ptr @.str.39, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/paride/pd.c", i32 596, i32 41}
!172 = !{ptr @pd_timeout, !173, !"pd_timeout", i1 false, i1 false}
!173 = !{!"../drivers/block/paride/pd.c", i32 541, i32 22}
!174 = !{ptr @.str.40, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/paride/pd.c", i32 560, i32 42}
!176 = !{ptr @.str.41, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/block/paride/pd.c", i32 569, i32 41}
!178 = !{ptr @.str.42, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/paride/pd.c", i32 616, i32 42}
!180 = !{ptr @pd_claimed, !181, !"pd_claimed", i1 false, i1 false}
!181 = !{!"../drivers/block/paride/pd.c", i32 392, i32 12}
!182 = !{ptr @pd_queue, !183, !"pd_queue", i1 false, i1 false}
!183 = !{!"../drivers/block/paride/pd.c", i32 391, i32 12}
!184 = !{ptr @.str.43, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/paride/pd.c", i32 369, i32 8}
!186 = !{ptr @.str.44, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @fsm_tq, !185, !"fsm_tq", i1 false, i1 false}
!188 = !{ptr @pd_fops, !189, !"pd_fops", i1 false, i1 false}
!189 = !{!"../drivers/block/paride/pd.c", i32 862, i32 45}
!190 = !{ptr @.str.45, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/block/paride/pd.c", i32 161, i32 8}
!192 = !{ptr @.str.46, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @pd_mutex, !191, !"pd_mutex", i1 false, i1 false}
!194 = !{ptr @.str.47, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/block/paride/pd.c", i32 675, i32 40}
!196 = !{ptr @.str.48, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/block/paride/pd.c", i32 678, i32 37}
!198 = !{ptr @.str.49, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/paride/pd.c", i32 684, i32 33}
!200 = !{ptr @.str.50, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/block/paride/pd.c", i32 686, i32 37}
!202 = !{ptr @.str.51, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/paride/pd.c", i32 646, i32 38}
!204 = !{ptr @.str.52, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/block/paride/pd.c", i32 648, i32 33}
!206 = !{ptr @.str.53, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/block/paride/pd.c", i32 664, i32 23}
!208 = !{ptr @.str.54, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/block/paride/pd.c", i32 666, i32 23}
!210 = !{ptr @.str.55, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/block/paride/pd.c", i32 667, i32 23}
!212 = !{ptr @.str.56, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/paride/pd.c", i32 669, i32 23}
!214 = !{ptr @.str.57, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/block/paride/pd.c", i32 713, i32 23}
!216 = !{ptr @.str.58, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/block/paride/pd.c", i32 716, i32 34}
!218 = !{ptr @.str.59, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/block/paride/pd.c", i32 738, i32 2}
!220 = !{ptr @.str.60, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @pd_identify._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @pd_identify._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.61, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.62, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.63, !219, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.64, !219, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.65, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/block/paride/pd.c", i32 637, i32 23}
!229 = !{ptr @.str.66, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/paride/pd.c", i32 641, i32 23}
!231 = !{ptr @.str.67, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/block/paride/pd.c", i32 693, i32 23}
!233 = !{ptr @.str.68, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/block/paride/pd.c", i32 695, i32 23}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
