; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/block.c_pt.bc'
source_filename = "../drivers/mtd/ubi/block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ubiblock_param = type { i32, i32, [64 x i8] }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubiblock = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.blk_mq_tag_set }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
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
%struct.ubiblock_pdu = type { %struct.work_struct, %struct.ubi_sgl }
%struct.ubi_sgl = type { i32, i32, [64 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.ubi_notification = type { %struct.ubi_device_info, %struct.ubi_volume_info }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }

@__param_str_block = internal constant [10 x i8] c"ubi.block\00", align 1
@ubiblock_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ubiblock_set_param, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_block = internal constant %struct.kernel_param { ptr @__param_str_block, ptr null, ptr @ubiblock_param_ops, i16 0, i8 -1, i8 0, %union.anon.76 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_block278 = internal constant [414 x i8] c"ubi.parm=block:Attach block devices to UBI volumes. Parameter format: block=<path|dev,num|dev,name>.\0AMultiple \22block\22 parameters may be specified.\0AUBI volumes may be specified by their number, name, or path to the device node.\0AExamples\0AUsing the UBI volume path:\0Aubi.block=/dev/ubi0_0\0AUsing the UBI device, and the volume name:\0Aubi.block=0,rootfs\0AUsing both UBI device number and UBI volume number:\0Aubi.block=0,0\0A\00", section ".modinfo", align 1
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ubiblock_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@ubiblock_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @ubiblock_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubiblock_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ubiblock_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blk_mq_alloc_tag_set failed\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubiblock_create\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/ubi/block.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ubiblock_create._entry_ptr = internal global ptr @ubiblock_create._entry, section ".printk_index", align 4
@ubiblock_create.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ubiblock_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @ubiblock_open, ptr @ubiblock_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubiblock_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ubiblock_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ubiblock_minor_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ubiblock_create._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"block: dynamic minor allocation failed\00", [57 x i8] zeroinitializer }, align 32
@ubiblock_create._entry_ptr.9 = internal global ptr @ubiblock_create._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubiblock%d_%d\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ubiblock_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ubiblock_devices, ptr @ubiblock_devices }, [24 x i8] zeroinitializer }, align 32
@ubiblock_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"created from ubi%d:%d(%s)\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ubiblock_create._entry_ptr.15 = internal global ptr @ubiblock_create._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubiblock\00", [23 x i8] zeroinitializer }, align 32
@ubiblock_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ubiblock_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ubiblock_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014UBI: block: empty 'block=' parameter - ignored\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubiblock_set_param\00", [45 x i8] zeroinitializer }, align 32
@ubiblock_set_param._entry_ptr = internal global ptr @ubiblock_set_param._entry, section ".printk_index", align 4
@ubiblock_set_param._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013UBI: block: parameter \22%s\22 is too long, max. is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubiblock_set_param._entry_ptr.21 = internal global ptr @ubiblock_set_param._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@ubiblock_param = internal global [32 x %struct.ubiblock_param] zeroinitializer, section ".init.data", align 4
@ubiblock_devs = internal unnamed_addr global i32 0, section ".init.data", align 4
@calc_disk_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014UBI: block: volume size is not a multiple of 512, last %llu bytes are ignored!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calc_disk_capacity\00", [45 x i8] zeroinitializer }, align 32
@calc_disk_capacity._entry_ptr = internal global ptr @calc_disk_capacity._entry, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubiblock_init_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&pdu->work)\00", [34 x i8] zeroinitializer }, align 32
@ubiblock_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to open ubi volume %d_%d\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubiblock_open\00", [18 x i8] zeroinitializer }, align 32
@ubiblock_open._entry_ptr = internal global ptr @ubiblock_open._entry, section ".printk_index", align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ubiblock_minor_idr.xa_lock\00", [37 x i8] zeroinitializer }, align 32
@ubiblock_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 488, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubiblock_cleanup\00", [47 x i8] zeroinitializer }, align 32
@ubiblock_cleanup._entry_ptr = internal global ptr @ubiblock_cleanup._entry, section ".printk_index", align 4
@ubiblock_create_from_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013UBI: block: can't open volume on ubi%d_%d, err=%ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ubiblock_create_from_param\00", [37 x i8] zeroinitializer }, align 32
@ubiblock_create_from_param._entry_ptr = internal global ptr @ubiblock_create_from_param._entry, section ".printk_index", align 4
@ubiblock_create_from_param._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013UBI: block: can't add '%s' volume on ubi%d_%d, err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ubiblock_create_from_param._entry_ptr.37 = internal global ptr @ubiblock_create_from_param._entry.35, section ".printk_index", align 4
@ubiblock_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 553, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"the volume is too big (%d LEBs), cannot resize\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubiblock_resize\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ubiblock_resize._entry_ptr = internal global ptr @ubiblock_resize._entry, section ".printk_index", align 4
@ubiblock_resize._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 563, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resized to %lld bytes\00", [42 x i8] zeroinitializer }, align 32
@ubiblock_resize._entry_ptr.43 = internal global ptr @ubiblock_resize._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 63]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ubiblock_param_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 159, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 395, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"ubiblock_mq_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 347, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 411, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 417, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"ubiblock_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 285, i32 45 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"ubiblock_major\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 97, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"ubiblock_minor_idr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 428, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 435, i32 25 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 446, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"ubiblock_devices\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 93, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 459, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 677, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"ubiblock_notifier\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 602, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 114, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 119, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 131, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 357, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 96, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 342, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 245, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 94, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 488, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 637, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 648, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 551, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [27 x i8] c"../drivers/mtd/ubi/block.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 562, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_block278, ptr @__param_block, ptr @calc_disk_capacity._entry, ptr @calc_disk_capacity._entry_ptr, ptr @ubiblock_cleanup._entry, ptr @ubiblock_cleanup._entry_ptr, ptr @ubiblock_create._entry, ptr @ubiblock_create._entry.12, ptr @ubiblock_create._entry.7, ptr @ubiblock_create._entry_ptr, ptr @ubiblock_create._entry_ptr.15, ptr @ubiblock_create._entry_ptr.9, ptr @ubiblock_create_from_param._entry, ptr @ubiblock_create_from_param._entry.35, ptr @ubiblock_create_from_param._entry_ptr, ptr @ubiblock_create_from_param._entry_ptr.37, ptr @ubiblock_exit, ptr @ubiblock_open._entry, ptr @ubiblock_open._entry_ptr, ptr @ubiblock_resize._entry, ptr @ubiblock_resize._entry.41, ptr @ubiblock_resize._entry_ptr, ptr @ubiblock_resize._entry_ptr.43, ptr @ubiblock_set_param._entry, ptr @ubiblock_set_param._entry.19, ptr @ubiblock_set_param._entry_ptr, ptr @ubiblock_set_param._entry_ptr.21, ptr @ubiblock_param_ops, ptr @devices_mutex, ptr @ubiblock_create.__key, ptr @.str, ptr @ubiblock_mq_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ubiblock_create.__key.6, ptr @ubiblock_ops, ptr @ubiblock_major, ptr @ubiblock_minor_idr, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @ubiblock_devices, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @ubiblock_notifier, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ubiblock_init_request.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_minor_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_set_param._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_disk_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_init_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create_from_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_create_from_param._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubiblock_resize._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubiblock_create(ptr nocapture noundef readonly %vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %used_bytes.i = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 3
  %0 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %used_bytes.i, align 8
  %2 = and i64 %1, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %entry.calc_disk_capacity.exit_crit_edge, label %do.end.i

entry.calc_disk_capacity.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_disk_capacity.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %2) #14
  br label %calc_disk_capacity.exit

calc_disk_capacity.exit:                          ; preds = %do.end.i, %entry.calc_disk_capacity.exit_crit_edge
  %shr.i = ashr i64 %1, 9
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #11
  %3 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 1
  %5 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vol_id, align 4
  %.pn15.i = load ptr, ptr @ubiblock_devices, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, @ubiblock_devices
  br i1 %cmp.not16.i, label %calc_disk_capacity.exit.if.end4_crit_edge, label %calc_disk_capacity.exit.for.body.i_crit_edge

calc_disk_capacity.exit.for.body.i_crit_edge:     ; preds = %calc_disk_capacity.exit
  br label %for.body.i

calc_disk_capacity.exit.if.end4_crit_edge:        ; preds = %calc_disk_capacity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %calc_disk_capacity.exit.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %calc_disk_capacity.exit.for.body.i_crit_edge ]
  %ubi_num1.i = getelementptr i8, ptr %.pn17.i, i32 -120
  %7 = ptrtoint ptr %ubi_num1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ubi_num1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp2.i = icmp eq i32 %8, %4
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vol_id3.i = getelementptr i8, ptr %.pn17.i, i32 -116
  %9 = ptrtoint ptr %vol_id3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vol_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp4.i = icmp eq i32 %10, %6
  br i1 %cmp4.i, label %find_dev_nolock.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ubiblock_devices
  br i1 %cmp.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

find_dev_nolock.exit:                             ; preds = %land.lhs.true.i
  %dev.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -124
  %tobool2.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool2.not, label %find_dev_nolock.exit.if.end4_crit_edge, label %find_dev_nolock.exit.cleanup_crit_edge

find_dev_nolock.exit.cleanup_crit_edge:           ; preds = %find_dev_nolock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

find_dev_nolock.exit.if.end4_crit_edge:           ; preds = %find_dev_nolock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %find_dev_nolock.exit.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %calc_disk_capacity.exit.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 316) #15
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %dev_mutex = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @ubiblock_create.__key) #11
  %13 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vi, align 8
  %ubi_num10 = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ubi_num10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ubi_num10, align 4
  %16 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vol_id, align 4
  %vol_id12 = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %vol_id12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vol_id12, align 8
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 9
  %19 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usable_leb_size, align 4
  %leb_size = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %leb_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %leb_size, align 8
  %tag_set = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10
  %ops = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ubiblock_mq_ops, ptr %ops, align 4
  %queue_depth = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64, ptr %queue_depth, align 4
  %numa_node = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 7
  %24 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %numa_node, align 8
  %flags = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %flags, align 8
  %cmd_size = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 6
  %26 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1332, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 10
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %nr_hw_queues = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %nr_hw_queues, align 8
  %call20 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %gd26 = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %gd26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gd26, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.1) #14
  br label %out_free_dev

if.end27:                                         ; preds = %do.body
  %call29 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ubiblock_create.__key.6) #11
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call29 to i32
  br label %out_free_tags

if.end33:                                         ; preds = %if.end27
  %fops = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 8
  %34 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ubiblock_ops, ptr %fops, align 8
  %35 = load i32, ptr @ubiblock_major, align 4
  %36 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %call29, align 8
  %minors = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 2
  %37 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %minors, align 8
  %call34 = tail call i32 @idr_alloc(ptr noundef nonnull @ubiblock_minor_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #11
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 1
  %38 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call34, ptr %first_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %part040 = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 7
  %39 = ptrtoint ptr %part040 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %part040, align 4
  %bd_device41 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device41, ptr noundef nonnull @.str.8) #14
  br label %out_cleanup_disk

if.end42:                                         ; preds = %if.end33
  %flags43 = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 11
  %41 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags43, align 4
  %or = or i32 %42, 4
  store i32 %or, ptr %flags43, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 10
  %43 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %private_data, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 3
  %44 = ptrtoint ptr %ubi_num10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ubi_num10, align 4
  %46 = ptrtoint ptr %vol_id12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vol_id12, align 8
  %call46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.10, i32 noundef %45, i32 noundef %47)
  tail call void @set_capacity(ptr noundef %call29, i64 noundef %shr.i) #11
  %gd47 = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %gd47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call29, ptr %gd47, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %call29, i32 0, i32 9
  %49 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue, align 4
  %rq = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %rq, align 8
  tail call void @blk_queue_max_segments(ptr noundef %50, i16 noundef zeroext 64) #11
  %call51 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, ptr noundef %disk_name) #11
  %wq = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call51, ptr %wq, align 4
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %if.end42.out_remove_minor_crit_edge, label %if.end55

if.end42.out_remove_minor_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove_minor

if.end55:                                         ; preds = %if.end42
  %list = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 9
  %53 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubiblock_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %53, ptr noundef nonnull @ubiblock_devices) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @ubiblock_devices, i32 0, i32 1), align 4
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ubiblock_devices, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %prev3.i.i, align 8
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  %57 = ptrtoint ptr %gd47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gd47, align 4
  %call.i138 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %58, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool58.not = icmp eq i32 %call.i138, 0
  br i1 %tobool58.not, label %do.end63, label %out_destroy_wq

do.end63:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %gd47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gd47, align 4
  %part065 = getelementptr inbounds %struct.gendisk, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %part065 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %part065, align 4
  %bd_device66 = getelementptr inbounds %struct.block_device, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %ubi_num10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ubi_num10, align 4
  %65 = ptrtoint ptr %vol_id12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vol_id12, align 8
  %name = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 11
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device66, ptr noundef nonnull @.str.13, i32 noundef %64, i32 noundef %66, ptr noundef %68) #14
  br label %cleanup

out_destroy_wq:                                   ; preds = %list_add_tail.exit
  %call.i.i139 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i139, label %if.end.i.i140, label %out_destroy_wq.list_del.exit_crit_edge

out_destroy_wq.list_del.exit_crit_edge:           ; preds = %out_destroy_wq
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i140:                                    ; preds = %out_destroy_wq
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 9, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 8
  %71 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i140, %out_destroy_wq.list_del.exit_crit_edge
  %75 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  %77 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %78) #11
  br label %out_remove_minor

out_remove_minor:                                 ; preds = %list_del.exit, %if.end42.out_remove_minor_crit_edge
  %ret.0 = phi i32 [ %call.i138, %list_del.exit ], [ -12, %if.end42.out_remove_minor_crit_edge ]
  %79 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %first_minor, align 4
  %call72 = tail call ptr @idr_remove(ptr noundef nonnull @ubiblock_minor_idr, i32 noundef %80) #11
  br label %out_cleanup_disk

out_cleanup_disk:                                 ; preds = %out_remove_minor, %do.end39
  %ret.1 = phi i32 [ -19, %do.end39 ], [ %ret.0, %out_remove_minor ]
  %gd73 = getelementptr inbounds %struct.ubiblock, ptr %call7.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %gd73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %gd73, align 4
  tail call void @blk_cleanup_disk(ptr noundef %82) #11
  br label %out_free_tags

out_free_tags:                                    ; preds = %out_cleanup_disk, %if.then31
  %ret.2 = phi i32 [ %33, %if.then31 ], [ %ret.1, %out_cleanup_disk ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #11
  br label %out_free_dev

out_free_dev:                                     ; preds = %out_free_tags, %do.end25
  %ret.3 = phi i32 [ %call20, %do.end25 ], [ %ret.2, %out_free_tags ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free_dev, %do.end63, %if.end4.cleanup_crit_edge, %find_dev_nolock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end63 ], [ %ret.3, %out_free_dev ], [ -17, %find_dev_nolock.exit.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubiblock_remove(ptr nocapture noundef readonly %vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_id, align 4
  %.pn15.i = load ptr, ptr @ubiblock_devices, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, @ubiblock_devices
  br i1 %cmp.not16.i, label %entry.out_unlock_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %entry.for.body.i_crit_edge ]
  %ubi_num1.i = getelementptr i8, ptr %.pn17.i, i32 -120
  %4 = ptrtoint ptr %ubi_num1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ubi_num1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.i = icmp eq i32 %5, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vol_id3.i = getelementptr i8, ptr %.pn17.i, i32 -116
  %6 = ptrtoint ptr %vol_id3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp4.i = icmp eq i32 %7, %3
  br i1 %cmp4.i, label %find_dev_nolock.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ubiblock_devices
  br i1 %cmp.not.i, label %for.inc.i.out_unlock_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.out_unlock_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

find_dev_nolock.exit:                             ; preds = %land.lhs.true.i
  %dev.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -124
  %tobool.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool.not, label %find_dev_nolock.exit.out_unlock_crit_edge, label %if.end

find_dev_nolock.exit.out_unlock_crit_edge:        ; preds = %find_dev_nolock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end:                                           ; preds = %find_dev_nolock.exit
  %dev_mutex = getelementptr i8, ptr %.pn17.i, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  %refcnt = getelementptr i8, ptr %.pn17.i, i32 -112
  %9 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn17.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end2.list_del.exit_crit_edge

if.end2.list_del.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn17.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn17.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end2.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn17.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn17.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %gd.i = getelementptr i8, ptr %.pn17.i, i32 -104
  %19 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gd.i, align 4
  tail call void @del_gendisk(ptr noundef %20) #11
  %wq.i = getelementptr i8, ptr %.pn17.i, i32 -96
  %21 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %22) #11
  %23 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gd.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device.i, ptr noundef nonnull @.str.31) #14
  %27 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gd.i, align 4
  tail call void @blk_cleanup_disk(ptr noundef %28) #11
  %tag_set.i = getelementptr i8, ptr %.pn17.i, i32 8
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #11
  %29 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gd.i, align 4
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %first_minor.i, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @ubiblock_minor_idr, i32 noundef %32) #11
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #11
  tail call void @kfree(ptr noundef nonnull %dev.0.le.i) #11
  br label %cleanup

out_unlock:                                       ; preds = %if.then1, %find_dev_nolock.exit.out_unlock_crit_edge, %for.inc.i.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -16, %if.then1 ], [ -19, %find_dev_nolock.exit.out_unlock_crit_edge ], [ -19, %entry.out_unlock_crit_edge ], [ -19, %for.inc.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %list_del.exit
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubiblock_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef null) #11
  store i32 %call, ptr @ubiblock_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ubiblock_create_from_param() #16
  %call1 = tail call i32 @ubi_register_volume_notifier(ptr noundef nonnull @ubiblock_notifier, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_unreg

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_unreg:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @ubiblock_major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str.16) #11
  tail call fastcc void @ubiblock_remove_all()
  br label %cleanup

cleanup:                                          ; preds = %err_unreg, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_unreg ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubiblock_create_from_param() unnamed_addr #5 section ".init.text" align 64 {
entry:
  %vi = alloca %struct.ubi_volume_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vi) #11
  %0 = call ptr @memset(ptr %vi, i32 255, i32 64)
  %1 = load i32, ptr @ubiblock_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29 = icmp sgt i32 %1, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name12 = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %i.030
  %name = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %i.030, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %vol_id = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %i.030, i32 1
  %4 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vol_id, align 4
  %call = call fastcc ptr @open_volume_desc(ptr noundef %name, i32 noundef %3, i32 noundef %5) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_id, align 4
  %10 = ptrtoint ptr %call to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %9, i32 noundef %10) #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @ubi_get_volume_info(ptr noundef %call, ptr noundef nonnull %vi) #11
  call void @ubi_close_volume(ptr noundef %call) #11
  %call6 = call i32 @ubiblock_create(ptr noundef nonnull %vi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %do.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name12, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vol_id, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %call6) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end10, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.030, 1
  %17 = load i32, ptr @ubiblock_devs, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vi) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_register_volume_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubiblock_remove_all() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #11
  %0 = load ptr, ptr @ubiblock_devices, align 4
  %cmp.not43 = icmp eq ptr %0, @ubiblock_devices
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in44 = phi ptr [ %.pn46, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %dev.045 = getelementptr i8, ptr %.pn.in44, i32 -124
  %1 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn46 = load ptr, ptr %.pn.in44, align 4
  %2 = ptrtoint ptr %dev.045 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.045, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !113

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 664, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in44) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in44, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in44, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %gd.i = getelementptr i8, ptr %.pn.in44, i32 -104
  %12 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gd.i, align 4
  tail call void @del_gendisk(ptr noundef %13) #11
  %wq.i = getelementptr i8, ptr %.pn.in44, i32 -96
  %14 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %15) #11
  %16 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gd.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device.i, ptr noundef nonnull @.str.31) #14
  %20 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gd.i, align 4
  tail call void @blk_cleanup_disk(ptr noundef %21) #11
  %tag_set.i = getelementptr i8, ptr %.pn.in44, i32 8
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #11
  %22 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gd.i, align 4
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first_minor.i, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @ubiblock_minor_idr, i32 noundef %25) #11
  tail call void @kfree(ptr noundef %dev.045) #11
  %cmp.not = icmp eq ptr %.pn46, @ubiblock_devices
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ubiblock_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @ubi_unregister_volume_notifier(ptr noundef nonnull @ubiblock_notifier) #11
  tail call fastcc void @ubiblock_remove_all()
  %0 = load i32, ptr @ubiblock_major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str.16) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_unregister_volume_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ubiblock_set_param(ptr noundef %val, ptr nocapture noundef readnone %kp) #5 section ".init.text" align 64 {
entry:
  %buf = alloca [63 x i8], align 1
  %pbuf = alloca ptr, align 4
  %tokens = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 63)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #11
  %1 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %pbuf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tokens) #11
  %2 = ptrtoint ptr %tokens to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tokens, align 4, !annotation !114
  %3 = getelementptr inbounds [2 x ptr], ptr %tokens, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !114
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @strnlen(ptr noundef nonnull %val, i32 noundef 63) #17
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end11 [
    i32 0, label %do.end
    i32 63, label %do.end8
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %val, i32 noundef 63) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @strcpy(ptr noundef nonnull %buf, ptr noundef nonnull %val) #17
  %sub = add i32 %call, -1
  %arrayidx13 = getelementptr [63 x i8], ptr %buf, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp14 = icmp eq i8 %7, 10
  br i1 %cmp14, label %if.then16, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx13, align 1
  br label %for.body

for.body:                                         ; preds = %if.then16, %if.end11.for.body_crit_edge
  %call22 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.22) #11
  %9 = ptrtoint ptr %tokens to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %tokens, align 4
  %call22.c = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.22) #11
  %arrayidx23.c = getelementptr inbounds [2 x ptr], ptr %tokens, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx23.c to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22.c, ptr %arrayidx23.c, align 4
  %11 = load i32, ptr @ubiblock_devs, align 4
  %arrayidx24 = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %11
  %tobool26.not = icmp eq ptr %call22.c, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %for.body
  %12 = ptrtoint ptr %tokens to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tokens, align 4
  %call29 = call i32 @kstrtoint(ptr noundef %13, i32 noundef 10, ptr noundef %arrayidx24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then27.cleanup_crit_edge, label %if.end33

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.then27
  %vol_id = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %11, i32 1
  %call35 = call i32 @kstrtoint(ptr noundef nonnull %call22.c, i32 noundef 10, ptr noundef %vol_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end33.if.end50_crit_edge

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %vol_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %vol_id, align 4
  %name = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %11, i32 2
  %call42 = call ptr @strcpy(ptr noundef %name, ptr noundef nonnull %call22.c) #17
  br label %if.end50

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %name44 = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %11, i32 2
  %15 = ptrtoint ptr %tokens to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tokens, align 4
  %call47 = call ptr @strcpy(ptr noundef %name44, ptr noundef %16) #17
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx24, align 4
  %vol_id49 = getelementptr [32 x %struct.ubiblock_param], ptr @ubiblock_param, i32 0, i32 %11, i32 1
  %18 = ptrtoint ptr %vol_id49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %vol_id49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then38, %if.end33.if.end50_crit_edge
  %19 = load i32, ptr @ubiblock_devs, align 4
  %inc51 = add i32 %19, 1
  store i32 %inc51, ptr @ubiblock_devs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then27.cleanup_crit_edge, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end8 ], [ 0, %if.end50 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tokens) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #11
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ubiblock_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
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
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cond = icmp eq i32 %and, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queuedata, align 4
  %usgl = getelementptr inbounds %struct.ubiblock_pdu, ptr %add.ptr.i, i32 0, i32 1
  %8 = ptrtoint ptr %usgl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %usgl, align 4
  %page_pos.i = getelementptr inbounds %struct.ubi_sgl, ptr %usgl, i32 0, i32 1
  %9 = ptrtoint ptr %page_pos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %page_pos.i, align 4
  %wq = getelementptr inbounds %struct.ubiblock, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %sw.bb ], [ 10, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubiblock_init_request(ptr nocapture noundef readnone %set, ptr noundef %req, i32 noundef %hctx_idx, i32 noundef %numa_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %sg = getelementptr %struct.request, ptr %req, i32 1, i32 11
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef 64) #11
  tail call void @__init_work(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %add.ptr.i, align 4
  %lockdep_map = getelementptr %struct.request, ptr %req, i32 1, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @ubiblock_init_request.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr %struct.request, ptr %req, i32 1, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr %struct.request, ptr %req, i32 1, i32 2
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr %struct.request, ptr %req, i32 1, i32 3
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ubiblock_do_work, ptr %func, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubiblock_do_work(ptr noundef %work) #0 align 64 {
entry:
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %work, i32 -192
  tail call void @blk_mq_start_request(ptr noundef %add.ptr.i) #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sg = getelementptr inbounds %struct.ubiblock_pdu, ptr %work, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #11
  %2 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %last_sg.i, align 4
  %call.i = call i32 @__blk_rq_map_sg(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %sg, ptr noundef nonnull %last_sg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #11
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queuedata.i, align 4
  %__data_len.i.i = getelementptr i8, ptr %work, i32 -160
  %7 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__data_len.i.i, align 8
  %__sector.i.i = getelementptr i8, ptr %work, i32 -152
  %9 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %__sector.i.i, align 8
  %shl.i = shl i64 %10, 9
  %leb_size.i = getelementptr inbounds %struct.ubiblock, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %leb_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp168.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !113

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i = trunc i64 %shl.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %12
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %13 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %13
  br label %if.end182.i

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %shl.i) #18, !srcloc !115
  %asmresult.i305.i = extractvalue { i64, i64 } %14, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %14, 1
  %shr.i.i = lshr i64 %asmresult.i305.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t329.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.else178.i, %if.then172.i
  %pos.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t329.i, %if.else178.i ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i ], [ %conv.i.i, %if.else178.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool185.not331.i = icmp eq i32 %8, 0
  br i1 %tobool185.not331.i, label %if.end182.i.ubiblock_read.exit_crit_edge, label %while.body.lr.ph.i

if.end182.i.ubiblock_read.exit_crit_edge:         ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubiblock_read.exit

while.body.lr.ph.i:                               ; preds = %if.end182.i
  %usgl.i = getelementptr inbounds %struct.ubiblock_pdu, ptr %work, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end198.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %leb.0334.i = phi i32 [ %pos.0.off0.i, %while.body.lr.ph.i ], [ %add200.i, %if.end198.i.while.body.i_crit_edge ]
  %to_read.0333.i = phi i32 [ %8, %while.body.lr.ph.i ], [ %sub199.i, %if.end198.i.while.body.i_crit_edge ]
  %offset.0332.i = phi i32 [ %__rem.0.i, %while.body.lr.ph.i ], [ 0, %if.end198.i.while.body.i_crit_edge ]
  %add186.i = add i32 %offset.0332.i, %to_read.0333.i
  %15 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add186.i, i32 %16)
  %cmp188.i = icmp sgt i32 %add186.i, %16
  %sub192.i = sub i32 %16, %offset.0332.i
  %spec.select.i = select i1 %cmp188.i, i32 %sub192.i, i32 %to_read.0333.i
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %call.i.i = call i32 @ubi_leb_read_sg(ptr noundef %18, i32 noundef %leb.0334.i, ptr noundef %usgl.i, i32 noundef %offset.0332.i, i32 noundef %spec.select.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp195.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp195.i, label %while.body.i.ubiblock_read.exit_crit_edge, label %if.end198.i

while.body.i.ubiblock_read.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubiblock_read.exit

if.end198.i:                                      ; preds = %while.body.i
  %sub199.i = sub i32 %to_read.0333.i, %spec.select.i
  %add200.i = add i32 %leb.0334.i, 1
  %tobool185.not.i = icmp eq i32 %sub199.i, 0
  br i1 %tobool185.not.i, label %if.end198.i.ubiblock_read.exit_crit_edge, label %if.end198.i.while.body.i_crit_edge

if.end198.i.while.body.i_crit_edge:               ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end198.i.ubiblock_read.exit_crit_edge:         ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubiblock_read.exit

ubiblock_read.exit:                               ; preds = %if.end198.i.ubiblock_read.exit_crit_edge, %while.body.i.ubiblock_read.exit_crit_edge, %if.end182.i.ubiblock_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end182.i.ubiblock_read.exit_crit_edge ], [ %call.i.i, %while.body.i.ubiblock_read.exit_crit_edge ], [ 0, %if.end198.i.ubiblock_read.exit_crit_edge ]
  %bio = getelementptr i8, ptr %work, i32 -144
  %19 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bio, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %ubiblock_read.exit.if.end_crit_edge, label %ubiblock_read.exit.for.body_crit_edge

ubiblock_read.exit.for.body_crit_edge:            ; preds = %ubiblock_read.exit
  br label %for.body

ubiblock_read.exit.if.end_crit_edge:              ; preds = %ubiblock_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %ubiblock_read.exit.for.body_crit_edge
  %storemerge101 = phi ptr [ %42, %for.inc65.for.body_crit_edge ], [ %20, %ubiblock_read.exit.for.body_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge101, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool11.not96 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool11.not96, label %for.body.for.inc65_crit_edge, label %land.rhs.lr.ph

for.body.for.inc65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

land.rhs.lr.ph:                                   ; preds = %for.body
  %iter.sroa.15.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge101, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %iter.sroa.15.0.copyload = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge101, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %storemerge101, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %storemerge101, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %iter.sroa.6.099 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.098 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.15.097 = phi i32 [ %iter.sroa.15.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.15.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.10.098
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.10.098, i32 2
  %28 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_offset, align 4
  %add = add i32 %29, %iter.sroa.15.097
  %div83 = lshr i32 %add, 12
  %add.ptr21 = getelementptr %struct.page, ptr %27, i32 %div83
  %bv_len29 = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.10.098, i32 1
  %30 = ptrtoint ptr %bv_len29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len29, align 4
  %sub = sub i32 %31, %iter.sroa.15.097
  %32 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.099, i32 %sub)
  %rem = and i32 %add, 4095
  %sub42 = sub nuw nsw i32 4096, %rem
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 %sub42)
  call void @flush_dcache_page(ptr noundef %add.ptr21) #11
  %34 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i86 = and i32 %35, 255
  %36 = add nsw i32 %and.i.i86, -3
  %switch.and.i.i = and i32 %36, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %land.rhs.bio_advance_iter_single.exit_crit_edge, label %if.else.i

land.rhs.bio_advance_iter_single.exit_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %33, %iter.sroa.15.097
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %38, i32 %iter.sroa.10.098, i32 1
  %39 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %40)
  %cmp.i.i = icmp eq i32 %add.i.i, %40
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select95 = add i32 %iter.sroa.10.098, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %land.rhs.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.15.1 = phi i32 [ %iter.sroa.15.097, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.098, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select95, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.099, %33
  %tobool11.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool11.not, label %bio_advance_iter_single.exit.for.inc65_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

bio_advance_iter_single.exit.for.inc65_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

for.inc65:                                        ; preds = %bio_advance_iter_single.exit.for.inc65_crit_edge, %for.body.for.inc65_crit_edge
  %41 = ptrtoint ptr %storemerge101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %storemerge101, align 8
  %tobool6.not = icmp eq ptr %42, null
  br i1 %tobool6.not, label %for.inc65.if.end_crit_edge, label %for.inc65.for.body_crit_edge

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc65.if.end_crit_edge:                       ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.inc65.if.end_crit_edge, %ubiblock_read.exit.if.end_crit_edge
  %call69 = call zeroext i8 @errno_to_blk_status(i32 noundef %retval.0.i) #11
  call void @blk_mq_end_request(ptr noundef %add.ptr.i, i8 noundef zeroext %call69) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_read_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubiblock_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #0 align 64 {
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
  %dev_mutex = getelementptr inbounds %struct.ubiblock, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.ubiblock, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %entry.out_done_crit_edge, label %if.end

entry.out_done_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_done

if.end:                                           ; preds = %entry
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ubi_num = getelementptr inbounds %struct.ubiblock, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ubi_num, align 4
  %vol_id = getelementptr inbounds %struct.ubiblock, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_id, align 4
  %call = tail call ptr @ubi_open_volume(i32 noundef %7, i32 noundef %9, i32 noundef 1) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end2.out_done_crit_edge

if.end2.out_done_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_done

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %gd = getelementptr inbounds %struct.ubiblock, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gd, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ubi_num, align 4
  %17 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bd_device, ptr noundef nonnull @.str.28, i32 noundef %16, i32 noundef %18) #14
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %21 = ptrtoint ptr %20 to i32
  store ptr null, ptr %3, align 4
  br label %cleanup

out_done:                                         ; preds = %if.end2.out_done_crit_edge, %entry.out_done_crit_edge
  %22 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refcnt, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_done, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_done ], [ %21, %do.end ], [ -30, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubiblock_release(ptr nocapture noundef readonly %gd, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %gd, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %dev_mutex = getelementptr inbounds %struct.ubiblock, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.ubiblock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @ubi_close_volume(ptr noundef %5) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ubiblock_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %geo, align 4
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %1 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %cylinders, align 2
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %conv = trunc i64 %7 to i8
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %8 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %sectors, align 1
  %start = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 3
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %start, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @open_volume_desc(ptr noundef %name, i32 noundef %ubi_num, i32 noundef %vol_id) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ubi_num)
  %cmp = icmp eq i32 %ubi_num, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @ubi_open_volume_path(ptr noundef %name, i32 noundef 1) #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vol_id)
  %cmp1 = icmp eq i32 %vol_id, -1
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @ubi_open_volume_nm(i32 noundef %ubi_num, ptr noundef %name, i32 noundef 1) #11
  br label %return

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call ptr @ubi_open_volume(i32 noundef %ubi_num, i32 noundef %vol_id, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.else4, %if.then2, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %call3, %if.then2 ], [ %call5, %if.else4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_get_volume_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_nm(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubiblock_notify(ptr nocapture noundef readnone %nb, i32 noundef %notification_type, ptr nocapture noundef readonly %ns_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %notification_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %notification_type, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb4
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vi = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  %call = tail call i32 @ubiblock_remove(ptr noundef %vi)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vi2 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  tail call fastcc void @ubiblock_resize(ptr noundef %vi2)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %vol_type = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1, i32 5
  %1 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vol_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %vi5 = getelementptr inbounds %struct.ubi_notification, ptr %ns_ptr, i32 0, i32 1
  tail call fastcc void @ubiblock_resize(ptr noundef %vi5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubiblock_resize(ptr nocapture noundef readonly %vi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_id, align 4
  %.pn15.i = load ptr, ptr @ubiblock_devices, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, @ubiblock_devices
  br i1 %cmp.not16.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %entry.for.body.i_crit_edge ]
  %ubi_num1.i = getelementptr i8, ptr %.pn17.i, i32 -120
  %4 = ptrtoint ptr %ubi_num1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ubi_num1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.i = icmp eq i32 %5, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vol_id3.i = getelementptr i8, ptr %.pn17.i, i32 -116
  %6 = ptrtoint ptr %vol_id3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp4.i = icmp eq i32 %7, %3
  br i1 %cmp4.i, label %find_dev_nolock.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ubiblock_devices
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

find_dev_nolock.exit:                             ; preds = %land.lhs.true.i
  %dev.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -124
  %tobool.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool.not, label %find_dev_nolock.exit.cleanup_crit_edge, label %if.end

find_dev_nolock.exit.cleanup_crit_edge:           ; preds = %find_dev_nolock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %find_dev_nolock.exit
  %used_bytes.i = getelementptr inbounds %struct.ubi_volume_info, ptr %vi, i32 0, i32 3
  %9 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %used_bytes.i, align 8
  %11 = and i64 %10, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end.calc_disk_capacity.exit_crit_edge, label %do.end.i

if.end.calc_disk_capacity.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_disk_capacity.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %11) #14
  br label %calc_disk_capacity.exit

calc_disk_capacity.exit:                          ; preds = %do.end.i, %if.end.calc_disk_capacity.exit_crit_edge
  %shr.i = ashr i64 %10, 9
  %dev_mutex = getelementptr i8, ptr %.pn17.i, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  %gd7 = getelementptr i8, ptr %.pn17.i, i32 -104
  %12 = ptrtoint ptr %gd7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gd7, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %shr.i)
  %cmp9.not = icmp eq i64 %17, %shr.i
  br i1 %cmp9.not, label %calc_disk_capacity.exit.if.end18_crit_edge, label %if.then10

calc_disk_capacity.exit.if.end18_crit_edge:       ; preds = %calc_disk_capacity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then10:                                        ; preds = %calc_disk_capacity.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @set_capacity(ptr noundef %13, i64 noundef %shr.i) #11
  %18 = ptrtoint ptr %gd7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gd7, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %used_bytes.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %bd_device17, ptr noundef nonnull @.str.42, i64 noundef %23) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %calc_disk_capacity.exit.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %find_dev_nolock.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__param_block, !1, !"__param_block", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/block.c", i32 162, i32 1}
!2 = !{ptr @__UNIQUE_ID_block278, !3, !"__UNIQUE_ID_block278", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ubi/block.c", i32 163, i32 1}
!4 = !{ptr @ubiblock_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ubi/block.c", i32 395, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mtd/ubi/block.c", i32 411, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ubiblock_create._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @ubiblock_create._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @ubiblock_create.__key.6, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/mtd/ubi/block.c", i32 417, i32 7}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/ubi/block.c", i32 428, i32 3}
!19 = !{ptr @ubiblock_create._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ubiblock_create._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/ubi/block.c", i32 435, i32 25}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/ubi/block.c", i32 446, i32 28}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/block.c", i32 459, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ubiblock_create._entry.12, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ubiblock_create._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/block.c", i32 677, i32 19}
!32 = !{ptr @ubiblock_major, !33, !"ubiblock_major", i1 false, i1 false}
!33 = !{!"../drivers/mtd/ubi/block.c", i32 97, i32 12}
!34 = !{ptr @__param_str_block, !1, !"__param_str_block", i1 false, i1 false}
!35 = !{ptr @ubiblock_param_ops, !36, !"ubiblock_param_ops", i1 false, i1 false}
!36 = !{!"../drivers/mtd/ubi/block.c", i32 159, i32 38}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ubi/block.c", i32 114, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ubiblock_set_param._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ubiblock_set_param._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/block.c", i32 119, i32 3}
!44 = !{ptr @ubiblock_set_param._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ubiblock_set_param._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/block.c", i32 131, i32 29}
!48 = !{ptr @ubiblock_param, !49, !"ubiblock_param", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/block.c", i32 73, i32 30}
!50 = !{ptr @ubiblock_devs, !51, !"ubiblock_devs", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/block.c", i32 70, i32 12}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/ubi/block.c", i32 357, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @calc_disk_capacity._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @calc_disk_capacity._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/ubi/block.c", i32 96, i32 8}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @devices_mutex, !58, !"devices_mutex", i1 false, i1 false}
!61 = !{ptr @ubiblock_mq_ops, !62, !"ubiblock_mq_ops", i1 false, i1 false}
!62 = !{!"../drivers/mtd/ubi/block.c", i32 347, i32 32}
!63 = !{ptr @ubiblock_init_request.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/block.c", i32 342, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ubiblock_ops, !67, !"ubiblock_ops", i1 false, i1 false}
!67 = !{!"../drivers/mtd/ubi/block.c", i32 285, i32 45}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/ubi/block.c", i32 245, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ubiblock_open._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ubiblock_open._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/ubi/block.c", i32 94, i32 8}
!75 = !{ptr @ubiblock_minor_idr, !74, !"ubiblock_minor_idr", i1 false, i1 false}
!76 = !{ptr @ubiblock_devices, !77, !"ubiblock_devices", i1 false, i1 false}
!77 = !{!"../drivers/mtd/ubi/block.c", i32 93, i32 8}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/ubi/block.c", i32 488, i32 2}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ubiblock_cleanup._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ubiblock_cleanup._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/ubi/block.c", i32 637, i32 4}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ubiblock_create_from_param._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ubiblock_create_from_param._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/ubi/block.c", i32 648, i32 4}
!90 = !{ptr @ubiblock_create_from_param._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ubiblock_create_from_param._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @ubiblock_notifier, !93, !"ubiblock_notifier", i1 false, i1 false}
!93 = !{!"../drivers/mtd/ubi/block.c", i32 602, i32 30}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/ubi/block.c", i32 551, i32 4}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ubiblock_resize._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @ubiblock_resize._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/ubi/block.c", i32 562, i32 3}
!102 = !{ptr @ubiblock_resize._entry.41, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ubiblock_resize._entry_ptr.43, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"auto-init"}
!115 = !{i64 2148201573, i64 2148201853, i64 2148202187, i64 2148202521}
