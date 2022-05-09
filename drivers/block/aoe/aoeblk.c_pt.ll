; ModuleID = '/llk/IR_all_yes/drivers/block/aoe/aoeblk.c_pt.bc'
source_filename = "../drivers/block/aoe/aoeblk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.106 }
%union.anon.106 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aoedev = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, %struct.work_struct, ptr, ptr, ptr, %struct.list_head, %struct.blk_mq_tag_set, %struct.hd_geometry, i64, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.anon.128, i32, [61 x %struct.list_head], %struct.list_head, ptr, i32, ptr, i32, [512 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.112, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.112 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.66, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.67, %union.anon.68, %union.anon.69, %union.anon.74, ptr, ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%union.anon.68 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.69 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, %struct.list_head, ptr }
%union.anon.74 = type { i64, [8 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.aoetgt = type { [6 x i8], i16, ptr, %struct.list_head, [8 x %struct.aoeif], ptr, i16, i16, i16, i16, i32, i32, i32, i32, i32, i8 }
%struct.aoeif = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.108, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.109, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.110, ptr, %struct.address_space, %struct.list_head, %union.anon.111, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.108 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.109 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.111 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__param_str_aoe_maxsectors = internal constant [19 x i8] c"aoe.aoe_maxsectors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@aoe_maxsectors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_aoe_maxsectors = internal constant %struct.kernel_param { ptr @__param_str_aoe_maxsectors, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.106 { ptr @aoe_maxsectors } }, section "__param", align 4
@__UNIQUE_ID_aoe_maxsectorstype373 = internal constant [32 x i8] c"aoe.parmtype=aoe_maxsectors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aoe_maxsectors374 = internal constant [88 x i8] c"aoe.parm=aoe_maxsectors:When nonzero, set the maximum number of sectors per I/O request\00", section ".modinfo", align 1
@buf_pool_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aoeblk_gdalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013aoe: cannot allocate bufpool for %ld.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aoeblk_gdalloc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/aoe/aoeblk.c\00", [37 x i8] zeroinitializer }, align 32
@aoeblk_gdalloc._entry_ptr = internal global ptr @aoeblk_gdalloc._entry, section ".printk_index", align 4
@aoeblk_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @aoeblk_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@aoeblk_gdalloc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013aoe: cannot allocate tag set for %ld.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@aoeblk_gdalloc._entry_ptr.5 = internal global ptr @aoeblk_gdalloc._entry.3, section ".printk_index", align 4
@aoeblk_gdalloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aoeblk_gdalloc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013aoe: cannot allocate block queue for %ld.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@aoeblk_gdalloc._entry_ptr.8 = internal global ptr @aoeblk_gdalloc._entry.6, section ".printk_index", align 4
@aoe_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @aoeblk_open, ptr @aoeblk_release, ptr null, ptr @aoeblk_ioctl, ptr null, ptr null, ptr null, ptr @aoeblk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"etherd/e%ld.%d\00", [17 x i8] zeroinitializer }, align 32
@aoe_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @aoe_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@aoe_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aoe_bufs\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aoe\00", [28 x i8] zeroinitializer }, align 32
@aoeblk_queue_rq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.aoeblk_queue_rq = private unnamed_addr constant [16 x i8] c"aoeblk_queue_rq\00", align 1
@aoeblk_queue_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.aoeblk_queue_rq, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016aoe: device %ld.%d is not up\0A\00", [32 x i8] zeroinitializer }, align 32
@aoeblk_queue_rq._entry_ptr = internal global ptr @aoeblk_queue_rq._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@aoeblk_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012aoe: invalid device pointer in %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aoeblk_open\00", [20 x i8] zeroinitializer }, align 32
@aoeblk_open._entry_ptr = internal global ptr @aoeblk_open._entry, section ".printk_index", align 4
@aoeblk_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aoeblk_mutex, i64 52), ptr getelementptr (i8, ptr @aoeblk_mutex, i64 52) }, ptr @aoeblk_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aoeblk_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aoeblk_mutex\00", [19 x i8] zeroinitializer }, align 32
@aoeblk_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013aoe: disk not up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aoeblk_ioctl\00", [19 x i8] zeroinitializer }, align 32
@aoeblk_ioctl._entry_ptr = internal global ptr @aoeblk_ioctl._entry, section ".printk_index", align 4
@aoeblk_ioctl._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016aoe: unknown ioctl 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@aoeblk_ioctl._entry_ptr.22 = internal global ptr @aoeblk_ioctl._entry.20, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@aoeblk_getgeo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.26, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aoeblk_getgeo\00", [18 x i8] zeroinitializer }, align 32
@aoeblk_getgeo._entry_ptr = internal global ptr @aoeblk_getgeo._entry, section ".printk_index", align 4
@aoe_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aoe_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@aoe_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_state, ptr @dev_attr_mac, ptr @dev_attr_netif, ptr @dev_attr_firmware_version, ptr @dev_attr_payload, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aoedisk_show_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mac = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aoedisk_show_mac, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_netif = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aoedisk_show_netif, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aoedisk_show_fwver, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_payload = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aoedisk_show_payload, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",kickme\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",closewait\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pm\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"netif\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware-version\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"payload\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@aoe_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aoe_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rttavg: %d rttdev: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nskbpool: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kicked: %ld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maxbcnt: %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ref: %ld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"falloc: %ld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ffree: %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pm:%d:%d:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09ssthresh:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09taint:%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09r:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09w:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%s\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 781, i64 8837]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"aoe_maxsectors\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 29, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"buf_pool_cache\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 25, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 366, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"aoeblk_mq_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 336, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 380, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 385, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 387, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"aoe_bdops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 327, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 411, i32 48 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"aoe_attr_groups\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 183, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"aoe_debugfs_dir\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 26, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 454, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 459, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 270, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 225, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"aoeblk_mutex\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 24, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 309, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 322, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 174, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 289, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"aoe_attr_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 179, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"aoe_attrs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 170, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [13 x i8] c"dev_attr_mac\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"dev_attr_netif\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 164, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"dev_attr_payload\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 161, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 40, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 41, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 41, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 42, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 43, i32 43 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 43, i32 58 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 162, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 54, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 55, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 163, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 89, i32 43 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 90, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 91, i32 42 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 165, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 101, i32 26 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 168, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 109, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"aoe_debugfs_fops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 188, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 121, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 124, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 125, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 126, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 127, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 134, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 135, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 137, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 139, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 140, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 141, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 142, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [30 x i8] c"../drivers/block/aoe/aoeblk.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 146, i32 18 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_aoe_maxsectors374, ptr @__UNIQUE_ID_aoe_maxsectorstype373, ptr @__param_aoe_maxsectors, ptr @aoeblk_gdalloc._entry, ptr @aoeblk_gdalloc._entry.3, ptr @aoeblk_gdalloc._entry.6, ptr @aoeblk_gdalloc._entry_ptr, ptr @aoeblk_gdalloc._entry_ptr.5, ptr @aoeblk_gdalloc._entry_ptr.8, ptr @aoeblk_getgeo._entry, ptr @aoeblk_getgeo._entry_ptr, ptr @aoeblk_ioctl._entry, ptr @aoeblk_ioctl._entry.20, ptr @aoeblk_ioctl._entry_ptr, ptr @aoeblk_ioctl._entry_ptr.22, ptr @aoeblk_open._entry, ptr @aoeblk_open._entry_ptr, ptr @aoeblk_queue_rq._entry, ptr @aoeblk_queue_rq._entry_ptr, ptr @aoe_maxsectors, ptr @buf_pool_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aoeblk_mq_ops, ptr @.str.4, ptr @aoeblk_gdalloc.__key, ptr @.str.7, ptr @aoe_bdops, ptr @.str.9, ptr @aoe_attr_groups, ptr @aoe_debugfs_dir, ptr @.str.10, ptr @.str.11, ptr @aoeblk_queue_rq._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @aoeblk_mutex, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @aoe_attr_group, ptr @aoe_attrs, ptr @dev_attr_state, ptr @dev_attr_mac, ptr @dev_attr_netif, ptr @dev_attr_firmware_version, ptr @dev_attr_payload, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @aoe_debugfs_fops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_maxsectors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_pool_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_gdalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_gdalloc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_gdalloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_gdalloc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_queue_rq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_queue_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_ioctl._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoeblk_getgeo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mac to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_netif to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_payload to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoedisk_rm_debugfs(ptr nocapture noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 14
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoeblk_gdalloc(ptr noundef %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 21
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %flags5 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 6
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags5, align 2
  %2 = and i16 %1, 26
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %2)
  %3 = icmp eq i16 %2, 8
  br i1 %3, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %or = or i16 %1, 16
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %flags5, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %5 = load ptr, ptr @buf_pool_cache, align 4
  %call23 = tail call ptr @mempool_create(i32 noundef 16, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %5) #7
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %do.end29, label %if.end33

do.end29:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %aoemajor = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 2
  %6 = ptrtoint ptr %aoemajor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aoemajor, align 8
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 5
  %8 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %aoeminor, align 4
  %conv31 = zext i16 %9 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %conv31) #10
  br label %do.body321

if.end33:                                         ; preds = %if.then
  %tag_set = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17
  %ops = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @aoeblk_mq_ops, ptr %ops, align 4
  %cmd_size = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 6
  %11 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %cmd_size, align 4
  %nr_hw_queues = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %nr_hw_queues, align 4
  %queue_depth = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 4
  %13 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %queue_depth, align 4
  %numa_node = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 7
  %14 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %numa_node, align 4
  %flags34 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 17, i32 9
  %15 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags34, align 4
  %call35 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end46, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %aoemajor42 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 2
  %16 = ptrtoint ptr %aoemajor42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aoemajor42, align 8
  %aoeminor43 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 5
  %18 = ptrtoint ptr %aoeminor43 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %aoeminor43, align 4
  %conv44 = zext i16 %19 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %conv44) #10
  br label %err_mempool

if.end46:                                         ; preds = %if.end33
  %call48 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %vp, ptr noundef nonnull @aoeblk_gdalloc.__key) #7
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end53, label %do.body61

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %aoemajor55 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 2
  %20 = ptrtoint ptr %aoemajor55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aoemajor55, align 8
  %aoeminor56 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 5
  %22 = ptrtoint ptr %aoeminor56 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aoeminor56, align 4
  %conv57 = zext i16 %23 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %conv57) #10
  br label %err_tagset

do.body61:                                        ; preds = %if.end46
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %24 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags5, align 2
  %26 = and i16 %25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool77.not = icmp eq i16 %26, 0
  br i1 %tobool77.not, label %do.end90, label %do.body61.if.end96_crit_edge, !prof !159

do.body61.if.end96_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

do.end90:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 393, i32 noundef 9, ptr noundef null) #7
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %do.body61.if.end96_crit_edge
  %27 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags5, align 2
  %29 = and i16 %28, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool108.not = icmp eq i16 %29, 0
  br i1 %tobool108.not, label %do.end126, label %if.end96.if.end132_crit_edge, !prof !159

if.end96.if.end132_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

do.end126:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 394, i32 noundef 9, ptr noundef null) #7
  br label %if.end132

if.end132:                                        ; preds = %do.end126, %if.end96.if.end132_crit_edge
  %30 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags5, align 2
  %32 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool144.not = icmp eq i16 %32, 0
  br i1 %tobool144.not, label %if.end132.if.end166_crit_edge, label %do.end160, !prof !160

if.end132.if.end166_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

do.end160:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 395, i32 noundef 9, ptr noundef null) #7
  br label %if.end166

if.end166:                                        ; preds = %do.end160, %if.end132.if.end166_crit_edge
  %gd175 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 13
  %33 = ptrtoint ptr %gd175 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gd175, align 8
  %tobool176.not = icmp eq ptr %34, null
  br i1 %tobool176.not, label %if.end166.if.end198_crit_edge, label %do.end192, !prof !160

if.end166.if.end198_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

do.end192:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 396, i32 noundef 9, ptr noundef null) #7
  br label %if.end198

if.end198:                                        ; preds = %do.end192, %if.end166.if.end198_crit_edge
  %35 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags5, align 2
  %37 = and i16 %36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool210.not = icmp eq i16 %37, 0
  br i1 %tobool210.not, label %if.end198.if.end232_crit_edge, label %do.end226, !prof !160

if.end198.if.end232_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

do.end226:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 397, i32 noundef 9, ptr noundef null) #7
  br label %if.end232

if.end232:                                        ; preds = %do.end226, %if.end198.if.end232_crit_edge
  %queue = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 9
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %39, i32 noundef 2560) #7
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_io_opt(ptr noundef %41, i32 noundef 2097152) #7
  %bufpool = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 23
  %42 = ptrtoint ptr %bufpool to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call23, ptr %bufpool, align 4
  %43 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue, align 4
  %blkq = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 15
  %45 = ptrtoint ptr %blkq to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %blkq, align 8
  %46 = ptrtoint ptr %gd175 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call48, ptr %gd175, align 8
  %47 = load i32, ptr @aoe_maxsectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool243.not = icmp eq i32 %47, 0
  br i1 %tobool243.not, label %if.end232.if.end246_crit_edge, label %if.then244

if.end232.if.end246_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then244:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %49, i32 noundef %47) #7
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end232.if.end246_crit_edge
  %50 = ptrtoint ptr %call48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 152, ptr %call48, align 8
  %sysminor = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 1
  %51 = ptrtoint ptr %sysminor to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysminor, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 1
  %53 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 2
  %54 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 8
  %55 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @aoe_bdops, ptr %fops, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 10
  %56 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %vp, ptr %private_data, align 8
  %ssize = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 19
  %57 = ptrtoint ptr %ssize to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ssize, align 8
  tail call void @set_capacity(ptr noundef %call48, i64 noundef %58) #7
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call48, i32 0, i32 3
  %aoemajor247 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 2
  %59 = ptrtoint ptr %aoemajor247 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %aoemajor247, align 8
  %aoeminor248 = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 5
  %61 = ptrtoint ptr %aoeminor248 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %aoeminor248, align 4
  %conv249 = zext i16 %62 to i32
  %call250 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %60, i32 noundef %conv249)
  %63 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags5, align 2
  %65 = and i16 %64, -10
  %66 = or i16 %65, 1
  store i16 %66, ptr %flags5, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call69) #7
  %call260 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %call48, ptr noundef nonnull @aoe_attr_groups) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end263, label %out_disk_cleanup

if.end263:                                        ; preds = %if.end246
  %67 = load ptr, ptr @aoe_debugfs_dir, align 4
  %cmp.i420 = icmp eq ptr %67, null
  br i1 %cmp.i420, label %if.end263.aoedisk_add_debugfs.exit_crit_edge, label %if.end.i

if.end263.aoedisk_add_debugfs.exit_crit_edge:     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %aoedisk_add_debugfs.exit

if.end.i:                                         ; preds = %if.end263
  %68 = ptrtoint ptr %gd175 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gd175, align 8
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %69, i32 0, i32 3
  %call.i = tail call ptr @strchr(ptr noundef %disk_name.i, i32 noundef 47) #7
  %cmp1.i = icmp eq ptr %call.i, null
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %p.0.i = select i1 %cmp1.i, ptr %disk_name.i, ptr %incdec.ptr.i
  %70 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp7.i = icmp eq i8 %71, 0
  br i1 %cmp7.i, label %do.body11.i, label %do.end17.i, !prof !159

do.body11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/aoe/aoeblk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #7, !srcloc !161
  unreachable

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call ptr @debugfs_create_file(ptr noundef %p.0.i, i16 noundef zeroext 292, ptr noundef nonnull %67, ptr noundef %vp, ptr noundef nonnull @aoe_debugfs_fops) #7
  %debugfs.i = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 14
  %72 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call18.i, ptr %debugfs.i, align 4
  br label %aoedisk_add_debugfs.exit

aoedisk_add_debugfs.exit:                         ; preds = %do.end17.i, %if.end263.aoedisk_add_debugfs.exit_crit_edge
  %call273 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %73 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags5, align 2
  %75 = and i16 %74, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool282.not = icmp eq i16 %75, 0
  br i1 %tobool282.not, label %do.end300, label %aoedisk_add_debugfs.exit.if.end306_crit_edge, !prof !159

aoedisk_add_debugfs.exit.if.end306_crit_edge:     ; preds = %aoedisk_add_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end306

do.end300:                                        ; preds = %aoedisk_add_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #7
  br label %if.end306

if.end306:                                        ; preds = %do.end300, %aoedisk_add_debugfs.exit.if.end306_crit_edge
  %76 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags5, align 2
  %78 = and i16 %77, -17
  store i16 %78, ptr %flags5, align 2
  br label %cleanup

out_disk_cleanup:                                 ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_cleanup_disk(ptr noundef %call48) #7
  br label %err_tagset

err_tagset:                                       ; preds = %out_disk_cleanup, %do.end53
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #7
  br label %err_mempool

err_mempool:                                      ; preds = %err_tagset, %do.end40
  tail call void @mempool_destroy(ptr noundef nonnull %call23) #7
  br label %do.body321

do.body321:                                       ; preds = %err_mempool, %do.end29
  %call329 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %79 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %flags5, align 2
  %81 = and i16 %80, -17
  store i16 %81, ptr %flags5, align 2
  %work = getelementptr inbounds %struct.aoedev, ptr %vp, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %82 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body321, %if.end306, %entry.cleanup_crit_edge
  %call329.sink = phi i32 [ %call329, %do.body321 ], [ %call273, %if.end306 ], [ %call2, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call329.sink) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoeblk_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aoe_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  store ptr null, ptr @aoe_debugfs_dir, align 4
  %1 = load ptr, ptr @buf_pool_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aoeblk_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.10, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  store ptr %call, ptr @buf_pool_cache, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef null) #7
  store ptr %call1, ptr @aoe_debugfs_dir, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @aoeblk_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %lock = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %flags = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @aoeblk_queue_rq._rs, ptr noundef nonnull @__func__.aoeblk_queue_rq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %aoemajor = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %aoemajor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aoemajor, align 8
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %aoeminor, align 4
  %conv3 = zext i16 %10 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %conv3) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %11 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_start_request(ptr noundef %12) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %13 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd, align 4
  %15 = getelementptr inbounds %struct.request, ptr %14, i32 0, i32 12
  %rq_list = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %17, ptr noundef %rq_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rq_list, ptr %15, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %14, i32 0, i32 12, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %15, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  tail call void @aoecmd_work(ptr noundef %3) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end
  %retval.0 = phi i8 [ 10, %if.end ], [ 0, %list_add_tail.exit ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoeblk_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  %cmp = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ult ptr %3, %5
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %6, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true2.do.end_crit_edge, label %if.end24

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 227, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true2
  %flags25 = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags25, align 2
  %9 = and i16 %8, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %if.end32, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  tail call void @mutex_lock_nested(ptr noundef nonnull @aoeblk_mutex, i32 noundef 0) #7
  %lock = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 21
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %11 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags25, align 2
  %13 = and i16 %12, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %nopen = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %nopen to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nopen, align 8
  %inc = add i16 %16, 1
  store i16 %inc, ptr %nopen, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #7
  tail call void @mutex_unlock(ptr noundef nonnull @aoeblk_mutex) #7
  br label %cleanup

if.end55:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #7
  tail call void @mutex_unlock(ptr noundef nonnull @aoeblk_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %if.end55 ], [ 0, %if.then53 ], [ -19, %do.end ], [ -19, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aoeblk_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 21
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %nopen = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %nopen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nopen, align 8
  %dec = add i16 %3, -1
  store i16 %dec, ptr %nopen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp6 = icmp eq i16 %dec, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  br i1 %cmp6, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %aoemajor = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %aoemajor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aoemajor, align 8
  %conv9 = trunc i32 %5 to i16
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aoeminor, align 4
  %conv10 = trunc i16 %7 to i8
  tail call void @aoecmd_cfg(i16 noundef zeroext %conv9, i8 noundef zeroext %conv10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoeblk_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %flags = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end17 [
    i32 781, label %if.then6
    i32 8837, label %if.end3.cleanup_crit_edge
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %8 = inttoptr i32 %arg to ptr
  %ident = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 32
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then6.cleanup_crit_edge, label %if.end.i.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then6
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 512, i32 -1226833920) #11, !srcloc !162
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ident, i32 noundef 512) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %8, ptr noundef %ident, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool8.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

do.end17:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -25, %if.end3.cleanup_crit_edge ], [ -25, %do.end17 ], [ -14, %if.then6.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoeblk_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %flags = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %geo2 = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 18
  %cylinders = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 18, i32 2
  %7 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cylinders, align 2
  %cylinders3 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %9 = ptrtoint ptr %cylinders3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cylinders3, align 2
  %10 = ptrtoint ptr %geo2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %geo2, align 4
  %12 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sectors, align 1
  %sectors7 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %15 = ptrtoint ptr %sectors7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %sectors7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_cfg(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_show_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %flags = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nopen = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %nopen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nopen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  %phi.sel = select i1 %tobool.not, ptr @.str.32, ptr @.str.33
  %spec.select = select i1 %tobool6.not, ptr @.str.33, ptr %phi.sel
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond12 = phi ptr [ %spec.select, %cond.false ], [ @.str.31, %entry.cond.end_crit_edge ]
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond, ptr noundef %cond12) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_show_mac(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %targets = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targets, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.36, ptr noundef nonnull %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_show_netif(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  %nds = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nds) #7
  %4 = call ptr @memset(ptr %nds, i32 0, i32 32)
  %add.ptr2 = getelementptr inbounds ptr, ptr %nds, i32 8
  %targets = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %targets, align 8
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ntargets, align 4
  %add.ptr3 = getelementptr ptr, ptr %6, i32 %8
  %cmp107 = icmp ult ptr %6, %add.ptr3
  br i1 %cmp107, label %entry.land.rhs_crit_edge, label %entry.for.end30_crit_edge

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc28.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %t.0109 = phi ptr [ %incdec.ptr29, %for.inc28.land.rhs_crit_edge ], [ %6, %entry.land.rhs_crit_edge ]
  %nd.0108 = phi ptr [ %nd.1.lcssa, %for.inc28.land.rhs_crit_edge ], [ %nds, %entry.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %t.0109 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.0109, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %land.rhs.for.end30_crit_edge, label %for.body

land.rhs.for.end30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.body:                                         ; preds = %land.rhs
  %ifs = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 4
  %add.ptr5 = getelementptr %struct.aoetgt, ptr %10, i32 0, i32 5
  %cmp7102 = icmp ult ptr %ifs, %add.ptr5
  br i1 %cmp7102, label %for.body.land.rhs8_crit_edge, label %for.body.for.inc28_crit_edge

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28

for.body.land.rhs8_crit_edge:                     ; preds = %for.body
  br label %land.rhs8

land.rhs8:                                        ; preds = %for.inc25.land.rhs8_crit_edge, %for.body.land.rhs8_crit_edge
  %ifp.0104 = phi ptr [ %incdec.ptr26, %for.inc25.land.rhs8_crit_edge ], [ %ifs, %for.body.land.rhs8_crit_edge ]
  %nd.1103 = phi ptr [ %nd.2, %for.inc25.land.rhs8_crit_edge ], [ %nd.0108, %for.body.land.rhs8_crit_edge ]
  %11 = ptrtoint ptr %ifp.0104 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifp.0104, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.rhs8.for.inc28_crit_edge, label %for.cond14.preheader

land.rhs8.for.inc28_crit_edge:                    ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28

for.cond14.preheader:                             ; preds = %land.rhs8
  %cmp1599 = icmp ult ptr %nds, %nd.1103
  br i1 %cmp1599, label %for.cond14.preheader.for.body16_crit_edge, label %for.cond14.preheader.for.end_crit_edge

for.cond14.preheader.for.end_crit_edge:           ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %nnd.0100 = phi ptr [ %incdec.ptr, %for.inc.for.body16_crit_edge ], [ %nds, %for.cond14.preheader.for.body16_crit_edge ]
  %13 = ptrtoint ptr %nnd.0100 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nnd.0100, align 4
  %cmp18 = icmp eq ptr %14, %12
  br i1 %cmp18, label %for.body16.for.end_crit_edge, label %for.inc

for.body16.for.end_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body16
  %incdec.ptr = getelementptr ptr, ptr %nnd.0100, i32 1
  %cmp15 = icmp ult ptr %incdec.ptr, %nd.1103
  br i1 %cmp15, label %for.inc.for.body16_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body16.for.end_crit_edge, %for.cond14.preheader.for.end_crit_edge
  %nnd.0.lcssa = phi ptr [ %nds, %for.cond14.preheader.for.end_crit_edge ], [ %nnd.0100, %for.body16.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %cmp19 = icmp ne ptr %nnd.0.lcssa, %nd.1103
  %cmp20.not = icmp eq ptr %nd.1103, %add.ptr2
  %or.cond = select i1 %cmp19, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %for.end.for.inc25_crit_edge, label %if.then21

for.end.for.inc25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr23 = getelementptr ptr, ptr %nd.1103, i32 1
  %15 = ptrtoint ptr %nd.1103 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %nd.1103, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %if.then21, %for.end.for.inc25_crit_edge
  %nd.2 = phi ptr [ %incdec.ptr23, %if.then21 ], [ %nd.1103, %for.end.for.inc25_crit_edge ]
  %incdec.ptr26 = getelementptr %struct.aoeif, ptr %ifp.0104, i32 1
  %cmp7 = icmp ult ptr %incdec.ptr26, %add.ptr5
  br i1 %cmp7, label %for.inc25.land.rhs8_crit_edge, label %for.inc25.for.inc28_crit_edge

for.inc25.for.inc28_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28

for.inc25.land.rhs8_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs8

for.inc28:                                        ; preds = %for.inc25.for.inc28_crit_edge, %land.rhs8.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %nd.1.lcssa = phi ptr [ %nd.0108, %for.body.for.inc28_crit_edge ], [ %nd.1103, %land.rhs8.for.inc28_crit_edge ], [ %nd.2, %for.inc25.for.inc28_crit_edge ]
  %incdec.ptr29 = getelementptr ptr, ptr %t.0109, i32 1
  %cmp = icmp ult ptr %incdec.ptr29, %add.ptr3
  br i1 %cmp, label %for.inc28.land.rhs_crit_edge, label %for.inc28.for.end30_crit_edge

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.inc28.land.rhs_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %land.rhs.for.end30_crit_edge, %entry.for.end30_crit_edge
  %nd.0.lcssa = phi ptr [ %nds, %entry.for.end30_crit_edge ], [ %nd.1.lcssa, %for.inc28.for.end30_crit_edge ], [ %nd.0108, %land.rhs.for.end30_crit_edge ]
  %16 = ptrtoint ptr %nds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nds, align 4
  %cmp32 = icmp eq ptr %17, null
  br i1 %cmp32, label %if.then33, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.end30
  %cmp36112 = icmp ult ptr %nds, %nd.0.lcssa
  %sub.ptr.rhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, 4096
  br i1 %cmp36112, label %for.cond35.preheader.for.body37_crit_edge, label %for.cond35.preheader.for.end44_crit_edge

for.cond35.preheader.for.end44_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.cond35.preheader.for.body37_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body37

if.then33:                                        ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.35) #7
  br label %cleanup

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.cond35.preheader.for.body37_crit_edge
  %p.0114 = phi ptr [ %add.ptr41, %for.body37.for.body37_crit_edge ], [ %page, %for.cond35.preheader.for.body37_crit_edge ]
  %nd.3113 = phi ptr [ %incdec.ptr43, %for.body37.for.body37_crit_edge ], [ %nds, %for.cond35.preheader.for.body37_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0114 to i32
  %sub = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  %cmp38 = icmp eq ptr %p.0114, %page
  %cond = select i1 %cmp38, ptr @.str.33, ptr @.str.39
  %18 = ptrtoint ptr %nd.3113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd.3113, align 4
  %call40 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0114, i32 noundef %sub, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond, ptr noundef %19) #7
  %add.ptr41 = getelementptr i8, ptr %p.0114, i32 %call40
  %incdec.ptr43 = getelementptr ptr, ptr %nd.3113, i32 1
  %cmp36 = icmp ult ptr %incdec.ptr43, %nd.0.lcssa
  br i1 %cmp36, label %for.body37.for.body37_crit_edge, label %for.end44.loopexit

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

for.end44.loopexit:                               ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  %.pre117 = ptrtoint ptr %add.ptr41 to i32
  br label %for.end44

for.end44:                                        ; preds = %for.end44.loopexit, %for.cond35.preheader.for.end44_crit_edge
  %sub.ptr.lhs.cast45.pre-phi = phi i32 [ %.pre117, %for.end44.loopexit ], [ %sub.ptr.rhs.cast, %for.cond35.preheader.for.end44_crit_edge ]
  %p.0.lcssa = phi ptr [ %add.ptr41, %for.end44.loopexit ], [ %page, %for.cond35.preheader.for.end44_crit_edge ]
  %sub48 = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast45.pre-phi
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.lcssa, i32 noundef %sub48, ptr noundef nonnull @.str.40) #7
  %add.ptr50 = getelementptr i8, ptr %p.0.lcssa, i32 %call49
  %sub.ptr.lhs.cast51 = ptrtoint ptr %add.ptr50 to i32
  %sub.ptr.sub53 = sub i32 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.then33
  %retval.0 = phi i32 [ %call, %if.then33 ], [ %sub.ptr.sub53, %for.end44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nds) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_show_fwver(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %fw_ver = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_ver, align 2
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.42, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_show_payload(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %maxbcnt = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %maxbcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxbcnt, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.44, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoe_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @aoedisk_debugfs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoedisk_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rttavg = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rttavg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rttavg, align 4
  %shr = lshr i32 %3, 8
  %rttdev = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rttdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rttdev, align 8
  %shr1 = lshr i32 %5, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %shr, i32 noundef %shr1) #7
  %qlen.i = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %7) #7
  %kicked = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %kicked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kicked, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %9) #7
  %maxbcnt = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %maxbcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxbcnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %11) #7
  %ref = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %13) #7
  %lock = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 21
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %targets = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %targets, align 8
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ntargets, align 4
  %add.ptr = getelementptr ptr, ptr %15, i32 %17
  %cmp780 = icmp ult ptr %15, %add.ptr
  br i1 %cmp780, label %entry.land.rhs_crit_edge, label %entry.for.end30_crit_edge

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %t.081 = phi ptr [ %incdec.ptr29, %for.end.land.rhs_crit_edge ], [ %15, %entry.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.081, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %land.rhs.for.end30_crit_edge, label %for.body

land.rhs.for.end30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.body:                                         ; preds = %land.rhs
  %falloc = getelementptr inbounds %struct.aoetgt, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %falloc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %falloc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef %21) #7
  %22 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t.081, align 4
  %ffree = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ffree to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %ffree, align 4
  %cmp.i.not = icmp eq ptr %25, %ffree
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %spec.select) #7
  %26 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t.081, align 4
  %nout = getelementptr inbounds %struct.aoetgt, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nout, align 4
  %conv12 = zext i16 %29 to i32
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %maxout to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %maxout, align 2
  %conv13 = zext i16 %31 to i32
  %nframes = getelementptr inbounds %struct.aoetgt, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %nframes to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nframes, align 2
  %conv14 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef %27, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #7
  %34 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %t.081, align 4
  %ssthresh = getelementptr inbounds %struct.aoetgt, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %ssthresh to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ssthresh, align 2
  %conv15 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %conv15) #7
  %38 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t.081, align 4
  %taint = getelementptr inbounds %struct.aoetgt, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %taint to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %taint, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %41) #7
  %42 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t.081, align 4
  %rpkts = getelementptr inbounds %struct.aoetgt, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %rpkts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rpkts, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %45) #7
  %46 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t.081, align 4
  %wpkts = getelementptr inbounds %struct.aoetgt, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %wpkts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wpkts, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %49) #7
  %50 = ptrtoint ptr %t.081 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t.081, align 4
  %ifs = getelementptr inbounds %struct.aoetgt, ptr %51, i32 0, i32 4
  %add.ptr17 = getelementptr %struct.aoetgt, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ifs, align 4
  %tobool19.not75 = icmp ne ptr %53, null
  %cmp2176 = icmp ult ptr %ifs, %add.ptr17
  %or.cond77 = select i1 %tobool19.not75, i1 %cmp2176, i1 false
  br i1 %or.cond77, label %for.body24.preheader, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body24.preheader:                             ; preds = %for.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef 9, ptr noundef nonnull %53) #7
  %incdec.ptr.peel = getelementptr %struct.aoetgt, ptr %51, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %incdec.ptr.peel to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %incdec.ptr.peel, align 4
  %tobool19.not.peel = icmp ne ptr %55, null
  %cmp21.peel = icmp ult ptr %incdec.ptr.peel, %add.ptr17
  %or.cond.peel = select i1 %tobool19.not.peel, i1 %cmp21.peel, i1 false
  br i1 %or.cond.peel, label %for.body24.preheader.for.body24_crit_edge, label %for.body24.preheader.for.end_crit_edge

for.body24.preheader.for.end_crit_edge:           ; preds = %for.body24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body24.preheader.for.body24_crit_edge:        ; preds = %for.body24.preheader
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.preheader.for.body24_crit_edge
  %56 = phi ptr [ %58, %for.body24.for.body24_crit_edge ], [ %55, %for.body24.preheader.for.body24_crit_edge ]
  %ifp.078 = phi ptr [ %incdec.ptr, %for.body24.for.body24_crit_edge ], [ %incdec.ptr.peel, %for.body24.preheader.for.body24_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef 44, ptr noundef nonnull %56) #7
  %incdec.ptr = getelementptr %struct.aoeif, ptr %ifp.078, i32 1
  %57 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %incdec.ptr, align 4
  %tobool19.not = icmp ne ptr %58, null
  %cmp21 = icmp ult ptr %incdec.ptr, %add.ptr17
  %or.cond = select i1 %tobool19.not, i1 %cmp21, i1 false
  br i1 %or.cond, label %for.body24.for.body24_crit_edge, label %for.body24.for.end_crit_edge, !llvm.loop !163

for.body24.for.end_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end:                                          ; preds = %for.body24.for.end_crit_edge, %for.body24.preheader.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.40) #7
  %incdec.ptr29 = getelementptr ptr, ptr %t.081, i32 1
  %cmp7 = icmp ult ptr %incdec.ptr29, %add.ptr
  br i1 %cmp7, label %for.end.land.rhs_crit_edge, label %for.end.for.end30_crit_edge

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end30:                                        ; preds = %for.end.for.end30_crit_edge, %land.rhs.for.end30_crit_edge, %entry.for.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !72, !73, !74, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__param_aoe_maxsectors, !1, !"__param_aoe_maxsectors", i1 false, i1 false}
!1 = !{!"../drivers/block/aoe/aoeblk.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_aoe_maxsectorstype373, !1, !"__UNIQUE_ID_aoe_maxsectorstype373", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aoe_maxsectors374, !4, !"__UNIQUE_ID_aoe_maxsectors374", i1 false, i1 false}
!4 = !{!"../drivers/block/aoe/aoeblk.c", i32 31, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/block/aoe/aoeblk.c", i32 366, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @aoeblk_gdalloc._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @aoeblk_gdalloc._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/aoe/aoeblk.c", i32 380, i32 3}
!13 = !{ptr @aoeblk_gdalloc._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @aoeblk_gdalloc._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @aoeblk_gdalloc.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/block/aoe/aoeblk.c", i32 385, i32 7}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/aoe/aoeblk.c", i32 387, i32 3}
!19 = !{ptr @aoeblk_gdalloc._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @aoeblk_gdalloc._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/aoe/aoeblk.c", i32 411, i32 48}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/aoe/aoeblk.c", i32 454, i32 37}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/aoe/aoeblk.c", i32 459, i32 39}
!27 = !{ptr @buf_pool_cache, !28, !"buf_pool_cache", i1 false, i1 false}
!28 = !{!"../drivers/block/aoe/aoeblk.c", i32 25, i32 27}
!29 = !{ptr @aoe_debugfs_dir, !30, !"aoe_debugfs_dir", i1 false, i1 false}
!30 = !{!"../drivers/block/aoe/aoeblk.c", i32 26, i32 23}
!31 = !{ptr @aoe_maxsectors, !32, !"aoe_maxsectors", i1 false, i1 false}
!32 = !{!"../drivers/block/aoe/aoeblk.c", i32 29, i32 12}
!33 = !{ptr @__param_str_aoe_maxsectors, !1, !"__param_str_aoe_maxsectors", i1 false, i1 false}
!34 = !{ptr @aoeblk_mq_ops, !35, !"aoeblk_mq_ops", i1 false, i1 false}
!35 = !{!"../drivers/block/aoe/aoeblk.c", i32 336, i32 32}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/block/aoe/aoeblk.c", i32 270, i32 3}
!38 = !{ptr @aoeblk_queue_rq._rs, !37, !"_rs", i1 false, i1 false}
!39 = !{ptr @__func__.aoeblk_queue_rq, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aoeblk_queue_rq._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @aoeblk_queue_rq._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @aoe_bdops, !44, !"aoe_bdops", i1 false, i1 false}
!44 = !{!"../drivers/block/aoe/aoeblk.c", i32 327, i32 45}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/aoe/aoeblk.c", i32 225, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @aoeblk_open._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @aoeblk_open._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/aoe/aoeblk.c", i32 24, i32 8}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @aoeblk_mutex, !51, !"aoeblk_mutex", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/aoe/aoeblk.c", i32 309, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @aoeblk_ioctl._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @aoeblk_ioctl._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/aoe/aoeblk.c", i32 322, i32 3}
!61 = !{ptr @aoeblk_ioctl._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @aoeblk_ioctl._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/block/aoe/aoeblk.c", i32 289, i32 3}
!72 = !{ptr @aoeblk_getgeo._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @aoeblk_getgeo._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @aoe_attr_groups, !75, !"aoe_attr_groups", i1 false, i1 false}
!75 = !{!"../drivers/block/aoe/aoeblk.c", i32 183, i32 38}
!76 = !{ptr @aoe_attr_group, !77, !"aoe_attr_group", i1 false, i1 false}
!77 = !{!"../drivers/block/aoe/aoeblk.c", i32 179, i32 37}
!78 = !{ptr @aoe_attrs, !79, !"aoe_attrs", i1 false, i1 false}
!79 = !{!"../drivers/block/aoe/aoeblk.c", i32 170, i32 26}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/aoe/aoeblk.c", i32 161, i32 8}
!82 = !{ptr @dev_attr_state, !81, !"dev_attr_state", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/block/aoe/aoeblk.c", i32 40, i32 26}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/block/aoe/aoeblk.c", i32 41, i32 28}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/block/aoe/aoeblk.c", i32 41, i32 35}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/block/aoe/aoeblk.c", i32 42, i32 32}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/block/aoe/aoeblk.c", i32 43, i32 43}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/aoe/aoeblk.c", i32 43, i32 58}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/aoe/aoeblk.c", i32 162, i32 8}
!97 = !{ptr @dev_attr_mac, !96, !"dev_attr_mac", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/aoe/aoeblk.c", i32 54, i32 27}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/block/aoe/aoeblk.c", i32 55, i32 26}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/block/aoe/aoeblk.c", i32 163, i32 8}
!104 = !{ptr @dev_attr_netif, !103, !"dev_attr_netif", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/aoe/aoeblk.c", i32 89, i32 43}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/block/aoe/aoeblk.c", i32 90, i32 21}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/aoe/aoeblk.c", i32 91, i32 42}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/aoe/aoeblk.c", i32 165, i32 20}
!113 = !{ptr @dev_attr_firmware_version, !114, !"dev_attr_firmware_version", i1 false, i1 false}
!114 = !{!"../drivers/block/aoe/aoeblk.c", i32 164, i32 32}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/aoe/aoeblk.c", i32 101, i32 26}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/aoe/aoeblk.c", i32 168, i32 8}
!119 = !{ptr @dev_attr_payload, !118, !"dev_attr_payload", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/block/aoe/aoeblk.c", i32 109, i32 26}
!122 = !{ptr @aoe_debugfs_fops, !123, !"aoe_debugfs_fops", i1 false, i1 false}
!123 = !{!"../drivers/block/aoe/aoeblk.c", i32 188, i32 37}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/block/aoe/aoeblk.c", i32 121, i32 16}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/aoe/aoeblk.c", i32 124, i32 16}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/block/aoe/aoeblk.c", i32 125, i32 16}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/aoe/aoeblk.c", i32 126, i32 16}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/aoe/aoeblk.c", i32 127, i32 16}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/aoe/aoeblk.c", i32 134, i32 17}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/block/aoe/aoeblk.c", i32 135, i32 17}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/block/aoe/aoeblk.c", i32 137, i32 17}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/block/aoe/aoeblk.c", i32 139, i32 17}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/aoe/aoeblk.c", i32 140, i32 17}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/block/aoe/aoeblk.c", i32 141, i32 17}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/aoe/aoeblk.c", i32 142, i32 17}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/block/aoe/aoeblk.c", i32 146, i32 18}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2156374572, i64 2156375063, i64 2156374609, i64 2156374665, i64 2156374699, i64 2156374723, i64 2156374764, i64 2156374785, i64 2156374813, i64 2156374847}
!162 = !{i64 2152319445, i64 2152319470}
!163 = distinct !{!163, !164}
!164 = !{!"llvm.loop.peeled.count", i32 1}
