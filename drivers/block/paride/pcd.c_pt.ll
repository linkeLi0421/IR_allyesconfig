; ModuleID = '/llk/IR_all_yes/drivers/block/paride/pcd.c_pt.bc'
source_filename = "../drivers/block/paride/pcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pcd_unit = type { %struct.pi_adapter, ptr, i32, i32, i32, i32, ptr, %struct.cdrom_device_info, ptr, %struct.blk_mq_tag_set, %struct.list_head }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
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
%struct.cdrom_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_msf0 = type { i8, i8, i8 }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__param_str_verbose = internal constant [12 x i8] c"pcd.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype278 = internal constant [25 x i8] c"pcd.parmtype=verbose:int\00", section ".modinfo", align 1
@__param_str_major = internal constant [10 x i8] c"pcd.major\00", align 1
@major = internal global { i32, [28 x i8] } { i32 46, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype279 = internal constant [23 x i8] c"pcd.parmtype=major:int\00", section ".modinfo", align 1
@__param_str_name = internal constant [9 x i8] c"pcd.name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_name = internal constant %struct.kernel_param { ptr @__param_str_name, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @name } }, section "__param", align 4
@__UNIQUE_ID_nametype280 = internal constant [24 x i8] c"pcd.parmtype=name:charp\00", section ".modinfo", align 1
@__param_str_nice = internal constant [9 x i8] c"pcd.nice\00", align 1
@nice = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nice = internal constant %struct.kernel_param { ptr @__param_str_nice, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nice } }, section "__param", align 4
@__UNIQUE_ID_nicetype281 = internal constant [22 x i8] c"pcd.parmtype=nice:int\00", section ".modinfo", align 1
@__param_str_drive0 = internal constant [11 x i8] c"pcd.drive0\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_drive0 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive0 }, align 4
@__param_drive0 = internal constant %struct.kernel_param { ptr @__param_str_drive0, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive0 } }, section "__param", align 4
@__UNIQUE_ID_drive0type282 = internal constant [33 x i8] c"pcd.parmtype=drive0:array of int\00", section ".modinfo", align 1
@__param_str_drive1 = internal constant [11 x i8] c"pcd.drive1\00", align 1
@__param_arr_drive1 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive1 }, align 4
@__param_drive1 = internal constant %struct.kernel_param { ptr @__param_str_drive1, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive1 } }, section "__param", align 4
@__UNIQUE_ID_drive1type283 = internal constant [33 x i8] c"pcd.parmtype=drive1:array of int\00", section ".modinfo", align 1
@__param_str_drive2 = internal constant [11 x i8] c"pcd.drive2\00", align 1
@__param_arr_drive2 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive2 }, align 4
@__param_drive2 = internal constant %struct.kernel_param { ptr @__param_str_drive2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive2 } }, section "__param", align 4
@__UNIQUE_ID_drive2type284 = internal constant [33 x i8] c"pcd.parmtype=drive2:array of int\00", section ".modinfo", align 1
@__param_str_drive3 = internal constant [11 x i8] c"pcd.drive3\00", align 1
@__param_arr_drive3 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive3 }, align 4
@__param_drive3 = internal constant %struct.kernel_param { ptr @__param_str_drive3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_drive3 } }, section "__param", align 4
@__UNIQUE_ID_drive3type285 = internal constant [33 x i8] c"pcd.parmtype=drive3:array of int\00", section ".modinfo", align 1
@pcd = internal global { [4 x %struct.pcd_unit], [416 x i8] } zeroinitializer, align 32
@par_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file286 = internal constant [34 x i8] c"pcd.file=drivers/block/paride/pcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [16 x i8] c"pcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pcd__288_1041_pcd_init6 = internal global ptr @pcd_init, section ".initcall6.init", align 4
@__exitcall_pcd_exit = internal global ptr @pcd_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcd\00", [28 x i8] zeroinitializer }, align 32
@drive0 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive1 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive2 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive3 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@pcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: %s version %s, major %d, nice %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcd_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/paride/pcd.c\00", [37 x i8] zeroinitializer }, align 32
@pcd_init._entry_ptr = internal global ptr @pcd_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.07\00", [27 x i8] zeroinitializer }, align 32
@pcd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@pcd_init._entry_ptr.7 = internal global ptr @pcd_init._entry.5, section ".printk_index", align 4
@drives = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3], [16 x i8] zeroinitializer }, align 32
@pcd_drive_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcd_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: No CD-ROM drive found\0A\00", [35 x i8] zeroinitializer }, align 32
@pcd_init._entry_ptr.10 = internal global ptr @pcd_init._entry.8, section ".printk_index", align 4
@pcd_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @pcd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pcd_init_unit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@pcd_dops = internal constant { %struct.cdrom_device_ops, [36 x i8] } { %struct.cdrom_device_ops { ptr @pcd_open, ptr @pcd_release, ptr @pcd_drive_status, ptr @pcd_check_events, ptr @pcd_tray_move, ptr @pcd_lock_door, ptr null, ptr null, ptr null, ptr @pcd_get_mcn, ptr @pcd_drive_reset, ptr @pcd_audio_ioctl, ptr @pcd_packet, ptr null, i32 29639 }, [36 x i8] zeroinitializer }, align 32
@pcd_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @pcd_block_open, ptr @pcd_block_release, ptr null, ptr @pcd_block_ioctl, ptr null, ptr @pcd_block_check_events, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pcd_buffer = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@pcd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcd_lock\00", [23 x i8] zeroinitializer }, align 32
@pcd_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pcd_req = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pcd_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pcd_bufblk = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@pcd_sector = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcd_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcd_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pcd_queue = internal global { i32, [28 x i8] } zeroinitializer, align 32
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
@pcd_retries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__const.pcd_start.rd_cmd = private unnamed_addr constant [12 x i8] c"\A8\00\00\00\00\00\00\00\00\01\00\00", align 1
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read block\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before command\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"command DRQ\00", [20 x i8] zeroinitializer }, align 32
@pcd_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: command phase error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcd_command\00", [20 x i8] zeroinitializer }, align 32
@pcd_command._entry_ptr = internal global ptr @pcd_command._entry, section ".printk_index", align 4
@pcd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: %s %s: alt=0x%x stat=0x%x err=0x%x loop=%d phase=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcd_wait\00", [23 x i8] zeroinitializer }, align 32
@pcd_wait._entry_ptr = internal global ptr @pcd_wait._entry, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"completion\00", [21 x i8] zeroinitializer }, align 32
@pcd_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %s: Read %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcd_completion\00", [17 x i8] zeroinitializer }, align 32
@pcd_completion._entry_ptr = internal global ptr @pcd_completion._entry, section ".printk_index", align 4
@pcd_completion._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: Unexpected phase %d, d=%d, k=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@pcd_completion._entry_ptr.28 = internal global ptr @pcd_completion._entry.26, section ".printk_index", align 4
@pcd_completion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pcd_completion._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: WARNING: ATAPI phase errors\0A\00", [63 x i8] zeroinitializer }, align 32
@pcd_completion._entry_ptr.31 = internal global ptr @pcd_completion._entry.29, section ".printk_index", align 4
@pcd_completion._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Stuck DRQ\0A\00", [17 x i8] zeroinitializer }, align 32
@pcd_completion._entry_ptr.34 = internal global ptr @pcd_completion._entry.32, section ".printk_index", align 4
@__const.pcd_drive_status.rc_cmd = private unnamed_addr constant <{ i8, [11 x i8] }> <{ i8 37, [11 x i8] zeroinitializer }>, align 1
@pcd_scratch = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"check media\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test unit ready\00", [16 x i8] zeroinitializer }, align 32
@__const.pcd_req_sense.rs_cmd = private unnamed_addr constant [12 x i8] c"\03\00\00\00\10\00\00\00\00\00\00\00", align 1
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Request sense\00", [18 x i8] zeroinitializer }, align 32
@pcd_req_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: Sense key: %x, ASC: %x, ASQ: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcd_req_sense\00", [18 x i8] zeroinitializer }, align 32
@pcd_req_sense._entry_ptr = internal global ptr @pcd_req_sense._entry, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eject\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"close tray\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lock door\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unlock door\00", [20 x i8] zeroinitializer }, align 32
@__const.pcd_get_mcn.cmd = private unnamed_addr constant [12 x i8] c"B\00@\02\00\00\00\00\18\00\00\00", align 1
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get mcn\00", [24 x i8] zeroinitializer }, align 32
@pcd_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Reset (%d) signature = \00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcd_reset\00", [22 x i8] zeroinitializer }, align 32
@pcd_reset._entry_ptr = internal global ptr @pcd_reset._entry, section ".printk_index", align 4
@pcd_reset._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3x\00", [28 x i8] zeroinitializer }, align 32
@pcd_reset._entry_ptr.49 = internal global ptr @pcd_reset._entry.47, section ".printk_index", align 4
@pcd_reset._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (incorrect)\00", [19 x i8] zeroinitializer }, align 32
@pcd_reset._entry_ptr.52 = internal global ptr @pcd_reset._entry.50, section ".printk_index", align 4
@pcd_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pcd_reset._entry_ptr.55 = internal global ptr @pcd_reset._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read toc header\00", [16 x i8] zeroinitializer }, align 32
@__const.pcd_audio_ioctl.cmd.57 = private unnamed_addr constant [12 x i8] c"C\00\00\00\00\00\00\00\0C\00\00\00", align 1
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read toc entry\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"generic packet\00", [17 x i8] zeroinitializer }, align 32
@pcd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcd_mutex, i64 52), ptr getelementptr (i8, ptr @pcd_mutex, i64 52) }, ptr @pcd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcd_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcd_mutex\00", [22 x i8] zeroinitializer }, align 32
@__const.pcd_identify.id_cmd = private unnamed_addr constant [12 x i8] c"\12\00\00\00$\00\00\00\00\00\00\00", align 1
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"identify\00", [23 x i8] zeroinitializer }, align 32
@pcd_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s is not a CD-ROM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcd_identify\00", [19 x i8] zeroinitializer }, align 32
@pcd_identify._entry_ptr = internal global ptr @pcd_identify._entry, section ".printk_index", align 4
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slave\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@pcd_identify._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@pcd_identify._entry_ptr.69 = internal global ptr @pcd_identify._entry.67, section ".printk_index", align 4
@__const.pcd_probe_capabilities.cmd = private unnamed_addr constant [12 x i8] c"Z\08*\00\00\00\00\12\00\00\00\00", align 1
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode sense capabilities\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 21253, i64 21254]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 114, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 115, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 116, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 117, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"pcd\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 205, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant [8 x i8] c"par_drv\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 225, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 116, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"drive0\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 120, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"drive1\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 121, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"drive2\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 122, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"drive3\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 123, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 975, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 980, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 125, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"pcd_drive_count\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 126, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1007, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"pcd_mq_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 299, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 904, i32 9 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 920, i32 44 }
@___asan_gen_.152 = private unnamed_addr constant [9 x i8] c"pcd_dops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 282, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"pcd_bdops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 271, i32 45 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"pcd_buffer\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 208, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant [9 x i8] c"pcd_lock\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 145, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"pcd_busy\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [8 x i8] c"pcd_req\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 219, i32 24 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"pcd_current\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 218, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant [11 x i8] c"pcd_bufblk\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 209, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"pcd_sector\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 222, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"pcd_count\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 223, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [8 x i8] c"pcd_buf\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 224, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"pcd_queue\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 660, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"ps_spinlock\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"ps_continuation\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 40, i32 16 }
@___asan_gen_.195 = private unnamed_addr constant [9 x i8] c"ps_ready\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 41, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"ps_timeout\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 42, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant [8 x i8] c"ps_nice\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 44, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant [13 x i8] c"ps_tq_active\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"ps_tq\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 46, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [33 x i8] c"../drivers/block/paride/pseudo.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 48, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"pcd_retries\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 220, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 765, i32 45 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 360, i32 47 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 369, i32 43 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 375, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 346, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 394, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 404, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 410, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 414, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 420, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"pcd_scratch\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 207, i32 13 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 579, i32 44 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 560, i32 34 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 443, i32 34 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 452, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 507, i32 16 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 507, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 499, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 499, i32 26 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 884, i32 46 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 535, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 537, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 539, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 540, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 830, i32 39 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 854, i32 39 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 479, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant [10 x i8] c"pcd_mutex\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 144, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 592, i32 44 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 598, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 610, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private constant [30 x i8] c"../drivers/block/paride/pcd.c\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 638, i32 39 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_drive0type282, ptr @__UNIQUE_ID_drive1type283, ptr @__UNIQUE_ID_drive2type284, ptr @__UNIQUE_ID_drive3type285, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__UNIQUE_ID_majortype279, ptr @__UNIQUE_ID_nametype280, ptr @__UNIQUE_ID_nicetype281, ptr @__UNIQUE_ID_verbosetype278, ptr @__exitcall_pcd_exit, ptr @__initcall__kmod_pcd__288_1041_pcd_init6, ptr @__param_drive0, ptr @__param_drive1, ptr @__param_drive2, ptr @__param_drive3, ptr @__param_major, ptr @__param_name, ptr @__param_nice, ptr @__param_verbose, ptr @pcd_command._entry, ptr @pcd_command._entry_ptr, ptr @pcd_completion._entry, ptr @pcd_completion._entry.26, ptr @pcd_completion._entry.29, ptr @pcd_completion._entry.32, ptr @pcd_completion._entry_ptr, ptr @pcd_completion._entry_ptr.28, ptr @pcd_completion._entry_ptr.31, ptr @pcd_completion._entry_ptr.34, ptr @pcd_exit, ptr @pcd_identify._entry, ptr @pcd_identify._entry.67, ptr @pcd_identify._entry_ptr, ptr @pcd_identify._entry_ptr.69, ptr @pcd_init._entry, ptr @pcd_init._entry.5, ptr @pcd_init._entry.8, ptr @pcd_init._entry_ptr, ptr @pcd_init._entry_ptr.10, ptr @pcd_init._entry_ptr.7, ptr @pcd_req_sense._entry, ptr @pcd_req_sense._entry_ptr, ptr @pcd_reset._entry, ptr @pcd_reset._entry.47, ptr @pcd_reset._entry.50, ptr @pcd_reset._entry.53, ptr @pcd_reset._entry_ptr, ptr @pcd_reset._entry_ptr.49, ptr @pcd_reset._entry_ptr.52, ptr @pcd_reset._entry_ptr.55, ptr @pcd_wait._entry, ptr @pcd_wait._entry_ptr, ptr @verbose, ptr @major, ptr @name, ptr @nice, ptr @pcd, ptr @par_drv, ptr @.str, ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @drives, ptr @pcd_drive_count, ptr @.str.9, ptr @pcd_mq_ops, ptr @pcd_init_unit.__key, ptr @.str.11, ptr @pcd_dops, ptr @pcd_bdops, ptr @pcd_buffer, ptr @pcd_lock, ptr @.str.12, ptr @pcd_busy, ptr @pcd_req, ptr @pcd_current, ptr @pcd_bufblk, ptr @pcd_sector, ptr @pcd_count, ptr @pcd_buf, ptr @pcd_queue, ptr @ps_spinlock, ptr @ps_continuation, ptr @ps_ready, ptr @ps_timeout, ptr @ps_nice, ptr @ps_tq_active, ptr @ps_tq, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pcd_retries, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @pcd_scratch, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @pcd_mutex, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd to i32), i32 1760, i32 2176, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drives to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_drive_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_init_unit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_dops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_buffer to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_bufblk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_sector to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_continuation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_ready to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_tq_active to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_tq to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_completion._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_completion._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_completion._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_scratch to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_req_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_reset._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_reset._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcd_identify._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %unit.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %cd.09 = phi ptr [ @pcd, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %present = getelementptr inbounds %struct.pcd_unit, ptr %cd.09, i32 0, i32 5
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.pcd_unit, ptr %cd.09, i32 0, i32 7
  tail call void @unregister_cdrom(ptr noundef %info) #11
  %disk = getelementptr inbounds %struct.pcd_unit, ptr %cd.09, i32 0, i32 8
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  tail call void @del_gendisk(ptr noundef %3) #11
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %cd.09, i32 0, i32 1
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 8
  tail call void @pi_release(ptr noundef %5) #11
  %6 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk, align 8
  tail call void @blk_cleanup_disk(ptr noundef %7) #11
  %tag_set = getelementptr inbounds %struct.pcd_unit, ptr %cd.09, i32 0, i32 9
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %unit.010, 1
  %incdec.ptr = getelementptr %struct.pcd_unit, ptr %cd.09, i32 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %8) #11
  %9 = load i32, ptr @major, align 4
  %10 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %9, ptr noundef %10) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cdrom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  %1 = load ptr, ptr @name, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef %1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr @name, align 4
  %3 = load i32, ptr @major, align 4
  %4 = load i32, ptr @nice, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %4) #14
  %5 = load ptr, ptr @name, align 4
  %call5 = tail call ptr @pi_register_driver(ptr noundef %5) #11
  store ptr %call5, ptr @par_drv, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %pcd_drive_count.promoted = load i32, ptr @pcd_drive_count, align 4
  br label %for.body

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %6) #14
  br label %out_unregister_blkdev

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %unit.084 = phi i32 [ 0, %for.cond.preheader ], [ %inc18, %for.inc.for.body_crit_edge ]
  %inc8283 = phi i32 [ %pcd_drive_count.promoted, %for.cond.preheader ], [ %inc81, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.084
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %inc8283, 1
  store i32 %inc, ptr @pcd_drive_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc81 = phi i32 [ %inc8283, %for.body.for.inc_crit_edge ], [ %inc, %if.then16 ]
  %inc18 = add nuw nsw i32 %unit.084, 1
  %exitcond.not = icmp eq i32 %inc18, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = load i32, ptr @pcd_drive_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %if.then20, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

if.then20:                                        ; preds = %for.end
  %call21 = tail call fastcc i32 @pcd_init_unit(ptr noundef nonnull @pcd, i1 noundef zeroext true, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.cleanup59_crit_edge, label %if.then20.do.end55_crit_edge

if.then20.do.end55_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.then20.cleanup59_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

for.body28:                                       ; preds = %cleanup.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %found.087 = phi i32 [ %found.2, %cleanup.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %unit.185 = phi i32 [ %inc48, %cleanup.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %arrayidx30 = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.185
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx30, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %for.body28.cleanup_crit_edge, label %if.end34

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29 = getelementptr [4 x %struct.pcd_unit], ptr @pcd, i32 0, i32 %unit.185
  %arrayidx36 = getelementptr i32, ptr %13, i32 3
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr i32, ptr %13, i32 2
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %13, i32 1
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %13, i32 5
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %13, i32 4
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  %call41 = tail call fastcc i32 @pcd_init_unit(ptr noundef %arrayidx29, i1 noundef zeroext false, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %inc44 = zext i1 %tobool42.not to i32
  %spec.select75 = add i32 %found.087, %inc44
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.body28.cleanup_crit_edge
  %found.2 = phi i32 [ %spec.select75, %if.end34 ], [ %found.087, %for.body28.cleanup_crit_edge ]
  %inc48 = add nuw nsw i32 %unit.185, 1
  %exitcond88.not = icmp eq i32 %inc48, 4
  br i1 %exitcond88.not, label %if.end50, label %cleanup.for.body28_crit_edge

cleanup.for.body28_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

if.end50:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.2)
  %tobool51.not = icmp eq i32 %found.2, 0
  br i1 %tobool51.not, label %if.end50.do.end55_crit_edge, label %if.end50.cleanup59_crit_edge

if.end50.cleanup59_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

if.end50.do.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end55:                                         ; preds = %if.end50.do.end55_crit_edge, %if.then20.do.end55_crit_edge
  %26 = load ptr, ptr @name, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %26) #14
  %27 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %27) #11
  br label %out_unregister_blkdev

out_unregister_blkdev:                            ; preds = %do.end55, %do.end10
  %28 = load i32, ptr @major, align 4
  %29 = load ptr, ptr @name, align 4
  tail call void @unregister_blkdev(i32 noundef %28, ptr noundef %29) #11
  br label %cleanup59

cleanup59:                                        ; preds = %out_unregister_blkdev, %if.end50.cleanup59_crit_edge, %if.then20.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ -19, %out_unregister_blkdev ], [ -16, %entry.cleanup59_crit_edge ], [ 0, %if.end50.cleanup59_crit_edge ], [ 0, %if.then20.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_init_unit(ptr noundef %cd, i1 noundef zeroext %autoprobe, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay, i32 noundef %ms) unnamed_addr #4 align 64 {
entry:
  %cmd.i = alloca [12 x i8], align 1
  %buffer.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 9
  %call = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef %tag_set, ptr noundef nonnull @pcd_mq_ops, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %cd, ptr noundef nonnull @pcd_init_unit.__key) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call2 to i32
  br label %out_free_tag_set

if.end6:                                          ; preds = %if.end
  %rq_list = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 10
  %1 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rq_list, ptr %rq_list, align 4
  %prev.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rq_list, ptr %prev.i, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 9
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %4, i32 noundef 1) #11
  %disk7 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 8
  %5 = ptrtoint ptr %disk7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %disk7, align 8
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cd, ptr %pi, align 8
  %present = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 5
  %7 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %present, align 8
  %last_sense = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 3
  %8 = ptrtoint ptr %last_sense to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last_sense, align 8
  %changed = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 4
  %9 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %changed, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %cd to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @pcd to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 440
  %arrayidx = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %sub.ptr.div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [6 x i32], ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %drive = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 2
  %14 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %drive, align 4
  %info = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7
  %name = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7, i32 11
  %name10 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %15 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name, ptr %name10, align 4
  %16 = load ptr, ptr @name, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str.11, ptr noundef %16, i32 noundef %unit)
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pcd_dops, ptr %info, align 8
  %handle = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cd, ptr %handle, align 8
  %speed = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %speed, align 8
  %capacity = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %capacity, align 4
  %mask = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mask, align 4
  %22 = load i32, ptr @major, align 4
  %23 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call2, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 1
  %24 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %unit, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 2
  %25 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %minors, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 3
  %26 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name10, align 4
  %call19 = tail call ptr @strcpy(ptr noundef %disk_name, ptr noundef %27) #15
  %fops = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 8
  %28 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pcd_bdops, ptr %fops, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or = or i32 %30, 4
  store i32 %or, ptr %flags, align 4
  %events = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 4
  %31 = ptrtoint ptr %events to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %events, align 4
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 5
  %32 = ptrtoint ptr %event_flags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %event_flags, align 2
  %33 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pi, align 8
  %conv = zext i1 %autoprobe to i32
  %35 = load i32, ptr @verbose, align 4
  %36 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name10, align 4
  %call23 = tail call i32 @pi_init(ptr noundef %34, i32 noundef %conv, i32 noundef %port, i32 noundef %mode, i32 noundef %unit, i32 noundef %protocol, i32 noundef %delay, ptr noundef nonnull @pcd_buffer, i32 noundef 1, i32 noundef %35, ptr noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end6.out_free_disk_crit_edge, label %if.end26

if.end6.out_free_disk_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_disk

if.end26:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ms)
  %cmp.i100 = icmp eq i32 %ms, -1
  br i1 %cmp.i100, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end26
  %38 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %drive, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i
  %call.i = tail call fastcc i32 @pcd_reset(ptr noundef %cd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call3.i = tail call fastcc i32 @pcd_identify(ptr noundef %cd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end30_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.if.end30_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drive, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %drive, align 4
  %cmp2.i = icmp slt i32 %inc.i, 2
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out_pi_release_crit_edge

for.inc.i.out_pi_release_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_pi_release

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else.i:                                        ; preds = %if.end26
  %41 = ptrtoint ptr %drive to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %ms, ptr %drive, align 4
  %call8.i = tail call fastcc i32 @pcd_reset(ptr noundef %cd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %if.else.i.out_pi_release_crit_edge

if.else.i.out_pi_release_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_pi_release

land.lhs.true10.i:                                ; preds = %if.else.i
  %call11.i = tail call fastcc i32 @pcd_identify(ptr noundef %cd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end30_crit_edge, label %land.lhs.true10.i.out_pi_release_crit_edge

land.lhs.true10.i.out_pi_release_crit_edge:       ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_pi_release

land.lhs.true10.i.if.end30_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true10.i.if.end30_crit_edge, %land.lhs.true.i.if.end30_crit_edge
  %42 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %present, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #11
  %43 = call ptr @memcpy(ptr %cmd.i, ptr @__const.pcd_probe_capabilities.cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer.i) #11
  %44 = getelementptr inbounds [32 x i8], ptr %buffer.i, i32 0, i32 12
  %45 = getelementptr inbounds [32 x i8], ptr %buffer.i, i32 0, i32 14
  %46 = call ptr @memset(ptr %buffer.i, i32 255, i32 32)
  %call.i101 = call fastcc i32 @pcd_atapi(ptr noundef %cd, ptr noundef nonnull %cmd.i, i32 noundef 18, ptr noundef nonnull %buffer.i, ptr noundef nonnull @.str.70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i, label %if.end30.pcd_probe_capabilities.exit_crit_edge

if.end30.pcd_probe_capabilities.exit_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_probe_capabilities.exit

if.end.i:                                         ; preds = %if.end30
  %47 = getelementptr inbounds [32 x i8], ptr %buffer.i, i32 0, i32 11
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i103 = icmp eq i8 %50, 0
  br i1 %cmp.i103, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask, align 4
  %or.i = or i32 %52, 8192
  store i32 %or.i, ptr %mask, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %53 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp8.i = icmp eq i8 %53, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask, align 4
  %or13.i = or i32 %55, 16384
  store i32 %or13.i, ptr %mask, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end4.i.if.end14.i_crit_edge
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %44, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp18.i = icmp eq i8 %58, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end14.i.if.end24.i_crit_edge

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask, align 4
  %or23.i = or i32 %60, 256
  store i32 %or23.i, ptr %mask, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end14.i.if.end24.i_crit_edge
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %45, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp28.i = icmp eq i8 %63, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end24.i.if.end34.i_crit_edge

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mask, align 4
  %or33.i = or i32 %65, 4
  store i32 %or33.i, ptr %mask, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.end24.i.if.end34.i_crit_edge
  %66 = and i8 %62, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp38.i = icmp eq i8 %66, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end34.i.if.end44.i_crit_edge

if.end34.i.if.end44.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask, align 4
  %or43.i = or i32 %68, 2
  store i32 %or43.i, ptr %mask, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.end34.i.if.end44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %62)
  %cmp47.i = icmp ult i8 %62, 64
  br i1 %cmp47.i, label %if.then49.i, label %if.end44.i.pcd_probe_capabilities.exit_crit_edge

if.end44.i.pcd_probe_capabilities.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_probe_capabilities.exit

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mask, align 4
  %or52.i = or i32 %70, 1
  store i32 %or52.i, ptr %mask, align 4
  br label %pcd_probe_capabilities.exit

pcd_probe_capabilities.exit:                      ; preds = %if.then49.i, %if.end44.i.pcd_probe_capabilities.exit_crit_edge, %if.end30.pcd_probe_capabilities.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #11
  %71 = ptrtoint ptr %disk7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disk7, align 8
  %call35 = call i32 @register_cdrom(ptr noundef %72, ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %pcd_probe_capabilities.exit.out_pi_release_crit_edge

pcd_probe_capabilities.exit.out_pi_release_crit_edge: ; preds = %pcd_probe_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_pi_release

if.end38:                                         ; preds = %pcd_probe_capabilities.exit
  %73 = ptrtoint ptr %disk7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %disk7, align 8
  %call.i104 = call i32 @device_add_disk(ptr noundef null, ptr noundef %74, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool41.not = icmp eq i32 %call.i104, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %out_unreg_cdrom

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_unreg_cdrom:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void @unregister_cdrom(ptr noundef %info) #11
  br label %out_pi_release

out_pi_release:                                   ; preds = %out_unreg_cdrom, %pcd_probe_capabilities.exit.out_pi_release_crit_edge, %land.lhs.true10.i.out_pi_release_crit_edge, %if.else.i.out_pi_release_crit_edge, %for.inc.i.out_pi_release_crit_edge
  %ret.0 = phi i32 [ %call35, %pcd_probe_capabilities.exit.out_pi_release_crit_edge ], [ %call.i104, %out_unreg_cdrom ], [ -19, %if.else.i.out_pi_release_crit_edge ], [ -19, %land.lhs.true10.i.out_pi_release_crit_edge ], [ -19, %for.inc.i.out_pi_release_crit_edge ]
  %75 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pi, align 8
  call void @pi_release(ptr noundef %76) #11
  br label %out_free_disk

out_free_disk:                                    ; preds = %out_pi_release, %if.end6.out_free_disk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_pi_release ], [ -19, %if.end6.out_free_disk_crit_edge ]
  %77 = ptrtoint ptr %disk7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %disk7, align 8
  call void @blk_cleanup_disk(ptr noundef %78) #11
  br label %out_free_tag_set

out_free_tag_set:                                 ; preds = %out_free_disk, %if.then4
  %ret.2 = phi i32 [ %0, %if.then4 ], [ %ret.1, %out_free_disk ]
  call void @blk_mq_free_tag_set(ptr noundef %tag_set) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free_tag_set, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free_tag_set ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cdrom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pcd_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_mq_start_request(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queuedata, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcd_lock) #11
  %8 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd, align 4
  %10 = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 12
  %rq_list = getelementptr inbounds %struct.pcd_unit, ptr %7, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.pcd_unit, ptr %7, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %12, ptr noundef %rq_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rq_list, ptr %10, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 12, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %10, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call fastcc void @pcd_request()
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcd_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  %retval.0 = phi i8 [ 10, %if.then ], [ 0, %list_add_tail.exit ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcd_request() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pcd_busy, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @pcd_req, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr @pcd_queue, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %land.lhs.true
  %spec.store.select9.i = phi i32 [ %spec.store.select.i, %do.cond.i.do.body.i_crit_edge ], [ %1, %land.lhs.true ]
  %inc.i = add i32 %spec.store.select9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 4
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %present.i = getelementptr [4 x %struct.pcd_unit], ptr @pcd, i32 0, i32 %spec.store.select9.i, i32 5
  %2 = ptrtoint ptr %present.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %land.lhs.true.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %rq_list.i = getelementptr [4 x %struct.pcd_unit], ptr @pcd, i32 0, i32 %spec.store.select9.i, i32 10
  %4 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %rq_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.do.cond.i_crit_edge, label %if.then2.i

land.lhs.true.i.do.cond.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  store i32 %spec.store.select.i, ptr @pcd_queue, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -56
  store ptr %add.ptr.i, ptr @pcd_req, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.i.list_del_init.exit.i_crit_edge

if.then2.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %14 = load ptr, ptr @pcd_req, align 4
  tail call void @blk_mq_start_request(ptr noundef %14) #11
  br label %set_next_request.exit

do.cond.i:                                        ; preds = %land.lhs.true.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %cmp5.not.i = icmp eq i32 %spec.store.select.i, %1
  br i1 %cmp5.not.i, label %do.cond.i.set_next_request.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.set_next_request.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_next_request.exit

set_next_request.exit:                            ; preds = %do.cond.i.set_next_request.exit_crit_edge, %list_del_init.exit.i
  %15 = load ptr, ptr @pcd_req, align 4
  %cmp6.i.not = icmp eq ptr %15, null
  br i1 %cmp6.i.not, label %set_next_request.exit.cleanup_crit_edge, label %set_next_request.exit.if.end4_crit_edge

set_next_request.exit.if.end4_crit_edge:          ; preds = %set_next_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

set_next_request.exit.cleanup_crit_edge:          ; preds = %set_next_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %set_next_request.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %16 = load ptr, ptr @pcd_req, align 4
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
  %23 = load ptr, ptr @pcd_current, align 4
  %cmp.not = icmp eq ptr %22, %23
  br i1 %cmp.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  store i32 -1, ptr @pcd_bufblk, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  store ptr %22, ptr @pcd_current, align 4
  %__sector.i = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 9
  %24 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %__sector.i, align 8
  %conv = trunc i64 %25 to i32
  store i32 %conv, ptr @pcd_sector, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %16, i32 0, i32 10
  %26 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %blk_rq_cur_sectors.exit, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.thread, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.thread:                         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @pcd_count, align 4
  br label %bio_data.exit

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %31 to i8
  %32 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge26
    i8 9, label %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge27
  ]

land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge27: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge26: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 20
  %33 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %34, i32 %36, i32 1
  %39 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %40, %38
  %41 = tail call i32 @llvm.umin.i32(i32 %29, i32 %sub.i.i) #11
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %34, i32 %36, i32 2
  %42 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %43, %38
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %sub41.i.i) #11
  br label %land.lhs.true.i.i

blk_rq_cur_sectors.exit:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @pcd_count, align 4
  br label %bio_data.exit

land.lhs.true.i.i:                                ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge26, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge27
  %retval.0.i.i.ph.ph = phi i32 [ %44, %if.end4.i.i ], [ %29, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge ], [ %29, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge26 ], [ %29, %land.lhs.true2.i.i.i.land.lhs.true.i.i_crit_edge27 ]
  %45 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %bi_size.i.i.i, align 8
  %shr.i16 = ashr i32 %retval.0.i.i.ph.ph, 9
  store i32 %shr.i16, ptr @pcd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool1.not.i.i = icmp eq i32 %.pr, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.bio_data.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.bio_data.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_data.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  %46 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %47 to i8
  %48 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc.i.i, label %if.then.i [
    i8 3, label %land.lhs.true2.i.i.bio_data.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.bio_data.exit_crit_edge28
    i8 9, label %land.lhs.true2.i.i.bio_data.exit_crit_edge29
  ]

land.lhs.true2.i.i.bio_data.exit_crit_edge29:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge28:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_data.exit

land.lhs.true2.i.i.bio_data.exit_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_data.exit

if.then.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %add.ptr.i12 = getelementptr %struct.page, ptr %54, i32 %div24.i
  %call6.i = tail call ptr @page_address(ptr noundef %add.ptr.i12) #11
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

bio_data.exit:                                    ; preds = %if.then.i, %land.lhs.true2.i.i.bio_data.exit_crit_edge, %land.lhs.true2.i.i.bio_data.exit_crit_edge28, %land.lhs.true2.i.i.bio_data.exit_crit_edge29, %land.lhs.true.i.i.bio_data.exit_crit_edge, %blk_rq_cur_sectors.exit, %land.lhs.true.i.i.thread
  %retval.0.i = phi ptr [ %add.ptr15.i, %if.then.i ], [ null, %blk_rq_cur_sectors.exit ], [ null, %land.lhs.true.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge28 ], [ null, %land.lhs.true2.i.i.bio_data.exit_crit_edge29 ], [ null, %land.lhs.true.i.i.thread ]
  store ptr %retval.0.i, ptr @pcd_buf, align 4
  store i1 true, ptr @pcd_busy, align 4
  %67 = load i32, ptr @nice, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #11
  store ptr @do_pcd_read, ptr @ps_continuation, align 4
  store ptr null, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  store i32 %68, ptr @ps_timeout, align 4
  store i32 %67, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %bio_data.exit.ps_set_intr.exit_crit_edge, label %if.then.i14

bio_data.exit.ps_set_intr.exit_crit_edge:         ; preds = %bio_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_set_intr.exit

if.then.i14:                                      ; preds = %bio_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool5.not.i = icmp eq i32 %67, 0
  %sub.i = add i32 %67, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i.i13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %69, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #11
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i14, %bio_data.exit.ps_set_intr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ps_set_intr.exit, %set_next_request.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pcd_read() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pcd_busy, align 4
  store i32 0, ptr @pcd_retries, align 4
  %.pr.i = load i32, ptr @pcd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not4.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not4.i, label %entry.if.then_crit_edge, label %land.rhs.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.rhs.lr.ph.i:                                 ; preds = %entry
  %pcd_buf.promoted.i = load ptr, ptr @pcd_buf, align 4
  %pcd_sector.promoted.i = load i32, ptr @pcd_sector, align 4
  %0 = load i32, ptr @pcd_bufblk, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %1 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %inc26.i = phi i32 [ %pcd_sector.promoted.i, %land.rhs.lr.ph.i ], [ %inc.i, %while.body.i.land.rhs.i_crit_edge ]
  %add.ptr135.i = phi ptr [ %pcd_buf.promoted.i, %land.rhs.lr.ph.i ], [ %add.ptr1.i, %while.body.i.land.rhs.i_crit_edge ]
  %inc26.i.frozen = freeze i32 %inc26.i
  %div.i = sdiv i32 %inc26.i.frozen, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %0)
  %cmp.i = icmp eq i32 %div.i, %0
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.pcd_transfer.exit_crit_edge

land.rhs.i.pcd_transfer.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %2 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %inc26.i.frozen, %2
  %mul.i = shl nsw i32 %rem.i.decomposed, 9
  %add.ptr.i = getelementptr i8, ptr @pcd_buffer, i32 %mul.i
  %3 = call ptr @memcpy(ptr %add.ptr135.i, ptr %add.ptr.i, i32 512)
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr @pcd_count, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr135.i, i32 512
  store ptr %add.ptr1.i, ptr @pcd_buf, align 4
  %inc.i = add i32 %inc26.i, 1
  store i32 %inc.i, ptr @pcd_sector, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.pcd_transfer.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body.i.pcd_transfer.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_transfer.exit

pcd_transfer.exit:                                ; preds = %while.body.i.pcd_transfer.exit_crit_edge, %land.rhs.i.pcd_transfer.exit_crit_edge
  %.pr = load i32, ptr @pcd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %pcd_transfer.exit.if.then_crit_edge, label %if.end

pcd_transfer.exit.if.then_crit_edge:              ; preds = %pcd_transfer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %pcd_transfer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcd_lock) #11
  %4 = load ptr, ptr @pcd_req, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.blk_rq_cur_bytes.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %10 to i8
  %11 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge2
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge3
  ]

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge3: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge2: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %20 = tail call i32 @llvm.umin.i32(i32 %8, i32 %sub.i.i) #11
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %13, i32 %15, i32 2
  %21 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %22, %17
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub41.i.i) #11
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge2, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge3, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %if.then.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %23, %if.end4.i.i ], [ 0, %if.then.blk_rq_cur_bytes.exit.i_crit_edge ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge2 ], [ %8, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge3 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call6.i = tail call zeroext i1 @blk_update_request(ptr noundef %4, i8 noundef zeroext 0, i32 noundef %retval.0.i.i) #11
  br i1 %call6.i, label %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge, label %if.then.i

blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_request.exit

if.then.i:                                        ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = load ptr, ptr @pcd_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %24, i8 noundef zeroext 0) #11
  store ptr null, ptr @pcd_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then.i, %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge
  store i1 false, ptr @pcd_busy, align 4
  tail call fastcc void @pcd_request() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcd_lock, i32 noundef %call2.i) #11
  br label %return

if.end:                                           ; preds = %pcd_transfer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = load ptr, ptr @pcd_current, align 4
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pi, align 8
  tail call void @pi_do_claimed(ptr noundef %27, ptr noundef nonnull @pcd_start) #11
  br label %return

return:                                           ; preds = %if.end, %next_request.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps_tq_int(ptr nocapture noundef readnone %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #11
  %0 = load ptr, ptr @ps_continuation, align 4
  store i1 false, ptr @ps_tq_active, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @ps_ready, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 %1() #11, !callees !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  store ptr null, ptr @ps_continuation, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #11
  tail call void %0() #11, !callees !247
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ps_tq_active, align 4
  %4 = load i32, ptr @ps_nice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  %sub16 = add i32 %4, -1
  %sub16.sink = select i1 %tobool13.not, i32 0, i32 %sub16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull @ps_tq, i32 noundef %sub16.sink) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_do_claimed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcd_start() #4 align 64 {
entry:
  %rd_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rd_cmd) #11
  %0 = call ptr @memcpy(ptr %rd_cmd, ptr @__const.pcd_start.rd_cmd, i32 12)
  %1 = load i32, ptr @pcd_sector, align 4
  %div = sdiv i32 %1, 4
  store i32 %div, ptr @pcd_bufblk, align 4
  %conv = trunc i32 %div to i8
  %arrayidx = getelementptr inbounds [12 x i8], ptr %rd_cmd, i32 0, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %3 = lshr i32 %div, 8
  %conv.1 = trunc i32 %3 to i8
  %arrayidx.1 = getelementptr inbounds [12 x i8], ptr %rd_cmd, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %5 = lshr i32 %div, 16
  %conv.2 = trunc i32 %5 to i8
  %arrayidx.2 = getelementptr inbounds [12 x i8], ptr %rd_cmd, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %shr.2 = ashr i32 %div, 24
  %conv.3 = trunc i32 %shr.2 to i8
  %arrayidx.3 = getelementptr inbounds [12 x i8], ptr %rd_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %8 = load ptr, ptr @pcd_current, align 4
  %call = call fastcc i32 @pcd_command(ptr noundef %8, ptr noundef nonnull %rd_cmd, i32 noundef 2048, ptr noundef nonnull @.str.16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr @pcd_bufblk, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcd_lock) #11
  %9 = load ptr, ptr @pcd_req, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.blk_rq_cur_bytes.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %15 to i8
  %16 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11
  ]

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 20
  %17 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %18, i32 %20, i32 1
  %23 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %24, %22
  %25 = call i32 @llvm.umin.i32(i32 %13, i32 %sub.i.i) #11
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %18, i32 %20, i32 2
  %26 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %27, %22
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %28 = call i32 @llvm.umin.i32(i32 %25, i32 %sub41.i.i) #11
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %if.then.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %28, %if.end4.i.i ], [ 0, %if.then.blk_rq_cur_bytes.exit.i_crit_edge ], [ %13, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %13, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10 ], [ %13, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call6.i = call zeroext i1 @blk_update_request(ptr noundef %9, i8 noundef zeroext 10, i32 noundef %retval.0.i.i) #11
  br i1 %call6.i, label %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge, label %if.then.i

blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_request.exit

if.then.i:                                        ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = load ptr, ptr @pcd_req, align 4
  call void @__blk_mq_end_request(ptr noundef %29, i8 noundef zeroext 10) #11
  store ptr null, ptr @pcd_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then.i, %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge
  store i1 false, ptr @pcd_busy, align 4
  call fastcc void @pcd_request() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcd_lock, i32 noundef %call2.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #11
  %31 = load i32, ptr @nice, align 4
  %call2.i6 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ps_spinlock) #11
  store ptr @do_pcd_read_drq, ptr @ps_continuation, align 4
  store ptr @pcd_ready, ptr @ps_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %32, 800
  store i32 %add.i, ptr @ps_timeout, align 4
  store i32 %31, ptr @ps_nice, align 4
  %.b.i = load i1, ptr @ps_tq_active, align 4
  br i1 %.b.i, label %if.end.ps_set_intr.exit_crit_edge, label %if.then.i7

if.end.ps_set_intr.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_set_intr.exit

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ps_tq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not.i = icmp eq i32 %31, 0
  %sub.i = add i32 %31, -1
  %.sink11.i = select i1 %tobool5.not.i, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef nonnull @ps_tq, i32 noundef %.sink11.i) #11
  br label %ps_set_intr.exit

ps_set_intr.exit:                                 ; preds = %if.then.i7, %if.end.ps_set_intr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ps_spinlock, i32 noundef %call2.i6) #11
  br label %cleanup

cleanup:                                          ; preds = %ps_set_intr.exit, %next_request.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rd_cmd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_command(ptr nocapture noundef readonly %cd, ptr noundef %cmd, i32 noundef %dlen, ptr noundef %fun) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  tail call void @pi_connect(ptr noundef %1) #11
  %drive = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 2
  %2 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive, align 4
  %mul = shl i32 %3, 4
  %add = add i32 %mul, 160
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %5, i32 noundef 0, i32 noundef 6, i32 noundef %add) #11
  %call = tail call fastcc i32 @pcd_wait(ptr noundef %cd, i32 noundef 136, i32 noundef 0, ptr noundef %fun, ptr noundef nonnull @.str.17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 8
  tail call void @pi_disconnect(ptr noundef %7) #11
  br label %return

if.end:                                           ; preds = %entry
  %div = sdiv i32 %dlen, 256
  %8 = mul i32 %div, 256
  %rem.decomposed = sub i32 %dlen, %8
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %10, i32 noundef 0, i32 noundef 4, i32 noundef %rem.decomposed) #11
  %11 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %12, i32 noundef 0, i32 noundef 5, i32 noundef %div) #11
  %13 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %14, i32 noundef 0, i32 noundef 7, i32 noundef 160) #11
  %call2 = tail call fastcc i32 @pcd_wait(ptr noundef %cd, i32 noundef 128, i32 noundef 8, ptr noundef %fun, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %15 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pi, align 8
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pi_disconnect(ptr noundef %16) #11
  br label %return

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @pi_read_regr(ptr noundef %16, i32 noundef 0, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %18, ptr noundef %fun) #14
  %19 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pi, align 8
  tail call void @pi_disconnect(ptr noundef %20) #11
  br label %return

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pi, align 8
  tail call void @pi_write_block(ptr noundef %22, ptr noundef %cmd, i32 noundef 12) #11
  br label %return

return:                                           ; preds = %if.end11, %do.end, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_pcd_read_drq() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pcd_current, align 4
  %call = tail call fastcc i32 @pcd_completion(ptr noundef %0, ptr noundef nonnull @pcd_buffer, ptr noundef nonnull @.str.16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @pcd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #11
  %3 = load i32, ptr @pcd_retries, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @pcd_retries, align 4
  %4 = load ptr, ptr @pcd_current, align 4
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 8
  tail call void @pi_do_claimed(ptr noundef %6, ptr noundef nonnull @pcd_start) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 -1, ptr @pcd_bufblk, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcd_lock) #11
  %7 = load ptr, ptr @pcd_req, align 4
  %bio.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.blk_rq_cur_bytes.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %13 to i8
  %14 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge9
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10
  ]

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge9: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 20
  %15 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_idx.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_bvec_done.i.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %16, i32 %18, i32 1
  %21 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i.i = sub i32 %22, %20
  %23 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub.i.i) #11
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %16, i32 %18, i32 2
  %24 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %25, %20
  %rem.i.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i.i
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %sub41.i.i) #11
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge9, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %if.end.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %26, %if.end4.i.i ], [ 0, %if.end.blk_rq_cur_bytes.exit.i_crit_edge ], [ %11, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %11, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge9 ], [ %11, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call6.i = tail call zeroext i1 @blk_update_request(ptr noundef %7, i8 noundef zeroext 10, i32 noundef %retval.0.i.i) #11
  br i1 %call6.i, label %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge, label %if.then.i

blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_request.exit

if.then.i:                                        ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = load ptr, ptr @pcd_req, align 4
  tail call void @__blk_mq_end_request(ptr noundef %27, i8 noundef zeroext 10) #11
  store ptr null, ptr @pcd_req, align 4
  br label %next_request.exit

next_request.exit:                                ; preds = %if.then.i, %blk_rq_cur_bytes.exit.i.next_request.exit_crit_edge
  store i1 false, ptr @pcd_busy, align 4
  tail call fastcc void @pcd_request() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcd_lock, i32 noundef %call2.i) #11
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_pcd_read()
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcd_lock) #11
  tail call fastcc void @pcd_request()
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcd_lock, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %next_request.exit, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_ready() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pcd_current, align 4
  %pi.i = getelementptr inbounds %struct.pcd_unit, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i, align 8
  %call.i = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 1, i32 noundef 6) #11
  %and = and i32 %call.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp eq i32 %and, 8
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_wait(ptr nocapture noundef readonly %cd, i32 noundef %go, i32 noundef %stop, ptr noundef %fun, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pi.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool1.not = icmp ne i32 %stop, 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %0 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi.i, align 8
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 1, i32 noundef 6) #11
  %and = and i32 %call.i, %go
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %and2 = and i32 %call.i, %stop
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.land.rhs_crit_edge, label %while.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %exitcond.not = icmp eq i32 %j.0, 160000
  br i1 %exitcond.not, label %land.rhs.if.then_crit_edge, label %while.body

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %j.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %cmp853 = phi i1 [ %cmp8, %while.end.if.then_crit_edge ], [ true, %land.rhs.if.then_crit_edge ]
  %j.152 = phi i32 [ %j.0, %while.end.if.then_crit_edge ], [ 160001, %land.rhs.if.then_crit_edge ]
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi.i, align 8
  %call.i41 = tail call i32 @pi_read_regr(ptr noundef %4, i32 noundef 0, i32 noundef 7) #11
  %5 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi.i, align 8
  %call.i43 = tail call i32 @pi_read_regr(ptr noundef %6, i32 noundef 0, i32 noundef 1) #11
  %7 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.i, align 8
  %call.i45 = tail call i32 @pi_read_regr(ptr noundef %8, i32 noundef 0, i32 noundef 2) #11
  %tobool14.not = icmp eq ptr %fun, null
  br i1 %tobool14.not, label %if.then.if.end17_crit_edge, label %do.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %call.i43, 256
  %spec.select = select i1 %cmp853, i32 %or, i32 %call.i43
  %name = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %10, ptr noundef nonnull %fun, ptr noundef %msg, i32 noundef %call.i, i32 noundef %call.i41, i32 noundef %spec.select, i32 noundef %j.152, i32 noundef %call.i45) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then.if.end17_crit_edge
  %shl = shl i32 %call.i41, 8
  %add = add i32 %shl, %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end17 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_regr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_read_regr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_completion(ptr nocapture noundef readonly %cd, ptr noundef %buf, ptr noundef %fun) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcd_wait(ptr noundef %cd, i32 noundef 128, i32 noundef 73, ptr noundef %fun, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end63_crit_edge

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

while.cond.preheader:                             ; preds = %entry
  %pi.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  %name22 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end58.while.cond_crit_edge, %while.cond.preheader
  %j.0 = phi i32 [ %j.1, %if.end58.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %k.0 = phi i32 [ %inc49, %if.end58.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %0 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi.i, align 8
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7) #11
  %and = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.cond.if.end63_crit_edge, label %while.body

while.cond.if.end63_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi.i, align 8
  %call.i89 = tail call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 4) #11
  %4 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi.i, align 8
  %call.i91 = tail call i32 @pi_read_regr(ptr noundef %5, i32 noundef 0, i32 noundef 5) #11
  %mul = shl i32 %call.i91, 8
  %add = add i32 %mul, %call.i89
  %add5 = add i32 %add, 3
  %and6 = and i32 %add5, 65532
  %6 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi.i, align 8
  %call.i93 = tail call i32 @pi_read_regr(ptr noundef %7, i32 noundef 0, i32 noundef 2) #11
  %and8 = and i32 %call.i93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and8)
  %cmp = icmp eq i32 %and8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp9.not = icmp ne i32 %and6, 0
  %or.cond = select i1 %cmp, i1 %cmp9.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0)
  %cmp11 = icmp eq i32 %j.0, 0
  %or.cond87 = select i1 %or.cond, i1 %cmp11, i1 false
  br i1 %or.cond87, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  %8 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi.i, align 8
  tail call void @pi_read_block(ptr noundef %9, ptr noundef %buf, i32 noundef %and6) #11
  %10 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13 = icmp sgt i32 %10, 1
  br i1 %cmp13, label %do.end, label %if.then12.if.end48_crit_edge

if.then12.if.end48_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name22, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %12, ptr noundef %fun, i32 noundef %and6) #14
  br label %if.end48

if.else:                                          ; preds = %while.body
  %13 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp16 = icmp sgt i32 %13, 1
  br i1 %cmp16, label %if.end24, label %if.else.land.end_crit_edge

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

if.end24:                                         ; preds = %if.else
  %14 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %15, ptr noundef %fun, i32 noundef %and8, i32 noundef %add, i32 noundef %k.0) #14
  %.pr = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp25 = icmp slt i32 %.pr, 2
  br i1 %cmp25, label %if.end24.land.end_crit_edge, label %if.end24.if.end47_crit_edge

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end24.land.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %if.end24.land.end_crit_edge, %if.else.land.end_crit_edge
  %.b86 = load i1, ptr @pcd_completion.__already_done, align 1
  br i1 %.b86, label %land.end.if.end47_crit_edge, label %if.then32, !prof !248

land.end.if.end47_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then32:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @pcd_completion.__already_done, align 1
  %16 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name22, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %17) #14
  br label %if.end47

if.end47:                                         ; preds = %if.then32, %land.end.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #11
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %do.end, %if.then12.if.end48_crit_edge
  %j.1 = phi i32 [ %j.0, %if.end47 ], [ 1, %do.end ], [ 1, %if.then12.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 801, i32 %k.0)
  %exitcond = icmp eq i32 %k.0, 801
  br i1 %exitcond, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name22, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %20) #14
  br label %if.end63

if.end58:                                         ; preds = %if.end48
  %inc49 = add nuw nsw i32 %k.0, 1
  %call59 = tail call fastcc i32 @pcd_wait(ptr noundef %cd, i32 noundef 128, i32 noundef 73, ptr noundef %fun, ptr noundef nonnull @.str.23)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.while.cond_crit_edge, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end58.while.cond_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end63:                                         ; preds = %if.end58.if.end63_crit_edge, %do.end54, %while.cond.if.end63_crit_edge, %entry.if.end63_crit_edge
  %r.2 = phi i32 [ -1, %entry.if.end63_crit_edge ], [ 0, %do.end54 ], [ -1, %if.end58.if.end63_crit_edge ], [ 0, %while.cond.if.end63_crit_edge ]
  %pi64 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  %21 = ptrtoint ptr %pi64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pi64, align 8
  tail call void @pi_disconnect(ptr noundef %22) #11
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcd_open(ptr nocapture noundef readonly %cdi, i32 noundef %purpose) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %present = getelementptr inbounds %struct.pcd_unit, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcd_release(ptr nocapture noundef %cdi) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_drive_status(ptr nocapture noundef readonly %cdi, i32 noundef %slot_nr) #4 align 64 {
entry:
  %tr_cmd.i = alloca [12 x i8], align 1
  %rc_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rc_cmd) #11
  %0 = call ptr @memcpy(ptr %rc_cmd, ptr @__const.pcd_drive_status.rc_cmd, i32 12)
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tr_cmd.i) #11
  %3 = call ptr @memset(ptr %tr_cmd.i, i32 0, i32 12)
  %last_sense.i = getelementptr inbounds %struct.pcd_unit, ptr %2, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %entry
  %k.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end7.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_sense.i, align 8
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 1
  %cond.i = select i1 %cmp1.i, ptr @.str.36, ptr null
  %call.i = call fastcc i32 @pcd_atapi(ptr noundef %2, ptr noundef nonnull %tr_cmd.i, i32 noundef 0, ptr noundef null, ptr noundef %cond.i) #11
  %6 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_sense.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %and.i = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 1026
  %and4.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 6
  %or.cond.i = or i1 %cmp3.i, %cmp5.i
  br i1 %or.cond.i, label %if.end7.i, label %if.end.i.pcd_ready_wait.exit.thread_crit_edge

if.end.i.pcd_ready_wait.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_ready_wait.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %k.01.i, 1
  %call.i.i = call i32 @schedule_timeout_interruptible(i32 noundef 100) #11
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.end7.i.pcd_ready_wait.exit.thread_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end7.i.pcd_ready_wait.exit.thread_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_ready_wait.exit.thread

pcd_ready_wait.exit.thread:                       ; preds = %if.end7.i.pcd_ready_wait.exit.thread_crit_edge, %if.end.i.pcd_ready_wait.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tr_cmd.i) #11
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tr_cmd.i) #11
  %8 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  %cond = select i1 %cmp, ptr @.str.35, ptr null
  %call1 = call fastcc i32 @pcd_atapi(ptr noundef %2, ptr noundef nonnull %rc_cmd, i32 noundef 8, ptr noundef nonnull @pcd_scratch, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i32 4, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcd_ready_wait.exit.thread
  %retval.0 = phi i32 [ %., %if.end ], [ 3, %pcd_ready_wait.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rc_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcd_check_events(ptr nocapture noundef readonly %cdi, i32 noundef %clearing, i32 noundef %slot_nr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %changed = getelementptr inbounds %struct.pcd_unit, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_tray_move(ptr nocapture noundef readonly %cdi, i32 noundef %position) #4 align 64 {
entry:
  %ej_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ej_cmd) #11
  %0 = getelementptr inbounds [12 x i8], ptr %ej_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %ej_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %ej_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %ej_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [12 x i8], ptr %ej_cmd, i32 0, i32 5
  %5 = ptrtoint ptr %ej_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 27, ptr %ej_cmd, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %9 = trunc i32 %position to i8
  %conv = sub i8 3, %9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %3, align 1
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %11 = call ptr @memset(ptr %4, i32 0, i32 7)
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %position)
  %tobool.not = icmp eq i32 %position, 0
  %cond = select i1 %tobool.not, ptr @.str.41, ptr @.str.40
  %call = call fastcc i32 @pcd_atapi(ptr noundef %13, ptr noundef nonnull %ej_cmd, i32 noundef 0, ptr noundef nonnull @pcd_scratch, ptr noundef nonnull %cond)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ej_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_lock_door(ptr nocapture noundef readonly %cdi, i32 noundef %lock) #4 align 64 {
entry:
  %un_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %un_cmd) #11
  %0 = getelementptr inbounds [12 x i8], ptr %un_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %un_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %un_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %un_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [12 x i8], ptr %un_cmd, i32 0, i32 5
  %5 = ptrtoint ptr %un_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 30, ptr %un_cmd, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 1
  %conv = trunc i32 %lock to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %3, align 1
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %10 = call ptr @memset(ptr %4, i32 0, i32 7)
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  %cond = select i1 %tobool.not, ptr @.str.43, ptr @.str.42
  %call = call fastcc i32 @pcd_atapi(ptr noundef %12, ptr noundef nonnull %un_cmd, i32 noundef 0, ptr noundef nonnull @pcd_scratch, ptr noundef nonnull %cond)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %un_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_get_mcn(ptr nocapture noundef readonly %cdi, ptr nocapture noundef writeonly %mcn) #4 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  %buffer = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #11
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.pcd_get_mcn.cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #11
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %call = call fastcc i32 @pcd_atapi(ptr noundef %3, ptr noundef nonnull %cmd, i32 noundef 24, ptr noundef nonnull %buffer, ptr noundef nonnull @.str.44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds [32 x i8], ptr %buffer, i32 0, i32 9
  %5 = call ptr @memcpy(ptr %mcn, ptr %4, i32 13)
  %arrayidx = getelementptr [14 x i8], ptr %mcn, i32 0, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_drive_reset(ptr nocapture noundef readonly %cdi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %call = tail call fastcc i32 @pcd_reset(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_audio_ioctl(ptr nocapture noundef readonly %cdi, i32 noundef %cmd, ptr nocapture noundef %arg) #4 align 64 {
entry:
  %cmd1 = alloca [12 x i8], align 1
  %buffer = alloca [32 x i8], align 1
  %cmd5 = alloca [12 x i8], align 1
  %buffer6 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 21253, label %sw.bb
    i32 21254, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd1) #11
  %3 = call ptr @memcpy(ptr %cmd1, ptr @__const.pcd_audio_ioctl.cmd.57, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #11
  %4 = getelementptr inbounds [32 x i8], ptr %buffer, i32 0, i32 2
  %5 = getelementptr inbounds [32 x i8], ptr %buffer, i32 0, i32 3
  %6 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call = call fastcc i32 @pcd_atapi(ptr noundef %1, ptr noundef nonnull %cmd1, i32 noundef 12, ptr noundef nonnull %buffer, ptr noundef nonnull @.str.56)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 1
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arg, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 1
  %cdth_trk1 = getelementptr inbounds %struct.cdrom_tochdr, ptr %arg, i32 0, i32 1
  %12 = ptrtoint ptr %cdth_trk1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %cdth_trk1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd1) #11
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd5) #11
  %13 = call ptr @memcpy(ptr %cmd5, ptr @__const.pcd_audio_ioctl.cmd.57, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer6) #11
  %14 = getelementptr inbounds [32 x i8], ptr %buffer6, i32 0, i32 5
  %15 = getelementptr inbounds [32 x i8], ptr %buffer6, i32 0, i32 9
  %16 = getelementptr inbounds [32 x i8], ptr %buffer6, i32 0, i32 10
  %17 = getelementptr inbounds [32 x i8], ptr %buffer6, i32 0, i32 11
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %arg, i32 0, i32 2
  %18 = call ptr @memset(ptr %buffer6, i32 255, i32 32)
  %19 = ptrtoint ptr %cdte_format to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cdte_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp = icmp eq i8 %20, 2
  %conv10 = select i1 %cmp, i8 2, i8 0
  %arrayidx11 = getelementptr inbounds [12 x i8], ptr %cmd5, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10, ptr %arrayidx11, align 1
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arg, align 4
  %arrayidx12 = getelementptr inbounds [12 x i8], ptr %cmd5, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx12, align 1
  %call15 = call fastcc i32 @pcd_atapi(ptr noundef %1, ptr noundef nonnull %cmd5, i32 noundef 12, ptr noundef nonnull %buffer6, ptr noundef nonnull @.str.58)
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %14, align 1
  %cdte_ctrl = getelementptr inbounds %struct.cdrom_tocentry, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %cdte_ctrl to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %cdte_ctrl, align 1
  %28 = lshr i8 %26, 2
  %.lobit = and i8 %28, 1
  %cdte_datamode = getelementptr inbounds %struct.cdrom_tocentry, ptr %arg, i32 0, i32 4
  %29 = ptrtoint ptr %cdte_datamode to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.lobit, ptr %cdte_datamode, align 4
  %30 = ptrtoint ptr %cdte_format to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cdte_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp36 = icmp eq i8 %31, 2
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %15, align 1
  %cdte_addr = getelementptr inbounds %struct.cdrom_tocentry, ptr %arg, i32 0, i32 3
  %34 = ptrtoint ptr %cdte_addr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %cdte_addr, align 4
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %16, align 1
  %second = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 1
  %37 = ptrtoint ptr %second to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %second, align 1
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %17, align 1
  %frame = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 2
  %40 = ptrtoint ptr %frame to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %frame, align 2
  br label %if.end

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %41 = getelementptr inbounds [32 x i8], ptr %buffer6, i32 0, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv44 = zext i8 %43 to i32
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %15, align 1
  %conv46 = zext i8 %45 to i32
  %46 = shl nuw nsw i32 %conv44, 16
  %47 = shl nuw nsw i32 %conv46, 8
  %shl47 = or i32 %47, %46
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %16, align 1
  %conv49 = zext i8 %49 to i32
  %add50 = or i32 %shl47, %conv49
  %shl51 = shl nuw i32 %add50, 8
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %17, align 1
  %conv53 = zext i8 %51 to i32
  %add54 = or i32 %shl51, %conv53
  %cdte_addr55 = getelementptr inbounds %struct.cdrom_tocentry, ptr %arg, i32 0, i32 3
  %52 = ptrtoint ptr %cdte_addr55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add54, ptr %cdte_addr55, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool56.not = icmp eq i32 %call15, 0
  %cond57 = select i1 %tobool56.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond57, %if.end ], [ %cond, %sw.bb ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_packet(ptr nocapture noundef readonly %cdi, ptr noundef %cgc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen, align 4
  %buffer = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %call = tail call fastcc i32 @pcd_atapi(ptr noundef %1, ptr noundef %cgc, i32 noundef %3, ptr noundef %5, ptr noundef nonnull @.str.59)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_atapi(ptr nocapture noundef %cd, ptr noundef %cmd, i32 noundef %dlen, ptr noundef %buf, ptr noundef %fun) unnamed_addr #4 align 64 {
entry:
  %rs_cmd.i = alloca [12 x i8], align 1
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcd_command(ptr noundef %cd, ptr noundef %cmd, i32 noundef %dlen, ptr noundef %fun)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @pcd_completion(ptr noundef %cd, ptr noundef %buf, ptr noundef %fun)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %r.013 = phi i32 [ %call1, %if.end.if.then3_crit_edge ], [ %call, %entry.if.then3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd.i) #11
  %1 = call ptr @memcpy(ptr %rs_cmd.i, ptr @__const.pcd_req_sense.rs_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #11
  %2 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 12
  %4 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 13
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i = call fastcc i32 @pcd_command(ptr noundef %cd, ptr noundef nonnull %rs_cmd.i, i32 noundef 16, ptr noundef nonnull @.str.37) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end25.thread.i

if.end25.thread.i:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %last_sense.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 3
  %7 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %last_sense.i, align 8
  br label %if.then29.i

if.then4.i:                                       ; preds = %if.then3
  %call2.i = call fastcc i32 @pcd_completion(ptr noundef %cd, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.37) #11
  %last_sense40.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 3
  %8 = ptrtoint ptr %last_sense40.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %last_sense40.i, align 8
  %tobool5.not.i = icmp eq ptr %fun, null
  br i1 %tobool5.not.i, label %if.then4.i.if.end25.i_crit_edge, label %do.end.i

if.then4.i.if.end25.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %13 = and i8 %12, 15
  %and.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv8.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %conv10.i = zext i8 %17 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %10, ptr noundef nonnull %fun, i32 noundef %and.i, i32 noundef %conv8.i, i32 noundef %conv10.i) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.then4.i.if.end25.i_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %20 = and i8 %19, 15
  %and15.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %conv17.i = zext i8 %22 to i32
  %shl.i = shl nuw nsw i32 %conv17.i, 8
  %or.i = or i32 %shl.i, %and15.i
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %conv20.i = zext i8 %24 to i32
  %shl22.i = shl nuw nsw i32 %conv20.i, 16
  %or23.i = or i32 %or.i, %shl22.i
  %25 = ptrtoint ptr %last_sense40.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or23.i, ptr %last_sense40.i, align 8
  %26 = zext i32 %and15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and15.i, label %if.end25.i.pcd_req_sense.exit_crit_edge [
    i32 2, label %if.end25.i.if.then29.i_crit_edge
    i32 6, label %if.end25.i.if.then29.i_crit_edge15
  ]

if.end25.i.if.then29.i_crit_edge15:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.end25.i.if.then29.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.end25.i.pcd_req_sense.exit_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcd_req_sense.exit

if.then29.i:                                      ; preds = %if.end25.i.if.then29.i_crit_edge, %if.end25.i.if.then29.i_crit_edge15, %if.end25.thread.i
  %changed.i = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 4
  %27 = ptrtoint ptr %changed.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %changed.i, align 4
  br label %pcd_req_sense.exit

pcd_req_sense.exit:                               ; preds = %if.then29.i, %if.end25.i.pcd_req_sense.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd.i) #11
  br label %if.end4

if.end4:                                          ; preds = %pcd_req_sense.exit, %if.end.if.end4_crit_edge
  %r.014 = phi i32 [ %r.013, %pcd_req_sense.exit ], [ 0, %if.end.if.end4_crit_edge ]
  ret i32 %r.014
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_reset(ptr nocapture noundef readonly %cd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pi = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 1
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  tail call void @pi_connect(ptr noundef %1) #11
  %drive = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 2
  %2 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive, align 4
  %mul = shl i32 %3, 4
  %add = add i32 %mul, 160
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %5, i32 noundef 0, i32 noundef 6, i32 noundef %add) #11
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi, align 8
  tail call void @pi_write_regr(ptr noundef %7, i32 noundef 0, i32 noundef 7, i32 noundef 8) #11
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 2) #11
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %inc62 = phi i32 [ 1, %entry ], [ %inc, %while.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi, align 8
  %call.i56 = tail call i32 @pi_read_regr(ptr noundef %9, i32 noundef 1, i32 noundef 6) #11
  %and = and i32 %call.i56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i57 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #11
  %inc = add nuw nsw i32 %inc62, 1
  %exitcond.not = icmp eq i32 %inc, 101
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %inc.lcssa = phi i32 [ 101, %while.body.while.end_crit_edge ], [ %inc62, %land.rhs.while.end_crit_edge ]
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi, align 8
  %call.i59 = tail call i32 @pi_read_regr(ptr noundef %11, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp4 = icmp eq i32 %call.i59, 1
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi, align 8
  %call.i59.1 = tail call i32 @pi_read_regr(ptr noundef %13, i32 noundef 0, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.1)
  %cmp4.1 = icmp eq i32 %call.i59.1, 1
  %and5.168 = and i1 %cmp4, %cmp4.1
  %14 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pi, align 8
  %call.i59.2 = tail call i32 @pi_read_regr(ptr noundef %15, i32 noundef 0, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.2)
  %cmp4.2 = icmp eq i32 %call.i59.2, 1
  %and5.269 = and i1 %and5.168, %cmp4.2
  %16 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pi, align 8
  %call.i59.3 = tail call i32 @pi_read_regr(ptr noundef %17, i32 noundef 0, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i59.3)
  %cmp4.3 = icmp eq i32 %call.i59.3, 20
  %and5.370 = and i1 %and5.269, %cmp4.3
  %18 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pi, align 8
  %call.i59.4 = tail call i32 @pi_read_regr(ptr noundef %19, i32 noundef 0, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 235, i32 %call.i59.4)
  %cmp4.4 = icmp eq i32 %call.i59.4, 235
  %and5.471 = and i1 %and5.370, %cmp4.4
  %20 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  br i1 %tobool7.not, label %while.end.if.end35_crit_edge, label %do.end

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %while.end
  %name = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %22, i32 noundef %inc.lcssa) #14
  %23 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pi, align 8
  %call.i61 = tail call i32 @pi_read_regr(ptr noundef %24, i32 noundef 0, i32 noundef 1) #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call.i61) #14
  %25 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pi, align 8
  %call.i61.1 = tail call i32 @pi_read_regr(ptr noundef %26, i32 noundef 0, i32 noundef 2) #11
  %call19.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call.i61.1) #14
  %27 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pi, align 8
  %call.i61.2 = tail call i32 @pi_read_regr(ptr noundef %28, i32 noundef 0, i32 noundef 3) #11
  %call19.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call.i61.2) #14
  %29 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pi, align 8
  %call.i61.3 = tail call i32 @pi_read_regr(ptr noundef %30, i32 noundef 0, i32 noundef 4) #11
  %call19.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call.i61.3) #14
  %31 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pi, align 8
  %call.i61.4 = tail call i32 @pi_read_regr(ptr noundef %32, i32 noundef 0, i32 noundef 5) #11
  %call19.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call.i61.4) #14
  br i1 %and5.471, label %do.end.do.end32_crit_edge, label %do.end27

do.end.do.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.end.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %while.end.if.end35_crit_edge
  %33 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pi, align 8
  tail call void @pi_disconnect(ptr noundef %34) #11
  %not.and5.471 = xor i1 %and5.471, true
  %sub = sext i1 %not.and5.471 to i32
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_block_open(ptr noundef %bdev, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call = tail call zeroext i1 @bdev_check_media_change(ptr noundef %bdev) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcd_mutex, i32 noundef 0) #11
  %info = getelementptr inbounds %struct.pcd_unit, ptr %3, i32 0, i32 7
  %call1 = tail call i32 @cdrom_open(ptr noundef %info, ptr noundef %bdev, i32 noundef %mode) #11
  tail call void @mutex_unlock(ptr noundef nonnull @pcd_mutex) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcd_block_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcd_mutex, i32 noundef 0) #11
  %info = getelementptr inbounds %struct.pcd_unit, ptr %1, i32 0, i32 7
  tail call void @cdrom_release(ptr noundef %info, i32 noundef %mode) #11
  tail call void @mutex_unlock(ptr noundef nonnull @pcd_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_block_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcd_mutex, i32 noundef 0) #11
  %info = getelementptr inbounds %struct.pcd_unit, ptr %3, i32 0, i32 7
  %call = tail call i32 @cdrom_ioctl(ptr noundef %info, ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #11
  tail call void @mutex_unlock(ptr noundef nonnull @pcd_mutex) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcd_block_check_events(ptr nocapture noundef readonly %disk, i32 noundef %clearing) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %info = getelementptr inbounds %struct.pcd_unit, ptr %1, i32 0, i32 7
  %call = tail call i32 @cdrom_check_events(ptr noundef %info, i32 noundef %clearing) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bdev_check_media_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdrom_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_check_events(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcd_identify(ptr nocapture noundef %cd) unnamed_addr #4 align 64 {
entry:
  %id_cmd = alloca [12 x i8], align 1
  %id = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %id_cmd) #11
  %0 = call ptr @memcpy(ptr %id_cmd, ptr @__const.pcd_identify.id_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %id) #11
  %1 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 1
  %2 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 2
  %3 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 3
  %4 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 4
  %5 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 5
  %6 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 6
  %7 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 7
  %8 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 8
  %9 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 9
  %10 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 10
  %11 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 11
  %12 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 12
  %13 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 13
  %14 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 14
  %15 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 15
  %16 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 16
  %17 = call ptr @memset(ptr %id, i32 255, i32 18)
  store i32 -1, ptr @pcd_bufblk, align 4
  %call = call fastcc i32 @pcd_atapi(ptr noundef %cd, ptr noundef nonnull %id_cmd, i32 noundef 36, ptr noundef nonnull @pcd_buffer, ptr noundef nonnull @.str.62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i8, ptr @pcd_buffer, align 1
  %19 = and i8 %18, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp.not = icmp eq i8 %19, 5
  br i1 %cmp.not, label %while.body, label %if.then2

if.then2:                                         ; preds = %if.end
  %20 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not = icmp eq i32 %20, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %drive = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 2
  %23 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool5.not, ptr @.str.66, ptr @.str.65
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %22, ptr noundef nonnull %cond) #14
  br label %cleanup

while.body:                                       ; preds = %if.end
  %25 = call ptr @memcpy(ptr %id, ptr getelementptr inbounds ([2048 x i8], ptr @pcd_buffer, i32 0, i32 16), i32 16)
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %16, align 1
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %28)
  %cmp14.1 = icmp ult i8 %28, 33
  br i1 %cmp14.1, label %while.body.1, label %while.body.do.end19_crit_edge

while.body.do.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.1:                                     ; preds = %while.body
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %15, align 1
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %31)
  %cmp14.2 = icmp ult i8 %31, 33
  br i1 %cmp14.2, label %while.body.2, label %while.body.1.do.end19_crit_edge

while.body.1.do.end19_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.2:                                     ; preds = %while.body.1
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %14, align 1
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %34)
  %cmp14.3 = icmp ult i8 %34, 33
  br i1 %cmp14.3, label %while.body.3, label %while.body.2.do.end19_crit_edge

while.body.2.do.end19_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.3:                                     ; preds = %while.body.2
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %13, align 1
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %37)
  %cmp14.4 = icmp ult i8 %37, 33
  br i1 %cmp14.4, label %while.body.4, label %while.body.3.do.end19_crit_edge

while.body.3.do.end19_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.4:                                     ; preds = %while.body.3
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %12, align 1
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %40)
  %cmp14.5 = icmp ult i8 %40, 33
  br i1 %cmp14.5, label %while.body.5, label %while.body.4.do.end19_crit_edge

while.body.4.do.end19_crit_edge:                  ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.5:                                     ; preds = %while.body.4
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %11, align 1
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %43)
  %cmp14.6 = icmp ult i8 %43, 33
  br i1 %cmp14.6, label %while.body.6, label %while.body.5.do.end19_crit_edge

while.body.5.do.end19_crit_edge:                  ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.6:                                     ; preds = %while.body.5
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %10, align 1
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %46)
  %cmp14.7 = icmp ult i8 %46, 33
  br i1 %cmp14.7, label %while.body.7, label %while.body.6.do.end19_crit_edge

while.body.6.do.end19_crit_edge:                  ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.7:                                     ; preds = %while.body.6
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %9, align 1
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %49)
  %cmp14.8 = icmp ult i8 %49, 33
  br i1 %cmp14.8, label %while.body.8, label %while.body.7.do.end19_crit_edge

while.body.7.do.end19_crit_edge:                  ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.8:                                     ; preds = %while.body.7
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %8, align 1
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %52)
  %cmp14.9 = icmp ult i8 %52, 33
  br i1 %cmp14.9, label %while.body.9, label %while.body.8.do.end19_crit_edge

while.body.8.do.end19_crit_edge:                  ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.9:                                     ; preds = %while.body.8
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %7, align 1
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %55)
  %cmp14.10 = icmp ult i8 %55, 33
  br i1 %cmp14.10, label %while.body.10, label %while.body.9.do.end19_crit_edge

while.body.9.do.end19_crit_edge:                  ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.10:                                    ; preds = %while.body.9
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %6, align 1
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %58)
  %cmp14.11 = icmp ult i8 %58, 33
  br i1 %cmp14.11, label %while.body.11, label %while.body.10.do.end19_crit_edge

while.body.10.do.end19_crit_edge:                 ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.11:                                    ; preds = %while.body.10
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %5, align 1
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %61)
  %cmp14.12 = icmp ult i8 %61, 33
  br i1 %cmp14.12, label %while.body.12, label %while.body.11.do.end19_crit_edge

while.body.11.do.end19_crit_edge:                 ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.12:                                    ; preds = %while.body.11
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %4, align 1
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %64)
  %cmp14.13 = icmp ult i8 %64, 33
  br i1 %cmp14.13, label %while.body.13, label %while.body.12.do.end19_crit_edge

while.body.12.do.end19_crit_edge:                 ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.13:                                    ; preds = %while.body.12
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %3, align 1
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %67)
  %cmp14.14 = icmp ult i8 %67, 33
  br i1 %cmp14.14, label %while.body.14, label %while.body.13.do.end19_crit_edge

while.body.13.do.end19_crit_edge:                 ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.14:                                    ; preds = %while.body.13
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %2, align 1
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %70)
  %cmp14.15 = icmp ult i8 %70, 33
  br i1 %cmp14.15, label %while.body.15, label %while.body.14.do.end19_crit_edge

while.body.14.do.end19_crit_edge:                 ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.15:                                    ; preds = %while.body.14
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %1, align 1
  %72 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %73)
  %cmp14.16 = icmp ult i8 %73, 33
  br i1 %cmp14.16, label %while.body.16, label %while.body.15.do.end19_crit_edge

while.body.15.do.end19_crit_edge:                 ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

while.body.16:                                    ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %id, align 1
  br label %do.end19

do.end19:                                         ; preds = %while.body.16, %while.body.15.do.end19_crit_edge, %while.body.14.do.end19_crit_edge, %while.body.13.do.end19_crit_edge, %while.body.12.do.end19_crit_edge, %while.body.11.do.end19_crit_edge, %while.body.10.do.end19_crit_edge, %while.body.9.do.end19_crit_edge, %while.body.8.do.end19_crit_edge, %while.body.7.do.end19_crit_edge, %while.body.6.do.end19_crit_edge, %while.body.5.do.end19_crit_edge, %while.body.4.do.end19_crit_edge, %while.body.3.do.end19_crit_edge, %while.body.2.do.end19_crit_edge, %while.body.1.do.end19_crit_edge, %while.body.do.end19_crit_edge
  %name21 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 6
  %75 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name21, align 4
  %drive22 = getelementptr inbounds %struct.pcd_unit, ptr %cd, i32 0, i32 2
  %77 = ptrtoint ptr %drive22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %drive22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool23.not = icmp eq i32 %78, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.66, ptr @.str.65
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %76, ptr noundef nonnull %cond24, ptr noundef nonnull %id) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %id_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !214, !216, !218, !219, !220, !222, !224, !226, !227, !228, !229, !230, !231, !233, !234, !235}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/pcd.c", i32 147, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype278, !1, !"__UNIQUE_ID_verbosetype278", i1 false, i1 false}
!3 = !{ptr @__param_major, !4, !"__param_major", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/pcd.c", i32 148, i32 1}
!5 = !{ptr @__UNIQUE_ID_majortype279, !4, !"__UNIQUE_ID_majortype279", i1 false, i1 false}
!6 = !{ptr @__param_name, !7, !"__param_name", i1 false, i1 false}
!7 = !{!"../drivers/block/paride/pcd.c", i32 149, i32 1}
!8 = !{ptr @__UNIQUE_ID_nametype280, !7, !"__UNIQUE_ID_nametype280", i1 false, i1 false}
!9 = !{ptr @__param_nice, !10, !"__param_nice", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/pcd.c", i32 150, i32 1}
!11 = !{ptr @__UNIQUE_ID_nicetype281, !10, !"__UNIQUE_ID_nicetype281", i1 false, i1 false}
!12 = !{ptr @__param_drive0, !13, !"__param_drive0", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/pcd.c", i32 151, i32 1}
!14 = !{ptr @__UNIQUE_ID_drive0type282, !13, !"__UNIQUE_ID_drive0type282", i1 false, i1 false}
!15 = !{ptr @__param_drive1, !16, !"__param_drive1", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/pcd.c", i32 152, i32 1}
!17 = !{ptr @__UNIQUE_ID_drive1type283, !16, !"__UNIQUE_ID_drive1type283", i1 false, i1 false}
!18 = !{ptr @__param_drive2, !19, !"__param_drive2", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/pcd.c", i32 153, i32 1}
!20 = !{ptr @__UNIQUE_ID_drive2type284, !19, !"__UNIQUE_ID_drive2type284", i1 false, i1 false}
!21 = !{ptr @__param_drive3, !22, !"__param_drive3", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/pcd.c", i32 154, i32 1}
!23 = !{ptr @__UNIQUE_ID_drive3type285, !22, !"__UNIQUE_ID_drive3type285", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_file286, !25, !"__UNIQUE_ID_file286", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/pcd.c", i32 1040, i32 1}
!26 = !{ptr @__UNIQUE_ID_license287, !25, !"__UNIQUE_ID_license287", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_pcd__288_1041_pcd_init6, !28, !"__initcall__kmod_pcd__288_1041_pcd_init6", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/pcd.c", i32 1041, i32 1}
!29 = !{ptr @__exitcall_pcd_exit, !30, !"__exitcall_pcd_exit", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/pcd.c", i32 1042, i32 1}
!31 = !{ptr @pcd, !32, !"pcd", i1 false, i1 false}
!32 = !{!"../drivers/block/paride/pcd.c", i32 205, i32 24}
!33 = !{ptr @par_drv, !34, !"par_drv", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/pcd.c", i32 225, i32 14}
!35 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!36 = !{ptr @verbose, !37, !"verbose", i1 false, i1 false}
!37 = !{!"../drivers/block/paride/pcd.c", i32 114, i32 12}
!38 = !{ptr @__param_str_major, !4, !"__param_str_major", i1 false, i1 false}
!39 = !{ptr @major, !40, !"major", i1 false, i1 false}
!40 = !{!"../drivers/block/paride/pcd.c", i32 115, i32 12}
!41 = !{ptr @__param_str_name, !7, !"__param_str_name", i1 false, i1 false}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/paride/pcd.c", i32 116, i32 21}
!44 = !{ptr @name, !45, !"name", i1 false, i1 false}
!45 = !{!"../drivers/block/paride/pcd.c", i32 116, i32 14}
!46 = !{ptr @__param_str_nice, !10, !"__param_str_nice", i1 false, i1 false}
!47 = !{ptr @nice, !48, !"nice", i1 false, i1 false}
!48 = !{!"../drivers/block/paride/pcd.c", i32 117, i32 12}
!49 = !{ptr @__param_str_drive0, !13, !"__param_str_drive0", i1 false, i1 false}
!50 = !{ptr @__param_arr_drive0, !13, !"__param_arr_drive0", i1 false, i1 false}
!51 = !{ptr @drive0, !52, !"drive0", i1 false, i1 false}
!52 = !{!"../drivers/block/paride/pcd.c", i32 120, i32 12}
!53 = !{ptr @__param_str_drive1, !16, !"__param_str_drive1", i1 false, i1 false}
!54 = !{ptr @__param_arr_drive1, !16, !"__param_arr_drive1", i1 false, i1 false}
!55 = !{ptr @drive1, !56, !"drive1", i1 false, i1 false}
!56 = !{!"../drivers/block/paride/pcd.c", i32 121, i32 12}
!57 = !{ptr @__param_str_drive2, !19, !"__param_str_drive2", i1 false, i1 false}
!58 = !{ptr @__param_arr_drive2, !19, !"__param_arr_drive2", i1 false, i1 false}
!59 = !{ptr @drive2, !60, !"drive2", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/pcd.c", i32 122, i32 12}
!61 = !{ptr @__param_str_drive3, !22, !"__param_str_drive3", i1 false, i1 false}
!62 = !{ptr @__param_arr_drive3, !22, !"__param_arr_drive3", i1 false, i1 false}
!63 = !{ptr @drive3, !64, !"drive3", i1 false, i1 false}
!64 = !{!"../drivers/block/paride/pcd.c", i32 123, i32 12}
!65 = !{ptr @.str.1, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/block/paride/pcd.c", i32 975, i32 2}
!67 = !{ptr @.str.2, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.3, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pcd_init._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @pcd_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/paride/pcd.c", i32 980, i32 3}
!74 = !{ptr @pcd_init._entry.5, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pcd_init._entry_ptr.7, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.9, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/paride/pcd.c", i32 1007, i32 3}
!78 = !{ptr @pcd_init._entry.8, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pcd_init._entry_ptr.10, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"disable", i1 false, i1 false}
!81 = !{!"../drivers/block/paride/pcd.c", i32 118, i32 12}
!82 = !{ptr @drives, !83, !"drives", i1 false, i1 false}
!83 = !{!"../drivers/block/paride/pcd.c", i32 125, i32 14}
!84 = !{ptr @pcd_drive_count, !85, !"pcd_drive_count", i1 false, i1 false}
!85 = !{!"../drivers/block/paride/pcd.c", i32 126, i32 12}
!86 = !{ptr @pcd_init_unit.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/block/paride/pcd.c", i32 904, i32 9}
!88 = !{ptr @.str.11, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/block/paride/pcd.c", i32 920, i32 44}
!90 = !{ptr @pcd_mq_ops, !91, !"pcd_mq_ops", i1 false, i1 false}
!91 = !{!"../drivers/block/paride/pcd.c", i32 299, i32 32}
!92 = !{ptr @.str.12, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/block/paride/pcd.c", i32 145, i32 8}
!94 = !{ptr @pcd_lock, !93, !"pcd_lock", i1 false, i1 false}
!95 = distinct !{null, !96, !"pcd_busy", i1 false, i1 false}
!96 = !{!"../drivers/block/paride/pcd.c", i32 221, i32 12}
!97 = !{ptr @pcd_req, !98, !"pcd_req", i1 false, i1 false}
!98 = !{!"../drivers/block/paride/pcd.c", i32 219, i32 24}
!99 = !{ptr @pcd_queue, !100, !"pcd_queue", i1 false, i1 false}
!100 = !{!"../drivers/block/paride/pcd.c", i32 660, i32 12}
!101 = !{ptr @pcd_current, !102, !"pcd_current", i1 false, i1 false}
!102 = !{!"../drivers/block/paride/pcd.c", i32 218, i32 25}
!103 = !{ptr @pcd_bufblk, !104, !"pcd_bufblk", i1 false, i1 false}
!104 = !{!"../drivers/block/paride/pcd.c", i32 209, i32 12}
!105 = !{ptr @pcd_sector, !106, !"pcd_sector", i1 false, i1 false}
!106 = !{!"../drivers/block/paride/pcd.c", i32 222, i32 12}
!107 = !{ptr @pcd_count, !108, !"pcd_count", i1 false, i1 false}
!108 = !{!"../drivers/block/paride/pcd.c", i32 223, i32 12}
!109 = !{ptr @pcd_buf, !110, !"pcd_buf", i1 false, i1 false}
!110 = !{!"../drivers/block/paride/pcd.c", i32 224, i32 14}
!111 = !{ptr @.str.13, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/paride/pseudo.h", i32 46, i32 8}
!113 = !{ptr @ps_spinlock, !112, !"ps_spinlock", i1 false, i1 false}
!114 = !{ptr @ps_continuation, !115, !"ps_continuation", i1 false, i1 false}
!115 = !{!"../drivers/block/paride/pseudo.h", i32 40, i32 16}
!116 = !{ptr @ps_ready, !117, !"ps_ready", i1 false, i1 false}
!117 = !{!"../drivers/block/paride/pseudo.h", i32 41, i32 15}
!118 = !{ptr @ps_timeout, !119, !"ps_timeout", i1 false, i1 false}
!119 = !{!"../drivers/block/paride/pseudo.h", i32 42, i32 22}
!120 = !{ptr @ps_nice, !121, !"ps_nice", i1 false, i1 false}
!121 = !{!"../drivers/block/paride/pseudo.h", i32 44, i32 12}
!122 = distinct !{null, !123, !"ps_tq_active", i1 false, i1 false}
!123 = !{!"../drivers/block/paride/pseudo.h", i32 43, i32 12}
!124 = !{ptr @.str.14, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/block/paride/pseudo.h", i32 48, i32 8}
!126 = !{ptr @.str.15, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ps_tq, !125, !"ps_tq", i1 false, i1 false}
!128 = !{ptr @pcd_retries, !129, !"pcd_retries", i1 false, i1 false}
!129 = !{!"../drivers/block/paride/pcd.c", i32 220, i32 12}
!130 = !{ptr @.str.16, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/paride/pcd.c", i32 765, i32 45}
!132 = !{ptr @.str.17, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/paride/pcd.c", i32 360, i32 47}
!134 = !{ptr @.str.18, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/paride/pcd.c", i32 369, i32 43}
!136 = !{ptr @.str.19, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/block/paride/pcd.c", i32 375, i32 3}
!138 = !{ptr @.str.20, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pcd_command._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @pcd_command._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.21, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/paride/pcd.c", i32 346, i32 4}
!143 = !{ptr @.str.22, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pcd_wait._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pcd_wait._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.23, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/paride/pcd.c", i32 394, i32 14}
!148 = !{ptr @.str.24, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/block/paride/pcd.c", i32 404, i32 6}
!150 = !{ptr @.str.25, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @pcd_completion._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @pcd_completion._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.27, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/block/paride/pcd.c", i32 410, i32 6}
!155 = !{ptr @pcd_completion._entry.26, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @pcd_completion._entry_ptr.28, !154, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../drivers/block/paride/pcd.c", i32 414, i32 6}
!159 = !{ptr @.str.30, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pcd_completion._entry.29, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @pcd_completion._entry_ptr.31, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.33, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/block/paride/pcd.c", i32 420, i32 5}
!164 = !{ptr @pcd_completion._entry.32, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @pcd_completion._entry_ptr.34, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @pcd_dops, !167, !"pcd_dops", i1 false, i1 false}
!167 = !{!"../drivers/block/paride/pcd.c", i32 282, i32 38}
!168 = !{ptr @.str.35, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/paride/pcd.c", i32 579, i32 44}
!170 = !{ptr @.str.36, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/paride/pcd.c", i32 560, i32 34}
!172 = !{ptr @.str.37, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/block/paride/pcd.c", i32 443, i32 34}
!174 = !{ptr @.str.38, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/paride/pcd.c", i32 452, i32 4}
!176 = !{ptr @.str.39, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @pcd_req_sense._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @pcd_req_sense._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @pcd_scratch, !180, !"pcd_scratch", i1 false, i1 false}
!180 = !{!"../drivers/block/paride/pcd.c", i32 207, i32 13}
!181 = !{ptr @.str.40, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/block/paride/pcd.c", i32 507, i32 16}
!183 = !{ptr @.str.41, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/paride/pcd.c", i32 507, i32 26}
!185 = !{ptr @.str.42, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/block/paride/pcd.c", i32 499, i32 12}
!187 = !{ptr @.str.43, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/block/paride/pcd.c", i32 499, i32 26}
!189 = !{ptr @.str.44, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/block/paride/pcd.c", i32 884, i32 46}
!191 = !{ptr @.str.45, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/block/paride/pcd.c", i32 535, i32 3}
!193 = !{ptr @.str.46, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @pcd_reset._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @pcd_reset._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.48, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/block/paride/pcd.c", i32 537, i32 4}
!198 = !{ptr @pcd_reset._entry.47, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @pcd_reset._entry_ptr.49, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.51, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/block/paride/pcd.c", i32 539, i32 4}
!202 = !{ptr @pcd_reset._entry.50, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @pcd_reset._entry_ptr.52, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.54, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/block/paride/pcd.c", i32 540, i32 3}
!206 = !{ptr @pcd_reset._entry.53, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @pcd_reset._entry_ptr.55, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.56, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/block/paride/pcd.c", i32 830, i32 39}
!210 = !{ptr @.str.58, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/block/paride/pcd.c", i32 854, i32 39}
!212 = !{ptr @.str.59, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/paride/pcd.c", i32 479, i32 5}
!214 = !{ptr @pcd_bdops, !215, !"pcd_bdops", i1 false, i1 false}
!215 = !{!"../drivers/block/paride/pcd.c", i32 271, i32 45}
!216 = !{ptr @.str.60, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/block/paride/pcd.c", i32 144, i32 8}
!218 = !{ptr @.str.61, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @pcd_mutex, !217, !"pcd_mutex", i1 false, i1 false}
!220 = !{ptr @pcd_buffer, !221, !"pcd_buffer", i1 false, i1 false}
!221 = !{!"../drivers/block/paride/pcd.c", i32 208, i32 13}
!222 = !{ptr @.str.62, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/block/paride/pcd.c", i32 592, i32 44}
!224 = !{ptr @.str.63, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/block/paride/pcd.c", i32 598, i32 4}
!226 = !{ptr @.str.64, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @pcd_identify._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @pcd_identify._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.65, !225, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.66, !225, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.68, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/block/paride/pcd.c", i32 610, i32 2}
!233 = !{ptr @pcd_identify._entry.67, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @pcd_identify._entry_ptr.69, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.70, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/block/paride/pcd.c", i32 638, i32 39}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{ptr @pcd_ready}
!247 = !{ptr @do_pcd_read, ptr @do_pcd_read_drq}
!248 = !{!"branch_weights", i32 2000, i32 1}
