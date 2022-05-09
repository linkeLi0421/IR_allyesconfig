; ModuleID = '/llk/IR_all_yes/drivers/block/virtio_blk.c_pt.bc'
source_filename = "../drivers/block/virtio_blk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_blk = type { %struct.mutex, ptr, ptr, %struct.blk_mq_tag_set, %struct.work_struct, %struct.refcount_struct, i32, i32, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
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
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.virtio_blk_vq = type { ptr, %struct.spinlock, [16 x i8], [64 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.virtio_blk_discard_write_zeroes = type { i64, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__param_str_num_request_queues = internal constant [30 x i8] c"virtio_blk.num_request_queues\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_request_queues = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_request_queues = internal constant %struct.kernel_param { ptr @__param_str_num_request_queues, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_request_queues } }, section "__param", align 4
@__UNIQUE_ID_num_request_queuestype285 = internal constant [44 x i8] c"virtio_blk.parmtype=num_request_queues:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_request_queues286 = internal constant [154 x i8] c"virtio_blk.parm=num_request_queues:Limit the number of request queues to use for blk device. 0 for no limit. Values > nr_cpu_ids truncated to nr_cpu_ids.\00", section ".modinfo", align 1
@__param_str_queue_depth = internal constant [23 x i8] c"virtio_blk.queue_depth\00", align 1
@virtblk_queue_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_queue_depth, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @virtblk_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_queue_depthtype292 = internal constant [37 x i8] c"virtio_blk.parmtype=queue_depth:uint\00", section ".modinfo", align 1
@virtio_blk = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 11, ptr @features_legacy, i32 11, ptr null, ptr @virtblk_probe, ptr null, ptr @virtblk_remove, ptr @virtblk_config_changed, ptr @virtblk_freeze, ptr @virtblk_restore }, [36 x i8] zeroinitializer }, align 32
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"virtblk\00", [24 x i8] zeroinitializer }, align 32
@virtblk_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_virtio_blk__299_1093_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [43 x i8] c"virtio_blk.description=Virtio block driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [41 x i8] c"virtio_blk.file=drivers/block/virtio_blk\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [23 x i8] c"virtio_blk.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_blk\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 2, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 1, i32 4, i32 5, i32 6, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], [52 x i8] zeroinitializer }, align 32
@features_legacy = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 1, i32 4, i32 5, i32 6, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], [52 x i8] zeroinitializer }, align 32
@virtblk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virtblk_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/virtio_blk.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtblk_probe._entry_ptr = internal global ptr @virtblk_probe._entry, section ".printk_index", align 4
@vd_index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@virtblk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vblk->vdev_mutex\00", [46 x i8] zeroinitializer }, align 32
@virtblk_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&vblk->config_work)\00", [58 x i8] zeroinitializer }, align 32
@virtio_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @virtio_queue_rq, ptr @virtio_commit_rqs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_request_done, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@virtblk_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@virtblk_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @virtblk_open, ptr @virtblk_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@virtblk_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"virtio_blk: invalid block size: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@virtblk_probe._entry_ptr.14 = internal global ptr @virtblk_probe._entry.12, section ".printk_index", align 4
@virtblk_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @virtblk_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vd_index_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 560, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MQ advertised but zero queues reported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_vq\00", [24 x i8] zeroinitializer }, align 32
@init_vq._entry_ptr = internal global ptr @init_vq._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"req.%d\00", [25 x i8] zeroinitializer }, align 32
@init_vq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vblk->vqs[i].lock\00", [45 x i8] zeroinitializer }, align 32
@virtblk_setup_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virtblk_setup_discard_write_zeroes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@virtblk_update_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 523, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s] %s%llu %d-byte logical blocks (%s/%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"virtblk_update_capacity\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@virtblk_update_capacity._entry_ptr = internal global ptr @virtblk_update_capacity._entry, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new size: \00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@virtblk_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @virtblk_attrs_are_visible, ptr null, ptr @virtblk_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@virtblk_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_serial, ptr @dev_attr_cache_type, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_cache_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cache_type_show, ptr @cache_type_store }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_type\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@virtblk_cache_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write through\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write back\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio-blk\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 9, i64 34]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"num_request_queues\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 33, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"virtblk_queue_depth\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 743, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"virtio_blk\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1044, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 40, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1090, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"virtblk_wq\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 43, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1049, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1025, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1037, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"features_legacy\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1030, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 758, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"vd_index_ida\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 789, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 793, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"virtio_mq_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 736, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 824, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"virtblk_fops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 458, i32 45 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 871, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"virtblk_attr_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 723, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 41, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 560, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 582, i32 44 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 592, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 240, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 516, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 451, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"virtblk_attr_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 718, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"virtblk_attrs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 697, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"dev_attr_cache_type\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 695, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 692, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"virtblk_cache_types\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 661, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 662, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 662, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 495, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [30 x i8] c"../drivers/block/virtio_blk.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1065, i32 31 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_num_request_queues286, ptr @__UNIQUE_ID_num_request_queuestype285, ptr @__UNIQUE_ID_queue_depthtype292, ptr @__exitcall_fini, ptr @__initcall__kmod_virtio_blk__299_1093_init6, ptr @__param_num_request_queues, ptr @__param_queue_depth, ptr @fini, ptr @init_vq._entry, ptr @init_vq._entry_ptr, ptr @virtblk_probe._entry, ptr @virtblk_probe._entry.12, ptr @virtblk_probe._entry_ptr, ptr @virtblk_probe._entry_ptr.14, ptr @virtblk_update_capacity._entry, ptr @virtblk_update_capacity._entry_ptr, ptr @num_request_queues, ptr @virtblk_queue_depth, ptr @virtio_blk, ptr @major, ptr @.str, ptr @virtblk_wq, ptr @.str.1, ptr @id_table, ptr @features, ptr @features_legacy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vd_index_ida, ptr @virtblk_probe.__key, ptr @.str.7, ptr @virtblk_probe.__key.8, ptr @.str.9, ptr @virtio_mq_ops, ptr @virtblk_probe.__key.10, ptr @virtblk_fops, ptr @.str.13, ptr @virtblk_attr_groups, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_vq.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @virtblk_attr_group, ptr @virtblk_attrs, ptr @dev_attr_cache_type, ptr @.str.27, ptr @.str.28, ptr @virtblk_cache_types, ptr @.str.29, ptr @.str.30, ptr @dev_attr_serial, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_request_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_blk to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_legacy to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vd_index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_update_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cache_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtblk_cache_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_blk) #12
  %0 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str) #12
  %1 = load ptr, ptr @virtblk_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0) #12
  store ptr %call, ptr @virtblk_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #12
  store i32 %call1, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_destroy_workqueue_crit_edge, label %if.end3

if.end.out_destroy_workqueue_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_destroy_workqueue

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_blk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %out_unregister_blkdev

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_unregister_blkdev:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str) #12
  br label %out_destroy_workqueue

out_destroy_workqueue:                            ; preds = %out_unregister_blkdev, %if.end.out_destroy_workqueue_crit_edge
  %error.0 = phi i32 [ %call4, %out_unregister_blkdev ], [ %call1, %if.end.out_destroy_workqueue_crit_edge ]
  %1 = load ptr, ptr @virtblk_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_workqueue, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_destroy_workqueue ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  %virtio_cread_v98 = alloca i32, align 4
  %virtio_cread_v132 = alloca i32, align 4
  %virtio_cread_v169 = alloca i8, align 1
  %virtio_cread_v198 = alloca i8, align 1
  %virtio_cread_v229 = alloca i16, align 2
  %virtio_cread_v261 = alloca i32, align 4
  %virtio_cread_v289 = alloca i32, align 4
  %virtio_cread_v314 = alloca i32, align 4
  %virtio_cread_v337 = alloca i32, align 4
  %virtio_cread_v369 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @vd_index_ida, i32 noundef 0, i32 noundef 65535, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 2) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end3.if.end19_crit_edge, label %do.body6

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.body6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #12
  %6 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 772) #12
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %get15 = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %get15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get15, align 4
  call void %10(ptr noundef %vdev, i32 noundef 12, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #12
  %11 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virtio_cread_v, align 4
  %13 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i = and i64 %14, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %15 = call i32 @llvm.bswap.i32(i32 %12) #12
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %12, i32 %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #12
  br label %if.end19

if.end19:                                         ; preds = %do.body6, %if.end3.if.end19_crit_edge
  %sg_elems.0 = phi i32 [ %retval.0.i.i, %do.body6 ], [ -1, %if.end3.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_elems.0)
  %tobool22.not = icmp eq i32 %sg_elems.0, 0
  %or.cond = select i1 %tobool13.i.i.not, i1 true, i1 %tobool22.not
  %16 = call i32 @llvm.umin.i32(i32 %sg_elems.0, i32 32766)
  %17 = select i1 %or.cond, i32 1, i32 %16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 344) #16
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %priv, align 8
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end19.out_free_index_crit_edge, label %if.end31

if.end19.out_free_index_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_index

if.end31:                                         ; preds = %if.end19
  %refs = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #12
  %20 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refs, align 8
  call void @__mutex_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @virtblk_probe.__key) #12
  %vdev35 = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %vdev35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vdev, ptr %vdev35, align 4
  %config_work = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 4
  call void @__init_work(ptr noundef %config_work, i32 noundef 0) #12
  %22 = ptrtoint ptr %config_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %config_work, align 4
  %lockdep_map = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @virtblk_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry40 = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry40, ptr %entry40, align 8
  %prev.i = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry40, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @virtblk_config_changed_work, ptr %func, align 8
  %call44 = call fastcc i32 @init_vq(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end31.out_free_vblk_crit_edge

if.end31.out_free_vblk_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_vblk

if.end47:                                         ; preds = %if.end31
  %26 = load i32, ptr @virtblk_queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not = icmp eq i32 %26, 0
  br i1 %tobool48.not, label %if.then49, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 8
  %27 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vqs, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %num_free = getelementptr inbounds %struct.virtqueue, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_free, align 4
  %33 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features.i.i, align 8
  %35 = trunc i64 %34 to i32
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 1
  %38 = xor i32 %37, 1
  %spec.select = lshr i32 %32, %38
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end47.if.end54_crit_edge
  %queue_depth.0 = phi i32 [ %spec.select, %if.then49 ], [ %26, %if.end47.if.end54_crit_edge ]
  %tag_set = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3
  %39 = call ptr @memset(ptr %tag_set, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @virtio_mq_ops, ptr %ops, align 4
  %queue_depth57 = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %queue_depth57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %queue_depth.0, ptr %queue_depth57, align 4
  %numa_node = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 7
  %42 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %numa_node, align 8
  %flags = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 9
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %flags, align 8
  %cmd_size = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 6
  %44 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 72, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 10
  %45 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i, ptr %driver_data, align 4
  %num_vqs = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 7
  %46 = ptrtoint ptr %num_vqs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_vqs, align 8
  %nr_hw_queues = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %nr_hw_queues, align 8
  %call64 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end54.out_free_vq_crit_edge

if.end54.out_free_vq_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_vq

if.end67:                                         ; preds = %if.end54
  %call70 = call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef nonnull %call7.i, ptr noundef nonnull @virtblk_probe.__key.10) #12
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 2
  %49 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call70, ptr %disk, align 8
  %cmp.i = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %call70 to i32
  br label %out_free_tags

if.end76:                                         ; preds = %if.end67
  %queue = getelementptr inbounds %struct.gendisk, ptr %call70, i32 0, i32 9
  %51 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call70, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.gendisk, ptr %call70, i32 0, i32 3, i32 2
  %add.ptr1.i = getelementptr %struct.gendisk, ptr %call70, i32 0, i32 4
  %add.ptr2.i = getelementptr %struct.gendisk, ptr %call70, i32 0, i32 3, i32 31
  %53 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %add.ptr2.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end76
  %index.addr.0.i = phi i32 [ %call1, %if.end76 ], [ %sub.i, %if.end.i.do.body.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr2.i, %if.end76 ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %cmp.i578 = icmp eq ptr %p.0.i, %add.ptr.i
  br i1 %cmp.i578, label %do.body.i.virtblk_name_format.exit_crit_edge, label %if.end.i

do.body.i.virtblk_name_format.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_name_format.exit

if.end.i:                                         ; preds = %do.body.i
  %index.addr.0.i.frozen = freeze i32 %index.addr.0.i
  %div.i = sdiv i32 %index.addr.0.i.frozen, 26
  %54 = mul i32 %div.i, 26
  %rem.i.decomposed = sub i32 %index.addr.0.i.frozen, %54
  %55 = trunc i32 %rem.i.decomposed to i8
  %conv.i = add nsw i8 %55, 97
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 -1
  %56 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %incdec.ptr.i, align 1
  %sub.i = add nsw i32 %div.i, -1
  %cmp3.i = icmp sgt i32 %index.addr.0.i, 25
  br i1 %cmp3.i, label %if.end.i.do.body.i_crit_edge, label %do.end.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %57 = call ptr @memmove(ptr %add.ptr.i, ptr %incdec.ptr.i, i32 %sub.ptr.sub.i)
  %58 = ptrtoint ptr %disk_name to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 30308, ptr %disk_name, align 1
  br label %virtblk_name_format.exit

virtblk_name_format.exit:                         ; preds = %do.end.i, %do.body.i.virtblk_name_format.exit_crit_edge
  %59 = load i32, ptr @major, align 4
  %60 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disk, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %61, align 8
  %shl.i = shl i32 %call1, 4
  %63 = load ptr, ptr %disk, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl.i, ptr %first_minor, align 4
  %65 = load ptr, ptr %disk, align 8
  %minors = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %minors, align 8
  %67 = load ptr, ptr %disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i, ptr %private_data, align 8
  %69 = load ptr, ptr %disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @virtblk_fops, ptr %fops, align 8
  %index86 = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 6
  %71 = ptrtoint ptr %index86 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call1, ptr %index86, align 4
  call fastcc void @virtblk_update_cache_mode(ptr noundef %vdev)
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 5) #12
  %72 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %features.i.i, align 8
  %and.i.i580 = and i64 %73, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i580)
  %tobool13.i.i581.not = icmp eq i64 %and.i.i580, 0
  br i1 %tobool13.i.i581.not, label %virtblk_name_format.exit.if.end90_crit_edge, label %if.then88

virtblk_name_format.exit.if.end90_crit_edge:      ; preds = %virtblk_name_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then88:                                        ; preds = %virtblk_name_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %disk, align 8
  call void @set_disk_ro(ptr noundef %75, i1 noundef zeroext true) #12
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %virtblk_name_format.exit.if.end90_crit_edge
  %conv91 = trunc i32 %17 to i16
  call void @blk_queue_max_segments(ptr noundef %52, i16 noundef zeroext %conv91) #12
  call void @blk_queue_max_hw_sectors(ptr noundef %52, i32 noundef -1) #12
  %call92 = call i32 @virtio_max_dma_size(ptr noundef %vdev) #12
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #12
  %76 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %features.i.i, align 8
  %and.i.i584 = and i64 %77, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i584)
  %tobool13.i.i585.not = icmp eq i64 %and.i.i584, 0
  br i1 %tobool13.i.i585.not, label %if.end90.if.end115_crit_edge, label %do.body97

if.end90.if.end115_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

do.body97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v98) #12
  %78 = ptrtoint ptr %virtio_cread_v98 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %virtio_cread_v98, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 858) #12
  %79 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config, align 8
  %get111 = getelementptr inbounds %struct.virtio_config_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %get111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get111, align 4
  call void %82(ptr noundef %vdev, i32 noundef 8, ptr noundef nonnull %virtio_cread_v98, i32 noundef 4) #12
  %83 = ptrtoint ptr %virtio_cread_v98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virtio_cread_v98, align 4
  %85 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i588 = and i64 %86, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i588)
  %tobool13.i.i.i.not.i589 = icmp eq i64 %and.i.i.i.i588, 0
  %87 = call i32 @llvm.bswap.i32(i32 %84) #12
  %retval.0.i.i590 = select i1 %tobool13.i.i.i.not.i589, i32 %84, i32 %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v98) #12
  br label %if.end115

if.end115:                                        ; preds = %do.body97, %if.end90.if.end115_crit_edge
  %v.0 = phi i32 [ %retval.0.i.i590, %do.body97 ], [ -1, %if.end90.if.end115_crit_edge ]
  %88 = call i32 @llvm.umin.i32(i32 %call92, i32 %v.0)
  %max_size.0 = select i1 %tobool13.i.i585.not, i32 %call92, i32 %88
  call void @blk_queue_max_segment_size(ptr noundef %52, i32 noundef %max_size.0) #12
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 6) #12
  %89 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %features.i.i, align 8
  %and.i.i592 = and i64 %90, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i592)
  %tobool13.i.i593.not = icmp eq i64 %and.i.i592, 0
  br i1 %tobool13.i.i593.not, label %if.else161, label %if.then152

if.then152:                                       ; preds = %if.end115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v132) #12
  %91 = ptrtoint ptr %virtio_cread_v132 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %virtio_cread_v132, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 867) #12
  %92 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config, align 8
  %get145 = getelementptr inbounds %struct.virtio_config_ops, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %get145 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get145, align 4
  call void %95(ptr noundef %vdev, i32 noundef 20, ptr noundef nonnull %virtio_cread_v132, i32 noundef 4) #12
  %96 = ptrtoint ptr %virtio_cread_v132 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %virtio_cread_v132, align 4
  %98 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i596 = and i64 %99, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i596)
  %tobool13.i.i.i.not.i597 = icmp eq i64 %and.i.i.i.i596, 0
  %100 = call i32 @llvm.bswap.i32(i32 %97) #12
  %retval.0.i.i598 = select i1 %tobool13.i.i.i.not.i597, i32 %97, i32 %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v132) #12
  %101 = add i32 %retval.0.i.i598, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %101)
  %102 = icmp ult i32 %101, 3585
  %103 = call i32 @llvm.ctpop.i32(i32 %retval.0.i.i598) #12, !range !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp1.i.i = icmp ult i32 %103, 2
  %or.cond672 = and i1 %102, %cmp1.i.i
  br i1 %or.cond672, label %if.end160, label %do.end158

do.end158:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  %dev159 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.i598) #15
  br label %out_cleanup_disk

if.end160:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  call void @blk_queue_logical_block_size(ptr noundef %52, i32 noundef %retval.0.i.i598) #12
  br label %if.end163

if.else161:                                       ; preds = %if.end115
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.else161.if.end163_crit_edge, label %land.lhs.true.i

if.else161.if.end163_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

land.lhs.true.i:                                  ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 9
  %104 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool2.not.i = icmp eq i32 %105, 0
  %spec.select.i599 = select i1 %tobool2.not.i, i32 512, i32 %105
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true.i, %if.else161.if.end163_crit_edge, %if.end160
  %blk_size.1 = phi i32 [ %retval.0.i.i598, %if.end160 ], [ 512, %if.else161.if.end163_crit_edge ], [ %spec.select.i599, %land.lhs.true.i ]
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 10) #12
  %106 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %features.i.i, align 8
  %and.i.i602 = and i64 %107, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i602)
  %tobool13.i.i603.not = icmp eq i64 %and.i.i602, 0
  br i1 %tobool13.i.i603.not, label %if.end163.if.end192_crit_edge, label %if.end185

if.end163.if.end192_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.end185:                                        ; preds = %if.end163
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v169) #12
  %108 = ptrtoint ptr %virtio_cread_v169 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -1, ptr %virtio_cread_v169, align 1, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 884) #12
  %109 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %config, align 8
  %get182 = getelementptr inbounds %struct.virtio_config_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %get182 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %get182, align 4
  call void %112(ptr noundef %vdev, i32 noundef 24, ptr noundef nonnull %virtio_cread_v169, i32 noundef 1) #12
  %113 = ptrtoint ptr %virtio_cread_v169 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %virtio_cread_v169, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v169) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool189.not = icmp eq i8 %114, 0
  br i1 %tobool189.not, label %if.end185.if.end192_crit_edge, label %if.then190

if.end185.if.end192_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then190:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  %conv188 = zext i8 %114 to i32
  %mul = shl i32 %blk_size.1, %conv188
  call void @blk_queue_physical_block_size(ptr noundef %52, i32 noundef %mul) #12
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end185.if.end192_crit_edge, %if.end163.if.end192_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 10) #12
  %115 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %features.i.i, align 8
  %and.i.i606 = and i64 %116, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i606)
  %tobool13.i.i607.not = icmp eq i64 %and.i.i606, 0
  br i1 %tobool13.i.i607.not, label %if.end192.if.end223_crit_edge, label %if.end214

if.end192.if.end223_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end223

if.end214:                                        ; preds = %if.end192
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v198) #12
  %117 = ptrtoint ptr %virtio_cread_v198 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -1, ptr %virtio_cread_v198, align 1, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 891) #12
  %118 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %config, align 8
  %get211 = getelementptr inbounds %struct.virtio_config_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %get211 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %get211, align 4
  call void %121(ptr noundef %vdev, i32 noundef 25, ptr noundef nonnull %virtio_cread_v198, i32 noundef 1) #12
  %122 = ptrtoint ptr %virtio_cread_v198 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %virtio_cread_v198, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v198) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool219.not = icmp eq i8 %123, 0
  br i1 %tobool219.not, label %if.end214.if.end223_crit_edge, label %if.then220

if.end214.if.end223_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end223

if.then220:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  %conv218 = zext i8 %123 to i32
  %mul222 = mul i32 %blk_size.1, %conv218
  call void @blk_queue_alignment_offset(ptr noundef %52, i32 noundef %mul222) #12
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %if.end214.if.end223_crit_edge, %if.end192.if.end223_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 10) #12
  %124 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %features.i.i, align 8
  %and.i.i610 = and i64 %125, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i610)
  %tobool13.i.i611.not = icmp eq i64 %and.i.i610, 0
  br i1 %tobool13.i.i611.not, label %if.end223.if.end255_crit_edge, label %if.end246

if.end223.if.end255_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end255

if.end246:                                        ; preds = %if.end223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v229) #12
  %126 = ptrtoint ptr %virtio_cread_v229 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %virtio_cread_v229, align 2, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 897) #12
  %127 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %config, align 8
  %get242 = getelementptr inbounds %struct.virtio_config_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %get242 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %get242, align 4
  call void %130(ptr noundef %vdev, i32 noundef 26, ptr noundef nonnull %virtio_cread_v229, i32 noundef 2) #12
  %131 = ptrtoint ptr %virtio_cread_v229 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %virtio_cread_v229, align 2
  %133 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i614 = and i64 %134, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i614)
  %tobool13.i.i.i.not.i615 = icmp eq i64 %and.i.i.i.i614, 0
  %135 = call i16 @llvm.bswap.i16(i16 %132) #12
  %retval.0.i.i616 = select i1 %tobool13.i.i.i.not.i615, i16 %132, i16 %135
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v229) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i616)
  %tobool251.not = icmp eq i16 %retval.0.i.i616, 0
  br i1 %tobool251.not, label %if.end246.if.end255_crit_edge, label %if.then252

if.end246.if.end255_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end255

if.then252:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  %conv250 = zext i16 %retval.0.i.i616 to i32
  %mul254 = mul i32 %blk_size.1, %conv250
  call void @blk_queue_io_min(ptr noundef %52, i32 noundef %mul254) #12
  br label %if.end255

if.end255:                                        ; preds = %if.then252, %if.end246.if.end255_crit_edge, %if.end223.if.end255_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 10) #12
  %136 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %features.i.i, align 8
  %and.i.i618 = and i64 %137, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i618)
  %tobool13.i.i619.not = icmp eq i64 %and.i.i618, 0
  br i1 %tobool13.i.i619.not, label %if.end255.if.end285_crit_edge, label %if.end278

if.end255.if.end285_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end285

if.end278:                                        ; preds = %if.end255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v261) #12
  %138 = ptrtoint ptr %virtio_cread_v261 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %virtio_cread_v261, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 903) #12
  %139 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %config, align 8
  %get274 = getelementptr inbounds %struct.virtio_config_ops, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %get274 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %get274, align 4
  call void %142(ptr noundef %vdev, i32 noundef 28, ptr noundef nonnull %virtio_cread_v261, i32 noundef 4) #12
  %143 = ptrtoint ptr %virtio_cread_v261 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %virtio_cread_v261, align 4
  %145 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i622 = and i64 %146, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i622)
  %tobool13.i.i.i.not.i623 = icmp eq i64 %and.i.i.i.i622, 0
  %147 = call i32 @llvm.bswap.i32(i32 %144) #12
  %retval.0.i.i624 = select i1 %tobool13.i.i.i.not.i623, i32 %144, i32 %147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v261) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i624)
  %tobool282.not = icmp eq i32 %retval.0.i.i624, 0
  br i1 %tobool282.not, label %if.end278.if.end285_crit_edge, label %if.then283

if.end278.if.end285_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end285

if.then283:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  %mul284 = mul i32 %retval.0.i.i624, %blk_size.1
  call void @blk_queue_io_opt(ptr noundef %52, i32 noundef %mul284) #12
  br label %if.end285

if.end285:                                        ; preds = %if.then283, %if.end278.if.end285_crit_edge, %if.end255.if.end285_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 13) #12
  %148 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %features.i.i, align 8
  %and.i.i626 = and i64 %149, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i626)
  %tobool13.i.i627.not = icmp eq i64 %and.i.i626, 0
  br i1 %tobool13.i.i627.not, label %if.end285.if.end365_crit_edge, label %if.then287

if.end285.if.end365_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end365

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 18
  %150 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %blk_size.1, ptr %discard_granularity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v289) #12
  %151 = ptrtoint ptr %virtio_cread_v289 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %virtio_cread_v289, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 911) #12
  %152 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %config, align 8
  %get302 = getelementptr inbounds %struct.virtio_config_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %get302 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %get302, align 4
  call void %155(ptr noundef %vdev, i32 noundef 44, ptr noundef nonnull %virtio_cread_v289, i32 noundef 4) #12
  %156 = ptrtoint ptr %virtio_cread_v289 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %virtio_cread_v289, align 4
  %158 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i630 = and i64 %159, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i630)
  %tobool13.i.i.i.not.i631 = icmp eq i64 %and.i.i.i.i630, 0
  %160 = call i32 @llvm.bswap.i32(i32 %157) #12
  %retval.0.i.i632 = select i1 %tobool13.i.i.i.not.i631, i32 %157, i32 %160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v289) #12
  %shl308 = shl i32 %retval.0.i.i632, 9
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 19
  %161 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %shl308, ptr %discard_alignment, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v314) #12
  %162 = ptrtoint ptr %virtio_cread_v314 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %virtio_cread_v314, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 915) #12
  %163 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config, align 8
  %get327 = getelementptr inbounds %struct.virtio_config_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %get327 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %get327, align 4
  call void %166(ptr noundef %vdev, i32 noundef 36, ptr noundef nonnull %virtio_cread_v314, i32 noundef 4) #12
  %167 = ptrtoint ptr %virtio_cread_v314 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %virtio_cread_v314, align 4
  %169 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i634 = and i64 %170, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i634)
  %tobool13.i.i.i.not.i635 = icmp eq i64 %and.i.i.i.i634, 0
  %171 = call i32 @llvm.bswap.i32(i32 %168) #12
  %retval.0.i.i636 = select i1 %tobool13.i.i.i.not.i635, i32 %168, i32 %171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v314) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i636)
  %tobool331.not = icmp eq i32 %retval.0.i.i636, 0
  %cond335 = select i1 %tobool331.not, i32 -1, i32 %retval.0.i.i636
  call void @blk_queue_max_discard_sectors(ptr noundef %52, i32 noundef %cond335) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v337) #12
  %172 = ptrtoint ptr %virtio_cread_v337 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %virtio_cread_v337, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 919) #12
  %173 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %config, align 8
  %get350 = getelementptr inbounds %struct.virtio_config_ops, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %get350 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %get350, align 4
  call void %176(ptr noundef %vdev, i32 noundef 40, ptr noundef nonnull %virtio_cread_v337, i32 noundef 4) #12
  %177 = ptrtoint ptr %virtio_cread_v337 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %virtio_cread_v337, align 4
  %179 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i638 = and i64 %180, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i638)
  %tobool13.i.i.i.not.i639 = icmp eq i64 %and.i.i.i.i638, 0
  %181 = call i32 @llvm.bswap.i32(i32 %178) #12
  %retval.0.i.i640 = select i1 %tobool13.i.i.i.not.i639, i32 %178, i32 %181
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v337) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i640)
  %tobool354.not = icmp eq i32 %retval.0.i.i640, 0
  %v.1 = select i1 %tobool354.not, i32 %17, i32 %retval.0.i.i640
  %182 = call i32 @llvm.umin.i32(i32 %v.1, i32 256)
  %conv364 = trunc i32 %182 to i16
  call void @blk_queue_max_discard_segments(ptr noundef %52, i16 noundef zeroext %conv364) #12
  call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %52) #12
  br label %if.end365

if.end365:                                        ; preds = %if.then287, %if.end285.if.end365_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 14) #12
  %183 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %features.i.i, align 8
  %and.i.i642 = and i64 %184, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i642)
  %tobool13.i.i643.not = icmp eq i64 %and.i.i642, 0
  br i1 %tobool13.i.i643.not, label %if.end365.if.end391_crit_edge, label %do.body368

if.end365.if.end391_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end391

do.body368:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v369) #12
  %185 = ptrtoint ptr %virtio_cread_v369 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %virtio_cread_v369, align 4, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 935) #12
  %186 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config, align 8
  %get382 = getelementptr inbounds %struct.virtio_config_ops, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %get382 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %get382, align 4
  call void %189(ptr noundef %vdev, i32 noundef 48, ptr noundef nonnull %virtio_cread_v369, i32 noundef 4) #12
  %190 = ptrtoint ptr %virtio_cread_v369 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %virtio_cread_v369, align 4
  %192 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i646 = and i64 %193, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i646)
  %tobool13.i.i.i.not.i647 = icmp eq i64 %and.i.i.i.i646, 0
  %194 = call i32 @llvm.bswap.i32(i32 %191) #12
  %retval.0.i.i648 = select i1 %tobool13.i.i.i.not.i647, i32 %191, i32 %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v369) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i648)
  %tobool386.not = icmp eq i32 %retval.0.i.i648, 0
  %spec.select574 = select i1 %tobool386.not, i32 -1, i32 %retval.0.i.i648
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %52, i32 noundef %spec.select574) #12
  br label %if.end391

if.end391:                                        ; preds = %do.body368, %if.end365.if.end391_crit_edge
  call fastcc void @virtblk_update_capacity(ptr noundef nonnull %call7.i, i1 noundef zeroext false)
  %195 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %get_status.i, align 4
  %call.i = call zeroext i8 %198(ptr noundef %vdev) #12
  %199 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %config, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %tobool.not.i649 = icmp eq ptr %202, null
  br i1 %tobool.not.i649, label %if.end391.do.body.i650_crit_edge, label %if.then.i

if.end391.do.body.i650_crit_edge:                 ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i650

if.then.i:                                        ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #14
  call void %202(ptr noundef %vdev) #12
  br label %do.body.i650

do.body.i650:                                     ; preds = %if.then.i, %if.end391.do.body.i650_crit_edge
  %203 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool4.not.i = icmp eq i8 %203, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !128

do.body8.i:                                       ; preds = %do.body.i650
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i650
  %204 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %config, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  call void %207(ptr noundef %vdev, i8 noundef zeroext %or.i) #12
  %dev392 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %208 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %disk, align 8
  %call394 = call i32 @device_add_disk(ptr noundef %dev392, ptr noundef %209, ptr noundef nonnull @virtblk_attr_groups) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %virtio_device_ready.exit.cleanup_crit_edge, label %virtio_device_ready.exit.out_cleanup_disk_crit_edge

virtio_device_ready.exit.out_cleanup_disk_crit_edge: ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cleanup_disk

virtio_device_ready.exit.cleanup_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_cleanup_disk:                                 ; preds = %virtio_device_ready.exit.out_cleanup_disk_crit_edge, %do.end158
  %err.0 = phi i32 [ %call394, %virtio_device_ready.exit.out_cleanup_disk_crit_edge ], [ -22, %do.end158 ]
  %210 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %disk, align 8
  call void @blk_cleanup_disk(ptr noundef %211) #12
  br label %out_free_tags

out_free_tags:                                    ; preds = %out_cleanup_disk, %if.then73
  %err.1 = phi i32 [ %50, %if.then73 ], [ %err.0, %out_cleanup_disk ]
  call void @blk_mq_free_tag_set(ptr noundef %tag_set) #12
  br label %out_free_vq

out_free_vq:                                      ; preds = %out_free_tags, %if.end54.out_free_vq_crit_edge
  %err.2 = phi i32 [ %call64, %if.end54.out_free_vq_crit_edge ], [ %err.1, %out_free_tags ]
  %212 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %213, i32 0, i32 8
  %214 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %del_vqs, align 4
  call void %215(ptr noundef %vdev) #12
  %vqs401 = getelementptr inbounds %struct.virtio_blk, ptr %call7.i, i32 0, i32 8
  %216 = ptrtoint ptr %vqs401 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %vqs401, align 4
  call void @kfree(ptr noundef %217) #12
  br label %out_free_vblk

out_free_vblk:                                    ; preds = %out_free_vq, %if.end31.out_free_vblk_crit_edge
  %err.3 = phi i32 [ %call44, %if.end31.out_free_vblk_crit_edge ], [ %err.2, %out_free_vq ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %out_free_index

out_free_index:                                   ; preds = %out_free_vblk, %if.end19.out_free_index_crit_edge
  %err.4 = phi i32 [ %err.3, %out_free_vblk ], [ -12, %if.end19.out_free_index_crit_edge ]
  call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_index, %virtio_device_ready.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %virtio_device_ready.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.4, %out_free_index ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %config_work = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @flush_work(ptr noundef %config_work) #12
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %3) #12
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %5) #12
  %tag_set = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 3
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #12
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  tail call void @virtio_reset_device(ptr noundef %vdev) #12
  %vdev2 = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vdev2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vdev2, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %del_vqs, align 4
  tail call void %10(ptr noundef %vdev) #12
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vqs, align 4
  tail call void @kfree(ptr noundef %12) #12
  tail call void @mutex_unlock(ptr noundef %1) #12
  tail call fastcc void @virtblk_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_config_changed(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @virtblk_wq, align 4
  %config_work = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %config_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @virtio_reset_device(ptr noundef %vdev) #12
  %config_work = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @flush_work(ptr noundef %config_work) #12
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %5) #12
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %del_vqs, align 4
  tail call void %9(ptr noundef %vdev) #12
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vqs, align 4
  tail call void @kfree(ptr noundef %11) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_restore(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @init_vq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %vdev) #12
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef %vdev) #12
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %10 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !128

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  tail call void %14(ptr noundef %vdev, i8 noundef zeroext %or.i) #12
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %virtio_device_ready.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_config_changed_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  tail call fastcc void @virtblk_update_capacity(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_vq(ptr nocapture noundef %vblk) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.irq_affinity, align 4
  %virtio_cread_v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %desc) #12
  %2 = call ptr @memset(ptr %desc, i32 0, i32 36)
  tail call void @virtio_check_driver_offered_feature(ptr noundef %1, i32 noundef 12) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.if.end18_crit_edge, label %if.end

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  %5 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 556) #12
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get, align 4
  call void %9(ptr noundef %1, i32 noundef 34, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #12
  %10 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %virtio_cread_v, align 2
  %12 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i = and i64 %13, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %14 = call i16 @llvm.bswap.i16(i16 %11) #12
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %11, i16 %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i)
  %tobool13.not = icmp eq i16 %retval.0.i.i, 0
  br i1 %tobool13.not, label %do.end17, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %spec.select269 = phi i16 [ %retval.0.i.i, %if.end.if.end18_crit_edge ], [ 1, %entry.if.end18_crit_edge ]
  %15 = load i32, ptr @num_request_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp20 = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  %17 = call i32 @llvm.umin.i32(i32 %15, i32 %16)
  %spec.select = select i1 %cmp22, i32 %15, i32 %17
  %cond34 = select i1 %cmp20, i32 %16, i32 %spec.select
  %conv35 = zext i16 %spec.select269 to i32
  %18 = call i32 @llvm.umin.i32(i32 %cond34, i32 %conv35)
  %19 = shl nuw nsw i32 %18, 7
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #17
  %vqs46311 = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 8
  %20 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i, ptr %vqs46311, align 4
  %tobool48.not312 = icmp eq ptr %call8.i, null
  br i1 %tobool48.not312, label %if.end18.cleanup_crit_edge, label %if.end7.i262

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i262:                                     ; preds = %if.end18
  %21 = shl nuw nsw i32 %18, 2
  %call8.i195 = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #17
  %call8.i228 = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #17
  %call8.i261 = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #17
  %tobool57.not = icmp eq ptr %call8.i195, null
  %tobool58.not = icmp eq ptr %call8.i228, null
  %or.cond164 = select i1 %tobool57.not, i1 true, i1 %tobool58.not
  %tobool60.not = icmp eq ptr %call8.i261, null
  %or.cond165 = select i1 %or.cond164, i1 true, i1 %tobool60.not
  br i1 %or.cond165, label %if.end7.i262.out_crit_edge, label %for.cond.preheader

if.end7.i262.out_crit_edge:                       ; preds = %if.end7.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %if.end7.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp64299.not = icmp eq i32 %18, 0
  br i1 %cmp64299.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0300 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call8.i228, i32 %i.0300
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @virtblk_done, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vqs46311, align 4
  %name = getelementptr %struct.virtio_blk_vq, ptr %24, i32 %i.0300, i32 2
  %call68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.0300)
  %25 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vqs46311, align 4
  %name71 = getelementptr %struct.virtio_blk_vq, ptr %26, i32 %i.0300, i32 2
  %arrayidx73 = getelementptr ptr, ptr %call8.i195, i32 %i.0300
  %27 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name71, ptr %arrayidx73, align 4
  %inc = add nuw nsw i32 %i.0300, 1
  %exitcond.not = icmp eq i32 %inc, %18
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cmp64299.not356 = phi i1 [ true, %for.cond.preheader.for.end_crit_edge ], [ %cmp64299.not, %for.body.for.end_crit_edge ]
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %31(ptr noundef %1, i32 noundef %18, ptr noundef %call8.i261, ptr noundef %call8.i228, ptr noundef %call8.i195, ptr noundef null, ptr noundef nonnull %desc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %for.cond79.preheader, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond79.preheader:                             ; preds = %for.end
  br i1 %cmp64299.not356, label %for.cond79.preheader.for.end95_crit_edge, label %for.cond79.preheader.do.body84_crit_edge

for.cond79.preheader.do.body84_crit_edge:         ; preds = %for.cond79.preheader
  br label %do.body84

for.cond79.preheader.for.end95_crit_edge:         ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95

do.body84:                                        ; preds = %do.body84.do.body84_crit_edge, %for.cond79.preheader.do.body84_crit_edge
  %i.1302 = phi i32 [ %inc94, %do.body84.do.body84_crit_edge ], [ 0, %for.cond79.preheader.do.body84_crit_edge ]
  %32 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vqs46311, align 4
  %lock = getelementptr %struct.virtio_blk_vq, ptr %33, i32 %i.1302, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_vq.__key, i16 noundef signext 3) #12
  %arrayidx90 = getelementptr ptr, ptr %call8.i261, i32 %i.1302
  %34 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx90, align 4
  %36 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vqs46311, align 4
  %arrayidx92 = getelementptr %struct.virtio_blk_vq, ptr %37, i32 %i.1302
  %38 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %arrayidx92, align 128
  %inc94 = add nuw nsw i32 %i.1302, 1
  %exitcond303.not = icmp eq i32 %inc94, %18
  br i1 %exitcond303.not, label %do.body84.for.end95_crit_edge, label %do.body84.do.body84_crit_edge

do.body84.do.body84_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

do.body84.for.end95_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95

for.end95:                                        ; preds = %do.body84.for.end95_crit_edge, %for.cond79.preheader.for.end95_crit_edge
  %num_vqs97 = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 7
  %39 = ptrtoint ptr %num_vqs97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %18, ptr %num_vqs97, align 4
  br label %out

out:                                              ; preds = %for.end95, %for.end.out_crit_edge, %if.end7.i262.out_crit_edge
  %err.0 = phi i32 [ %call.i, %for.end.out_crit_edge ], [ 0, %for.end95 ], [ -12, %if.end7.i262.out_crit_edge ]
  call void @kfree(ptr noundef %call8.i261) #12
  call void @kfree(ptr noundef %call8.i228) #12
  call void @kfree(ptr noundef %call8.i195) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool98.not = icmp eq i32 %err.0, 0
  br i1 %tobool98.not, label %out.cleanup_crit_edge, label %if.then99

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then99:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %vqs46311 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vqs46311, align 4
  call void @kfree(ptr noundef %41) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %out.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ %err.0, %if.then99 ], [ 0, %out.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtblk_update_cache_mode(ptr noundef %vdev) unnamed_addr #2 align 64 {
entry:
  %virtio_cread_v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 11) #12
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %if.then8.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i) #12
  %2 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %virtio_cread_v.i, align 1, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 641) #12
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get.i, align 4
  call void %6(ptr noundef %vdev, i32 noundef 32, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 1) #12
  %7 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %virtio_cread_v.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i) #12
  br label %virtblk_get_cache_mode.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 9) #12
  %9 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i.i.i, align 8
  %and.i.i17.i = lshr i64 %10, 9
  %11 = trunc i64 %and.i.i17.i to i8
  %12 = and i8 %11, 1
  br label %virtblk_get_cache_mode.exit

virtblk_get_cache_mode.exit:                      ; preds = %if.then8.i, %if.end.thread.i
  %writeback.1.i = phi i8 [ %12, %if.then8.i ], [ %8, %if.end.thread.i ]
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %writeback.1.i)
  %tobool = icmp ne i8 %writeback.1.i, 0
  call void @blk_queue_write_cache(ptr noundef %18, i1 noundef zeroext %tobool, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_max_dma_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_alignment_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtblk_update_capacity(ptr nocapture noundef readonly %vblk, i1 noundef zeroext %resize) unnamed_addr #2 align 64 {
entry:
  %cap_str_2 = alloca [10 x i8], align 1
  %cap_str_10 = alloca [10 x i8], align 1
  %virtio_cread_v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 2
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str_2) #12
  %6 = call ptr @memset(ptr %cap_str_2, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cap_str_10) #12
  %7 = call ptr @memset(ptr %cap_str_10, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %virtio_cread_v) #12
  %8 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %virtio_cread_v, align 8, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 507) #12
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 8
  %generation.i = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %generation.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %12(ptr noundef %1) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ 0, %entry.cond.end.i_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 451) #12
  br label %do.body6.i

do.body6.i:                                       ; preds = %cond.end17.i.do.body6.i_crit_edge, %cond.end.i
  %gen.0.i = phi i32 [ %cond.i, %cond.end.i ], [ %cond18.i, %cond.end17.i.do.body6.i_crit_edge ]
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get.i, align 4
  call void %16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 8) #12
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i, align 8
  %generation10.i = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %generation10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %generation10.i, align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %do.body6.i.cond.end17.i_crit_edge, label %cond.true12.i

do.body6.i.cond.end17.i_crit_edge:                ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17.i

cond.true12.i:                                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = call i32 %20(ptr noundef %1) #12
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true12.i, %do.body6.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %call15.i, %cond.true12.i ], [ 0, %do.body6.i.cond.end17.i_crit_edge ]
  %cmp20.not.i = icmp eq i32 %cond18.i, %gen.0.i
  br i1 %cmp20.not.i, label %__virtio_cread_many.exit, label %cond.end17.i.do.body6.i_crit_edge

cond.end17.i.do.body6.i_crit_edge:                ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6.i

__virtio_cread_many.exit:                         ; preds = %cond.end17.i
  %21 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %virtio_cread_v, align 8
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %24, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %25 = call i64 @llvm.bswap.i64(i64 %22) #12
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i64 %22, i64 %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %virtio_cread_v) #12
  %tobool.not.i310 = icmp eq ptr %5, null
  br i1 %tobool.not.i310, label %__virtio_cread_many.exit.queue_logical_block_size.exit317_crit_edge, label %land.lhs.true.i315

__virtio_cread_many.exit.queue_logical_block_size.exit317_crit_edge: ; preds = %__virtio_cread_many.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_logical_block_size.exit317

land.lhs.true.i315:                               ; preds = %__virtio_cread_many.exit
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %26 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i = icmp eq i32 %27, 0
  %.op = lshr i32 %27, 9
  %shr = select i1 %tobool2.not.i, i32 1, i32 %.op
  %conv9 = zext i32 %shr to i64
  %.op373 = lshr i32 %27, 9
  %phi.bo = select i1 %tobool2.not.i, i32 1, i32 %.op373
  br label %queue_logical_block_size.exit317

queue_logical_block_size.exit317:                 ; preds = %land.lhs.true.i315, %__virtio_cread_many.exit.queue_logical_block_size.exit317_crit_edge
  %conv9.pn = phi i64 [ %conv9, %land.lhs.true.i315 ], [ 1, %__virtio_cread_many.exit.queue_logical_block_size.exit317_crit_edge ]
  %retval1.0.i316 = phi i32 [ %phi.bo, %land.lhs.true.i315 ], [ 1, %__virtio_cread_many.exit.queue_logical_block_size.exit317_crit_edge ]
  %sub349.in = add i64 %retval.0.i.i, -1
  %sub349 = add i64 %sub349.in, %conv9.pn
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub349)
  %cmp183 = icmp ult i64 %sub349, 4294967296
  br i1 %cmp183, label %if.then187, label %if.else193, !prof !128

if.then187:                                       ; preds = %queue_logical_block_size.exit317
  call void @__sanitizer_cov_trace_pc() #14
  %conv188 = trunc i64 %sub349 to i32
  %div191 = udiv i32 %conv188, %retval1.0.i316
  %conv192 = zext i32 %div191 to i64
  br label %if.end197

if.else193:                                       ; preds = %queue_logical_block_size.exit317
  call void @__sanitizer_cov_trace_pc() #14
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i316, i64 %sub349) #18, !srcloc !130
  %asmresult1.i = extractvalue { i64, i64 } %28, 1
  br label %if.end197

if.end197:                                        ; preds = %if.else193, %if.then187
  %_tmp.0 = phi i64 [ %conv192, %if.then187 ], [ %asmresult1.i, %if.else193 ]
  br i1 %tobool.not.i310, label %queue_logical_block_size.exit332.thread, label %land.lhs.true.i337

queue_logical_block_size.exit332.thread:          ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  call void @string_get_size(i64 noundef %_tmp.0, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %cap_str_2, i32 noundef 10) #12
  call void @string_get_size(i64 noundef %_tmp.0, i64 noundef 512, i32 noundef 0, ptr noundef nonnull %cap_str_10, i32 noundef 10) #12
  br label %queue_logical_block_size.exit339

land.lhs.true.i337:                               ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i320 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %29 = ptrtoint ptr %logical_block_size.i320 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logical_block_size.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not.i321 = icmp eq i32 %30, 0
  %spec.select.i322 = select i1 %tobool2.not.i321, i32 512, i32 %30
  %conv201 = zext i32 %spec.select.i322 to i64
  call void @string_get_size(i64 noundef %_tmp.0, i64 noundef %conv201, i32 noundef 1, ptr noundef nonnull %cap_str_2, i32 noundef 10) #12
  %31 = ptrtoint ptr %logical_block_size.i320 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %logical_block_size.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i328 = icmp eq i32 %32, 0
  %spec.select.i329 = select i1 %tobool2.not.i328, i32 512, i32 %32
  %conv203 = zext i32 %spec.select.i329 to i64
  call void @string_get_size(i64 noundef %_tmp.0, i64 noundef %conv203, i32 noundef 0, ptr noundef nonnull %cap_str_10, i32 noundef 10) #12
  %logical_block_size.i334 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %33 = ptrtoint ptr %logical_block_size.i334 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logical_block_size.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.i335 = icmp eq i32 %34, 0
  %spec.select.i336 = select i1 %tobool2.not.i335, i32 512, i32 %34
  br label %queue_logical_block_size.exit339

queue_logical_block_size.exit339:                 ; preds = %land.lhs.true.i337, %queue_logical_block_size.exit332.thread
  %retval1.0.i338 = phi i32 [ %spec.select.i336, %land.lhs.true.i337 ], [ 512, %queue_logical_block_size.exit332.thread ]
  %35 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %disk, align 4
  %cond212 = select i1 %resize, ptr @.str.24, ptr @.str.25
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 3
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %disk_name, ptr noundef nonnull %cond212, i64 noundef %_tmp.0, i32 noundef %retval1.0.i338, ptr noundef nonnull %cap_str_10, ptr noundef nonnull %cap_str_2) #15
  %37 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disk, align 4
  %call217 = call zeroext i1 @set_capacity_and_notify(ptr noundef %38, i64 noundef %retval.0.i.i) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str_10) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cap_str_2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_done(ptr noundef %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %len, align 4, !annotation !126
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vqs, align 4
  %lock = getelementptr %struct.virtio_blk_vq, ptr %8, i32 %5, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %do.body5

do.body5:                                         ; preds = %do.cond25.do.body5_crit_edge, %entry
  %req_done.0.off0 = phi i1 [ false, %entry ], [ %req_done.1.off0.lcssa, %do.cond25.do.body5_crit_edge ]
  call void @virtqueue_disable_cb(ptr noundef %vq) #12
  %9 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vqs, align 4
  %arrayidx748 = getelementptr %struct.virtio_blk_vq, ptr %10, i32 %5
  %11 = ptrtoint ptr %arrayidx748 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx748, align 128
  %call949 = call ptr @virtqueue_get_buf(ptr noundef %12, ptr noundef nonnull %len) #12
  %cmp10.not50 = icmp eq ptr %call949, null
  br i1 %cmp10.not50, label %do.body5.while.end_crit_edge, label %do.body5.while.body_crit_edge

do.body5.while.body_crit_edge:                    ; preds = %do.body5
  br label %while.body

do.body5.while.end_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %do.body5.while.body_crit_edge
  %call951 = phi ptr [ %call9, %if.end.while.body_crit_edge ], [ %call949, %do.body5.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call951, i32 -192
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %while.body.if.then_crit_edge, label %blk_should_fake_timeout.exit

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

blk_should_fake_timeout.exit:                     ; preds = %while.body
  %call1.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %14) #12
  br i1 %call1.i, label %blk_should_fake_timeout.exit.if.end_crit_edge, label %blk_should_fake_timeout.exit.if.then_crit_edge, !prof !131

blk_should_fake_timeout.exit.if.then_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

blk_should_fake_timeout.exit.if.end_crit_edge:    ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %blk_should_fake_timeout.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  call void @blk_mq_complete_request(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %blk_should_fake_timeout.exit.if.end_crit_edge
  %18 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vqs, align 4
  %arrayidx7 = getelementptr %struct.virtio_blk_vq, ptr %19, i32 %5
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 128
  %call9 = call ptr @virtqueue_get_buf(ptr noundef %21, ptr noundef nonnull %len) #12
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.body5.while.end_crit_edge
  %req_done.1.off0.lcssa = phi i1 [ %req_done.0.off0, %do.body5.while.end_crit_edge ], [ true, %if.end.while.end_crit_edge ]
  %call16 = call zeroext i1 @virtqueue_is_broken(ptr noundef %vq) #12
  br i1 %call16, label %while.end.do.end29_crit_edge, label %do.cond25, !prof !131

while.end.do.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.cond25:                                        ; preds = %while.end
  %call26 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vq) #12
  br i1 %call26, label %do.cond25.do.end29_crit_edge, label %do.cond25.do.body5_crit_edge

do.cond25.do.body5_crit_edge:                     ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.cond25.do.end29_crit_edge:                     ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end29:                                         ; preds = %do.cond25.do.end29_crit_edge, %while.end.do.end29_crit_edge
  br i1 %req_done.1.off0.lcssa, label %if.then31, label %do.end29.if.end32_crit_edge

do.end29.if.end32_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %disk = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue, align 4
  call void @blk_mq_start_stopped_hw_queues(ptr noundef %25, i1 noundef zeroext true) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.end29.if.end32_crit_edge
  %26 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vqs, align 4
  %lock35 = getelementptr %struct.virtio_blk_vq, ptr %27, i32 %5, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock35, i32 noundef %call2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_stopped_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @virtio_queue_rq(ptr noundef %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  %hdr.i = alloca %struct.scatterlist, align 4
  %status.i = alloca %struct.scatterlist, align 4
  %sgs.i = alloca [3 x ptr], align 4
  %last_sg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %5, i32 1
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %6 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_num, align 4
  %vdev = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 4
  %sector.i = getelementptr %struct.request, ptr %5, i32 1, i32 2
  %10 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %sector.i, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_flags.i, align 4
  %trunc.i = trunc i32 %12 to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %land.end.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
    i8 2, label %entry.sw.epilog.i_crit_edge
    i8 3, label %sw.bb10.i
    i8 9, label %sw.bb11.i
    i8 34, label %sw.bb14.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %__sector.i.i, align 8
  %features.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %17, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i = icmp eq i64 %and.i.i.i.i.i, 0
  %18 = tail call i64 @llvm.bswap.i64(i64 %15) #12
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i.i, i64 %15, i64 %18
  %19 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.0.i.i.i, ptr %sector.i, align 8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %__sector.i85.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %__sector.i85.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %__sector.i85.i, align 8
  %features.i.i.i.i86.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %22 = ptrtoint ptr %features.i.i.i.i86.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features.i.i.i.i86.i, align 8
  %and.i.i.i.i87.i = and i64 %23, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i87.i)
  %tobool13.i.i.i.not.i88.i = icmp eq i64 %and.i.i.i.i87.i, 0
  %24 = tail call i64 @llvm.bswap.i64(i64 %21) #12
  %retval.0.i.i89.i = select i1 %tobool13.i.i.i.not.i88.i, i64 %21, i64 %24
  %25 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %retval.0.i.i89.i, ptr %sector.i, align 8
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %26 = shl i32 %12, 1
  %27 = and i32 %26, 16777216
  %28 = xor i32 %27, 16777216
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.end.i:                                       ; preds = %entry
  %.b84.i = load i1, ptr @virtblk_setup_cmd.__already_done, align 1
  br i1 %.b84.i, label %land.end.i.cleanup_crit_edge, label %if.then.i, !prof !128

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @virtblk_setup_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 242, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.bb11.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %cmp.i = phi i1 [ false, %sw.bb14.i ], [ false, %sw.bb11.i ], [ true, %sw.bb10.i ], [ false, %sw.bb4.i ], [ false, %sw.bb.i ], [ false, %entry.sw.epilog.i_crit_edge ]
  %cmp58.i = phi i1 [ false, %sw.bb14.i ], [ true, %sw.bb11.i ], [ false, %sw.bb10.i ], [ false, %sw.bb4.i ], [ false, %sw.bb.i ], [ false, %entry.sw.epilog.i_crit_edge ]
  %type.0.i = phi i32 [ 8, %sw.bb14.i ], [ 13, %sw.bb11.i ], [ 11, %sw.bb10.i ], [ 1, %sw.bb4.i ], [ 0, %sw.bb.i ], [ 4, %entry.sw.epilog.i_crit_edge ]
  %unmap.0.off0.i = phi i32 [ 0, %sw.bb14.i ], [ %28, %sw.bb11.i ], [ 0, %sw.bb10.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %features.i.i.i.i90.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %29 = ptrtoint ptr %features.i.i.i.i90.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features.i.i.i.i90.i, align 8
  %and.i.i.i.i91.i = and i64 %30, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i91.i)
  %tobool13.i.i.i.not.i92.i = icmp eq i64 %and.i.i.i.i91.i, 0
  %31 = shl nuw nsw i32 %type.0.i, 24
  %retval.0.i.i93.i = select i1 %tobool13.i.i.i.not.i92.i, i32 %type.0.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i93.i, ptr %add.ptr.i, align 8
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 24
  %33 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ioprio.i.i, align 2
  %conv54.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %features.i.i.i.i90.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %features.i.i.i.i90.i, align 8
  %and.i.i.i.i95.i = and i64 %36, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i95.i)
  %tobool13.i.i.i.not.i96.i = icmp eq i64 %and.i.i.i.i95.i, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv54.i) #12
  %retval.0.i.i97.i = select i1 %tobool13.i.i.i.not.i96.i, i32 %conv54.i, i32 %37
  %ioprio.i = getelementptr %struct.request, ptr %5, i32 1, i32 1
  %38 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i97.i, ptr %ioprio.i, align 4
  %brmerge.i = or i1 %cmp.i, %cmp58.i
  br i1 %brmerge.i, label %if.then60.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then60.i:                                      ; preds = %sw.epilog.i
  %nr_phys_segments.i.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 19
  %39 = ptrtoint ptr %nr_phys_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nr_phys_segments.i.i.i, align 4
  %41 = tail call i16 @llvm.umax.i16(i16 %40, i16 1) #12
  %conv.i.i = zext i16 %41 to i32
  %42 = shl nuw nsw i32 %conv.i.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 2592) #17
  %tobool2.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then60.i.cleanup_crit_edge, label %if.end4.i.i

if.then60.i.cleanup_crit_edge:                    ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.then60.i
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 8
  %max_discard_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 37, i32 23
  %45 = ptrtoint ptr %max_discard_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %max_discard_segments.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %cmp.i.i = icmp eq i16 %46, 1
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags9.i.i = getelementptr inbounds %struct.virtio_blk_discard_write_zeroes, ptr %call8.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %unmap.0.off0.i, ptr %flags9.i.i, align 4
  %__data_len.i.i.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %__data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %__data_len.i.i.i.i, align 8
  %shr.i.i.i = lshr i32 %49, 9
  %50 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i.i) #12
  %num_sectors.i.i = getelementptr inbounds %struct.virtio_blk_discard_write_zeroes, ptr %call8.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %num_sectors.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %num_sectors.i.i, align 8
  %__sector.i.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %52 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %__sector.i.i.i, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #12
  %55 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %call8.i.i.i, align 128
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  %bio14.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 10
  %56 = ptrtoint ptr %bio14.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bio14.i.i, align 8
  %tobool15.not.i.i = icmp eq ptr %57, null
  br i1 %tobool15.not.i.i, label %if.else.i.i.land.rhs.i.i_crit_edge, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  br label %for.body.i.i

if.else.i.i.land.rhs.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i.i.for.body.i.i_crit_edge
  %n.0124.i.i = phi i16 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i_crit_edge ]
  %bio.0123.i.i = phi ptr [ %68, %for.body.i.i.for.body.i.i_crit_edge ], [ %57, %if.else.i.i.for.body.i.i_crit_edge ]
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio.0123.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bi_iter.i.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio.0123.i.i, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bi_size.i.i, align 8
  %shr.i.i = lshr i32 %61, 9
  %idxprom.i.i = zext i16 %n.0124.i.i to i32
  %arrayidx22.i.i = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %call8.i.i.i, i32 %idxprom.i.i
  %flags23.i.i = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %call8.i.i.i, i32 %idxprom.i.i, i32 2
  %62 = ptrtoint ptr %flags23.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %unmap.0.off0.i, ptr %flags23.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #12
  %num_sectors26.i.i = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %call8.i.i.i, i32 %idxprom.i.i, i32 1
  %64 = ptrtoint ptr %num_sectors26.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %num_sectors26.i.i, align 8
  %65 = tail call i64 @llvm.bswap.i64(i64 %59) #12
  %66 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx22.i.i, align 16
  %inc.i.i = add i16 %n.0124.i.i, 1
  %67 = ptrtoint ptr %bio.0123.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bio.0123.i.i, align 8
  %tobool18.not.i.i = icmp eq ptr %68, null
  br i1 %tobool18.not.i.i, label %for.body.i.i.if.end31.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.if.end31.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %for.body.i.i.if.end31.i.i_crit_edge, %if.then8.i.i
  %n.1.i.i = phi i16 [ 1, %if.then8.i.i ], [ %inc.i.i, %for.body.i.i.if.end31.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %n.1.i.i, i16 %41)
  %cmp34.not.i.i = icmp eq i16 %n.1.i.i, %41
  br i1 %cmp34.not.i.i, label %if.end31.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge, label %if.end31.i.i.land.rhs.i.i_crit_edge

if.end31.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end31.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_setup_discard_write_zeroes.exit.thread.i

land.rhs.i.i:                                     ; preds = %if.end31.i.i.land.rhs.i.i_crit_edge, %if.else.i.i.land.rhs.i.i_crit_edge
  %.b113.i.i = load i1, ptr @virtblk_setup_discard_write_zeroes.__already_done, align 1
  br i1 %.b113.i.i, label %land.rhs.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge, label %if.then45.i.i, !prof !128

land.rhs.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_setup_discard_write_zeroes.exit.thread.i

if.then45.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @virtblk_setup_discard_write_zeroes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 166, i32 noundef 9, ptr noundef null) #12
  br label %virtblk_setup_discard_write_zeroes.exit.thread.i

virtblk_setup_discard_write_zeroes.exit.thread.i: ; preds = %if.then45.i.i, %land.rhs.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge, %if.end31.i.i.virtblk_setup_discard_write_zeroes.exit.thread.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %call8.i.i.i to i32
  %sub.i.i = add i32 %70, 1073741824
  %shr75.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %69, i32 %shr75.i.i
  %71 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 29
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i.i, ptr %71, align 8
  %and.i.i = and i32 %70, 3968
  %bv_offset.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 29, i32 0, i32 2
  %73 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i.i, ptr %bv_offset.i.i, align 8
  %bv_len.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 29, i32 0, i32 1
  %74 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %42, ptr %bv_len.i.i, align 4
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 4
  %75 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rq_flags.i.i, align 8
  %or78.i.i = or i32 %76, 262144
  store i32 %or78.i.i, ptr %rq_flags.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %virtblk_setup_discard_write_zeroes.exit.thread.i, %sw.epilog.i.if.end_crit_edge
  tail call void @blk_mq_start_request(ptr noundef %5) #12
  %rq_flags.i.i99 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 4
  %77 = ptrtoint ptr %rq_flags.i.i99 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rq_flags.i.i99, align 8
  %and.i.i100 = and i32 %78, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i, label %if.end.i

blk_rq_nr_phys_segments.exit.i:                   ; preds = %if.end
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 19
  %79 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not.i = icmp eq i16 %80, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit.i.do.body13_crit_edge, label %if.end.i24.i

blk_rq_nr_phys_segments.exit.i.do.body13_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sg.i = getelementptr %struct.request, ptr %5, i32 1, i32 8
  %sg_table.i = getelementptr %struct.request, ptr %5, i32 1, i32 5
  %81 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %sg.i, ptr %sg_table.i, align 4
  br label %blk_rq_nr_phys_segments.exit26.i

if.end.i24.i:                                     ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg.i126 = getelementptr %struct.request, ptr %5, i32 1, i32 8
  %sg_table.i127 = getelementptr %struct.request, ptr %5, i32 1, i32 5
  %82 = ptrtoint ptr %sg_table.i127 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %sg.i126, ptr %sg_table.i127, align 4
  %83 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nr_phys_segments.i.i, align 4
  %phi.cast.i = zext i16 %84 to i32
  br label %blk_rq_nr_phys_segments.exit26.i

blk_rq_nr_phys_segments.exit26.i:                 ; preds = %if.end.i24.i, %if.end.i
  %sg_table.i130 = phi ptr [ %sg_table.i127, %if.end.i24.i ], [ %sg_table.i, %if.end.i ]
  %sg.i128 = phi ptr [ %sg.i126, %if.end.i24.i ], [ %sg.i, %if.end.i ]
  %retval.0.i25.i = phi i32 [ %phi.cast.i, %if.end.i24.i ], [ 1, %if.end.i ]
  %call5.i = tail call i32 @sg_alloc_table_chained(ptr noundef %sg_table.i130, i32 noundef %retval.0.i25.i, ptr noundef %sg.i128, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %virtblk_map_data.exit, label %blk_rq_nr_phys_segments.exit26.i.if.then11_crit_edge, !prof !128

blk_rq_nr_phys_segments.exit26.i.if.then11_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

virtblk_map_data.exit:                            ; preds = %blk_rq_nr_phys_segments.exit26.i
  %85 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %queue, align 8
  %87 = ptrtoint ptr %sg_table.i130 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg_table.i130, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #12
  %89 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i = call i32 @__blk_rq_map_sg(ptr noundef %86, ptr noundef %5, ptr noundef %88, ptr noundef nonnull %last_sg.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %virtblk_map_data.exit.if.then11_crit_edge, label %virtblk_map_data.exit.do.body13_crit_edge, !prof !131

virtblk_map_data.exit.do.body13_crit_edge:        ; preds = %virtblk_map_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

virtblk_map_data.exit.if.then11_crit_edge:        ; preds = %virtblk_map_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %virtblk_map_data.exit.if.then11_crit_edge, %blk_rq_nr_phys_segments.exit26.i.if.then11_crit_edge
  call fastcc void @virtblk_cleanup_cmd(ptr noundef %5)
  br label %cleanup

do.body13:                                        ; preds = %virtblk_map_data.exit.do.body13_crit_edge, %blk_rq_nr_phys_segments.exit.i.do.body13_crit_edge
  %retval.0.i101137 = phi i32 [ %call.i.i, %virtblk_map_data.exit.do.body13_crit_edge ], [ 0, %blk_rq_nr_phys_segments.exit.i.do.body13_crit_edge ]
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 8
  %90 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vqs, align 4
  %lock = getelementptr %struct.virtio_blk_vq, ptr %91, i32 %7, i32 1
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %92 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vqs, align 4
  %arrayidx20 = getelementptr %struct.virtio_blk_vq, ptr %93, i32 %7
  %94 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx20, align 128
  %sg_table = getelementptr %struct.request, ptr %5, i32 1, i32 5
  %96 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i101137)
  %tobool21.not = icmp eq i32 %retval.0.i101137, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr.i) #12
  %98 = call ptr @memset(ptr %hdr.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status.i) #12
  %99 = call ptr @memset(ptr %status.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgs.i) #12
  %100 = getelementptr inbounds [3 x ptr], ptr %sgs.i, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 -1 to ptr), ptr %100, align 4, !annotation !126
  %102 = getelementptr inbounds [3 x ptr], ptr %sgs.i, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 -1 to ptr), ptr %102, align 4, !annotation !126
  call void @sg_init_one(ptr noundef nonnull %hdr.i, ptr noundef %add.ptr.i, i32 noundef 16) #12
  %104 = ptrtoint ptr %sgs.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %hdr.i, ptr %sgs.i, align 4
  br i1 %tobool21.not, label %do.body13.virtblk_add_req.exit_crit_edge, label %if.then.i106

do.body13.virtblk_add_req.exit_crit_edge:         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_add_req.exit

if.then.i106:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i, align 8
  %vdev.i = getelementptr inbounds %struct.virtqueue, ptr %95, i32 0, i32 3
  %107 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vdev.i, align 4
  %features.i.i.i.i.i102 = getelementptr inbounds %struct.virtio_device, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %features.i.i.i.i.i102 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %features.i.i.i.i.i102, align 8
  %and.i.i.i.i.i103 = and i64 %110, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i103)
  %tobool13.i.i.i.not.i.i104 = icmp eq i64 %and.i.i.i.i.i103, 0
  %retval.0.i.i.i105 = select i1 %tobool13.i.i.i.not.i.i104, i32 1, i32 16777216
  %and.i = and i32 %retval.0.i.i.i105, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %97, ptr %100, align 4
  %..i = select i1 %tobool2.not.i, i32 1, i32 2
  %.25.i = zext i1 %tobool2.not.i to i32
  br label %virtblk_add_req.exit

virtblk_add_req.exit:                             ; preds = %if.then.i106, %do.body13.virtblk_add_req.exit_crit_edge
  %num_out.0.i = phi i32 [ 1, %do.body13.virtblk_add_req.exit_crit_edge ], [ %..i, %if.then.i106 ]
  %num_in.0.i = phi i32 [ 0, %do.body13.virtblk_add_req.exit_crit_edge ], [ %.25.i, %if.then.i106 ]
  %status9.i = getelementptr %struct.request, ptr %5, i32 1, i32 4
  call void @sg_init_one(ptr noundef nonnull %status.i, ptr noundef %status9.i, i32 noundef 1) #12
  %inc10.i = add nuw nsw i32 %num_in.0.i, 1
  %add11.i = add nuw nsw i32 %num_in.0.i, %num_out.0.i
  %arrayidx12.i = getelementptr [3 x ptr], ptr %sgs.i, i32 0, i32 %add11.i
  %112 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %status.i, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @virtqueue_add_sgs(ptr noundef %95, ptr noundef nonnull %sgs.i, i32 noundef %num_out.0.i, i32 noundef %inc10.i, ptr noundef %add.ptr.i, i32 noundef 2592) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgs.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool23.not = icmp eq i32 %call13.i, 0
  br i1 %tobool23.not, label %if.end37, label %if.then24

if.then24:                                        ; preds = %virtblk_add_req.exit
  %113 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vqs, align 4
  %arrayidx26 = getelementptr %struct.virtio_blk_vq, ptr %114, i32 %7
  %115 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx26, align 128
  %call28 = call zeroext i1 @virtqueue_kick(ptr noundef %116) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call13.i)
  %cmp29 = icmp eq i32 %call13.i, -28
  br i1 %cmp29, label %if.then31, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  call void @blk_mq_stop_hw_queue(ptr noundef %hctx) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then24.if.end32_crit_edge
  %117 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vqs, align 4
  %lock35 = getelementptr %struct.virtio_blk_vq, ptr %118, i32 %7, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock35, i32 noundef %call16) #12
  %119 = ptrtoint ptr %rq_flags.i.i99 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rq_flags.i.i99, align 8
  %and.i.i108 = and i32 %120, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i108, 0
  br i1 %tobool.not.i.i109, label %blk_rq_nr_phys_segments.exit.i112, label %if.end32.if.then.i114_crit_edge

if.end32.if.then.i114_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i114

blk_rq_nr_phys_segments.exit.i112:                ; preds = %if.end32
  %nr_phys_segments.i.i110 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 19
  %121 = ptrtoint ptr %nr_phys_segments.i.i110 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %nr_phys_segments.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i111 = icmp eq i16 %122, 0
  br i1 %tobool.not.i111, label %blk_rq_nr_phys_segments.exit.i112.virtblk_unmap_data.exit_crit_edge, label %blk_rq_nr_phys_segments.exit.i112.if.then.i114_crit_edge

blk_rq_nr_phys_segments.exit.i112.if.then.i114_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i114

blk_rq_nr_phys_segments.exit.i112.virtblk_unmap_data.exit_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_unmap_data.exit

if.then.i114:                                     ; preds = %blk_rq_nr_phys_segments.exit.i112.if.then.i114_crit_edge, %if.end32.if.then.i114_crit_edge
  call void @sg_free_table_chained(ptr noundef %sg_table, i32 noundef 2) #12
  br label %virtblk_unmap_data.exit

virtblk_unmap_data.exit:                          ; preds = %if.then.i114, %blk_rq_nr_phys_segments.exit.i112.virtblk_unmap_data.exit_crit_edge
  %123 = ptrtoint ptr %rq_flags.i.i99 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rq_flags.i.i99, align 8
  %and.i116 = and i32 %124, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i117, label %virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge, label %if.then.i119

virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge: ; preds = %virtblk_unmap_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_cleanup_cmd.exit

if.then.i119:                                     ; preds = %virtblk_unmap_data.exit
  %125 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 29
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %shr.i.i.i118 = lshr i32 %129, 30
  %130 = zext i32 %shr.i.i.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i.i.i118, label %if.then.i119.bvec_virt.exit.i_crit_edge [
    i32 2, label %if.then.i119.land.rhs.i.i120_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i119.land.rhs.i.i120_crit_edge:           ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i120

if.then.i119.bvec_virt.exit.i_crit_edge:          ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %131 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp2.i.not.i.i = icmp eq i32 %131, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.land.rhs.i.i120_crit_edge, label %is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge

is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

is_highmem_idx.exit.i.i.land.rhs.i.i120_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i120

land.rhs.i.i120:                                  ; preds = %is_highmem_idx.exit.i.i.land.rhs.i.i120_crit_edge, %if.then.i119.land.rhs.i.i120_crit_edge
  %.b43.i.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs.i.i120.bvec_virt.exit.i_crit_edge, label %if.then.i.i, !prof !128

land.rhs.i.i120.bvec_virt.exit.i_crit_edge:       ; preds = %land.rhs.i.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i120
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bvec_virt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 240, i32 noundef 9, ptr noundef null) #12
  br label %bvec_virt.exit.i

bvec_virt.exit.i:                                 ; preds = %if.then.i.i, %land.rhs.i.i120.bvec_virt.exit.i_crit_edge, %is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge, %if.then.i119.bvec_virt.exit.i_crit_edge
  %132 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %125, align 4
  %call38.i.i = call ptr @page_address(ptr noundef %133) #12
  %bv_offset.i.i121 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 29, i32 0, i32 2
  %134 = ptrtoint ptr %bv_offset.i.i121 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bv_offset.i.i121, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %call38.i.i, i32 %135
  call void @kfree(ptr noundef %add.ptr.i.i122) #12
  br label %virtblk_cleanup_cmd.exit

virtblk_cleanup_cmd.exit:                         ; preds = %bvec_virt.exit.i, %virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call13.i)
  %switch.selectcmp = icmp eq i32 %call13.i, -12
  %switch.select = select i1 %switch.selectcmp, i8 9, i8 10
  %switch.select98 = select i1 %cmp29, i8 13, i8 %switch.select
  br label %cleanup

if.end37:                                         ; preds = %virtblk_add_req.exit
  %last = getelementptr inbounds %struct.blk_mq_queue_data, ptr %bd, i32 0, i32 1
  %136 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %last, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool38.not = icmp eq i8 %137, 0
  %138 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %vqs, align 4
  br i1 %tobool38.not, label %if.end56.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %arrayidx41 = getelementptr %struct.virtio_blk_vq, ptr %139, i32 %7
  %140 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx41, align 128
  %call43 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %141) #12
  %142 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vqs, align 4
  %lock49 = getelementptr %struct.virtio_blk_vq, ptr %143, i32 %7, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock49, i32 noundef %call16) #12
  br i1 %call43, label %if.then51, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vqs, align 4
  %arrayidx53 = getelementptr %struct.virtio_blk_vq, ptr %145, i32 %7
  %146 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx53, align 128
  %call55 = call zeroext i1 @virtqueue_notify(ptr noundef %147) #12
  br label %cleanup

if.end56.critedge:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %lock49.c = getelementptr %struct.virtio_blk_vq, ptr %139, i32 %7, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock49.c, i32 noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end56.critedge, %if.then51, %land.lhs.true.cleanup_crit_edge, %virtblk_cleanup_cmd.exit, %if.then11, %if.then60.i.cleanup_crit_edge, %if.then.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 9, %if.then11 ], [ %switch.select98, %virtblk_cleanup_cmd.exit ], [ 0, %if.end56.critedge ], [ 0, %if.then51 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 9, %if.then60.i.cleanup_crit_edge ], [ 10, %land.end.i.cleanup_crit_edge ], [ 10, %if.then.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_commit_rqs(ptr nocapture noundef readonly %hctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %vqs = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vqs, align 4
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %6 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_num, align 4
  %arrayidx = getelementptr %struct.virtio_blk_vq, ptr %5, i32 %7
  %lock = getelementptr %struct.virtio_blk_vq, ptr %5, i32 %7, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 128
  %call = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %9) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 128
  %call4 = tail call zeroext i1 @virtqueue_notify(ptr noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_request_done(ptr noundef %req) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

blk_rq_nr_phys_segments.exit.i:                   ; preds = %entry
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %2 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit.i.virtblk_unmap_data.exit_crit_edge, label %blk_rq_nr_phys_segments.exit.i.if.then.i_crit_edge

blk_rq_nr_phys_segments.exit.i.if.then.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

blk_rq_nr_phys_segments.exit.i.virtblk_unmap_data.exit_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_unmap_data.exit

if.then.i:                                        ; preds = %blk_rq_nr_phys_segments.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %sg_table.i = getelementptr %struct.request, ptr %req, i32 1, i32 5
  tail call void @sg_free_table_chained(ptr noundef %sg_table.i, i32 noundef 2) #12
  br label %virtblk_unmap_data.exit

virtblk_unmap_data.exit:                          ; preds = %if.then.i, %blk_rq_nr_phys_segments.exit.i.virtblk_unmap_data.exit_crit_edge
  %4 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_flags.i.i, align 8
  %and.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge, label %if.then.i7

virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge: ; preds = %virtblk_unmap_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %virtblk_cleanup_cmd.exit

if.then.i7:                                       ; preds = %virtblk_unmap_data.exit
  %6 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shr.i.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %shr.i.i.i, label %if.then.i7.bvec_virt.exit.i_crit_edge [
    i32 2, label %if.then.i7.land.rhs.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i7.land.rhs.i.i_crit_edge:                ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.then.i7.bvec_virt.exit.i_crit_edge:            ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.land.rhs.i.i_crit_edge, label %is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge

is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

is_highmem_idx.exit.i.i.land.rhs.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %is_highmem_idx.exit.i.i.land.rhs.i.i_crit_edge, %if.then.i7.land.rhs.i.i_crit_edge
  %.b43.i.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs.i.i.bvec_virt.exit.i_crit_edge, label %if.then.i.i, !prof !128

land.rhs.i.i.bvec_virt.exit.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 240, i32 noundef 9, ptr noundef null) #12
  br label %bvec_virt.exit.i

bvec_virt.exit.i:                                 ; preds = %if.then.i.i, %land.rhs.i.i.bvec_virt.exit.i_crit_edge, %is_highmem_idx.exit.i.i.bvec_virt.exit.i_crit_edge, %if.then.i7.bvec_virt.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call38.i.i = tail call ptr @page_address(ptr noundef %14) #12
  %bv_offset.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 2
  %15 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call38.i.i, i32 %16
  tail call void @kfree(ptr noundef %add.ptr.i.i) #12
  br label %virtblk_cleanup_cmd.exit

virtblk_cleanup_cmd.exit:                         ; preds = %bvec_virt.exit.i, %virtblk_unmap_data.exit.virtblk_cleanup_cmd.exit_crit_edge
  %status.i = getelementptr %struct.request, ptr %req, i32 1, i32 4
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch.selectcmp.i = icmp eq i8 %18, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.selectcmp2.i = icmp eq i8 %18, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 0, i8 %switch.select.i
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %switch.select3.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_map_queues(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %vdev = getelementptr inbounds %struct.virtio_blk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @blk_mq_virtio_map_queues(ptr noundef %set, ptr noundef %3, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtblk_cleanup_cmd(ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags, align 8
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %shr.i.i, label %if.then.bvec_virt.exit_crit_edge [
    i32 2, label %if.then.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.then.bvec_virt.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !128

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 240, i32 noundef 9, ptr noundef null) #12
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.then.bvec_virt.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %call38.i = tail call ptr @page_address(ptr noundef %10) #12
  %bv_offset.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 29, i32 0, i32 2
  %11 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %12
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %bvec_virt.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_virtio_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_open(ptr nocapture noundef readonly %bd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bd, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #12
  %vdev = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %refs.i = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -6, %entry.if.end_crit_edge ], [ 0, %if.else.i.i.i.i.if.end_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtblk_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call fastcc void @virtblk_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtblk_getgeo(ptr nocapture noundef readonly %bd, ptr nocapture noundef writeonly %geo) #2 align 64 {
entry:
  %virtio_cread_v = alloca i16, align 2
  %virtio_cread_v14 = alloca i8, align 1
  %virtio_cread_v33 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bd, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #12
  %vdev = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  tail call void @virtio_check_driver_offered_feature(ptr noundef nonnull %5, i32 noundef 4) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %7, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  %8 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 442) #12
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get, align 4
  call void %14(ptr noundef %10, i32 noundef 16, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #12
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev, align 4
  %17 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %virtio_cread_v, align 2
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %20, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %21 = call i16 @llvm.bswap.i16(i16 %18) #12
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %18, i16 %21
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %22 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %retval.0.i.i, ptr %cylinders, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v14) #12
  %23 = ptrtoint ptr %virtio_cread_v14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %virtio_cread_v14, align 1, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 444) #12
  %24 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev, align 4
  %config27 = getelementptr inbounds %struct.virtio_device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %config27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config27, align 8
  %get28 = getelementptr inbounds %struct.virtio_config_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %get28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get28, align 4
  call void %29(ptr noundef %25, i32 noundef 18, ptr noundef nonnull %virtio_cread_v14, i32 noundef 1) #12
  %30 = ptrtoint ptr %virtio_cread_v14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %virtio_cread_v14, align 1
  %32 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %geo, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v14) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v33) #12
  %33 = ptrtoint ptr %virtio_cread_v33 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %virtio_cread_v33, align 1, !annotation !126
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 446) #12
  %34 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev, align 4
  %config46 = getelementptr inbounds %struct.virtio_device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %config46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config46, align 8
  %get47 = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %get47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get47, align 4
  call void %39(ptr noundef %35, i32 noundef 19, ptr noundef nonnull %virtio_cread_v33, i32 noundef 1) #12
  %40 = ptrtoint ptr %virtio_cread_v33 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %virtio_cread_v33, align 1
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %42 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %sectors, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v33) #12
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %geo, align 4
  %sectors52 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %44 = ptrtoint ptr %sectors52 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %sectors52, align 1
  %45 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shr = lshr i64 %50, 11
  %conv55 = trunc i64 %shr to i16
  %cylinders56 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %51 = ptrtoint ptr %cylinders56 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv55, ptr %cylinders56, align 2
  br label %out

out:                                              ; preds = %if.else, %do.body, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.body ], [ 0, %if.else ], [ -6, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtblk_put(ptr noundef %vblk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !128

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  %index = getelementptr inbounds %struct.virtio_blk, ptr %vblk, i32 0, i32 6
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %2) #12
  tail call void @mutex_destroy(ptr noundef %vblk) #12
  tail call void @kfree(ptr noundef %vblk) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @virtblk_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, @dev_attr_cache_type
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bd_disk = getelementptr i8, ptr %kobj, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %vdev1 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %5, i32 noundef 11) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end ], [ 292, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %virtio_cread_v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %vdev = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %5, i32 noundef 11) #12
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %virtblk_get_cache_mode.exit.thread, label %virtblk_get_cache_mode.exit

virtblk_get_cache_mode.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @virtio_check_driver_offered_feature(ptr noundef %5, i32 noundef 9) #12
  %8 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i.i, align 8
  %and.i.i17.i = lshr i64 %9, 9
  %10 = trunc i64 %and.i.i17.i to i8
  %11 = and i8 %10, 1
  br label %do.end9

virtblk_get_cache_mode.exit:                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i) #12
  %12 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %virtio_cread_v.i, align 1, !annotation !126
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 641) #12
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get.i, align 4
  call void %16(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 1) #12
  %17 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %virtio_cread_v.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp ugt i8 %18, 1
  br i1 %cmp, label %do.body4, label %virtblk_get_cache_mode.exit.do.end9_crit_edge, !prof !131

virtblk_get_cache_mode.exit.do.end9_crit_edge:    ; preds = %virtblk_get_cache_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.body4:                                         ; preds = %virtblk_get_cache_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/virtio_blk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #12, !srcloc !137
  unreachable

do.end9:                                          ; preds = %virtblk_get_cache_mode.exit.do.end9_crit_edge, %virtblk_get_cache_mode.exit.thread
  %writeback.1.i14 = phi i8 [ %11, %virtblk_get_cache_mode.exit.thread ], [ %18, %virtblk_get_cache_mode.exit.do.end9_crit_edge ]
  %conv12.i = zext i8 %writeback.1.i14 to i32
  %arrayidx = getelementptr [2 x ptr], ptr @virtblk_cache_types, i32 0, i32 %conv12.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call10 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %20) #12
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_type_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %vdev1 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %5, i32 noundef 11) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %do.body5, label %do.end10, !prof !131

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/virtio_blk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end10:                                         ; preds = %entry
  %call11 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @virtblk_cache_types, i32 noundef 2, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %call11 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %8 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %val.addr.i, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 483) #12
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set.i, align 4
  call void %12(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %val.addr.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call fastcc void @virtblk_update_cache_mode(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ %call11, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %arrayidx = getelementptr i8, ptr %buf, i32 20
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 8
  %disk1.i = getelementptr inbounds %struct.virtio_blk, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %disk1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk1.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue.i, align 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %8, i32 noundef 34, i32 noundef 0) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call.i to i32
  br label %virtblk_get_id.exit

if.end.i:                                         ; preds = %entry
  %call4.i = tail call i32 @blk_rq_map_kern(ptr noundef %8, ptr noundef %call.i, ptr noundef %buf, i32 noundef 20, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext false) #12
  %status.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 4
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch.selectcmp.i.i = icmp eq i8 %11, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 1, i8 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.selectcmp2.i.i = icmp eq i8 %11, 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i8 0, i8 %switch.select.i.i
  %call10.i = tail call i32 @blk_status_to_errno(i8 noundef zeroext %switch.select3.i.i) #12
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %if.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call4.i, %if.end.i.out.i_crit_edge ], [ %call10.i, %if.end6.i ]
  tail call void @blk_mq_free_request(ptr noundef %call.i) #12
  br label %virtblk_get_id.exit

virtblk_get_id.exit:                              ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %err.0.i, %out.i ]
  %12 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %retval.0.i, label %if.end3 [
    i32 0, label %if.then
    i32 -5, label %virtblk_get_id.exit.cleanup_crit_edge
  ]

virtblk_get_id.exit.cleanup_crit_edge:            ; preds = %virtblk_get_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %virtblk_get_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @strlen(ptr noundef %buf) #19
  br label %cleanup

if.end3:                                          ; preds = %virtblk_get_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then, %virtblk_get_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end3 ], [ %call1, %if.then ], [ 0, %virtblk_get_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53, !55, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !73, !74, !76, !78, !80, !82, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__param_num_request_queues, !1, !"__param_num_request_queues", i1 false, i1 false}
!1 = !{!"../drivers/block/virtio_blk.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_request_queuestype285, !1, !"__UNIQUE_ID_num_request_queuestype285", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_request_queues286, !4, !"__UNIQUE_ID_num_request_queues286", i1 false, i1 false}
!4 = !{!"../drivers/block/virtio_blk.c", i32 35, i32 1}
!5 = !{ptr @__param_queue_depth, !6, !"__param_queue_depth", i1 false, i1 false}
!6 = !{!"../drivers/block/virtio_blk.c", i32 744, i32 1}
!7 = !{ptr @__UNIQUE_ID_queue_depthtype292, !6, !"__UNIQUE_ID_queue_depthtype292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/block/virtio_blk.c", i32 1090, i32 27}
!10 = !{ptr @__initcall__kmod_virtio_blk__299_1093_init6, !11, !"__initcall__kmod_virtio_blk__299_1093_init6", i1 false, i1 false}
!11 = !{!"../drivers/block/virtio_blk.c", i32 1093, i32 1}
!12 = !{ptr @__exitcall_fini, !13, !"__exitcall_fini", i1 false, i1 false}
!13 = !{!"../drivers/block/virtio_blk.c", i32 1094, i32 1}
!14 = !{ptr @__UNIQUE_ID_description300, !15, !"__UNIQUE_ID_description300", i1 false, i1 false}
!15 = !{!"../drivers/block/virtio_blk.c", i32 1097, i32 1}
!16 = !{ptr @__UNIQUE_ID_file301, !17, !"__UNIQUE_ID_file301", i1 false, i1 false}
!17 = !{!"../drivers/block/virtio_blk.c", i32 1098, i32 1}
!18 = !{ptr @__UNIQUE_ID_license302, !17, !"__UNIQUE_ID_license302", i1 false, i1 false}
!19 = !{ptr @num_request_queues, !20, !"num_request_queues", i1 false, i1 false}
!20 = !{!"../drivers/block/virtio_blk.c", i32 33, i32 21}
!21 = !{ptr @major, !22, !"major", i1 false, i1 false}
!22 = !{!"../drivers/block/virtio_blk.c", i32 40, i32 12}
!23 = !{ptr @virtblk_wq, !24, !"virtblk_wq", i1 false, i1 false}
!24 = !{!"../drivers/block/virtio_blk.c", i32 43, i32 33}
!25 = !{ptr @virtblk_queue_depth, !26, !"virtblk_queue_depth", i1 false, i1 false}
!26 = !{!"../drivers/block/virtio_blk.c", i32 743, i32 21}
!27 = !{ptr @__param_str_num_request_queues, !1, !"__param_str_num_request_queues", i1 false, i1 false}
!28 = !{ptr @__param_str_queue_depth, !6, !"__param_str_queue_depth", i1 false, i1 false}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/virtio_blk.c", i32 1049, i32 19}
!31 = !{ptr @virtio_blk, !32, !"virtio_blk", i1 false, i1 false}
!32 = !{!"../drivers/block/virtio_blk.c", i32 1044, i32 29}
!33 = !{ptr @id_table, !34, !"id_table", i1 false, i1 false}
!34 = !{!"../drivers/block/virtio_blk.c", i32 1025, i32 38}
!35 = !{ptr @features, !36, !"features", i1 false, i1 false}
!36 = !{!"../drivers/block/virtio_blk.c", i32 1037, i32 21}
!37 = !{ptr @features_legacy, !38, !"features_legacy", i1 false, i1 false}
!38 = !{!"../drivers/block/virtio_blk.c", i32 1030, i32 21}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/virtio_blk.c", i32 758, i32 3}
!41 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @virtblk_probe._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @virtblk_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @virtblk_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/block/virtio_blk.c", i32 789, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @virtblk_probe.__key.8, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/block/virtio_blk.c", i32 793, i32 2}
!52 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @virtblk_probe.__key.10, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/block/virtio_blk.c", i32 824, i32 15}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/virtio_blk.c", i32 831, i32 22}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/block/virtio_blk.c", i32 871, i32 4}
!59 = !{ptr @virtblk_probe._entry.12, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @virtblk_probe._entry_ptr.14, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/block/virtio_blk.c", i32 41, i32 8}
!63 = !{ptr @vd_index_ida, !62, !"vd_index_ida", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/block/virtio_blk.c", i32 560, i32 3}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @init_vq._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @init_vq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/virtio_blk.c", i32 582, i32 44}
!71 = !{ptr @init_vq.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/block/virtio_blk.c", i32 592, i32 3}
!73 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @virtio_mq_ops, !75, !"virtio_mq_ops", i1 false, i1 false}
!75 = !{!"../drivers/block/virtio_blk.c", i32 736, i32 32}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/block/virtio_blk.c", i32 242, i32 3}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/block/virtio_blk.c", i32 166, i32 2}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!82 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @virtblk_fops, !84, !"virtblk_fops", i1 false, i1 false}
!84 = !{!"../drivers/block/virtio_blk.c", i32 458, i32 45}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/block/virtio_blk.c", i32 516, i32 2}
!87 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @virtblk_update_capacity._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @virtblk_update_capacity._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!95 = !{ptr @virtblk_attr_groups, !96, !"virtblk_attr_groups", i1 false, i1 false}
!96 = !{!"../drivers/block/virtio_blk.c", i32 723, i32 38}
!97 = !{ptr @virtblk_attr_group, !98, !"virtblk_attr_group", i1 false, i1 false}
!98 = !{!"../drivers/block/virtio_blk.c", i32 718, i32 37}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/virtio_blk.c", i32 695, i32 8}
!101 = !{ptr @dev_attr_cache_type, !100, !"dev_attr_cache_type", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/block/virtio_blk.c", i32 692, i32 25}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/block/virtio_blk.c", i32 662, i32 2}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/block/virtio_blk.c", i32 662, i32 19}
!108 = !{ptr @virtblk_cache_types, !109, !"virtblk_cache_types", i1 false, i1 false}
!109 = !{!"../drivers/block/virtio_blk.c", i32 661, i32 26}
!110 = !{ptr @virtblk_attrs, !111, !"virtblk_attrs", i1 false, i1 false}
!111 = !{!"../drivers/block/virtio_blk.c", i32 697, i32 26}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/virtio_blk.c", i32 495, i32 8}
!114 = !{ptr @dev_attr_serial, !113, !"dev_attr_serial", i1 false, i1 false}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/virtio_blk.c", i32 1065, i32 31}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
!127 = !{i32 0, i32 33}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2154530084, i64 2154530578, i64 2154530121, i64 2154530177, i64 2154530211, i64 2154530235, i64 2154530276, i64 2154530297, i64 2154530325, i64 2154530359}
!130 = !{i64 2148352755, i64 2148353035, i64 2148353369, i64 2148353703}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i8 0, i8 2}
!133 = !{i64 2148504500, i64 2148504532, i64 2148504561, i64 2148504595, i64 2148504626, i64 2148504649}
!134 = !{i64 2148592525}
!135 = !{i64 2148506965, i64 2148506997, i64 2148507026, i64 2148507060, i64 2148507091, i64 2148507114}
!136 = !{i64 2149893455}
!137 = !{i64 2154704141, i64 2154704632, i64 2154704178, i64 2154704234, i64 2154704268, i64 2154704292, i64 2154704333, i64 2154704354, i64 2154704382, i64 2154704416}
!138 = !{i64 2154699664, i64 2154700155, i64 2154699701, i64 2154699757, i64 2154699791, i64 2154699815, i64 2154699856, i64 2154699877, i64 2154699905, i64 2154699939}
