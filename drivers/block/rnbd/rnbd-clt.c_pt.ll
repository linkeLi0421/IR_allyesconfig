; ModuleID = '/llk/IR_all_yes/drivers/block/rnbd/rnbd-clt.c_pt.bc'
source_filename = "../drivers/block/rnbd/rnbd-clt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rnbd_clt_dev = type { ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i64, %struct.list_head, ptr, %struct.kobject, ptr, %struct.refcount_struct, %struct.work_struct }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rnbd_clt_session = type { %struct.list_head, ptr, %struct.wait_queue_head, i8, ptr, [1 x i32], ptr, %struct.atomic_t, i32, i32, i32, %struct.blk_mq_tag_set, i32, %struct.mutex, %struct.list_head, %struct.refcount_struct, [255 x i8], i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rtrs_attrs = type { i32, i32, i32 }
%struct.rtrs_clt_ops = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rnbd_cpu_qlist = type { %struct.list_head, %struct.spinlock, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.rnbd_msg_open = type { %struct.rnbd_msg_hdr, i8, i8, [255 x i8], [3 x i8] }
%struct.rnbd_msg_hdr = type { i16, i16 }
%struct.kvec = type { ptr, i32 }
%struct.rnbd_iu = type { %union.anon.86, ptr, %union.anon.87, %struct.sg_table, %struct.work_struct, i32, %struct.rnbd_iu_comp, %struct.atomic_t, [0 x %struct.scatterlist] }
%union.anon.86 = type { ptr }
%union.anon.87 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.rnbd_iu_comp = type { %struct.wait_queue_head, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.rnbd_queue = type { %struct.list_head, i32, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.2, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.2 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.rnbd_msg_close = type { %struct.rnbd_msg_hdr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rnbd_msg_sess_info = type { %struct.rnbd_msg_hdr, i8, [31 x i8] }
%struct.rnbd_msg_io = type { %struct.rnbd_msg_hdr, i32, i64, i32, i32, i16 }
%struct.rtrs_clt_req_ops = type { ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.76, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.rnbd_msg_sess_info_rsp = type { %struct.rnbd_msg_hdr, i8, [31 x i8] }
%struct.rnbd_msg_open_rsp = type { %struct.rnbd_msg_hdr, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [10 x i8] }
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__UNIQUE_ID_description314 = internal constant [57 x i8] c"rnbd_client.description=RDMA Network Block Device Client\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [48 x i8] c"rnbd_client.file=drivers/block/rnbd/rnbd-client\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [24 x i8] c"rnbd_client.license=GPL\00", section ".modinfo", align 1
@rnbd_clt_resize_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013rnbd_client L153: Failed to set new size of the device, device is not opened\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rnbd_clt_resize_disk\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/rnbd/rnbd-clt.c\00", [34 x i8] zeroinitializer }, align 32
@rnbd_clt_resize_disk._entry_ptr = internal global ptr @rnbd_clt_resize_disk._entry, section ".printk_index", align 4
@rnbd_clt_map_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013rnbd_client L1585: map_device: failed to map device '%s' from session %s, can't initialize device, err: %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnbd_clt_map_device\00", [44 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device._entry_ptr = internal global ptr @rnbd_clt_map_device._entry, section ".printk_index", align 4
@rnbd_clt_map_device._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013rnbd_client L1597: <%s@%s> map_device: failed, can't open remote device, err: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device._entry_ptr.7 = internal global ptr @rnbd_clt_map_device._entry.5, section ".printk_index", align 4
@rnbd_clt_map_device.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rnbd_client\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Opened remote device: session=%s, path='%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"rnbd_client L1602: Opened remote device: session=%s, path='%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013rnbd_client L1607: <%s@%s> map_device: Failed to configure device, err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device._entry_ptr.13 = internal global ptr @rnbd_clt_map_device._entry.11, section ".printk_index", align 4
@rnbd_clt_map_device._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [319 x i8], [65 x i8] } { [319 x i8] c"\016rnbd_client L1619: <%s@%s> map_device: Device mapped as %s (nsectors: %zu, logical_block_size: %d, physical_block_size: %d, max_write_same_sectors: %d, max_discard_sectors: %d, discard_granularity: %d, discard_alignment: %d, secure_discard: %d, max_segments: %d, max_hw_sectors: %d, rotational: %d, wc: %d, fua: %d)\0A\00", [65 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device._entry_ptr.16 = internal global ptr @rnbd_clt_map_device._entry.14, section ".printk_index", align 4
@rnbd_clt_unmap_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016rnbd_client L1666: <%s@%s> Device is already being unmapped\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rnbd_clt_unmap_device\00", [42 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_device._entry_ptr = internal global ptr @rnbd_clt_unmap_device._entry, section ".printk_index", align 4
@rnbd_clt_unmap_device._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013rnbd_client L1674: <%s@%s> Closing device failed, device is in use, (%d device users)\0A\00", [39 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_device._entry_ptr.21 = internal global ptr @rnbd_clt_unmap_device._entry.19, section ".printk_index", align 4
@rnbd_clt_unmap_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016rnbd_client L1688: <%s@%s> Device is unmapped\0A\00", [47 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_device._entry_ptr.24 = internal global ptr @rnbd_clt_unmap_device._entry.22, section ".printk_index", align 4
@rnbd_clt_remap_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016rnbd_client L1719: <%s@%s> Remapping device.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rnbd_clt_remap_device\00", [42 x i8] zeroinitializer }, align 32
@rnbd_clt_remap_device._entry_ptr = internal global ptr @rnbd_clt_remap_device._entry, section ".printk_index", align 4
@rnbd_clt_remap_device._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rnbd_client L1722: <%s@%s> remap_device: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@rnbd_clt_remap_device._entry_ptr.29 = internal global ptr @rnbd_clt_remap_device._entry.27, section ".printk_index", align 4
@rnbd_client_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rnbd\00", [27 x i8] zeroinitializer }, align 32
@index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_rnbd_client__328_1813_rnbd_client_init6 = internal global ptr @rnbd_client_init, section ".initcall6.init", align 4
@__exitcall_rnbd_client_exit = internal global ptr @rnbd_client_exit, section ".exitcall.exit", align 4
@rnbd_clt_change_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016rnbd_client L104: <%s@%s> Device size changed from %zu to %zu sectors\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnbd_clt_change_capacity\00", [39 x i8] zeroinitializer }, align 32
@rnbd_clt_change_capacity._entry_ptr = internal global ptr @rnbd_clt_change_capacity._entry, section ".printk_index", align 4
@sess_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sess_lock, i64 52), ptr getelementptr (i8, ptr @sess_lock, i64 52) }, ptr @sess_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sess_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sess_lock\00", [22 x i8] zeroinitializer }, align 32
@sess_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sess_list, ptr @sess_list }, [24 x i8] zeroinitializer }, align 32
@find_and_get_or_create_sess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013rnbd_client L1280: Session %s not found, and path parameter not given\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"find_and_get_or_create_sess\00", [36 x i8] zeroinitializer }, align 32
@find_and_get_or_create_sess._entry_ptr = internal global ptr @find_and_get_or_create_sess._entry, section ".printk_index", align 4
@alloc_sess.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&sess->lock\00", [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@alloc_sess.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sess->rtrs_waitq\00", [46 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rnbd_init_cpu_qlists.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cpu_q->requeue_lock\00", [43 x i8] zeroinitializer }, align 32
@rnbd_clt_link_ev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013rnbd_client L738: Unknown session event received (%d), session: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnbd_clt_link_ev\00", [47 x i8] zeroinitializer }, align 32
@rnbd_clt_link_ev._entry_ptr = internal global ptr @rnbd_clt_link_ev._entry, section ".printk_index", align 4
@set_dev_states_to_disconnected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rnbd_client L658: <%s@%s> Device disconnected.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_dev_states_to_disconnected\00", [33 x i8] zeroinitializer }, align 32
@set_dev_states_to_disconnected._entry_ptr = internal global ptr @set_dev_states_to_disconnected._entry, section ".printk_index", align 4
@remap_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rnbd_client L690: send_msg_sess_info(\22%s\22): %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remap_devs\00", [21 x i8] zeroinitializer }, align 32
@remap_devs._entry_ptr = internal global ptr @remap_devs._entry, section ".printk_index", align 4
@remap_devs._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rnbd_client L696: rtrs_clt_query(\22%s\22): %d\0A\00", [50 x i8] zeroinitializer }, align 32
@remap_devs._entry_ptr.49 = internal global ptr @remap_devs._entry.47, section ".printk_index", align 4
@remap_devs._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016rnbd_client L715: <%s@%s> session reconnected, remapping device\0A\00", [61 x i8] zeroinitializer }, align 32
@remap_devs._entry_ptr.52 = internal global ptr @remap_devs._entry.50, section ".printk_index", align 4
@remap_devs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013rnbd_client L718: <%s@%s> send_msg_open(): %d\0A\00", [47 x i8] zeroinitializer }, align 32
@remap_devs._entry_ptr.55 = internal global ptr @remap_devs._entry.53, section ".printk_index", align 4
@rnbd_mq_ops = internal global { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @rnbd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rnbd_rdma_poll, ptr @rnbd_softirq_done_fn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rnbd_rdma_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@rnbd_queue_rq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rnbd_queue_rq = private unnamed_addr constant [14 x i8] c"rnbd_queue_rq\00", align 1
@rnbd_queue_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.rnbd_queue_rq, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rnbd_client L1160: <%s@%s> sg_alloc_table_chained ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@rnbd_queue_rq._entry_ptr = internal global ptr @rnbd_queue_rq._entry, section ".printk_index", align 4
@rnbd_client_xfer_request._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rnbd_client_xfer_request = private unnamed_addr constant [25 x i8] c"rnbd_client_xfer_request\00", align 1
@rnbd_client_xfer_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.rnbd_client_xfer_request, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013rnbd_client L1055: <%s@%s> RTRS failed to transfer IO, err: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rnbd_client_xfer_request._entry_ptr = internal global ptr @rnbd_client_xfer_request._entry, section ".printk_index", align 4
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/block/rnbd/rnbd-proto.h\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unknown request type %d (flags %llu)\0A\00", [58 x i8] zeroinitializer }, align 32
@msg_io_conf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msg_io_conf = private unnamed_addr constant [12 x i8] c"msg_io_conf\00", align 1
@msg_io_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.msg_io_conf, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016rnbd_client L419: <%s@%s> %s I/O failed with err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@msg_io_conf._entry_ptr = internal global ptr @msg_io_conf._entry, section ".printk_index", align 4
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@rnbd_rdma_map_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016rnbd_client L1211: [session=%s] mapped %d/%d/%d default/read/poll queues.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rnbd_rdma_map_queues\00", [43 x i8] zeroinitializer }, align 32
@rnbd_rdma_map_queues._entry_ptr = internal global ptr @rnbd_rdma_map_queues._entry, section ".printk_index", align 4
@rnbd_rdma_map_queues._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016rnbd_client L1216: [session=%s] mapped %d/%d default/read queues.\0A\00", [59 x i8] zeroinitializer }, align 32
@rnbd_rdma_map_queues._entry_ptr.68 = internal global ptr @rnbd_rdma_map_queues._entry.66, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@rnbd_get_iu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&iu->comp.wait\00", [17 x i8] zeroinitializer }, align 32
@send_usr_msg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&iu->work)\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ida_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ida_lock, i64 52), ptr getelementptr (i8, ptr @ida_lock, i64 52) }, ptr @ida_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013rnbd_client L1468: Failed to initialize device '%s' from session %s, allocating idr failed, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_dev\00", [23 x i8] zeroinitializer }, align 32
@init_dev._entry_ptr = internal global ptr @init_dev._entry, section ".printk_index", align 4
@init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ida_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ida_lock\00", [23 x i8] zeroinitializer }, align 32
@msg_open_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013rnbd_client L518: <%s@%s> Opening failed, server responded: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msg_open_conf\00", [18 x i8] zeroinitializer }, align 32
@msg_open_conf._entry_ptr = internal global ptr @msg_open_conf._entry, section ".printk_index", align 4
@process_msg_open_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016rnbd_client L119: <%s@%s> Ignoring Open-Response message from server for  unmapped device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"process_msg_open_rsp\00", [43 x i8] zeroinitializer }, align 32
@process_msg_open_rsp._entry_ptr = internal global ptr @process_msg_open_rsp._entry, section ".printk_index", align 4
@process_msg_open_rsp._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016rnbd_client L134: <%s@%s> Device online, device remapped successfully\0A\00", [55 x i8] zeroinitializer }, align 32
@process_msg_open_rsp._entry_ptr.82 = internal global ptr @process_msg_open_rsp._entry.80, section ".printk_index", align 4
@rnbd_client_setup_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rnbd_client_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @rnbd_client_open, ptr @rnbd_client_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rnbd_client_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rnbd%d\00", [25 x i8] zeroinitializer }, align 32
@rnbd_clt_setup_gen_disk.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rnbd_clt_setup_gen_disk\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disk_name=%s, capacity=%zu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rnbd_client L1402: disk_name=%s, capacity=%zu\0A\00", [49 x i8] zeroinitializer }, align 32
@rnbd_destroy_sessions.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&dev->unmap_on_rmmod_work)\00", [51 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"index_ida.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@rnbd_client_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013rnbd_client L1792: Failed to load module, block device registration failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnbd_client_init\00", [47 x i8] zeroinitializer }, align 32
@rnbd_client_init._entry_ptr = internal global ptr @rnbd_client_init._entry, section ".printk_index", align 4
@rnbd_client_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013rnbd_client L1799: Failed to load module, creating sysfs device files failed, err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rnbd_client_init._entry_ptr.93 = internal global ptr @rnbd_client_init._entry.91, section ".printk_index", align 4
@switch.table.rnbd_queue_rq = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 153, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1584, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1595, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1601, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1605, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1612, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1666, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1672, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1688, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1719, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1722, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"rnbd_client_major\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 24, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1809, i32 39 }
@___asan_gen_.185 = private unnamed_addr constant [10 x i8] c"index_ida\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 103, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [10 x i8] c"sess_lock\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 27, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [10 x i8] c"sess_list\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 28, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1280, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 808, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 812, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 752, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 737, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 658, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 690, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 696, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 715, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 718, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [12 x i8] c"rnbd_mq_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1222, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1160, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1054, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [35 x i8] c"../drivers/block/rnbd/rnbd-proto.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 294, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 418, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1207, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1213, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 373, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 445, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [9 x i8] c"ida_lock\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1467, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1482, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 26, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 516, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 118, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 134, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1428, i32 12 }
@___asan_gen_.404 = private unnamed_addr constant [16 x i8] c"rnbd_client_ops\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 982, i32 45 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1397, i32 59 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1399, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1770, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 25, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1792, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.441 = private constant [33 x i8] c"../drivers/block/rnbd/rnbd-clt.c\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1798, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [27 x i8] c"switch.table.rnbd_queue_rq\00", align 1
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_rnbd_client_exit, ptr @__initcall__kmod_rnbd_client__328_1813_rnbd_client_init6, ptr @find_and_get_or_create_sess._entry, ptr @find_and_get_or_create_sess._entry_ptr, ptr @init_dev._entry, ptr @init_dev._entry_ptr, ptr @msg_io_conf._entry, ptr @msg_io_conf._entry_ptr, ptr @msg_open_conf._entry, ptr @msg_open_conf._entry_ptr, ptr @process_msg_open_rsp._entry, ptr @process_msg_open_rsp._entry.80, ptr @process_msg_open_rsp._entry_ptr, ptr @process_msg_open_rsp._entry_ptr.82, ptr @remap_devs._entry, ptr @remap_devs._entry.47, ptr @remap_devs._entry.50, ptr @remap_devs._entry.53, ptr @remap_devs._entry_ptr, ptr @remap_devs._entry_ptr.49, ptr @remap_devs._entry_ptr.52, ptr @remap_devs._entry_ptr.55, ptr @rnbd_client_exit, ptr @rnbd_client_init._entry, ptr @rnbd_client_init._entry.91, ptr @rnbd_client_init._entry_ptr, ptr @rnbd_client_init._entry_ptr.93, ptr @rnbd_client_xfer_request._entry, ptr @rnbd_client_xfer_request._entry_ptr, ptr @rnbd_clt_change_capacity._entry, ptr @rnbd_clt_change_capacity._entry_ptr, ptr @rnbd_clt_link_ev._entry, ptr @rnbd_clt_link_ev._entry_ptr, ptr @rnbd_clt_map_device._entry, ptr @rnbd_clt_map_device._entry.11, ptr @rnbd_clt_map_device._entry.14, ptr @rnbd_clt_map_device._entry.5, ptr @rnbd_clt_map_device._entry_ptr, ptr @rnbd_clt_map_device._entry_ptr.13, ptr @rnbd_clt_map_device._entry_ptr.16, ptr @rnbd_clt_map_device._entry_ptr.7, ptr @rnbd_clt_remap_device._entry, ptr @rnbd_clt_remap_device._entry.27, ptr @rnbd_clt_remap_device._entry_ptr, ptr @rnbd_clt_remap_device._entry_ptr.29, ptr @rnbd_clt_resize_disk._entry, ptr @rnbd_clt_resize_disk._entry_ptr, ptr @rnbd_clt_unmap_device._entry, ptr @rnbd_clt_unmap_device._entry.19, ptr @rnbd_clt_unmap_device._entry.22, ptr @rnbd_clt_unmap_device._entry_ptr, ptr @rnbd_clt_unmap_device._entry_ptr.21, ptr @rnbd_clt_unmap_device._entry_ptr.24, ptr @rnbd_queue_rq._entry, ptr @rnbd_queue_rq._entry_ptr, ptr @rnbd_rdma_map_queues._entry, ptr @rnbd_rdma_map_queues._entry.66, ptr @rnbd_rdma_map_queues._entry_ptr, ptr @rnbd_rdma_map_queues._entry_ptr.68, ptr @set_dev_states_to_disconnected._entry, ptr @set_dev_states_to_disconnected._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @rnbd_client_major, ptr @.str.30, ptr @index_ida, ptr @.str.31, ptr @.str.32, ptr @sess_lock, ptr @.str.33, ptr @.str.34, ptr @sess_list, ptr @.str.35, ptr @.str.36, ptr @alloc_sess.__key, ptr @.str.37, ptr @alloc_sess.__key.38, ptr @.str.39, ptr @rnbd_init_cpu_qlists.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @rnbd_mq_ops, ptr @rnbd_queue_rq._rs, ptr @.str.56, ptr @.str.57, ptr @rnbd_client_xfer_request._rs, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @msg_io_conf._rs, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @rnbd_get_iu.__key, ptr @.str.69, ptr @send_usr_msg.__key, ptr @.str.70, ptr @ida_lock, ptr @.str.71, ptr @.str.72, ptr @init_dev.__key, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @rnbd_client_setup_device.__key, ptr @rnbd_client_ops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @rnbd_destroy_sessions.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @switch.table.rnbd_queue_rq], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_resize_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 319, i32 384, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_device._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_remap_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_remap_device._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_change_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_and_get_or_create_sess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_sess.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_sess.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_init_cpu_qlists.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_link_ev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dev_states_to_disconnected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remap_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remap_devs._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remap_devs._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remap_devs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_queue_rq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_queue_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_xfer_request._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_xfer_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_io_conf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_io_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_rdma_map_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_rdma_map_queues._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_get_iu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_usr_msg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ida_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_open_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open_rsp._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_setup_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_destroy_sessions.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_client_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rnbd_queue_rq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_clt_resize_disk(ptr noundef %dev, i32 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %dev_state = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pathname.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pathname.i, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %5, i32 0, i32 16
  %nsectors.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsectors.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef %sessname.i, i32 noundef %7, i32 noundef %newsize) #17
  %8 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %newsize, ptr %nsectors.i, align 8
  %gd.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %9 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gd.i, align 8
  %conv.i = zext i32 %newsize to i64
  %call3.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %10, i64 noundef %conv.i) #14
  br label %out

out:                                              ; preds = %if.end, %do.end
  %ret.0 = phi i32 [ -2, %do.end ], [ 0, %if.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rnbd_clt_map_device(ptr noundef %sessname, ptr noundef %paths, i32 noundef %path_cnt, i16 noundef zeroext %port_nr, ptr noundef %pathname, i32 noundef %access_mode, i32 noundef %nr_poll_queues) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %wait.i.i.i.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i.i.i.i = alloca %struct.wait_queue_entry, align 4
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  %attrs.i = alloca %struct.rtrs_attrs, align 4
  %rtrs_ops.i = alloca %struct.rtrs_clt_ops, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  %call.i = tail call fastcc zeroext i1 @__exists_dev(ptr noundef %pathname, ptr noundef %sessname) #14
  tail call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  br i1 %call.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs.i) #14
  %0 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %attrs.i, align 4, !annotation !218
  %1 = getelementptr inbounds %struct.rtrs_attrs, ptr %attrs.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !218
  %3 = getelementptr inbounds %struct.rtrs_attrs, ptr %attrs.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtrs_ops.i) #14
  %5 = ptrtoint ptr %rtrs_ops.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %rtrs_ops.i, align 4, !annotation !218
  %6 = getelementptr inbounds %struct.rtrs_clt_ops, ptr %rtrs_ops.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !218
  tail call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  %8 = load ptr, ptr @sess_list, align 4
  %cmp.not5559.i.i.i = icmp eq ptr %8, @sess_list
  br i1 %cmp.not5559.i.i.i, label %if.end.if.then.i.i_crit_edge, label %for.body.lr.ph.lr.ph.i.i.i

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

for.body.lr.ph.lr.ph.i.i.i:                       ; preds = %if.end
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i.i, i32 0, i32 3, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.backedge, %for.body.lr.ph.lr.ph.i.i.i
  %sess.056.i.i.i = phi ptr [ %8, %for.body.lr.ph.lr.ph.i.i.i ], [ %sess.056.i.i.i.be, %for.body.i.i.i.backedge ]
  %13 = ptrtoint ptr %sess.056.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %sn.057.i.i.i = load ptr, ptr %sess.056.i.i.i, align 4
  %sessname5.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 16
  %call.i.i.i = call i32 @strcmp(ptr noundef %sessname, ptr noundef %sessname5.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %rtrs_ready.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %rtrs_ready.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rtrs_ready.i.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i.i.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %rtrs.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %rtrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtrs.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %17, null
  %cmp.i.i.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  %rtrs_ready.i.i.i.le = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 3
  %refcount.i.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #14
  %18 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refcount.i.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %if.end9.i.i.i
  %20 = phi i32 [ %19, %if.end9.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %20, 1
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #14
  %22 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 %23, i32 %add.i.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i.i.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %23
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %26, 1
  %27 = or i32 %add5.i.i.i.i.i.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.rnbd_clt_get_sess.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !221

if.end4.i.i.i.i.i.i.i.rnbd_clt_get_sess.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sess.exit.i.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef 0) #14
  %28 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  br label %rnbd_clt_get_sess.exit.i.i.i

rnbd_clt_get_sess.exit.i.i.i:                     ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.rnbd_clt_get_sess.exit.i.i.i_crit_edge
  %29 = phi i32 [ %26, %if.end4.i.i.i.i.i.i.i.rnbd_clt_get_sess.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.i.i.i.i.not.i.i.i = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not.i.i.i, label %if.end19.i.i.i, label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %rnbd_clt_get_sess.exit.i.i.i
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 845) #14
  %30 = ptrtoint ptr %rtrs_ready.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rtrs_ready.i.i.i.le, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i38.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i38.i.i.i, label %if.end.i.i.i.i, label %if.then11.i.i.i.wait_for_rtrs_connection.exit.i.i.i_crit_edge

if.then11.i.i.i.wait_for_rtrs_connection.exit.i.i.i_crit_edge: ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait_for_rtrs_connection.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then11.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i) #14
  %32 = call ptr @memset(ptr %__wq_entry.i.i.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 0) #14
  %rtrs_waitq.i.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 2
  %call19.i.i.i.i = call i32 @prepare_to_wait_event(ptr noundef %rtrs_waitq.i.i.i.i, ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 2) #14
  %33 = ptrtoint ptr %rtrs_ready.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rtrs_ready.i.i.i.le, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool5.not20.i.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool5.not20.i.i.i.i, label %if.end.i.i.i.i.cleanup.i.i.i.i_crit_edge, label %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge

if.end.i.i.i.i.for.end.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i.i

if.end.i.i.i.i.cleanup.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge, %if.end.i.i.i.i.cleanup.i.i.i.i_crit_edge
  call void @schedule() #14
  %call.i.i.i.i = call i32 @prepare_to_wait_event(ptr noundef %rtrs_waitq.i.i.i.i, ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 2) #14
  %35 = ptrtoint ptr %rtrs_ready.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rtrs_ready.i.i.i.le, align 4, !range !219
  %tobool5.not.i.i.i.i = icmp eq i8 %36, 0
  br i1 %tobool5.not.i.i.i.i, label %cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge

cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i.i

cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge
  call void @finish_wait(ptr noundef %rtrs_waitq.i.i.i.i, ptr noundef nonnull %__wq_entry.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i) #14
  br label %wait_for_rtrs_connection.exit.i.i.i

wait_for_rtrs_connection.exit.i.i.i:              ; preds = %for.end.i.i.i.i, %if.then11.i.i.i.wait_for_rtrs_connection.exit.i.i.i_crit_edge
  %rtrs.i.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %rtrs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtrs.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp ne ptr %38, null
  %cmp.i.i.i.i.i = icmp ule ptr %38, inttoptr (i32 -4096 to ptr)
  %not.spec.select.i.i.i.i.i = and i1 %tobool.not.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %not.spec.select.i.i.i.i.i, label %__find_and_get_sess.exit.i.i, label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %wait_for_rtrs_connection.exit.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %call.i.i.i.i.i.i40.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i41.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i41.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i41.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i41.i.i.i)
  %.not.i.i.i.i42.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i41.i.i.i, 0
  br i1 %.not.i.i.i.i42.i.i.i, label %if.end5.i.i.i.i.i.i.i.rnbd_clt_put_sess.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i43.i.i.i, !prof !221

if.end5.i.i.i.i.i.i.i.rnbd_clt_put_sess.exit.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_put_sess.exit.i.i.i

if.then10.i.i.i.i43.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef 3) #14
  br label %rnbd_clt_put_sess.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  call fastcc void @free_sess(ptr noundef %sess.056.i.i.i) #14
  br label %rnbd_clt_put_sess.exit.i.i.i

rnbd_clt_put_sess.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i43.i.i.i, %if.end5.i.i.i.i.i.i.i.rnbd_clt_put_sess.exit.i.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  br label %again.backedge.i.i.i

if.end19.i.i.i:                                   ; preds = %rnbd_clt_get_sess.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i.i.i) #14
  %40 = ptrtoint ptr %wait.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wait.i.i.i.i, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i.i, align 8
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %9, align 4
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @autoremove_wake_function, ptr %10, align 4
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %11, ptr %11, align 4
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %11, ptr %12, align 4
  %rtrs_waitq.i45.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 2
  call void @prepare_to_wait(ptr noundef %rtrs_waitq.i45.i.i.i, ptr noundef nonnull %wait.i.i.i.i, i32 noundef 2) #14
  %rtrs.i46.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.056.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %rtrs.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtrs.i46.i.i.i, align 4
  %tobool.not.i.i47.i.i.i = icmp eq ptr %50, null
  %cmp.i.i48.i.i.i = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i49.i.i.i = or i1 %tobool.not.i.i47.i.i.i, %cmp.i.i48.i.i.i
  br i1 %spec.select.i.i49.i.i.i, label %if.then.i50.i.i.i, label %if.end.i51.i.i.i

if.then.i50.i.i.i:                                ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %rtrs_waitq.i45.i.i.i, ptr noundef nonnull %wait.i.i.i.i) #14
  br label %wait_for_rtrs_disconnection.exit.i.i.i

if.end.i51.i.i.i:                                 ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  call void @schedule() #14
  call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  br label %wait_for_rtrs_disconnection.exit.i.i.i

wait_for_rtrs_disconnection.exit.i.i.i:           ; preds = %if.end.i51.i.i.i, %if.then.i50.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i.i) #14
  br label %again.backedge.i.i.i

again.backedge.i.i.i:                             ; preds = %wait_for_rtrs_disconnection.exit.i.i.i, %rnbd_clt_put_sess.exit.i.i.i
  %51 = load ptr, ptr @sess_list, align 4
  %cmp.not55.i.i.i = icmp eq ptr %51, @sess_list
  br i1 %cmp.not55.i.i.i, label %again.backedge.i.i.i.if.then.i.i_crit_edge, label %again.backedge.i.i.i.for.body.i.i.i.backedge_crit_edge

again.backedge.i.i.i.for.body.i.i.i.backedge_crit_edge: ; preds = %again.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.backedge

again.backedge.i.i.i.if.then.i.i_crit_edge:       ; preds = %again.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %sn.057.i.i.i, @sess_list
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.if.then.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i.backedge_crit_edge

for.inc.i.i.i.for.body.i.i.i.backedge_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.backedge

for.inc.i.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

for.body.i.i.i.backedge:                          ; preds = %for.inc.i.i.i.for.body.i.i.i.backedge_crit_edge, %again.backedge.i.i.i.for.body.i.i.i.backedge_crit_edge
  %sess.056.i.i.i.be = phi ptr [ %sn.057.i.i.i, %for.inc.i.i.i.for.body.i.i.i.backedge_crit_edge ], [ %51, %again.backedge.i.i.i.for.body.i.i.i.backedge_crit_edge ]
  br label %for.body.i.i.i

__find_and_get_sess.exit.i.i:                     ; preds = %wait_for_rtrs_connection.exit.i.i.i
  call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  %tobool.not.i.i = icmp eq ptr %sess.056.i.i.i, null
  br i1 %tobool.not.i.i, label %__find_and_get_sess.exit.i.i.if.then.i.i_crit_edge, label %__find_and_get_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge

__find_and_get_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge: ; preds = %__find_and_get_sess.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_or_create_sess.exit.i

__find_and_get_sess.exit.i.i.if.then.i.i_crit_edge: ; preds = %__find_and_get_sess.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %__find_and_get_sess.exit.i.i.if.then.i.i_crit_edge, %for.inc.i.i.i.if.then.i.i_crit_edge, %again.backedge.i.i.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 644) #19
  %tobool.not.i10.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i10.i.i, label %if.then.i.i.find_or_create_sess.exit.thread.i_crit_edge, label %if.end.i11.i.i

if.then.i.i.find_or_create_sess.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_or_create_sess.exit.thread.i

if.end.i11.i.i:                                   ; preds = %if.then.i.i
  %sessname2.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 16
  %call3.i.i.i = call i32 @strscpy(ptr noundef %sessname2.i.i.i, ptr noundef %sessname, i32 noundef 255) #14
  %busy.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy.i.i.i, i32 noundef 4) #14
  %53 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %busy.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 13
  call void @__mutex_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @alloc_sess.__key) #14
  %devs_list.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %devs_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %devs_list.i.i.i, ptr %devs_list.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %devs_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %56 = ptrtoint ptr %call.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call.i.i.i.i.i.i, ptr %call.i.i.i.i.i.i, align 8
  %prev.i49.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i.i.i.i.i, ptr %prev.i49.i.i.i, align 4
  %cpu_queues_bm.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %58) #14
  %sub.i.i.i.i = add i32 %call4.i.i.i.i.i, 31
  %59 = lshr i32 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i32 %59, 536870908
  %60 = call ptr @memset(ptr %cpu_queues_bm.i.i.i, i32 0, i32 %mul.i.i.i.i)
  %rtrs_waitq.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %rtrs_waitq.i.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @alloc_sess.__key.38) #14
  %refcount.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 15
  %call.i.i.i50.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #14
  %61 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %refcount.i.i.i, align 8
  %call9.i.i.i = call noalias ptr @__alloc_percpu(i32 noundef 56, i32 noundef 4) #20
  %cpu_queues.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %cpu_queues.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i.i, ptr %cpu_queues.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %if.end.i11.i.i.err26.i.i.i_crit_edge, label %if.end13.i.i.i

if.end.i11.i.i.err26.i.i.i_crit_edge:             ; preds = %if.end.i11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err26.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i11.i.i
  %call12.i.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i.i.i.i, i32 %63)
  %cmp13.i.i.i.i = icmp ult i32 %call12.i.i.i.i, %63
  br i1 %cmp13.i.i.i.i, label %do.body.lr.ph.i.i.i.i, label %if.end13.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge

if.end13.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_init_cpu_qlists.exit.i.i.i

do.body.lr.ph.i.i.i.i:                            ; preds = %if.end13.i.i.i
  %64 = ptrtoint ptr %call9.i.i.i to i32
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.lr.ph.i.i.i.i
  %call14.i.i.i.i = phi i32 [ %call12.i.i.i.i, %do.body.lr.ph.i.i.i.i ], [ %call.i.i13.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14.i.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, %64
  %67 = inttoptr i32 %add.i.i.i.i to ptr
  %cpu2.i.i.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %cpu2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call14.i.i.i.i, ptr %cpu2.i.i.i.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %67, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i.i.i.i.i, align 4
  %requeue_lock.i.i.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %67, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %requeue_lock.i.i.i.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @rnbd_init_cpu_qlists.__key, i16 noundef signext 3) #14
  %call.i.i13.i.i = call i32 @cpumask_next(i32 noundef %call14.i.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i14.i.i = icmp ult i32 %call.i.i13.i.i, %71
  br i1 %cmp.i.i14.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, label %do.body.i.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge

do.body.i.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_init_cpu_qlists.exit.i.i.i

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

rnbd_init_cpu_qlists.exit.i.i.i:                  ; preds = %do.body.i.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge, %if.end13.i.i.i.rnbd_init_cpu_qlists.exit.i.i.i_crit_edge
  %call15.i.i.i = call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #20
  %cpu_rr.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %call.i.i.i.i.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %cpu_rr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call15.i.i.i, ptr %cpu_rr.i.i.i, align 4
  %tobool17.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rnbd_init_cpu_qlists.exit.i.i.i.err26.i.i.i_crit_edge, label %for.cond.preheader.i.i.i

rnbd_init_cpu_qlists.exit.i.i.i.err26.i.i.i_crit_edge: ; preds = %rnbd_init_cpu_qlists.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err26.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %rnbd_init_cpu_qlists.exit.i.i.i
  %call2051.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2051.i.i.i, i32 %73)
  %cmp52.i.i.i = icmp ult i32 %call2051.i.i.i, %73
  br i1 %cmp52.i.i.i, label %for.cond.preheader.i.i.i.for.body.i15.i.i_crit_edge, label %for.cond.preheader.i.i.i.alloc_sess.exit.i.i_crit_edge

for.cond.preheader.i.i.i.alloc_sess.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_sess.exit.i.i

for.cond.preheader.i.i.i.for.body.i15.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i15.i.i

for.body.i15.i.i:                                 ; preds = %for.body.i15.i.i.for.body.i15.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i15.i.i_crit_edge
  %call2053.i.i.i = phi i32 [ %call20.i.i.i, %for.body.i15.i.i.for.body.i15.i.i_crit_edge ], [ %call2051.i.i.i, %for.cond.preheader.i.i.i.for.body.i15.i.i_crit_edge ]
  %74 = ptrtoint ptr %cpu_rr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cpu_rr.i.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2053.i.i.i
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %78, %76
  %79 = inttoptr i32 %add.i.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call2053.i.i.i, ptr %79, align 4
  %call20.i.i.i = call i32 @cpumask_next(i32 noundef %call2053.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call20.i.i.i, %81
  br i1 %cmp.i.i.i, label %for.body.i15.i.i.for.body.i15.i.i_crit_edge, label %for.body.i15.i.i.alloc_sess.exit.i.i_crit_edge

for.body.i15.i.i.alloc_sess.exit.i.i_crit_edge:   ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_sess.exit.i.i

for.body.i15.i.i.for.body.i15.i.i_crit_edge:      ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i15.i.i

err26.i.i.i:                                      ; preds = %rnbd_init_cpu_qlists.exit.i.i.i.err26.i.i.i_crit_edge, %if.end.i11.i.i.err26.i.i.i_crit_edge
  call fastcc void @free_sess(ptr noundef nonnull %call.i.i.i.i.i.i) #14
  br label %find_or_create_sess.exit.thread.i

alloc_sess.exit.i.i:                              ; preds = %for.body.i15.i.i.alloc_sess.exit.i.i_crit_edge, %for.cond.preheader.i.i.i.alloc_sess.exit.i.i_crit_edge
  %cmp.i17.i.i = icmp ugt ptr %call.i.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i.i, label %alloc_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge, label %if.end.i.i

alloc_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge: ; preds = %alloc_sess.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_or_create_sess.exit.i

if.end.i.i:                                       ; preds = %alloc_sess.exit.i.i
  %82 = load ptr, ptr @sess_list, align 4
  %call.i.i18.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call.i.i.i.i.i.i, ptr noundef nonnull @sess_list, ptr noundef %82) #14
  br i1 %call.i.i18.i.i, label %if.end.i.i19.i.i, label %if.end.i.i.find_or_create_sess.exit.i_crit_edge

if.end.i.i.find_or_create_sess.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_or_create_sess.exit.i

if.end.i.i19.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %84 = ptrtoint ptr %call.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %call.i.i.i.i.i.i, align 8
  %85 = ptrtoint ptr %prev.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @sess_list, ptr %prev.i49.i.i.i, align 4
  store volatile ptr %call.i.i.i.i.i.i, ptr @sess_list, align 4
  br label %find_or_create_sess.exit.i

find_or_create_sess.exit.thread.i:                ; preds = %err26.i.i.i, %if.then.i.i.find_or_create_sess.exit.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  br label %find_and_get_or_create_sess.exit.thread

find_or_create_sess.exit.i:                       ; preds = %if.end.i.i19.i.i, %if.end.i.i.find_or_create_sess.exit.i_crit_edge, %alloc_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge, %__find_and_get_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge
  %tobool3.not.i = phi i1 [ false, %if.end.i.i.find_or_create_sess.exit.i_crit_edge ], [ false, %if.end.i.i19.i.i ], [ true, %__find_and_get_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge ], [ true, %alloc_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %call.i.i.i.i.i.i, %if.end.i.i.find_or_create_sess.exit.i_crit_edge ], [ %call.i.i.i.i.i.i, %if.end.i.i19.i.i ], [ %sess.056.i.i.i, %__find_and_get_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge ], [ %call.i.i.i.i.i.i, %alloc_sess.exit.i.i.find_or_create_sess.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  %cmp.i = icmp eq ptr %retval.0.i.i, inttoptr (i32 -12 to ptr)
  br i1 %cmp.i, label %find_or_create_sess.exit.i.find_and_get_or_create_sess.exit.thread_crit_edge, label %if.else.i

find_or_create_sess.exit.i.find_and_get_or_create_sess.exit.thread_crit_edge: ; preds = %find_or_create_sess.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_and_get_or_create_sess.exit.thread

if.else.i:                                        ; preds = %find_or_create_sess.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_poll_queues)
  %tobool.not.i = icmp eq i32 %nr_poll_queues, 0
  br i1 %tobool.not.i, label %land.lhs.true5.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else.i
  br i1 %tobool3.not.i, label %land.lhs.true.i.put_sess.i_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true.i.put_sess.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_sess.i

land.lhs.true5.critedge.i:                        ; preds = %if.else.i
  %nr_poll_queues6.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 12
  %86 = ptrtoint ptr %nr_poll_queues6.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_poll_queues6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool7.not.i = icmp eq i32 %87, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %land.lhs.true5.critedge.i.put_sess.i_crit_edge

land.lhs.true5.critedge.i.put_sess.i_crit_edge:   ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_sess.i

if.end9.i:                                        ; preds = %land.lhs.true5.critedge.i
  br i1 %tobool3.not.i, label %if.end9.i.find_and_get_or_create_sess.exit_crit_edge, label %if.end9.i.if.end12.i_crit_edge

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.end9.i.find_and_get_or_create_sess.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_and_get_or_create_sess.exit

if.end12.i:                                       ; preds = %if.end9.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %path_cnt)
  %tobool13.not.i = icmp eq i32 %path_cnt, 0
  br i1 %tobool13.not.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %sessname) #17
  br label %put_sess.i

if.end16.i:                                       ; preds = %if.end12.i
  %88 = ptrtoint ptr %rtrs_ops.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %retval.0.i.i, ptr %rtrs_ops.i, align 4
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @rnbd_clt_link_ev, ptr %6, align 4
  %call17.i = call ptr @rtrs_clt_open(ptr noundef nonnull %rtrs_ops.i, ptr noundef %sessname, ptr noundef %paths, i32 noundef %path_cnt, i16 noundef zeroext %port_nr, i32 noundef 0, i8 noundef zeroext 30, i16 noundef signext -1, i32 noundef %nr_poll_queues) #14
  %rtrs.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call17.i, ptr %rtrs.i, align 4
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then20.i, label %if.end23.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %call17.i to i32
  %rtrs_ready.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %rtrs_ready.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %rtrs_ready.i.i, align 4
  %rtrs_waitq.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 2
  call void @__wake_up(ptr noundef %rtrs_waitq.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %put_sess.i

if.end23.i:                                       ; preds = %if.end16.i
  %call25.i = call i32 @rtrs_clt_query(ptr noundef %call17.i, ptr noundef nonnull %attrs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end23.i.close_rtrs.i_crit_edge

if.end23.i.close_rtrs.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %close_rtrs.i

if.end28.i:                                       ; preds = %if.end23.i
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %1, align 4
  %max_io_size29.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 9
  %95 = ptrtoint ptr %max_io_size29.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_io_size29.i, align 4
  %96 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %attrs.i, align 4
  %queue_depth30.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 8
  %98 = ptrtoint ptr %queue_depth30.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %queue_depth30.i, align 4
  %nr_poll_queues31.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 12
  %99 = ptrtoint ptr %nr_poll_queues31.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %nr_poll_queues, ptr %nr_poll_queues31.i, align 4
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %3, align 4
  %max_segments32.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 10
  %102 = ptrtoint ptr %max_segments32.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %max_segments32.i, align 4
  %tag_set1.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11
  %103 = call ptr @memset(ptr %tag_set1.i.i, i32 0, i32 184)
  %ops.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 2
  %104 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @rnbd_mq_ops, ptr %ops.i.i, align 4
  %queue_depth2.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 4
  %105 = ptrtoint ptr %queue_depth2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %97, ptr %queue_depth2.i.i, align 4
  %numa_node.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 7
  %106 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %numa_node.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 9
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %flags.i.i, align 4
  %cmd_size.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 6
  %108 = ptrtoint ptr %cmd_size.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 172, ptr %cmd_size.i.i, align 4
  %cond.i.i = select i1 %tobool.not.i, i32 2, i32 3
  %nr_maps.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 1
  %109 = ptrtoint ptr %nr_maps.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %cond.i.i, ptr %nr_maps.i.i, align 4
  %call.i.i.i.i74.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %110 = load volatile i32, ptr @__num_online_cpus, align 4
  %111 = ptrtoint ptr %nr_poll_queues31.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr_poll_queues31.i, align 4
  %add.i.i = add i32 %112, %110
  %nr_hw_queues.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 3
  %113 = ptrtoint ptr %nr_hw_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add.i.i, ptr %nr_hw_queues.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 11, i32 10
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %retval.0.i.i, ptr %driver_data.i.i, align 4
  %call4.i.i = call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set1.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool34.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end28.i.close_rtrs.i_crit_edge

if.end28.i.close_rtrs.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %close_rtrs.i

if.end36.i:                                       ; preds = %if.end28.i
  %call37.i = call fastcc i32 @send_msg_sess_info(ptr noundef %retval.0.i.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.close_rtrs.i_crit_edge

if.end36.i.close_rtrs.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %close_rtrs.i

if.end40.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  %rtrs_ready.i75.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %rtrs_ready.i75.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %rtrs_ready.i75.i, align 4
  %rtrs_waitq.i76.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 2
  call void @__wake_up(ptr noundef %rtrs_waitq.i76.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %find_and_get_or_create_sess.exit

close_rtrs.i:                                     ; preds = %if.end36.i.close_rtrs.i_crit_edge, %if.end28.i.close_rtrs.i_crit_edge, %if.end23.i.close_rtrs.i_crit_edge
  %err.0.i = phi i32 [ %call25.i, %if.end23.i.close_rtrs.i_crit_edge ], [ %call4.i.i, %if.end28.i.close_rtrs.i_crit_edge ], [ %call37.i, %if.end36.i.close_rtrs.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 770) #14
  %116 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rtrs.i, align 4
  %tobool.not.i.i77.i = icmp eq ptr %117, null
  %cmp.i.i78.i = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i77.i, %cmp.i.i78.i
  br i1 %spec.select.i.i.i, label %close_rtrs.i.put_sess.i_crit_edge, label %if.then.i81.i

close_rtrs.i.put_sess.i_crit_edge:                ; preds = %close_rtrs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_sess.i

if.then.i81.i:                                    ; preds = %close_rtrs.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtrs_clt_close(ptr noundef nonnull %117) #14
  %118 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rtrs.i, align 4
  %rtrs_ready.i.i79.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 3
  %119 = ptrtoint ptr %rtrs_ready.i.i79.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %rtrs_ready.i.i79.i, align 4
  %rtrs_waitq.i.i80.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 2
  call void @__wake_up(ptr noundef %rtrs_waitq.i.i80.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %put_sess.i

put_sess.i:                                       ; preds = %if.then.i81.i, %close_rtrs.i.put_sess.i_crit_edge, %if.then20.i, %do.end.i, %land.lhs.true5.critedge.i.put_sess.i_crit_edge, %land.lhs.true.i.put_sess.i_crit_edge
  %err.1.i = phi i32 [ %91, %if.then20.i ], [ -6, %do.end.i ], [ -22, %land.lhs.true5.critedge.i.put_sess.i_crit_edge ], [ -22, %land.lhs.true.i.put_sess.i_crit_edge ], [ %err.0.i, %close_rtrs.i.put_sess.i_crit_edge ], [ %err.0.i, %if.then.i81.i ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %refcount.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i.i, i32 0, i32 15
  %call.i.i.i.i.i.i83.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i84.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i84.i, label %if.then.i85.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %put_sess.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rnbd_clt_put_sess.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !221

if.end5.i.i.i.i.i.rnbd_clt_put_sess.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_put_sess.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #14
  br label %rnbd_clt_put_sess.exit.i

if.then.i85.i:                                    ; preds = %put_sess.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  call fastcc void @free_sess(ptr noundef %retval.0.i.i) #14
  br label %rnbd_clt_put_sess.exit.i

rnbd_clt_put_sess.exit.i:                         ; preds = %if.then.i85.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rnbd_clt_put_sess.exit.i_crit_edge
  %121 = inttoptr i32 %err.1.i to ptr
  br label %find_and_get_or_create_sess.exit

find_and_get_or_create_sess.exit.thread:          ; preds = %find_or_create_sess.exit.i.find_and_get_or_create_sess.exit.thread_crit_edge, %find_or_create_sess.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtrs_ops.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i) #14
  br label %cleanup

find_and_get_or_create_sess.exit:                 ; preds = %rnbd_clt_put_sess.exit.i, %if.end40.i, %if.end9.i.find_and_get_or_create_sess.exit_crit_edge
  %retval.0.i128 = phi ptr [ %121, %rnbd_clt_put_sess.exit.i ], [ %retval.0.i.i, %if.end40.i ], [ %retval.0.i.i, %if.end9.i.find_and_get_or_create_sess.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtrs_ops.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i) #14
  %cmp.i129 = icmp ugt ptr %retval.0.i128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %find_and_get_or_create_sess.exit.cleanup_crit_edge, label %if.end6

find_and_get_or_create_sess.exit.cleanup_crit_edge: ; preds = %find_and_get_or_create_sess.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %find_and_get_or_create_sess.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i.i130 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3520, i32 noundef 376) #19
  %tobool.not.i131 = icmp eq ptr %call.i.i.i.i130, null
  br i1 %tobool.not.i131, label %if.end6.do.end_crit_edge, label %if.end.i

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %123 = load i32, ptr @nr_cpu_ids, align 4
  %add.i = add i32 %123, %nr_poll_queues
  %124 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 20) #14
  %125 = extractvalue { i32, i1 } %124, 1
  br i1 %125, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !225

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_queues78.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 2
  %126 = ptrtoint ptr %hw_queues78.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %hw_queues78.i, align 8
  br label %out_alloc.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %127 = extractvalue { i32, i1 } %124, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %127, i32 noundef 3520) #20
  %hw_queues.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 2
  %128 = ptrtoint ptr %hw_queues.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call8.i.i.i, ptr %hw_queues.i, align 8
  %tobool4.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.out_alloc.i_crit_edge, label %if.end6.i

if.end7.i.i.i.out_alloc.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_alloc.i

if.end6.i:                                        ; preds = %if.end7.i.i.i
  call void @mutex_lock_nested(ptr noundef nonnull @ida_lock, i32 noundef 0) #14
  %call7.i = call i32 @ida_alloc_range(ptr noundef nonnull @index_ida, i32 noundef 0, i32 noundef 16383, i32 noundef 3264) #14
  call void @mutex_unlock(ptr noundef nonnull @ida_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i139 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i139, label %do.end.i140, label %if.end10.i

do.end.i140:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i128, i32 0, i32 16
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %pathname, ptr noundef %sessname.i, i32 noundef %call7.i) #17
  br label %out_queues.i

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call noalias ptr @kstrdup(ptr noundef %pathname, i32 noundef 3264) #14
  %pathname12.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 7
  %129 = ptrtoint ptr %pathname12.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call11.i, ptr %pathname12.i, align 4
  %tobool14.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool14.not.i, label %if.end10.i.out_queues.i_crit_edge, label %if.end16.i142

if.end10.i.out_queues.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_queues.i

if.end16.i142:                                    ; preds = %if.end10.i
  %clt_device_id.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 4
  %130 = ptrtoint ptr %clt_device_id.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call7.i, ptr %clt_device_id.i, align 8
  %131 = ptrtoint ptr %call.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %retval.0.i128, ptr %call.i.i.i.i130, align 8
  %access_mode18.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 8
  %132 = ptrtoint ptr %access_mode18.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %access_mode, ptr %access_mode18.i, align 8
  %nr_poll_queues19.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 9
  %133 = ptrtoint ptr %nr_poll_queues19.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %nr_poll_queues, ptr %nr_poll_queues19.i, align 4
  %lock.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_dev.__key) #14
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 29
  %call.i.i.i75.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %134 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 1, ptr %refcount.i, align 8
  %dev_state.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %call.i.i.i.i130, i32 0, i32 6
  %135 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %dev_state.i, align 8
  %refcount.i.i141 = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i128, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i141, i32 noundef 4) #14
  %136 = ptrtoint ptr %refcount.i.i141 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %refcount.i.i141, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end16.i142
  %138 = phi i32 [ %137, %if.end16.i142 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %139 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i.i.i.i76.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i.i.i76.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %138, 1
  %call.i.i.i.i.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i141, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #14
  %140 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i141, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %142 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i141, ptr %refcount.i.i141, i32 %141, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i141) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i144 = extractvalue { i32, i32 } %142, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i144, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %142, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %141
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %143 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %144, 1
  %145 = or i32 %add5.i.i.i.i.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %145)
  %.not.i.i.i.i.i145 = icmp sgt i32 %145, -1
  br i1 %.not.i.i.i.i.i145, label %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge, label %if.then10.i.i.i.i.i146, !prof !221

if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sess.exit.i

if.then10.i.i.i.i.i146:                           ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i141, i32 noundef 0) #14
  %146 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %rnbd_clt_get_sess.exit.i

rnbd_clt_get_sess.exit.i:                         ; preds = %if.then10.i.i.i.i.i146, %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge
  %147 = phi i32 [ %144, %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i146 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %147, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not.i, label %do.end36.i, label %rnbd_clt_get_sess.exit.i.init_dev.exit_crit_edge, !prof !225

rnbd_clt_get_sess.exit.i.init_dev.exit_crit_edge: ; preds = %rnbd_clt_get_sess.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dev.exit

do.end36.i:                                       ; preds = %rnbd_clt_get_sess.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1490, i32 noundef 9, ptr noundef null) #14
  br label %init_dev.exit

out_queues.i:                                     ; preds = %if.end10.i.out_queues.i_crit_edge, %do.end.i140
  %ret.0.i = phi i32 [ %call7.i, %do.end.i140 ], [ -12, %if.end10.i.out_queues.i_crit_edge ]
  %148 = ptrtoint ptr %hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw_queues.i, align 8
  call void @kfree(ptr noundef %149) #14
  br label %out_alloc.i

out_alloc.i:                                      ; preds = %out_queues.i, %if.end7.i.i.i.out_alloc.i_crit_edge, %kcalloc.exit.thread.i
  %ret.1.i = phi i32 [ %ret.0.i, %out_queues.i ], [ -12, %if.end7.i.i.i.out_alloc.i_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  call void @kfree(ptr noundef nonnull %call.i.i.i.i130) #14
  %150 = inttoptr i32 %ret.1.i to ptr
  br label %init_dev.exit

init_dev.exit:                                    ; preds = %out_alloc.i, %do.end36.i, %rnbd_clt_get_sess.exit.i.init_dev.exit_crit_edge
  %retval.0.i147 = phi ptr [ %150, %out_alloc.i ], [ %call.i.i.i.i130, %do.end36.i ], [ %call.i.i.i.i130, %rnbd_clt_get_sess.exit.i.init_dev.exit_crit_edge ]
  %cmp.i148 = icmp ugt ptr %retval.0.i147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %init_dev.exit.do.end_crit_edge, label %if.end14

init_dev.exit.do.end_crit_edge:                   ; preds = %init_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %init_dev.exit.do.end_crit_edge, %if.end6.do.end_crit_edge
  %retval.0.i147170 = phi ptr [ %retval.0.i147, %init_dev.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.do.end_crit_edge ]
  %sessname10 = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i128, i32 0, i32 16
  %151 = ptrtoint ptr %retval.0.i147170 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %pathname, ptr noundef %sessname10, i32 noundef %151) #17
  br label %put_sess

if.end14:                                         ; preds = %init_dev.exit
  %152 = ptrtoint ptr %retval.0.i147 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %retval.0.i147, align 8
  call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  %pathname.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 7
  %154 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pathname.i, align 4
  %sessname.i149 = getelementptr inbounds %struct.rnbd_clt_session, ptr %153, i32 0, i32 16
  %call.i150 = call fastcc zeroext i1 @__exists_dev(ptr noundef %155, ptr noundef %sessname.i149) #14
  br i1 %call.i150, label %insert_dev_if_not_exists_devpath.exit.thread, label %if.then.i

insert_dev_if_not_exists_devpath.exit.thread:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  br label %put_dev

if.then.i:                                        ; preds = %if.end14
  %lock.i151 = getelementptr inbounds %struct.rnbd_clt_session, ptr %153, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %lock.i151, i32 noundef 0) #14
  %list.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 25
  %devs_list.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %153, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %153, i32 0, i32 14, i32 1
  %156 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %157, ptr noundef %devs_list.i) #14
  br i1 %call.i.i.i152, label %if.end.i.i.i153, label %if.then.i.if.end17_crit_edge

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end.i.i.i153:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %list.i, ptr %prev.i.i, align 4
  %159 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %devs_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 25, i32 1
  %160 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev3.i.i.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %list.i, ptr %157, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i.i153, %if.then.i.if.end17_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i151) #14
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  %call18 = call fastcc i32 @send_msg_open(ptr noundef %retval.0.i147, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end29, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pathname.i, align 4
  %164 = ptrtoint ptr %retval.0.i147 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %retval.0.i147, align 8
  %sessname26 = getelementptr inbounds %struct.rnbd_clt_session, ptr %165, i32 0, i32 16
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %163, ptr noundef %sessname26, i32 noundef %call18) #17
  br label %del_dev

if.end29:                                         ; preds = %if.end17
  %lock = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rnbd_clt_map_device.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rnbd_clt_map_device, %if.then36)) #14
          to label %do.end41 [label %if.then36], !srcloc !226

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %sessname37 = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i128, i32 0, i32 16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rnbd_clt_map_device.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.10, ptr noundef %sessname37, ptr noundef %pathname) #14
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end29
  %call42 = call fastcc i32 @rnbd_client_setup_device(ptr noundef %retval.0.i147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %166 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pathname.i, align 4
  %168 = ptrtoint ptr %retval.0.i147 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %retval.0.i147, align 8
  %sessname62 = getelementptr inbounds %struct.rnbd_clt_session, ptr %169, i32 0, i32 16
  br i1 %tobool43.not, label %do.end58, label %do.end47

do.end47:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %167, ptr noundef %sessname62, i32 noundef %call42) #17
  call void @mutex_unlock(ptr noundef %lock) #14
  %device_id = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 3
  %170 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %device_id, align 4
  call fastcc void @send_msg_close(ptr noundef %retval.0.i147, i32 noundef %171, i32 noundef 1)
  br label %del_dev

do.end58:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  %gd = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 26
  %172 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gd, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %173, i32 0, i32 3
  %nsectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 23
  %174 = ptrtoint ptr %nsectors to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %nsectors, align 8
  %logical_block_size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 21
  %176 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %logical_block_size, align 4
  %conv = zext i16 %177 to i32
  %physical_block_size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 20
  %178 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %physical_block_size, align 2
  %conv65 = zext i16 %179 to i32
  %max_write_same_sectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 15
  %180 = ptrtoint ptr %max_write_same_sectors to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_write_same_sectors, align 8
  %max_discard_sectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 16
  %182 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %max_discard_sectors, align 4
  %discard_granularity = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 17
  %184 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %discard_granularity, align 8
  %discard_alignment = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 18
  %186 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %discard_alignment, align 4
  %secure_discard = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 19
  %188 = ptrtoint ptr %secure_discard to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %secure_discard, align 8
  %conv66 = zext i16 %189 to i32
  %max_segments = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 22
  %190 = ptrtoint ptr %max_segments to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %max_segments, align 2
  %conv67 = zext i16 %191 to i32
  %max_hw_sectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 14
  %192 = ptrtoint ptr %max_hw_sectors to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_hw_sectors, align 4
  %rotational = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 11
  %194 = ptrtoint ptr %rotational to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %rotational, align 1, !range !219
  %196 = zext i8 %195 to i32
  %wc = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 12
  %197 = ptrtoint ptr %wc to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %wc, align 2, !range !219
  %199 = zext i8 %198 to i32
  %fua = getelementptr inbounds %struct.rnbd_clt_dev, ptr %retval.0.i147, i32 0, i32 13
  %200 = ptrtoint ptr %fua to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %fua, align 1, !range !219
  %202 = zext i8 %201 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %167, ptr noundef %sessname62, ptr noundef %disk_name, i32 noundef %175, i32 noundef %conv, i32 noundef %conv65, i32 noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %187, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %193, i32 noundef %196, i32 noundef %199, i32 noundef %202) #17
  call void @mutex_unlock(ptr noundef %lock) #14
  call fastcc void @rnbd_clt_put_sess(ptr noundef %retval.0.i128)
  br label %cleanup

del_dev:                                          ; preds = %do.end47, %do.end22
  %ret.0 = phi i32 [ %call18, %do.end22 ], [ %call42, %do.end47 ]
  call fastcc void @delete_dev(ptr noundef %retval.0.i147)
  br label %put_dev

put_dev:                                          ; preds = %del_dev, %insert_dev_if_not_exists_devpath.exit.thread
  %ret.1 = phi i32 [ %ret.0, %del_dev ], [ -17, %insert_dev_if_not_exists_devpath.exit.thread ]
  call fastcc void @rnbd_clt_put_dev(ptr noundef %retval.0.i147)
  br label %put_sess

put_sess:                                         ; preds = %put_dev, %do.end
  %ret.2 = phi i32 [ %151, %do.end ], [ %ret.1, %put_dev ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %refcount.i155 = getelementptr inbounds %struct.rnbd_clt_session, ptr %retval.0.i128, i32 0, i32 15
  %call.i.i.i.i.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i155, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i155, i32 1, i32 3, i32 1) #14
  %203 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i155, ptr %refcount.i155, i32 1, ptr elementtype(i32) %refcount.i155) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i157, label %if.then.i158, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %put_sess
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_put_sess.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i155, i32 noundef 3) #14
  br label %rnbd_clt_put_sess.exit

if.then.i158:                                     ; preds = %put_sess
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  call fastcc void @free_sess(ptr noundef %retval.0.i128) #14
  br label %rnbd_clt_put_sess.exit

rnbd_clt_put_sess.exit:                           ; preds = %if.then.i158, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge
  %204 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %rnbd_clt_put_sess.exit, %do.end58, %find_and_get_or_create_sess.exit.cleanup_crit_edge, %find_and_get_or_create_sess.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %204, %rnbd_clt_put_sess.exit ], [ %retval.0.i147, %do.end58 ], [ inttoptr (i32 -17 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %find_and_get_or_create_sess.exit.thread ], [ %retval.0.i128, %find_and_get_or_create_sess.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_msg_open(ptr noundef %dev, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %msg = alloca %struct.rnbd_msg_open, align 2
  %vec = alloca %struct.kvec, align 4
  %errno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %msg) #14
  %2 = call ptr @memset(ptr %msg, i32 255, i32 264)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #14
  %3 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %4 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %vec, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 264, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errno) #14
  %6 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %errno, align 4, !annotation !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc ptr @rnbd_get_iu(ptr noundef %1)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %call2, align 4
  %9 = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %9, align 4
  %sgt = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 4
  call void @sg_init_one(ptr noundef %12, ptr noundef nonnull %call7.i.i, i32 noundef 56) #14
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 512, ptr %msg, align 2
  %access_mode = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access_mode, align 8
  %conv = trunc i32 %15 to i8
  %access_mode6 = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 1
  %16 = ptrtoint ptr %access_mode6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %access_mode6, align 2
  %dev_name = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 3
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %17 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pathname, align 4
  %call7 = call i32 @strscpy(ptr noundef %dev_name, ptr noundef %18, i32 noundef 255) #14
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end5
  %21 = phi i32 [ %20, %if.end5 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %21, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %25 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %24, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %24
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %27, 1
  %28 = or i32 %add5.i.i.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %rnbd_clt_get_dev.exit

rnbd_clt_get_dev.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge
  %30 = phi i32 [ %27, %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.i.i.i.i.not = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %do.end, label %rnbd_clt_get_dev.exit.if.end24_crit_edge, !prof !225

rnbd_clt_get_dev.exit.if.end24_crit_edge:         ; preds = %rnbd_clt_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

do.end:                                           ; preds = %rnbd_clt_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 582, i32 noundef 9, ptr noundef null) #14
  br label %if.end24

if.end24:                                         ; preds = %do.end, %rnbd_clt_get_dev.exit.if.end24_crit_edge
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtrs, align 4
  %33 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sgt, align 4
  %call33 = call fastcc i32 @send_usr_msg(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %call2, ptr noundef nonnull %vec, i32 noundef 56, ptr noundef %34, i32 noundef 1, ptr noundef nonnull @msg_open_conf, ptr noundef nonnull %errno, i32 noundef %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end24
  call fastcc void @rnbd_clt_put_dev(ptr noundef %dev)
  %refcount.i64 = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i64, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i64, i32 1, i32 3, i32 1) #14
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i64, ptr %refcount.i64, i32 1, ptr elementtype(i32) %refcount.i64) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then35.rnbd_put_iu.exit_crit_edge

if.then35.rnbd_put_iu.exit_crit_edge:             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_put_iu.exit

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table(ptr noundef %sgt) #14
  %permit.i = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 1
  %36 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %permit.i, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %1, ptr noundef %37) #14
  call void @kfree(ptr noundef nonnull %call2) #14
  br label %rnbd_put_iu.exit

rnbd_put_iu.exit:                                 ; preds = %if.then.i, %if.then35.rnbd_put_iu.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.end36

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %errno, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %rnbd_put_iu.exit
  %err.0 = phi i32 [ %call33, %rnbd_put_iu.exit ], [ %39, %if.else ]
  %refcount.i65 = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 7
  %call.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i65, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i65, i32 1, i32 3, i32 1) #14
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i65, ptr %refcount.i65, i32 1, ptr elementtype(i32) %refcount.i65) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i67 = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i67)
  %cmp.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i67, 0
  br i1 %cmp.i.i.i68, label %if.then.i71, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i71:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table(ptr noundef %sgt) #14
  %permit.i70 = getelementptr inbounds %struct.rnbd_iu, ptr %call2, i32 0, i32 1
  %41 = ptrtoint ptr %permit.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %permit.i70, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %1, ptr noundef %42) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i71, %if.end.cleanup.sink.split_crit_edge
  %call2.sink = phi ptr [ %call2, %if.then.i71 ], [ %call7.i.i, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.0, %if.then.i71 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call2.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %if.end36.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errno) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %msg) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnbd_client_setup_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %clt_device_id = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %clt_device_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clt_device_id, align 8
  %nsectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %nsectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsectors, align 8
  %logical_block_size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %logical_block_size, align 4
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %conv1 = zext i32 %mul to i64
  %size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv1, ptr %size, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %tag_set = getelementptr inbounds %struct.rnbd_clt_session, ptr %8, i32 0, i32 11
  %call = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %dev, ptr noundef nonnull @rnbd_client_setup_device.__key) #14
  %gd = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %9 = ptrtoint ptr %gd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %gd, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.gendisk, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %queue7 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %queue7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %queue7, align 4
  %nr_hw_queues11.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 9
  %14 = ptrtoint ptr %nr_hw_queues11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_hw_queues11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.not.i = icmp eq i32 %15, 0
  br i1 %cmp12.not.i, label %if.end.rnbd_init_mq_hw_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end.rnbd_init_mq_hw_queues.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_init_mq_hw_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %hw_queues.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %16 = phi ptr [ %12, %for.body.lr.ph.i ], [ %29, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %queue_hw_ctx.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %queue_hw_ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue_hw_ctx.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %i.013.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_queues.i, align 8
  %arrayidx2.i = getelementptr %struct.rnbd_queue, ptr %22, i32 %i.013.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx2.i, ptr %arrayidx2.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx2.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx2.i, ptr %prev.i.i.i, align 4
  %dev1.i.i = getelementptr %struct.rnbd_queue, ptr %22, i32 %i.013.i, i32 2
  %25 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev1.i.i, align 4
  %hctx2.i.i = getelementptr %struct.rnbd_queue, ptr %22, i32 %i.013.i, i32 3
  %26 = ptrtoint ptr %hctx2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %hctx2.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %20, i32 0, i32 9
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx2.i, ptr %driver_data.i, align 128
  %inc.i = add nuw i32 %i.013.i, 1
  %28 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue7, align 4
  %nr_hw_queues.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_hw_queues.i, align 8
  %cmp.i22 = icmp ult i32 %inc.i, %31
  br i1 %cmp.i22, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rnbd_init_mq_hw_queues.exit_crit_edge

for.body.i.rnbd_init_mq_hw_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_init_mq_hw_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

rnbd_init_mq_hw_queues.exit:                      ; preds = %for.body.i.rnbd_init_mq_hw_queues.exit_crit_edge, %if.end.rnbd_init_mq_hw_queues.exit_crit_edge
  %32 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue7, align 4
  %34 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %logical_block_size, align 4
  %conv.i = zext i16 %35 to i32
  tail call void @blk_queue_logical_block_size(ptr noundef %33, i32 noundef %conv.i) #14
  %36 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue7, align 4
  %physical_block_size.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 20
  %38 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %physical_block_size.i, align 2
  %conv2.i = zext i16 %39 to i32
  tail call void @blk_queue_physical_block_size(ptr noundef %37, i32 noundef %conv2.i) #14
  %40 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue7, align 4
  %max_hw_sectors.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 14
  %42 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_hw_sectors.i, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %41, i32 noundef %43) #14
  %44 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %queue7, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 15
  %46 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_write_same_sectors.i, align 8
  tail call void @blk_queue_max_write_same_sectors(ptr noundef %45, i32 noundef %47) #14
  %48 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_max_discard_segments(ptr noundef %49, i16 noundef zeroext 1) #14
  %50 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue7, align 4
  %max_discard_sectors.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 16
  %52 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_discard_sectors.i, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %51, i32 noundef %53) #14
  %discard_granularity.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 17
  %54 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %discard_granularity.i, align 8
  %56 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue7, align 4
  %discard_granularity8.i = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 37, i32 18
  %58 = ptrtoint ptr %discard_granularity8.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %discard_granularity8.i, align 4
  %discard_alignment.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 18
  %59 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %discard_alignment.i, align 4
  %61 = load ptr, ptr %queue7, align 4
  %discard_alignment11.i = getelementptr inbounds %struct.request_queue, ptr %61, i32 0, i32 37, i32 19
  %62 = ptrtoint ptr %discard_alignment11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %discard_alignment11.i, align 4
  %63 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_discard_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %rnbd_init_mq_hw_queues.exit.if.end.i_crit_edge, label %if.then.i

rnbd_init_mq_hw_queues.exit.if.end.i_crit_edge:   ; preds = %rnbd_init_mq_hw_queues.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %rnbd_init_mq_hw_queues.exit
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %66) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rnbd_init_mq_hw_queues.exit.if.end.i_crit_edge
  %secure_discard.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 19
  %67 = ptrtoint ptr %secure_discard.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %secure_discard.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool14.not.i = icmp eq i16 %68, 0
  br i1 %tobool14.not.i, label %if.end.i.setup_request_queue.exit_crit_edge, label %if.then15.i

if.end.i.setup_request_queue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %setup_request_queue.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_flag_set(i32 noundef 11, ptr noundef %70) #14
  br label %setup_request_queue.exit

setup_request_queue.exit:                         ; preds = %if.then15.i, %if.end.i.setup_request_queue.exit_crit_edge
  %71 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_flag_set(i32 noundef 4, ptr noundef %72) #14
  %73 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_flag_set(i32 noundef 12, ptr noundef %74) #14
  %75 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %queue7, align 4
  %max_segments.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 22
  %77 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_segments.i, align 2
  tail call void @blk_queue_max_segments(ptr noundef %76, i16 noundef zeroext %78) #14
  %79 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %queue7, align 4
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %max_io_size.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %max_io_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_io_size.i, align 4
  tail call void @blk_queue_io_opt(ptr noundef %80, i32 noundef %84) #14
  %85 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %queue7, align 4
  tail call void @blk_queue_virt_boundary(ptr noundef %86, i32 noundef 4095) #14
  %87 = ptrtoint ptr %queue7 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %queue7, align 4
  %wc.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 12
  %89 = ptrtoint ptr %wc.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %wc.i, align 2, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool24.i = icmp ne i8 %90, 0
  %fua.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 13
  %91 = ptrtoint ptr %fua.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fua.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool25.i = icmp ne i8 %92, 0
  tail call void @blk_queue_write_cache(ptr noundef %88, i1 noundef zeroext %tobool24.i, i1 noundef zeroext %tobool25.i) #14
  %call8 = tail call fastcc i32 @rnbd_clt_setup_gen_disk(ptr noundef %dev, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %setup_request_queue.exit, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %call8, %setup_request_queue.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnbd_clt_put_sess(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %refcount = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !221

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call fastcc void @free_sess(ptr noundef %sess)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_msg_close(ptr noundef %dev, i32 noundef %device_id, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %msg = alloca %struct.rnbd_msg_close, align 8
  %vec = alloca %struct.kvec, align 4
  %errno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #14
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #14
  %3 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %4 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %vec, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errno) #14
  %call = call fastcc ptr @rnbd_get_iu(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.rnbd_msg_close, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call, align 4
  %8 = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %8, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %msg, align 8
  %11 = call i32 @llvm.bswap.i32(i32 %device_id)
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %6, align 4
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %15 = phi i32 [ %14, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %rnbd_clt_get_dev.exit

rnbd_clt_get_dev.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %do.end, label %rnbd_clt_get_dev.exit.if.end19_crit_edge, !prof !225

rnbd_clt_get_dev.exit.if.end19_crit_edge:         ; preds = %rnbd_clt_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.end:                                           ; preds = %rnbd_clt_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 494, i32 noundef 9, ptr noundef null) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %rnbd_clt_get_dev.exit.if.end19_crit_edge
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtrs, align 4
  %call26 = call fastcc i32 @send_usr_msg(ptr noundef %26, i32 noundef 1, ptr noundef nonnull %call, ptr noundef nonnull %vec, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @msg_close_conf, ptr noundef nonnull %errno, i32 noundef %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end19.if.end29_crit_edge, label %if.then28

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then28:                                        ; preds = %if.end19
  call fastcc void @rnbd_clt_put_dev(ptr noundef %dev)
  %refcount.i1 = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i1, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i1, i32 1, i32 3, i32 1) #14
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i1, ptr %refcount.i1, i32 1, ptr elementtype(i32) %refcount.i1) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then28.if.end29_crit_edge

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %sgt.i = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 3
  call void @sg_free_table(ptr noundef %sgt.i) #14
  %permit.i = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %permit.i, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %1, ptr noundef %29) #14
  call void @kfree(ptr noundef nonnull %call) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %if.then28.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %refcount.i2 = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 7
  %call.i.i.i3 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i2, i32 1, i32 3, i32 1) #14
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2, ptr %refcount.i2, i32 1, ptr elementtype(i32) %refcount.i2) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i4 = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i4)
  %cmp.i.i.i5 = icmp eq i32 %asmresult.i.i.i.i.i.i4, 0
  br i1 %cmp.i.i.i5, label %if.then.i8, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i8:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %sgt.i6 = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 3
  call void @sg_free_table(ptr noundef %sgt.i6) #14
  %permit.i7 = getelementptr inbounds %struct.rnbd_iu, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %permit.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %permit.i7, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %1, ptr noundef %32) #14
  call void @kfree(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i8, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errno) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delete_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnbd_clt_put_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 53) #14
  %refcount = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 29
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !221

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @mutex_lock_nested(ptr noundef nonnull @ida_lock, i32 noundef 0) #14
  %clt_device_id = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %clt_device_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clt_device_id, align 8
  tail call void @ida_free(ptr noundef nonnull @index_ida, i32 noundef %2) #14
  tail call void @mutex_unlock(ptr noundef nonnull @ida_lock) #14
  %hw_queues = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %hw_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_queues, align 8
  tail call void @kfree(ptr noundef %4) #14
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pathname, align 4
  tail call void @kfree(ptr noundef %6) #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %8, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_put_sess.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %rnbd_clt_put_sess.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call fastcc void @free_sess(ptr noundef %8) #14
  br label %rnbd_clt_put_sess.exit

rnbd_clt_put_sess.exit:                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge
  %lock = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #14
  tail call void @kfree(ptr noundef %dev) #14
  br label %return

return:                                           ; preds = %rnbd_clt_put_sess.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_clt_unmap_device(ptr noundef %dev, i1 noundef zeroext %force, ptr noundef %sysfs_self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %dev_state = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pathname, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %7, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %5, ptr noundef %sessname) #17
  br label %err

if.end:                                           ; preds = %entry
  %refcount3 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount3, i32 noundef 4) #14
  %8 = ptrtoint ptr %refcount3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount3, align 4
  %force.not = xor i1 %force, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1
  %or.cond = select i1 %force.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %do.end9, label %if.end16

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pathname11 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %pathname11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pathname11, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %sessname13 = getelementptr inbounds %struct.rnbd_clt_session, ptr %13, i32 0, i32 16
  %sub = add nsw i32 %9, -1
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %11, ptr noundef %sessname13, i32 noundef %sub) #17
  br label %err

if.end16:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp18 = icmp eq i32 %15, 1
  %16 = ptrtoint ptr %dev_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %dev_state, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %lock.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %18, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %list.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25
  %call.i.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i61, label %if.end.i.i.i, label %if.end16.delete_dev.exit_crit_edge

if.end16.delete_dev.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %delete_dev.exit

if.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %delete_dev.exit

delete_dev.exit:                                  ; preds = %if.end.i.i.i, %if.end16.delete_dev.exit_crit_edge
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 25, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  tail call void @rnbd_clt_remove_dev_symlink(ptr noundef %dev) #14
  %kobj.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 27
  %state_initialized.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 27, i32 8
  %27 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %state_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %delete_dev.exit.destroy_sysfs.exit_crit_edge, label %if.then.i

delete_dev.exit.destroy_sysfs.exit_crit_edge:     ; preds = %delete_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_sysfs.exit

if.then.i:                                        ; preds = %delete_dev.exit
  %tobool1.not.i = icmp eq ptr %sysfs_self, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @sysfs_remove_file_self(ptr noundef %kobj.i, ptr noundef nonnull %sysfs_self) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  tail call void @kobject_del(ptr noundef %kobj.i) #14
  tail call void @kobject_put(ptr noundef %kobj.i) #14
  br label %destroy_sysfs.exit

destroy_sysfs.exit:                               ; preds = %if.end.i, %delete_dev.exit.destroy_sysfs.exit_crit_edge
  %gd.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %28 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gd.i, align 8
  tail call void @del_gendisk(ptr noundef %29) #14
  %30 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gd.i, align 8
  tail call void @blk_cleanup_disk(ptr noundef %31) #14
  br i1 %cmp18, label %land.lhs.true23, label %destroy_sysfs.exit.do.end30_crit_edge

destroy_sysfs.exit.do.end30_crit_edge:            ; preds = %destroy_sysfs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true23:                                  ; preds = %destroy_sysfs.exit
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtrs, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %land.lhs.true23.do.end30_crit_edge, label %if.then25

land.lhs.true23.do.end30_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  %device_id = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 3
  %34 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device_id, align 4
  tail call fastcc void @send_msg_close(ptr noundef %dev, i32 noundef %35, i32 noundef 1)
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %land.lhs.true23.do.end30_crit_edge, %destroy_sysfs.exit.do.end30_crit_edge
  %pathname32 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %36 = ptrtoint ptr %pathname32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pathname32, align 4
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %sessname34 = getelementptr inbounds %struct.rnbd_clt_session, ptr %39, i32 0, i32 16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %37, ptr noundef %sessname34) #17
  tail call fastcc void @rnbd_clt_put_dev(ptr noundef %dev)
  br label %cleanup

err:                                              ; preds = %do.end9, %do.end
  %ret.0 = phi i32 [ -114, %do.end ], [ -16, %do.end9 ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end30
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_clt_remap_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %dev_state = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, i32 -114, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.selectcmp39 = icmp eq i32 %1, 3
  %switch.select40 = select i1 %switch.selectcmp39, i32 -19, i32 %switch.select
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br i1 %cmp, label %do.end, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end:                                           ; preds = %entry
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pathname, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %5, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %sessname) #17
  %call13 = tail call fastcc i32 @send_msg_open(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end.if.end26_crit_edge, label %do.end18

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pathname, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %sessname22 = getelementptr inbounds %struct.rnbd_clt_session, ptr %9, i32 0, i32 16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %7, ptr noundef %sessname22, i32 noundef %call13) #17
  br label %if.end26

if.end26:                                         ; preds = %do.end18, %do.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %err.1 = phi i32 [ %switch.select40, %entry.if.end26_crit_edge ], [ %call13, %do.end18 ], [ 0, %do.end.if.end26_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_client_exit() #4 section ".exit.text" align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rnbd_clt_destroy_sysfs_files() #14
  %0 = load ptr, ptr @sess_list, align 4
  %cmp.not93.i = icmp eq ptr %0, @sess_list
  br i1 %cmp.not93.i, label %entry.for.end38.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end38.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end38.i

for.body.i:                                       ; preds = %for.inc32.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %sess.094.i = phi ptr [ %sn.095.i, %for.inc32.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %sess.094.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %sn.095.i = load ptr, ptr %sess.094.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.094.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body.i
  %4 = phi i32 [ %3, %for.body.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %7, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !221

if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sess.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #14
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %rnbd_clt_get_sess.exit.i

rnbd_clt_get_sess.exit.i:                         ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.i.rnbd_clt_get_sess.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not.i, label %rnbd_clt_get_sess.exit.i.for.inc32.i_crit_edge, label %if.end.i

rnbd_clt_get_sess.exit.i.for.inc32.i_crit_edge:   ; preds = %rnbd_clt_get_sess.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32.i

if.end.i:                                         ; preds = %rnbd_clt_get_sess.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 770) #14
  %rtrs.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.094.i, i32 0, i32 1
  %14 = ptrtoint ptr %rtrs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtrs.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  %cmp.i.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end.i.close_rtrs.exit.i_crit_edge, label %if.then.i.i

if.end.i.close_rtrs.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %close_rtrs.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rtrs_clt_close(ptr noundef nonnull %15) #14
  %16 = ptrtoint ptr %rtrs.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rtrs.i.i, align 4
  %rtrs_ready.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.094.i, i32 0, i32 3
  %17 = ptrtoint ptr %rtrs_ready.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rtrs_ready.i.i.i, align 4
  %rtrs_waitq.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.094.i, i32 0, i32 2
  call void @__wake_up(ptr noundef %rtrs_waitq.i.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %close_rtrs.exit.i

close_rtrs.exit.i:                                ; preds = %if.then.i.i, %if.end.i.close_rtrs.exit.i_crit_edge
  %devs_list.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.094.i, i32 0, i32 14
  %18 = ptrtoint ptr %devs_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devs_list.i, align 4
  %cmp17.not90.i = icmp eq ptr %19, %devs_list.i
  br i1 %cmp17.not90.i, label %close_rtrs.exit.i.for.end.i_crit_edge, label %close_rtrs.exit.i.do.body.i_crit_edge

close_rtrs.exit.i.do.body.i_crit_edge:            ; preds = %close_rtrs.exit.i
  br label %do.body.i

close_rtrs.exit.i.for.end.i_crit_edge:            ; preds = %close_rtrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %close_rtrs.exit.i.do.body.i_crit_edge
  %.pn.in91.i = phi ptr [ %.pn.i, %do.body.i.do.body.i_crit_edge ], [ %19, %close_rtrs.exit.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in91.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in91.i, align 8
  %unmap_on_rmmod_work.i = getelementptr i8, ptr %.pn.in91.i, i32 156
  call void @__init_work(ptr noundef %unmap_on_rmmod_work.i, i32 noundef 0) #14
  %21 = ptrtoint ptr %unmap_on_rmmod_work.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %unmap_on_rmmod_work.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %.pn.in91.i, i32 172
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @rnbd_destroy_sessions.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry23.i = getelementptr i8, ptr %.pn.in91.i, i32 160
  %22 = ptrtoint ptr %entry23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry23.i, ptr %entry23.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in91.i, i32 164
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry23.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %.pn.in91.i, i32 168
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @unmap_device_work, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %25 = load ptr, ptr @system_long_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %unmap_on_rmmod_work.i) #14
  %cmp17.not.i = icmp eq ptr %.pn.i, %devs_list.i
  br i1 %cmp17.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %close_rtrs.exit.i.for.end.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %call.i.i.i.i.i.i85.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i86.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i86.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i86.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i89.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i86.i)
  %.not.i.i.i.i87.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i86.i, 0
  br i1 %.not.i.i.i.i87.i, label %if.end5.i.i.i.i.i.for.inc32.i_crit_edge, label %if.then10.i.i.i.i88.i, !prof !221

if.end5.i.i.i.i.i.for.inc32.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32.i

if.then10.i.i.i.i88.i:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #14
  br label %for.inc32.i

if.then.i89.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  call fastcc void @free_sess(ptr noundef %sess.094.i) #14
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then.i89.i, %if.then10.i.i.i.i88.i, %if.end5.i.i.i.i.i.for.inc32.i_crit_edge, %rnbd_clt_get_sess.exit.i.for.inc32.i_crit_edge
  %cmp.not.i = icmp eq ptr %sn.095.i, @sess_list
  br i1 %cmp.not.i, label %for.inc32.i.for.end38.i_crit_edge, label %for.inc32.i.for.body.i_crit_edge

for.inc32.i.for.body.i_crit_edge:                 ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc32.i.for.end38.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end38.i

for.end38.i:                                      ; preds = %for.inc32.i.for.end38.i_crit_edge, %entry.for.end38.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %27 = load ptr, ptr @system_long_wq, align 4
  call void @flush_workqueue(ptr noundef %27) #14
  %28 = load volatile ptr, ptr @sess_list, align 4
  %cmp.i.not.i = icmp eq ptr %28, @sess_list
  br i1 %cmp.i.not.i, label %for.end38.i.rnbd_destroy_sessions.exit_crit_edge, label %do.end53.i, !prof !221

for.end38.i.rnbd_destroy_sessions.exit_crit_edge: ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_destroy_sessions.exit

do.end53.i:                                       ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1777, i32 noundef 9, ptr noundef null) #14
  br label %rnbd_destroy_sessions.exit

rnbd_destroy_sessions.exit:                       ; preds = %do.end53.i, %for.end38.i.rnbd_destroy_sessions.exit_crit_edge
  %29 = load i32, ptr @rnbd_client_major, align 4
  call void @unregister_blkdev(i32 noundef %29, ptr noundef nonnull @.str.30) #14
  call void @ida_destroy(ptr noundef nonnull @index_ida) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_client_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rnbd_client_major, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef nonnull @.str.30, ptr noundef null) #14
  store i32 %call, ptr @rnbd_client_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end18, label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call20 = tail call i32 @rnbd_clt_create_sysfs_files() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call20) #17
  %1 = load i32, ptr @rnbd_client_major, align 4
  tail call void @unregister_blkdev(i32 noundef %1, ptr noundef nonnull @.str.30) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end.cleanup_crit_edge, %do.end18
  %retval.0 = phi i32 [ -16, %do.end18 ], [ %call20, %do.end24 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__exists_dev(ptr nocapture noundef readonly %pathname, ptr noundef readonly %sessname) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sess.062 = load ptr, ptr @sess_list, align 4
  %cmp.not63 = icmp eq ptr %sess.062, @sess_list
  br i1 %cmp.not63, label %entry.for.end37_crit_edge, label %for.body.lr.ph

entry.for.end37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %sessname, null
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %sess.064 = phi ptr [ %sess.062, %for.body.lr.ph ], [ %sess.0, %for.inc31.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sessname1 = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.064, i32 0, i32 16
  %call = tail call i32 @strncmp(ptr noundef %sessname1, ptr noundef nonnull %sessname, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc31_crit_edge

land.lhs.true.for.inc31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %lock = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.064, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %devs_list = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess.064, i32 0, i32 14
  %0 = ptrtoint ptr %devs_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn59 = load ptr, ptr %devs_list, align 4
  %cmp9.not60 = icmp eq ptr %.pn59, %devs_list
  br i1 %cmp9.not60, label %if.end.for.end_crit_edge, label %for.body11.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body11.lr.ph:                                 ; preds = %if.end
  %call14 = tail call i32 @strlen(ptr noundef %pathname) #22
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %.pn61 = phi ptr [ %.pn59, %for.body11.lr.ph ], [ %.pn, %for.inc.for.body11_crit_edge ]
  %pathname12 = getelementptr i8, ptr %.pn61, i32 -60
  %1 = ptrtoint ptr %pathname12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pathname12, align 4
  %call13 = tail call i32 @strlen(ptr noundef %2) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %call14)
  %cmp15 = icmp eq i32 %call13, %call14
  br i1 %cmp15, label %land.lhs.true16, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true16:                                  ; preds = %for.body11
  %call18 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %pathname) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.end.thread, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.end.thread:                                   ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %for.end37

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %for.body11.for.inc_crit_edge
  %3 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp9.not = icmp eq ptr %.pn, %devs_list
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %for.inc31

for.inc31:                                        ; preds = %for.end, %land.lhs.true.for.inc31_crit_edge
  %4 = ptrtoint ptr %sess.064 to i32
  call void @__asan_load4_noabort(i32 %4)
  %sess.0 = load ptr, ptr %sess.064, align 4
  %cmp.not = icmp eq ptr %sess.0, @sess_list
  br i1 %cmp.not, label %for.inc31.for.end37_crit_edge, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc31.for.end37_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.end37:                                        ; preds = %for.inc31.for.end37_crit_edge, %for.end.thread, %entry.for.end37_crit_edge
  %cmp.not58 = phi i1 [ true, %for.end.thread ], [ false, %entry.for.end37_crit_edge ], [ false, %for.inc31.for.end37_crit_edge ]
  ret i1 %cmp.not58
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_clt_link_ev(ptr noundef %priv, i32 noundef %ev) #0 align 64 {
entry:
  %attrs.i = alloca %struct.rtrs_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ev, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %devs_list.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 14
  %1 = ptrtoint ptr %devs_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn26.i = load ptr, ptr %devs_list.i, align 4
  %cmp.not27.i = icmp eq ptr %.pn26.i, %devs_list.i
  br i1 %cmp.not27.i, label %sw.bb.set_dev_states_to_disconnected.exit_crit_edge, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  br label %do.end.i

sw.bb.set_dev_states_to_disconnected.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_dev_states_to_disconnected.exit

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %if.end.i.do.end.i_crit_edge ], [ %.pn26.i, %sw.bb.do.end.i_crit_edge ]
  %dev.0.i = getelementptr i8, ptr %.pn28.i, i32 -176
  %pathname.i = getelementptr i8, ptr %.pn28.i, i32 -60
  %2 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pathname.i, align 4
  %4 = ptrtoint ptr %dev.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.0.i, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %5, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %3, ptr noundef %sessname.i) #17
  %lock4.i = getelementptr i8, ptr %.pn28.i, i32 -156
  tail call void @mutex_lock_nested(ptr noundef %lock4.i, i32 noundef 0) #14
  %dev_state.i = getelementptr i8, ptr %.pn28.i, i32 -64
  %6 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5.i = icmp eq i32 %7, 1
  br i1 %cmp5.i, label %if.then.i, label %do.end.i.if.end.i_crit_edge

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %dev_state.i, align 8
  %gd.i = getelementptr i8, ptr %.pn28.i, i32 8
  %9 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gd.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 10
  %call7.i = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 5) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.i.if.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock4.i) #14
  %13 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %devs_list.i
  br i1 %cmp.not.i, label %if.end.i.set_dev_states_to_disconnected.exit_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end.i.set_dev_states_to_disconnected.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_dev_states_to_disconnected.exit

set_dev_states_to_disconnected.exit:              ; preds = %if.end.i.set_dev_states_to_disconnected.exit_crit_edge, %sw.bb.set_dev_states_to_disconnected.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs.i) #14
  %14 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %attrs.i, align 4, !annotation !218
  %15 = getelementptr inbounds %struct.rtrs_attrs, ptr %attrs.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !218
  %17 = getelementptr inbounds %struct.rtrs_attrs, ptr %attrs.i, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !218
  %call.i5 = tail call fastcc i32 @send_msg_sess_info(ptr noundef %priv, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i, label %if.end.i8, label %do.end.i7

do.end.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %sessname.i6 = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 16
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %sessname.i6, i32 noundef %call.i5) #17
  br label %remap_devs.exit

if.end.i8:                                        ; preds = %sw.bb1
  %rtrs.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtrs.i, align 4
  %call2.i = call i32 @rtrs_clt_query(ptr noundef %20, ptr noundef nonnull %attrs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end12.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #16
  %sessname9.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 16
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %sessname9.i, i32 noundef %call2.i) #17
  br label %remap_devs.exit

if.end12.i:                                       ; preds = %if.end.i8
  %lock.i9 = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %lock.i9, i32 noundef 0) #14
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %max_io_size13.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 9
  %23 = ptrtoint ptr %max_io_size13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_io_size13.i, align 4
  %devs_list.i10 = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 14
  %24 = ptrtoint ptr %devs_list.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn80.i = load ptr, ptr %devs_list.i10, align 4
  %cmp.not82.i = icmp eq ptr %.pn80.i, %devs_list.i10
  br i1 %cmp.not82.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %.pn83.i = phi ptr [ %.pn.i13, %cleanup.i.for.body.i_crit_edge ], [ %.pn80.i, %if.end12.i.for.body.i_crit_edge ]
  %lock16.i = getelementptr i8, ptr %.pn83.i, i32 -156
  call void @mutex_lock_nested(ptr noundef %lock16.i, i32 noundef 0) #14
  %dev_state.i11 = getelementptr i8, ptr %.pn83.i, i32 -64
  %25 = ptrtoint ptr %dev_state.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_state.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.i = icmp eq i32 %26, 0
  call void @mutex_unlock(ptr noundef %lock16.i) #14
  br i1 %cmp17.i, label %for.body.i.cleanup.i_crit_edge, label %do.end24.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

do.end24.i:                                       ; preds = %for.body.i
  %dev.084.i = getelementptr i8, ptr %.pn83.i, i32 -176
  %pathname.i12 = getelementptr i8, ptr %.pn83.i, i32 -60
  %27 = ptrtoint ptr %pathname.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pathname.i12, align 4
  %29 = ptrtoint ptr %dev.084.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.084.i, align 8
  %sessname27.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %30, i32 0, i32 16
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %28, ptr noundef %sessname27.i) #17
  %call30.i = call fastcc i32 @send_msg_open(ptr noundef %dev.084.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %do.end24.i.cleanup.i_crit_edge, label %cleanup.thread.i

do.end24.i.cleanup.i_crit_edge:                   ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %pathname.i12.le = getelementptr i8, ptr %.pn83.i, i32 -60
  %31 = ptrtoint ptr %pathname.i12.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pathname.i12.le, align 4
  %33 = ptrtoint ptr %dev.084.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.084.i, align 8
  %sessname39.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %34, i32 0, i32 16
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %32, ptr noundef %sessname39.i, i32 noundef %call30.i) #17
  br label %for.end.i

cleanup.i:                                        ; preds = %do.end24.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %35 = ptrtoint ptr %.pn83.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i13 = load ptr, ptr %.pn83.i, align 4
  %cmp.not.i14 = icmp eq ptr %.pn.i13, %devs_list.i10
  br i1 %cmp.not.i14, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %cleanup.thread.i, %if.end12.i.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i9) #14
  br label %remap_devs.exit

remap_devs.exit:                                  ; preds = %for.end.i, %do.end7.i, %do.end.i7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i) #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %priv, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %ev, ptr noundef %sessname) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %remap_devs.exit, %set_dev_states_to_disconnected.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtrs_clt_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_query(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_msg_sess_info(ptr noundef %sess, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %msg = alloca %struct.rnbd_msg_sess_info, align 2
  %vec = alloca %struct.kvec, align 4
  %errno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg) #14
  %0 = call ptr @memset(ptr %msg, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #14
  %1 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %2 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %vec, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 36, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errno) #14
  %4 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %errno, align 4, !annotation !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc ptr @rnbd_get_iu(ptr noundef %sess)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %call1, align 4
  %7 = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sess, ptr %7, align 4
  %sgt = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgt, align 4
  call void @sg_init_one(ptr noundef %10, ptr noundef nonnull %call7.i.i, i32 noundef 36) #14
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %msg, align 2
  %ver = getelementptr inbounds %struct.rnbd_msg_sess_info, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %ver, align 2
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end4
  %15 = phi i32 [ %14, %if.end4 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.rnbd_clt_get_sess.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end4.i.i.i.i.rnbd_clt_get_sess.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sess.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %rnbd_clt_get_sess.exit

rnbd_clt_get_sess.exit:                           ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.rnbd_clt_get_sess.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.rnbd_clt_get_sess.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %rnbd_clt_get_sess.exit.put_iu_crit_edge, label %if.end7

rnbd_clt_get_sess.exit.put_iu_crit_edge:          ; preds = %rnbd_clt_get_sess.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_iu

if.end7:                                          ; preds = %rnbd_clt_get_sess.exit
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 1
  %25 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtrs, align 4
  %27 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sgt, align 4
  %call10 = call fastcc i32 @send_usr_msg(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %call1, ptr noundef nonnull %vec, i32 noundef 36, ptr noundef %28, i32 noundef 1, ptr noundef nonnull @msg_sess_info_conf, ptr noundef nonnull %errno, i32 noundef %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %call.i.i.i.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i39, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i39)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i39, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i.put_iu_crit_edge, label %if.then10.i.i.i.i41, !prof !221

if.end5.i.i.i.i.put_iu_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_iu

if.then10.i.i.i.i41:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %put_iu

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  call fastcc void @free_sess(ptr noundef %sess) #14
  br label %put_iu

put_iu:                                           ; preds = %if.then.i, %if.then10.i.i.i.i41, %if.end5.i.i.i.i.put_iu_crit_edge, %rnbd_clt_get_sess.exit.put_iu_crit_edge
  %err.0 = phi i32 [ -19, %rnbd_clt_get_sess.exit.put_iu_crit_edge ], [ %call10, %if.end5.i.i.i.i.put_iu_crit_edge ], [ %call10, %if.then10.i.i.i.i41 ], [ %call10, %if.then.i ]
  %refcount.i42 = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i42, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i42, i32 1, i32 3, i32 1) #14
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i42, ptr %refcount.i42, i32 1, ptr elementtype(i32) %refcount.i42) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i43, label %put_iu.rnbd_put_iu.exit_crit_edge

put_iu.rnbd_put_iu.exit_crit_edge:                ; preds = %put_iu
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_put_iu.exit

if.then.i43:                                      ; preds = %put_iu
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table(ptr noundef %sgt) #14
  %permit.i = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 1
  %31 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %permit.i, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %sess, ptr noundef %32) #14
  call void @kfree(ptr noundef nonnull %call1) #14
  br label %rnbd_put_iu.exit

rnbd_put_iu.exit:                                 ; preds = %if.then.i43, %put_iu.rnbd_put_iu.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.end13

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %errno, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %rnbd_put_iu.exit
  %err.1 = phi i32 [ %err.0, %rnbd_put_iu.exit ], [ %34, %if.else ]
  %refcount.i44 = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 7
  %call.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i44, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  call void @llvm.prefetch.p0(ptr %refcount.i44, i32 1, i32 3, i32 1) #14
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i44, ptr %refcount.i44, i32 1, ptr elementtype(i32) %refcount.i44) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i46 = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i46)
  %cmp.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i46, 0
  br i1 %cmp.i.i.i47, label %if.then.i50, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i50:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table(ptr noundef %sgt) #14
  %permit.i49 = getelementptr inbounds %struct.rnbd_iu, ptr %call1, i32 0, i32 1
  %36 = ptrtoint ptr %permit.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %permit.i49, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %sess, ptr noundef %37) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i50, %if.end.cleanup.sink.split_crit_edge
  %call1.sink = phi ptr [ %call1, %if.then.i50 ], [ %call7.i.i, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.1, %if.then.i50 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.1, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errno) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_sess(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devs_list = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 14
  %0 = ptrtoint ptr %devs_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %devs_list, align 4
  %cmp.i.not = icmp eq ptr %1, %devs_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 781, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 783) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 770) #14
  %rtrs.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 1
  %2 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtrs.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.close_rtrs.exit_crit_edge, label %if.then.i

if.end.close_rtrs.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %close_rtrs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtrs_clt_close(ptr noundef nonnull %3) #14
  %4 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rtrs.i, align 4
  %rtrs_ready.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 3
  %5 = ptrtoint ptr %rtrs_ready.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %rtrs_ready.i.i, align 4
  %rtrs_waitq.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %rtrs_waitq.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %close_rtrs.exit

close_rtrs.exit:                                  ; preds = %if.then.i, %if.end.close_rtrs.exit_crit_edge
  %tags.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 11, i32 11
  %6 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tags.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %close_rtrs.exit.destroy_mq_tags.exit_crit_edge, label %if.then.i41

close_rtrs.exit.destroy_mq_tags.exit_crit_edge:   ; preds = %close_rtrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_mq_tags.exit

if.then.i41:                                      ; preds = %close_rtrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tag_set.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 11
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #14
  br label %destroy_mq_tags.exit

destroy_mq_tags.exit:                             ; preds = %if.then.i41, %close_rtrs.exit.destroy_mq_tags.exit_crit_edge
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sess, align 4
  %cmp.i42.not = icmp eq ptr %9, %sess
  br i1 %cmp.i42.not, label %destroy_mq_tags.exit.if.end31_crit_edge, label %if.then29

destroy_mq_tags.exit.if.end31_crit_edge:          ; preds = %destroy_mq_tags.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %destroy_mq_tags.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sess) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sess, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %16 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %sess, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sess, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sess_lock) #14
  br label %if.end31

if.end31:                                         ; preds = %list_del.exit, %destroy_mq_tags.exit.if.end31_crit_edge
  %cpu_queues = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 4
  %18 = ptrtoint ptr %cpu_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_queues, align 4
  tail call void @free_percpu(ptr noundef %19) #14
  %cpu_rr = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 6
  %20 = ptrtoint ptr %cpu_rr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_rr, align 4
  tail call void @free_percpu(ptr noundef %21) #14
  %lock = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %lock) #14
  tail call void @kfree(ptr noundef %sess) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rnbd_queue_rq(ptr noundef %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %last_sg.i.i = alloca ptr, align 4
  %msg.i = alloca %struct.rnbd_msg_io, align 8
  %req_ops.i = alloca %struct.rtrs_clt_req_ops, align 4
  %vec.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
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
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %dev_state = getelementptr inbounds %struct.rnbd_clt_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %rtrs.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtrs.i, align 4
  %call.i = tail call ptr @rtrs_clt_get_permit(ptr noundef %13, i32 noundef 1, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %permit75 = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %14 = ptrtoint ptr %permit75 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %permit75, align 4
  tail call fastcc void @rnbd_clt_dev_kick_mq_queue(ptr noundef %7, ptr noundef %hctx, i32 noundef -1)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %busy.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %11, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %busy.i, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy.i, ptr %busy.i, i32 1, ptr elementtype(i32) %busy.i) #14, !srcloc !230
  %permit = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %16 = ptrtoint ptr %permit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %permit, align 4
  %first_sgl = getelementptr %struct.request, ptr %1, i32 1, i32 28, i32 0, i32 1
  %sgt = getelementptr %struct.request, ptr %1, i32 1, i32 3
  %17 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %first_sgl, ptr %sgt, align 4
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i70 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i70, label %blk_rq_nr_phys_segments.exit, label %if.end5.blk_rq_nr_phys_segments.exit.thread_crit_edge

if.end5.blk_rq_nr_phys_segments.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %blk_rq_nr_phys_segments.exit.thread

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool8.not = icmp eq i16 %21, 0
  %spec.select = select i1 %tobool8.not, i16 1, i16 %21
  %phi.cast = zext i16 %spec.select to i32
  br label %blk_rq_nr_phys_segments.exit.thread

blk_rq_nr_phys_segments.exit.thread:              ; preds = %blk_rq_nr_phys_segments.exit, %if.end5.blk_rq_nr_phys_segments.exit.thread_crit_edge
  %22 = phi i32 [ 1, %if.end5.blk_rq_nr_phys_segments.exit.thread_crit_edge ], [ %phi.cast, %blk_rq_nr_phys_segments.exit ]
  %call11 = tail call i32 @sg_alloc_table_chained(ptr noundef %sgt, i32 noundef %22, ptr noundef %first_sgl, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end23, label %if.then13

if.then13:                                        ; preds = %blk_rq_nr_phys_segments.exit.thread
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @rnbd_queue_rq._rs, ptr noundef nonnull @__func__.rnbd_queue_rq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end20_crit_edge, label %do.end

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pathname, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %26, i32 0, i32 16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %24, ptr noundef %sessname, i32 noundef %call11) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then13.if.end20_crit_edge
  tail call void @blk_mq_delay_run_hw_queue(ptr noundef %hctx, i32 noundef 10) #14
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 8
  %29 = ptrtoint ptr %permit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %permit, align 4
  tail call fastcc void @rnbd_put_permit(ptr noundef %28, ptr noundef %30)
  br label %cleanup

if.end23:                                         ; preds = %blk_rq_nr_phys_segments.exit.thread
  tail call void @blk_mq_start_request(ptr noundef %1) #14
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 8
  %rtrs1.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %rtrs1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtrs1.i, align 4
  %35 = ptrtoint ptr %permit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %permit, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg.i) #14
  %37 = call ptr @memset(ptr %msg.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_ops.i) #14
  %38 = ptrtoint ptr %req_ops.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %req_ops.i, align 4, !annotation !218
  %39 = getelementptr inbounds %struct.rtrs_clt_req_ops, ptr %req_ops.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %39, align 4, !annotation !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i) #14
  %41 = getelementptr inbounds %struct.kvec, ptr %vec.i, i32 0, i32 1
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %add.ptr.i, align 4
  %43 = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %7, ptr %43, align 4
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %__sector.i.i, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #14
  %sector.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %msg.i, i32 0, i32 2
  %48 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %sector.i, align 8
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %__data_len.i.i, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %bi_size.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %msg.i, i32 0, i32 4
  %52 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %bi_size.i, align 4
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_flags.i.i, align 4
  %trunc.i.i = trunc i32 %54 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %trunc.i.i)
  %55 = icmp ult i8 %trunc.i.i, 8
  br i1 %55, label %switch.hole_check, label %if.end23.do.end.i.i_crit_edge

if.end23.do.end.i.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %switch.hole_check.do.end.i.i_crit_edge, %if.end23.do.end.i.i_crit_edge
  %and.i.i = and i32 %54, 255
  %conv.i.i = zext i32 %54 to i64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.60, i32 noundef %and.i.i, i64 noundef %conv.i.i) #14
  br label %rq_to_rnbd_flags.exit.i

switch.hole_check:                                ; preds = %if.end23
  %switch.shifted = lshr i8 -81, %trunc.i.i
  %56 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %switch.lobit.not = icmp eq i8 %56, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %sext = shl i32 %54, 24
  %57 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rnbd_queue_rq, i32 0, i32 %57
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rq_to_rnbd_flags.exit.i

rq_to_rnbd_flags.exit.i:                          ; preds = %switch.lookup, %do.end.i.i
  %rnbd_opf.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %switch.load, %switch.lookup ]
  %59 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i.i = and i32 %60, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  %61 = and i32 %60, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.i.i = icmp ne i32 %61, 0
  %62 = or i1 %cmp.i.i.i, %tobool.i.i.i
  %or.i.i = or i32 %rnbd_opf.0.i.i, 256
  %spec.select.i.i = select i1 %62, i32 %or.i.i, i32 %rnbd_opf.0.i.i
  %63 = and i32 %60, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i38.not.i.i = icmp eq i32 %63, 0
  %or29.i.i = or i32 %spec.select.i.i, 512
  %rnbd_opf.2.i.i = select i1 %tobool.i38.not.i.i, i32 %spec.select.i.i, i32 %or29.i.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %rnbd_opf.2.i.i) #14
  %rw.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %msg.i, i32 0, i32 3
  %65 = ptrtoint ptr %rw.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rw.i, align 8
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %66 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ioprio.i.i, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #14
  %prio.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %msg.i, i32 0, i32 5
  %69 = ptrtoint ptr %prio.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %prio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.not.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.not.i, label %rq_to_rnbd_flags.exit.i.if.then8.i_crit_edge, label %if.end.i72

rq_to_rnbd_flags.exit.i.if.then8.i_crit_edge:     ; preds = %rq_to_rnbd_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i

if.end.i72:                                       ; preds = %rq_to_rnbd_flags.exit.i
  %queue.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %7, i32 0, i32 1
  %70 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queue.i, align 4
  %72 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sgt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #14
  %74 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i = call i32 @__blk_rq_map_sg(ptr noundef %71, ptr noundef %1, ptr noundef %73, ptr noundef nonnull %last_sg.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp7.i, label %if.end.i72.if.then8.i_crit_edge, label %if.end.i72.if.end11.i_crit_edge

if.end.i72.if.end11.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.i72.if.then8.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i72.if.then8.i_crit_edge, %rq_to_rnbd_flags.exit.i.if.then8.i_crit_edge
  %75 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sgt, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %or.i61.i = and i32 %78, -4
  %and.i62.i = or i32 %or.i61.i, 2
  store i32 %and.i62.i, ptr %76, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i72.if.end11.i_crit_edge
  %cmp769.i = phi i1 [ true, %if.then8.i ], [ false, %if.end.i72.if.end11.i_crit_edge ]
  %sg_cnt.067.i = phi i32 [ 0, %if.then8.i ], [ %call.i.i, %if.end.i72.if.end11.i_crit_edge ]
  %79 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1024, ptr %msg.i, align 8
  %device_id.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %7, i32 0, i32 3
  %80 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %device_id.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #14
  %device_id12.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %msg.i, i32 0, i32 1
  %83 = ptrtoint ptr %device_id12.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %device_id12.i, align 4
  %84 = ptrtoint ptr %vec.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i, ptr %vec.i, align 4
  %85 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 32, ptr %41, align 4
  br i1 %cmp769.i, label %if.end11.i.rnbd_clt_get_sg_size.exit.i_crit_edge, label %for.body.i.preheader.i

if.end11.i.rnbd_clt_get_sg_size.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sg_size.exit.i

for.body.i.preheader.i:                           ; preds = %if.end11.i
  %86 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sgt, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %tsize.06.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %sg.05.i.i = phi ptr [ %call.i63.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %87, %for.body.i.preheader.i ]
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.05.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length.i.i, align 4
  %add.i.i = add i32 %89, %tsize.06.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %call.i63.i = call ptr @sg_next(ptr noundef %sg.05.i.i) #14
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sg_cnt.067.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.rnbd_clt_get_sg_size.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.rnbd_clt_get_sg_size.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_sg_size.exit.i

rnbd_clt_get_sg_size.exit.i:                      ; preds = %for.body.i.i.rnbd_clt_get_sg_size.exit.i_crit_edge, %if.end11.i.rnbd_clt_get_sg_size.exit.i_crit_edge
  %tsize.0.lcssa.i.i = phi i32 [ 0, %if.end11.i.rnbd_clt_get_sg_size.exit.i_crit_edge ], [ %add.i.i, %for.body.i.i.rnbd_clt_get_sg_size.exit.i_crit_edge ]
  %90 = ptrtoint ptr %req_ops.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr.i, ptr %req_ops.i, align 4
  %91 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @msg_io_conf, ptr %39, align 4
  %92 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i64.i = and i32 %93, 1
  %94 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sgt, align 4
  %call22.i = call i32 @rtrs_clt_request(i32 noundef %and.i64.i, ptr noundef nonnull %req_ops.i, ptr noundef %34, ptr noundef %36, ptr noundef nonnull %vec.i, i32 noundef 1, i32 noundef %tsize.0.lcssa.i.i, ptr noundef %95, i32 noundef %sg_cnt.067.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool.not.i73 = icmp eq i32 %call22.i, 0
  br i1 %tobool.not.i73, label %rnbd_client_xfer_request.exit.thread, label %if.then23.i

rnbd_client_xfer_request.exit.thread:             ; preds = %rnbd_clt_get_sg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_ops.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg.i) #14
  br label %cleanup

if.then23.i:                                      ; preds = %rnbd_clt_get_sg_size.exit.i
  %call24.i = call i32 @___ratelimit(ptr noundef nonnull @rnbd_client_xfer_request._rs, ptr noundef nonnull @__func__.rnbd_client_xfer_request) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.rnbd_client_xfer_request.exit_crit_edge, label %do.end.i

if.then23.i.rnbd_client_xfer_request.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_client_xfer_request.exit

do.end.i:                                         ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %pathname.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %7, i32 0, i32 7
  %96 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pathname.i, align 4
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %7, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %99, i32 0, i32 16
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %97, ptr noundef %sessname.i, i32 noundef %call22.i) #17
  br label %rnbd_client_xfer_request.exit

rnbd_client_xfer_request.exit:                    ; preds = %do.end.i, %if.then23.i.rnbd_client_xfer_request.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_ops.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg.i) #14
  %100 = and i32 %call22.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %100)
  %switch = icmp eq i32 %100, -12
  br i1 %switch, label %if.then33, label %rnbd_client_xfer_request.exit.if.end34_crit_edge

rnbd_client_xfer_request.exit.if.end34_crit_edge: ; preds = %rnbd_client_xfer_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then33:                                        ; preds = %rnbd_client_xfer_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_mq_delay_run_hw_queue(ptr noundef %hctx, i32 noundef 10) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %rnbd_client_xfer_request.exit.if.end34_crit_edge
  %ret.0 = phi i8 [ 9, %if.then33 ], [ 10, %rnbd_client_xfer_request.exit.if.end34_crit_edge ]
  call void @sg_free_table_chained(ptr noundef %sgt, i32 noundef 2) #14
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %7, align 8
  %103 = ptrtoint ptr %permit to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %permit, align 4
  call fastcc void @rnbd_put_permit(ptr noundef %102, ptr noundef %104)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %rnbd_client_xfer_request.exit.thread, %if.end20, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 9, %if.end20 ], [ %ret.0, %if.end34 ], [ 9, %if.then4 ], [ 10, %entry.cleanup_crit_edge ], [ 0, %rnbd_client_xfer_request.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_rdma_poll(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readnone %iob) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %dev1 = getelementptr inbounds %struct.rnbd_queue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtrs, align 4
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %8 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_num, align 4
  %call = tail call i32 @rtrs_clt_rdma_cq_direct(ptr noundef %7, i32 noundef %9) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_softirq_done_fn(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %sgt = getelementptr %struct.request, ptr %rq, i32 1, i32 3
  tail call void @sg_free_table_chained(ptr noundef %sgt, i32 noundef 2) #14
  %permit = getelementptr %struct.request, ptr %rq, i32 1, i32 1
  %8 = ptrtoint ptr %permit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %permit, align 4
  tail call fastcc void @rnbd_put_permit(ptr noundef %7, ptr noundef %9)
  %errno = getelementptr inbounds %struct.rnbd_iu, ptr %add.ptr.i, i32 0, i32 5
  %10 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %errno, align 4
  %call2 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %11) #14
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %call2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_rdma_map_queues(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 1
  %3 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nr_queues, align 4
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 2
  %4 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %queue_offset, align 4
  %call.i.i.i74 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %arrayidx5 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1
  %nr_queues6 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %nr_queues6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nr_queues6, align 4
  %queue_offset9 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %queue_offset9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %queue_offset9, align 4
  %call12 = tail call i32 @blk_mq_map_queues(ptr noundef %set) #14
  %call15 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx5) #14
  %nr_poll_queues = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_poll_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end44, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx18 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2
  %nr_queues19 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %nr_queues19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_queues19, align 4
  %11 = ptrtoint ptr %queue_offset9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_offset9, align 4
  %13 = ptrtoint ptr %nr_queues6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_queues6, align 4
  %add = add i32 %14, %12
  %queue_offset28 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %queue_offset28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %queue_offset28, align 4
  %call31 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx18) #14
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_queues, align 4
  %18 = ptrtoint ptr %nr_queues6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_queues6, align 4
  %20 = ptrtoint ptr %nr_queues19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_queues19, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %sessname, i32 noundef %17, i32 noundef %19, i32 noundef %21) #17
  br label %if.end

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sessname46 = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_queues, align 4
  %24 = ptrtoint ptr %nr_queues6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_queues6, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %sessname46, i32 noundef %23, i32 noundef %25) #17
  br label %if.end

if.end:                                           ; preds = %do.end44, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnbd_clt_dev_kick_mq_queue(ptr nocapture noundef readonly %dev, ptr noundef %hctx, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %delay)
  %cmp.not = icmp eq i32 %delay, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_delay_run_hw_queue(ptr noundef %hctx, i32 noundef %delay) #14
  br label %if.end2

if.else:                                          ; preds = %entry
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !231
  %cpu_queues.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %cpu_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_queues.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i103.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i103.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %requeue_lock.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %17, i32 0, i32 1
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %requeue_lock.i) #14
  %in_list.i = getelementptr inbounds %struct.rnbd_queue, ptr %1, i32 0, i32 1
  %call.i.i104.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_list.i, i32 noundef 4) #14
  %18 = ptrtoint ptr %in_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %in_list.i, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %if.else.rnbd_clt_dev_add_to_requeue.exit_crit_edge

if.else.rnbd_clt_dev_add_to_requeue.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_dev_add_to_requeue.exit

test_and_set_bit_lock.exit.i:                     ; preds = %if.else
  tail call void @llvm.prefetch.p0(ptr %in_list.i, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_list.i, ptr %in_list.i, i32 1, ptr elementtype(i32) %in_list.i) #14, !srcloc !232
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !233
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %if.then.i, label %if.end2.critedge

if.then.i:                                        ; preds = %test_and_set_bit_lock.exit.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %22, %1
  br i1 %cmp.i.not.i, label %if.end45.critedge.i, label %do.end30.i, !prof !221

do.end30.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1085, i32 noundef 9, ptr noundef null) #14
  br label %rnbd_clt_dev_add_to_requeue.exit

if.end45.critedge.i:                              ; preds = %if.then.i
  %cpu46.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %cpu46.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu46.i, align 4
  %cpu_queues_bm.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %3, i32 0, i32 5
  %div3.i.i = lshr i32 %24, 5
  %arrayidx.i.i = getelementptr i32, ptr %cpu_queues_bm.i, i32 %div3.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %24, 31
  %27 = shl nuw i32 1, %and.i.i
  %28 = and i32 %27, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not.i = icmp eq i32 %28, 0
  br i1 %tobool48.not.i, label %if.then52.i, label %if.end45.critedge.i.if.end62.i_crit_edge

if.end45.critedge.i.if.end62.i_crit_edge:         ; preds = %if.end45.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i

if.then52.i:                                      ; preds = %if.end45.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef %24, ptr noundef %cpu_queues_bm.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !234
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then52.i, %if.end45.critedge.i.if.end62.i_crit_edge
  %busy.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %3, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %busy.i, i32 noundef 4) #14
  %29 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %busy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool64.not.i = icmp eq i32 %30, 0
  br i1 %tobool64.not.i, label %if.else.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end62.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i105.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %32, ptr noundef %17) #14
  br i1 %call.i.i105.i, label %if.end.i.i106.i, label %if.then65.i.rnbd_clt_dev_add_to_requeue.exit_crit_edge

if.then65.i.rnbd_clt_dev_add_to_requeue.exit_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_dev_add_to_requeue.exit

if.end.i.i106.i:                                  ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %17, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %1, ptr %32, align 4
  br label %rnbd_clt_dev_add_to_requeue.exit

if.else.i:                                        ; preds = %if.end62.i
  br i1 %tobool48.not.i, label %if.then69.i, label %if.else.i.if.end73.i_crit_edge

if.else.i.if.end73.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then69.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %cpu46.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu46.i, align 4
  tail call void @_clear_bit(i32 noundef %38, ptr noundef %cpu_queues_bm.i) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.else.i.if.end73.i_crit_edge
  %call.i.i107.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_list.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %in_list.i, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_list.i, ptr %in_list.i, i32 1, ptr elementtype(i32) %in_list.i) #14, !srcloc !236
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock.i, i32 noundef %call11.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  %40 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i101.i.c6 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i101.i.c6 to ptr
  %preempt_count.i.i102.i.c7 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i102.i.c7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i102.i.c7, align 4
  %sub.i.i.c8 = add i32 %43, -1
  store volatile i32 %sub.i.i.c8, ptr %preempt_count.i.i102.i.c7, align 4
  tail call void @blk_mq_delay_run_hw_queue(ptr noundef %hctx, i32 noundef 10) #14
  br label %if.end2

rnbd_clt_dev_add_to_requeue.exit:                 ; preds = %if.end.i.i106.i, %if.then65.i.rnbd_clt_dev_add_to_requeue.exit_crit_edge, %do.end30.i, %if.else.rnbd_clt_dev_add_to_requeue.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock.i, i32 noundef %call11.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  %44 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i101.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i101.i to ptr
  %preempt_count.i.i102.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i102.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i102.i, align 4
  br label %if.end2

if.end2.critedge:                                 ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock.i, i32 noundef %call11.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  %48 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i101.i.c = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i101.i.c to ptr
  %preempt_count.i.i102.i.c = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i102.i.c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i102.i.c, align 4
  %sub.i.i.c = add i32 %51, -1
  store volatile i32 %sub.i.i.c, ptr %preempt_count.i.i102.i.c, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end2.critedge, %rnbd_clt_dev_add_to_requeue.exit, %if.end73.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnbd_put_permit(ptr noundef %sess, ptr noundef %permit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rtrs = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 1
  %0 = ptrtoint ptr %rtrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtrs, align 4
  tail call void @rtrs_clt_put_permit(ptr noundef %1, ptr noundef %permit) #14
  %busy = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %busy, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy, ptr %busy, i32 1, ptr elementtype(i32) %busy) #14, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !239
  %cpu_rr.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 6
  %cpu_queues_bm.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 5
  %cpu_queues15.i.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %rnbd_rerun_if_needed.exit.i.do.body.i_crit_edge, %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !240
  %7 = ptrtoint ptr %cpu_rr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_rr.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i176.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i176.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add.i177.i.i = add i32 %18, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i.i.i = urem i32 %add.i177.i.i, %19
  %call.i.i3.i = tail call i32 @_find_next_bit_be(ptr noundef %cpu_queues_bm.i.i.i, i32 noundef %19, i32 noundef %rem.i.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i3.i, i32 %20)
  %cmp.i.i.i = icmp ult i32 %call.i.i3.i, %20
  br i1 %cmp.i.i.i, label %do.body.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge, label %if.else.i.i.i

do.body.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_get_cpu_qlist.exit.i.i

if.else.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %cmp2.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %cmp2.not.i.i.i, label %if.else.i.i.i.do.body136.i.i_crit_edge, label %if.then3.i.i.i

if.else.i.i.i.do.body136.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  %call6.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_queues_bm.i.i.i, i32 noundef %rem.i.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i.i, i32 %rem.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %call6.i.i.i, %rem.i.i.i
  br i1 %cmp7.i.i.i, label %if.then3.i.i.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge, label %if.then3.i.i.i.do.body136.i.i_crit_edge

if.then3.i.i.i.do.body136.i.i_crit_edge:          ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

if.then3.i.i.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge: ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_get_cpu_qlist.exit.i.i

rnbd_get_cpu_qlist.exit.i.i:                      ; preds = %if.then3.i.i.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge, %do.body.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge
  %call6.sink.i.i.i = phi i32 [ %call.i.i3.i, %do.body.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge ], [ %call6.i.i.i, %if.then3.i.i.i.rnbd_get_cpu_qlist.exit.i.i_crit_edge ]
  %21 = ptrtoint ptr %cpu_queues15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_queues15.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %arrayidx17.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6.sink.i.i.i
  %24 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i.i.i, align 4
  %add18.i.i.i = add i32 %25, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add18.i.i.i)
  %tobool.not218.i.i = icmp eq i32 %add18.i.i.i, 0
  br i1 %tobool.not218.i.i, label %rnbd_get_cpu_qlist.exit.i.i.do.body136.i.i_crit_edge, label %rnbd_get_cpu_qlist.exit.i.i.do.body10.i.i_crit_edge

rnbd_get_cpu_qlist.exit.i.i.do.body10.i.i_crit_edge: ; preds = %rnbd_get_cpu_qlist.exit.i.i
  br label %do.body10.i.i

rnbd_get_cpu_qlist.exit.i.i.do.body136.i.i_crit_edge: ; preds = %rnbd_get_cpu_qlist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

do.body10.i.i:                                    ; preds = %rnbd_get_cpu_qlist.exit198.i.i.do.body10.i.i_crit_edge, %rnbd_get_cpu_qlist.exit.i.i.do.body10.i.i_crit_edge
  %cpu_q.0219.in.i.i = phi i32 [ %add18.i195.i.i, %rnbd_get_cpu_qlist.exit198.i.i.do.body10.i.i_crit_edge ], [ %add18.i.i.i, %rnbd_get_cpu_qlist.exit.i.i.do.body10.i.i_crit_edge ]
  %cpu_q.0219.i.i = inttoptr i32 %cpu_q.0219.in.i.i to ptr
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !241
  %and.i178.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178.i.i)
  %tobool22.not.i.i = icmp eq i32 %and.i178.i.i, 0
  br i1 %tobool22.not.i.i, label %do.end24.i.i, label %do.end24.thread.i.i

do.end24.i.i:                                     ; preds = %do.body10.i.i
  tail call void @trace_hardirqs_off() #14
  %requeue_lock.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %cpu_q.0219.i.i, i32 0, i32 1
  %call27.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %requeue_lock.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then38.i.i, label %do.end24.i.i.if.end63.critedge.i.i_crit_edge

do.end24.i.i.if.end63.critedge.i.i_crit_edge:     ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.critedge.i.i

do.end24.thread.i.i:                              ; preds = %do.body10.i.i
  %requeue_lock199.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %cpu_q.0219.i.i, i32 0, i32 1
  %call27200.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %requeue_lock199.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27200.i.i)
  %tobool28.not201.i.i = icmp eq i32 %call27200.i.i, 0
  br i1 %tobool28.not201.i.i, label %do.end24.thread.i.i.do.body40.i.i_crit_edge, label %do.end24.thread.i.i.if.end63.critedge.i.i_crit_edge

do.end24.thread.i.i.if.end63.critedge.i.i_crit_edge: ; preds = %do.end24.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.critedge.i.i

do.end24.thread.i.i.do.body40.i.i_crit_edge:      ; preds = %do.end24.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40.i.i

if.then38.i.i:                                    ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body40.i.i

do.body40.i.i:                                    ; preds = %if.then38.i.i, %do.end24.thread.i.i.do.body40.i.i_crit_edge
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !242
  %and.i.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool48.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool48.not.i.i, label %if.then52.i.i, label %do.body40.i.i.do.end55.i.i_crit_edge, !prof !225

do.body40.i.i.do.end55.i.i_crit_edge:             ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end55.i.i

if.then52.i.i:                                    ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end55.i.i

do.end55.i.i:                                     ; preds = %if.then52.i.i, %do.body40.i.i.do.end55.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #14, !srcloc !243
  br label %for.inc.i.i

if.end63.critedge.i.i:                            ; preds = %do.end24.thread.i.i.if.end63.critedge.i.i_crit_edge, %do.end24.i.i.if.end63.critedge.i.i_crit_edge
  %requeue_lock202.i.i = phi ptr [ %requeue_lock199.i.i, %do.end24.thread.i.i.if.end63.critedge.i.i_crit_edge ], [ %requeue_lock.i.i, %do.end24.i.i.if.end63.critedge.i.i_crit_edge ]
  %cpu64.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %cpu_q.0219.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %cpu64.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu64.i.i, align 4
  %div3.i.i.i = lshr i32 %29, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %cpu_queues_bm.i.i.i, i32 %div3.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %29, 31
  %32 = shl nuw i32 1, %and.i.i.i
  %33 = and i32 %32, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool66.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool66.not.i.i, label %unlock.thread.i.i, label %if.end68.i.i

unlock.thread.i.i:                                ; preds = %if.end63.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock202.i.i, i32 noundef %26) #14
  br label %for.inc.i.i

if.end68.i.i:                                     ; preds = %if.end63.critedge.i.i
  %34 = ptrtoint ptr %cpu_q.0219.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %cpu_q.0219.i.i, align 4
  %cmp74.not.i.i = icmp eq ptr %35, %cpu_q.0219.i.i
  %tobool81.not230.i.i = icmp eq ptr %35, null
  %tobool81.not.i.i = or i1 %cmp74.not.i.i, %tobool81.not230.i.i
  br i1 %tobool81.not.i.i, label %do.end99.i.i, label %if.end115.critedge.i.i, !prof !225

do.end99.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  %36 = ptrtoint ptr %cpu64.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu64.i.i, align 4
  tail call void @_clear_bit(i32 noundef %37, ptr noundef %cpu_queues_bm.i.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock202.i.i, i32 noundef %26) #14
  br label %for.inc.i.i

if.end115.critedge.i.i:                           ; preds = %if.end68.i.i
  %cpu_q.0219.i.i.le = inttoptr i32 %cpu_q.0219.in.i.i to ptr
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %35) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end115.critedge.i.i.list_del_init.exit.i.i_crit_edge

if.end115.critedge.i.i.list_del_init.exit.i.i_crit_edge: ; preds = %if.end115.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end115.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end115.critedge.i.i.list_del_init.exit.i.i_crit_edge
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %35, ptr %prev.i3.i.i.i, align 4
  %in_list.i.i = getelementptr inbounds %struct.rnbd_queue, ptr %35, i32 0, i32 1
  %call.i.i180.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_list.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %in_list.i.i, i32 1, i32 3, i32 1) #14
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_list.i.i, ptr %in_list.i.i, i32 1, ptr elementtype(i32) %in_list.i.i) #14, !srcloc !236
  %47 = ptrtoint ptr %cpu_q.0219.i.i.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %cpu_q.0219.i.i.le, align 4
  %cmp.i181.not.i.i = icmp eq ptr %48, %cpu_q.0219.i.i.le
  br i1 %cmp.i181.not.i.i, label %if.then133.loopexit.critedge.i.i, label %list_del_init.exit.i.i.if.then133.i.i_crit_edge

list_del_init.exit.i.i.if.then133.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then133.i.i

for.inc.i.i:                                      ; preds = %do.end99.i.i, %unlock.thread.i.i, %do.end55.i.i
  %cpu129.i.i = getelementptr inbounds %struct.rnbd_cpu_qlist, ptr %cpu_q.0219.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %cpu129.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu129.i.i, align 4
  %add.i182.i.i = add i32 %50, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i183.i.i = urem i32 %add.i182.i.i, %51
  %call.i185.i.i = tail call i32 @_find_next_bit_be(ptr noundef %cpu_queues_bm.i.i.i, i32 noundef %51, i32 noundef %rem.i183.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i185.i.i, i32 %52)
  %cmp.i186.i.i = icmp ult i32 %call.i185.i.i, %52
  br i1 %cmp.i186.i.i, label %for.inc.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge, label %if.else.i188.i.i

for.inc.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_get_cpu_qlist.exit198.i.i

if.else.i188.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i183.i.i)
  %cmp2.not.i187.i.i = icmp eq i32 %rem.i183.i.i, 0
  br i1 %cmp2.not.i187.i.i, label %if.else.i188.i.i.do.body136.i.i_crit_edge, label %if.then3.i191.i.i

if.else.i188.i.i.do.body136.i.i_crit_edge:        ; preds = %if.else.i188.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

if.then3.i191.i.i:                                ; preds = %if.else.i188.i.i
  %call6.i189.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_queues_bm.i.i.i, i32 noundef %rem.i183.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i189.i.i, i32 %rem.i183.i.i)
  %cmp7.i190.i.i = icmp slt i32 %call6.i189.i.i, %rem.i183.i.i
  br i1 %cmp7.i190.i.i, label %if.then3.i191.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge, label %if.then3.i191.i.i.do.body136.i.i_crit_edge

if.then3.i191.i.i.do.body136.i.i_crit_edge:       ; preds = %if.then3.i191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

if.then3.i191.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge: ; preds = %if.then3.i191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_get_cpu_qlist.exit198.i.i

rnbd_get_cpu_qlist.exit198.i.i:                   ; preds = %if.then3.i191.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge, %for.inc.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge
  %call6.sink.i192.i.i = phi i32 [ %call.i185.i.i, %for.inc.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge ], [ %call6.i189.i.i, %if.then3.i191.i.i.rnbd_get_cpu_qlist.exit198.i.i_crit_edge ]
  %53 = ptrtoint ptr %cpu_queues15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpu_queues15.i.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %arrayidx17.i194.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6.sink.i192.i.i
  %56 = ptrtoint ptr %arrayidx17.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx17.i194.i.i, align 4
  %add18.i195.i.i = add i32 %57, %55
  %tobool.not.i.i = icmp eq i32 %add18.i195.i.i, 0
  br i1 %tobool.not.i.i, label %rnbd_get_cpu_qlist.exit198.i.i.do.body136.i.i_crit_edge, label %rnbd_get_cpu_qlist.exit198.i.i.do.body10.i.i_crit_edge

rnbd_get_cpu_qlist.exit198.i.i.do.body10.i.i_crit_edge: ; preds = %rnbd_get_cpu_qlist.exit198.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i.i

rnbd_get_cpu_qlist.exit198.i.i.do.body136.i.i_crit_edge: ; preds = %rnbd_get_cpu_qlist.exit198.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i

if.then133.loopexit.critedge.i.i:                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %cpu64.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu64.i.i, align 4
  tail call void @_clear_bit(i32 noundef %59, ptr noundef %cpu_queues_bm.i.i.i) #14
  br label %if.then133.i.i

if.then133.i.i:                                   ; preds = %if.then133.loopexit.critedge.i.i, %list_del_init.exit.i.i.if.then133.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %requeue_lock202.i.i, i32 noundef %26) #14
  %60 = ptrtoint ptr %cpu64.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu64.i.i, align 4
  %62 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %16, align 4
  br label %do.body136.i.i

do.body136.i.i:                                   ; preds = %if.then133.i.i, %rnbd_get_cpu_qlist.exit198.i.i.do.body136.i.i_crit_edge, %if.then3.i191.i.i.do.body136.i.i_crit_edge, %if.else.i188.i.i.do.body136.i.i_crit_edge, %rnbd_get_cpu_qlist.exit.i.i.do.body136.i.i_crit_edge, %if.then3.i.i.i.do.body136.i.i_crit_edge, %if.else.i.i.i.do.body136.i.i_crit_edge
  %q.3210.i.i = phi ptr [ %35, %if.then133.i.i ], [ null, %rnbd_get_cpu_qlist.exit.i.i.do.body136.i.i_crit_edge ], [ null, %if.else.i.i.i.do.body136.i.i_crit_edge ], [ null, %if.then3.i.i.i.do.body136.i.i_crit_edge ], [ null, %if.else.i188.i.i.do.body136.i.i_crit_edge ], [ null, %if.then3.i191.i.i.do.body136.i.i_crit_edge ], [ null, %rnbd_get_cpu_qlist.exit198.i.i.do.body136.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !244
  %63 = tail call i32 @llvm.read_register.i32(metadata !208) #14
  %and.i.i.i174.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i174.i.i to ptr
  %preempt_count.i.i175.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i175.i.i, align 4
  %sub.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i175.i.i, align 4
  %tobool143.i.not.i = icmp eq ptr %q.3210.i.i, null
  br i1 %tobool143.i.not.i, label %do.body136.i.i.rnbd_rerun_if_needed.exit.i_crit_edge, label %if.then144.i.i

do.body136.i.i.rnbd_rerun_if_needed.exit.i_crit_edge: ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_rerun_if_needed.exit.i

if.then144.i.i:                                   ; preds = %do.body136.i.i
  %hctx.i.i.i = getelementptr inbounds %struct.rnbd_queue, ptr %q.3210.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %hctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hctx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end23.critedge.i.i.i, !prof !225

do.end.i.i.i:                                     ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 167, i32 noundef 9, ptr noundef null) #14
  br label %rnbd_rerun_if_needed.exit.i

if.end23.critedge.i.i.i:                          ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_run_hw_queue(ptr noundef nonnull %68, i1 noundef zeroext true) #14
  br label %rnbd_rerun_if_needed.exit.i

rnbd_rerun_if_needed.exit.i:                      ; preds = %if.end23.critedge.i.i.i, %do.end.i.i.i, %do.body136.i.i.rnbd_rerun_if_needed.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %busy, i32 noundef 4) #14
  %69 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i = icmp ne i32 %70, 0
  %brmerge.i = or i1 %tobool143.i.not.i, %cmp.i
  br i1 %brmerge.i, label %rnbd_rerun_all_if_idle.exit, label %rnbd_rerun_if_needed.exit.i.do.body.i_crit_edge

rnbd_rerun_if_needed.exit.i.do.body.i_crit_edge:  ; preds = %rnbd_rerun_if_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

rnbd_rerun_all_if_idle.exit:                      ; preds = %rnbd_rerun_if_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtrs_clt_get_permit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_clt_put_permit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_io_conf(ptr nocapture noundef %priv, i32 noundef %errno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.rnbd_iu, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %errno1 = getelementptr inbounds %struct.rnbd_iu, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %errno1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %errno, ptr %errno1, align 4
  tail call void @blk_mq_complete_request(ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errno)
  %tobool.not = icmp eq i32 %errno, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @msg_io_conf._rs, ptr noundef nonnull @__func__.msg_io_conf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pathname, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %11, i32 0, i32 16
  %cond5 = select i1 %tobool.i.not, ptr @.str.62, ptr @.str.63
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %9, ptr noundef %sessname, ptr noundef nonnull %cond5, i32 noundef %errno) #17
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_request(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_rdma_cq_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rnbd_get_iu(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtrs.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 1
  %1 = ptrtoint ptr %rtrs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtrs.i, align 4
  %call.i = tail call ptr @rtrs_clt_get_permit(ptr noundef %2, i32 noundef 0, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %busy.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %sess, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %busy.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %busy.i, ptr %busy.i, i32 1, ptr elementtype(i32) %busy.i) #14, !srcloc !230
  %permit5 = getelementptr inbounds %struct.rnbd_iu, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %permit5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %permit5, align 4
  %refcount = getelementptr inbounds %struct.rnbd_iu, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 2, ptr %refcount, align 8
  %comp = getelementptr inbounds %struct.rnbd_iu, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %comp, ptr noundef nonnull @.str.69, ptr noundef nonnull @rnbd_get_iu.__key) #14
  %errno = getelementptr inbounds %struct.rnbd_iu, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %errno, align 4
  %sgt = getelementptr inbounds %struct.rnbd_iu, ptr %call7.i.i, i32 0, i32 3
  %call8 = tail call i32 @sg_alloc_table(ptr noundef %sgt, i32 noundef 1, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.then10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rnbd_put_permit(ptr noundef %sess, ptr noundef nonnull %call.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.end.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end4.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_usr_msg(ptr noundef %rtrs, i32 noundef %dir, ptr noundef %iu, ptr noundef %vec, i32 noundef %len, ptr noundef %sg, i32 noundef %sg_len, ptr noundef %conf, ptr nocapture noundef writeonly %errno, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %req_ops = alloca %struct.rtrs_clt_req_ops, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_ops) #14
  %0 = getelementptr inbounds %struct.rtrs_clt_req_ops, ptr %req_ops, i32 0, i32 1
  %work = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #14
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.70, ptr noundef nonnull @send_usr_msg.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry4 = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %conf, ptr %func, align 4
  %5 = ptrtoint ptr %req_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iu, ptr %req_ops, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @msg_conf, ptr %0, align 4
  %permit = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 1
  %7 = ptrtoint ptr %permit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %permit, align 4
  %call = call i32 @rtrs_clt_request(i32 noundef %dir, ptr noundef nonnull %req_ops, ptr noundef %rtrs, ptr noundef %8, ptr noundef %vec, i32 noundef 1, i32 noundef %len, ptr noundef %sg, i32 noundef %sg_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool7.not = icmp eq i32 %wait, 0
  %or.cond = or i1 %tobool7.not, %tobool.not
  br i1 %or.cond, label %entry.if.end31_crit_edge, label %do.body9

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.body9:                                         ; preds = %entry
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 453) #14
  %comp = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 6
  %errno15 = getelementptr inbounds %struct.rnbd_iu, ptr %iu, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %errno15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %10)
  %cmp.not = icmp eq i32 %10, 2147483647
  br i1 %cmp.not, label %if.end, label %do.body9.do.end28_crit_edge

do.body9.do.end28_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

if.end:                                           ; preds = %do.body9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call1949 = call i32 @prepare_to_wait_event(ptr noundef %comp, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %12 = ptrtoint ptr %errno15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %errno15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %13)
  %cmp22.not50 = icmp eq i32 %13, 2147483647
  br i1 %cmp22.not50, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %comp, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %14 = ptrtoint ptr %errno15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %errno15, align 4
  %cmp22.not = icmp eq i32 %15, 2147483647
  br i1 %cmp22.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %comp, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end28

do.end28:                                         ; preds = %for.end, %do.body9.do.end28_crit_edge
  %16 = ptrtoint ptr %errno15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %errno15, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %entry.if.end31_crit_edge
  %storemerge = phi i32 [ %17, %do.end28 ], [ 0, %entry.if.end31_crit_edge ]
  %18 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %errno, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_sess_info_conf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %errno = getelementptr i8, ptr %work, i32 44
  %5 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ver = getelementptr inbounds %struct.rnbd_msg_sess_info_rsp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ver, align 2
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 2)
  %ver7 = getelementptr inbounds %struct.rnbd_clt_session, ptr %4, i32 0, i32 17
  %10 = ptrtoint ptr %ver7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ver7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  %11 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %errno, align 4
  %comp.i = getelementptr i8, ptr %work, i32 48
  %errno1.i = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %errno1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %errno1.i, align 4
  tail call void @__wake_up(ptr noundef %comp.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %refcount.i = getelementptr i8, ptr %work, i32 104
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.rnbd_put_iu.exit_crit_edge

if.end.rnbd_put_iu.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_put_iu.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sgt.i = getelementptr i8, ptr %work, i32 -12
  tail call void @sg_free_table(ptr noundef %sgt.i) #14
  %permit.i = getelementptr i8, ptr %work, i32 -20
  %15 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %permit.i, align 4
  tail call fastcc void @rnbd_put_permit(ptr noundef %4, ptr noundef %16) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %rnbd_put_iu.exit

rnbd_put_iu.exit:                                 ; preds = %if.then.i, %if.end.rnbd_put_iu.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 45) #14
  %refcount.i19 = getelementptr inbounds %struct.rnbd_clt_session, ptr %4, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i19, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %refcount.i19, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i19, ptr %refcount.i19, i32 1, ptr elementtype(i32) %refcount.i19) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i20, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rnbd_put_iu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_put_sess.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i19, i32 noundef 3) #14
  br label %rnbd_clt_put_sess.exit

if.then.i20:                                      ; preds = %rnbd_put_iu.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call fastcc void @free_sess(ptr noundef %4) #14
  br label %rnbd_clt_put_sess.exit

rnbd_clt_put_sess.exit:                           ; preds = %if.then.i20, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rnbd_clt_put_sess.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_conf(ptr noundef %priv, i32 noundef %errno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %errno1 = getelementptr inbounds %struct.rnbd_iu, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %errno1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %errno, ptr %errno1, align 4
  %work = getelementptr inbounds %struct.rnbd_iu, ptr %priv, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_clt_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_open_conf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %errno1 = getelementptr i8, ptr %work, i32 44
  %5 = ptrtoint ptr %errno1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %errno1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pathname, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %10, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %8, ptr noundef %sessname, i32 noundef %6) #17
  br label %if.end8

if.else:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %dev_state.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_state.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %12, label %if.else.if.end22.i_crit_edge [
    i32 3, label %do.end.i
    i32 2, label %if.then3.i
  ]

if.else.if.end22.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %pathname.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %pathname.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pathname.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %17, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %15, ptr noundef %sessname.i) #17
  br label %if.then5

if.then3.i:                                       ; preds = %if.else
  %nsectors4.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %nsectors4.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nsectors4.i, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #14
  %nsectors5.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 23
  %21 = ptrtoint ptr %nsectors5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nsectors5.i, align 8
  %conv.i = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv.i)
  %cmp6.not.i = icmp eq i64 %20, %conv.i
  br i1 %cmp6.not.i, label %if.then3.i.if.end11.i_crit_edge, label %if.then8.i

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv9.i = trunc i64 %20 to i32
  %pathname.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 7
  %23 = ptrtoint ptr %pathname.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pathname.i.i, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 8
  %sessname.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %26, i32 0, i32 16
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %24, ptr noundef %sessname.i.i, i32 noundef %22, i32 noundef %conv9.i) #17
  %27 = ptrtoint ptr %nsectors5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv9.i, ptr %nsectors5.i, align 8
  %gd.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 26
  %28 = ptrtoint ptr %gd.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gd.i.i, align 8
  %conv.i.i = and i64 %20, 4294967295
  %call3.i.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %29, i64 noundef %conv.i.i) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then3.i.if.end11.i_crit_edge
  %gd.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 26
  %30 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gd.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 10
  %call12.i = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 4) #14
  %pathname17.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 7
  %34 = ptrtoint ptr %pathname17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pathname17.i, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 8
  %sessname19.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %37, i32 0, i32 16
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %35, ptr noundef %sessname19.i) #17
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end11.i, %if.else.if.end22.i_crit_edge
  %logical_block_size.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %logical_block_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i.i, label %if.end22.i.if.then5_crit_edge, label %process_msg_open_rsp.exit

if.end22.i.if.then5_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

process_msg_open_rsp.exit:                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 8
  %device_id.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_id.i.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  %device_id2.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 3
  %45 = ptrtoint ptr %device_id2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %device_id2.i.i, align 4
  %nsectors.i44.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %nsectors.i44.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %nsectors.i44.i, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47) #14
  %conv.i45.i = trunc i64 %48 to i32
  %nsectors3.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 23
  %49 = ptrtoint ptr %nsectors3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv.i45.i, ptr %nsectors3.i.i, align 8
  %50 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %logical_block_size.i.i, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #14
  %logical_block_size5.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 21
  %53 = ptrtoint ptr %logical_block_size5.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %logical_block_size5.i.i, align 4
  %physical_block_size.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %physical_block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %physical_block_size.i.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #14
  %physical_block_size6.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 20
  %57 = ptrtoint ptr %physical_block_size6.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %physical_block_size6.i.i, align 2
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_write_same_sectors.i.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %max_write_same_sectors7.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 15
  %61 = ptrtoint ptr %max_write_same_sectors7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %max_write_same_sectors7.i.i, align 8
  %max_discard_sectors.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %max_discard_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_discard_sectors.i.i, align 8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #14
  %max_discard_sectors8.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 16
  %65 = ptrtoint ptr %max_discard_sectors8.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %max_discard_sectors8.i.i, align 4
  %discard_granularity.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %discard_granularity.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %discard_granularity.i.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #14
  %discard_granularity9.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 17
  %69 = ptrtoint ptr %discard_granularity9.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %discard_granularity9.i.i, align 8
  %discard_alignment.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 7
  %70 = ptrtoint ptr %discard_alignment.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %discard_alignment.i.i, align 8
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #14
  %discard_alignment10.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 18
  %73 = ptrtoint ptr %discard_alignment10.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %discard_alignment10.i.i, align 4
  %secure_discard.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 11
  %74 = ptrtoint ptr %secure_discard.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %secure_discard.i.i, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #14
  %secure_discard11.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 19
  %77 = ptrtoint ptr %secure_discard11.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %secure_discard11.i.i, align 8
  %rotational.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 12
  %78 = ptrtoint ptr %rotational.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rotational.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool12.i.i = icmp ne i8 %79, 0
  %rotational13.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 11
  %frombool.i.i = zext i1 %tobool12.i.i to i8
  %80 = ptrtoint ptr %rotational13.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool.i.i, ptr %rotational13.i.i, align 1
  %cache_policy.i.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %cache_policy.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cache_policy.i.i, align 1
  %wc.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 12
  %83 = lshr i8 %82, 1
  %.lobit.i.i = and i8 %83, 1
  %84 = ptrtoint ptr %wc.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.lobit.i.i, ptr %wc.i.i, align 2
  %85 = load i8, ptr %cache_policy.i.i, align 1
  %86 = and i8 %85, 1
  %fua.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 13
  %87 = ptrtoint ptr %fua.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %fua.i.i, align 1
  %max_io_size.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %41, i32 0, i32 9
  %88 = ptrtoint ptr %max_io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_io_size.i.i, align 4
  %div54.i.i = lshr i32 %89, 9
  %max_hw_sectors.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 14
  %90 = ptrtoint ptr %max_hw_sectors.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div54.i.i, ptr %max_hw_sectors.i.i, align 4
  %max_segments.i.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %41, i32 0, i32 10
  %91 = ptrtoint ptr %max_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_segments.i.i, align 4
  %conv25.i.i = trunc i32 %92 to i16
  %max_segments26.i.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %4, i32 0, i32 22
  %93 = ptrtoint ptr %max_segments26.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv25.i.i, ptr %max_segments26.i.i, align 2
  %94 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %dev_state.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %if.end8

if.then5:                                         ; preds = %if.end22.i.if.then5_crit_edge, %do.end.i
  %err.0.i.ph = phi i32 [ -22, %if.end22.i.if.then5_crit_edge ], [ -2, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  %device_id6 = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %device_id6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %device_id6, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call fastcc void @send_msg_close(ptr noundef %4, i32 noundef %97, i32 noundef 0)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %process_msg_open_rsp.exit, %do.end
  %errno.0 = phi i32 [ %6, %do.end ], [ %err.0.i.ph, %if.then5 ], [ 0, %process_msg_open_rsp.exit ]
  tail call void @kfree(ptr noundef %1) #14
  %comp.i = getelementptr i8, ptr %work, i32 48
  %errno1.i = getelementptr i8, ptr %work, i32 100
  %98 = ptrtoint ptr %errno1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %errno.0, ptr %errno1.i, align 4
  tail call void @__wake_up(ptr noundef %comp.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %4, align 8
  %refcount.i = getelementptr i8, ptr %work, i32 104
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %101 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %101, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end8.rnbd_put_iu.exit_crit_edge

if.end8.rnbd_put_iu.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_put_iu.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %sgt.i = getelementptr i8, ptr %work, i32 -12
  tail call void @sg_free_table(ptr noundef %sgt.i) #14
  %permit.i = getelementptr i8, ptr %work, i32 -20
  %102 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %permit.i, align 4
  tail call fastcc void @rnbd_put_permit(ptr noundef %100, ptr noundef %103) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %rnbd_put_iu.exit

rnbd_put_iu.exit:                                 ; preds = %if.then.i, %if.end8.rnbd_put_iu.exit_crit_edge
  tail call fastcc void @rnbd_clt_put_dev(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnbd_clt_setup_gen_disk(ptr noundef %dev, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rnbd_client_major, align 4
  %gd = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %1 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gd, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %2, align 8
  %shl = shl i32 %idx, 6
  %4 = load ptr, ptr %gd, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %first_minor, align 4
  %6 = load ptr, ptr %gd, align 8
  %minors = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %minors, align 8
  %8 = load ptr, ptr %gd, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rnbd_client_ops, ptr %fops, align 8
  %queue = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %12 = load ptr, ptr %gd, align 8
  %queue5 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %queue5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %queue5, align 4
  %14 = load ptr, ptr %gd, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %private_data, align 8
  %16 = load ptr, ptr %gd, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 3
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.83, i32 noundef %idx)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rnbd_clt_setup_gen_disk.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rnbd_clt_setup_gen_disk, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gd, align 8
  %disk_name12 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %nsectors = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 23
  %19 = ptrtoint ptr %nsectors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nsectors, align 8
  %logical_block_size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 21
  %21 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %logical_block_size, align 4
  %23 = lshr i16 %22, 9
  %div = zext i16 %23 to i32
  %mul = mul i32 %20, %div
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rnbd_clt_setup_gen_disk.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.86, ptr noundef %disk_name12, i32 noundef %mul) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %24 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gd, align 8
  %nsectors15 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 23
  %26 = ptrtoint ptr %nsectors15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nsectors15, align 8
  %conv16 = zext i32 %27 to i64
  tail call void @set_capacity(ptr noundef %25, i64 noundef %conv16) #14
  %access_mode = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %access_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  %read_only = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 10
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %read_only, align 8
  %31 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gd, align 8
  tail call void @set_disk_ro(ptr noundef %32, i1 noundef zeroext true) #14
  br label %if.end21

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %read_only, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %rotational = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 11
  %34 = ptrtoint ptr %rotational to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rotational, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.not = icmp eq i8 %35, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %37) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %38 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gd, align 8
  %call.i = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %39, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gd, align 8
  tail call void @blk_cleanup_disk(ptr noundef %41) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_same_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_virt_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_client_open(ptr nocapture noundef readonly %block_device, i32 noundef %mode) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %block_device, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %read_only = getelementptr inbounds %struct.rnbd_clt_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_only, align 8, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_state = getelementptr inbounds %struct.rnbd_clt_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.rnbd_clt_dev, ptr %3, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %10 = phi i32 [ %9, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %13, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount.i) #14, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !221

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !221

if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_clt_get_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  br label %rnbd_clt_get_dev.exit

rnbd_clt_get_dev.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.rnbd_clt_get_dev.exit_crit_edge
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %spec.select = select i1 %tobool12.i.i.i.i.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %rnbd_clt_get_dev.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %spec.select, %rnbd_clt_get_dev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_client_release(ptr nocapture noundef readonly %gen, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %gen, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call fastcc void @rnbd_clt_put_dev(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rnbd_client_getgeo(ptr nocapture noundef readonly %block_device, ptr nocapture noundef writeonly %geo) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %block_device, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %size1 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size1, align 8
  %logical_block_size = getelementptr inbounds %struct.rnbd_clt_dev, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %logical_block_size, align 4
  %8 = lshr i16 %7, 9
  %9 = zext i16 %8 to i64
  %mul = mul i64 %5, %9
  %shr = lshr i64 %mul, 6
  %conv3 = trunc i64 %shr to i16
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %10 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %cylinders, align 2
  %11 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %12 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %sectors, align 1
  %start = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 3
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %start, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_close_conf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr i8, ptr %work, i32 -16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %errno = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errno, align 4
  %comp.i = getelementptr i8, ptr %work, i32 48
  %errno1.i = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %errno1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %errno1.i, align 4
  tail call void @__wake_up(ptr noundef %comp.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 8
  %refcount.i = getelementptr i8, ptr %work, i32 104
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !228
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.rnbd_put_iu.exit_crit_edge

entry.rnbd_put_iu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rnbd_put_iu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %sgt.i = getelementptr i8, ptr %work, i32 -12
  tail call void @sg_free_table(ptr noundef %sgt.i) #14
  %permit.i = getelementptr i8, ptr %work, i32 -20
  %9 = ptrtoint ptr %permit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %permit.i, align 4
  tail call fastcc void @rnbd_put_permit(ptr noundef %7, ptr noundef %10) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %rnbd_put_iu.exit

rnbd_put_iu.exit:                                 ; preds = %if.then.i, %entry.rnbd_put_iu.exit_crit_edge
  tail call fastcc void @rnbd_clt_put_dev(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_clt_remove_dev_symlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_clt_destroy_sysfs_files() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unmap_device_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -332
  %call = tail call i32 @rnbd_clt_unmap_device(ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_clt_create_sysfs_files() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !132, !133, !135, !136, !137, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !186, !188, !189, !190, !191, !193, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207}
!llvm.named.register.sp = !{!208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @__UNIQUE_ID_description314, !1, !"__UNIQUE_ID_description314", i1 false, i1 false}
!1 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file315, !3, !"__UNIQUE_ID_file315", i1 false, i1 false}
!3 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license316, !3, !"__UNIQUE_ID_license316", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 153, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rnbd_clt_resize_disk._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @rnbd_clt_resize_disk._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1584, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rnbd_clt_map_device._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @rnbd_clt_map_device._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1595, i32 3}
!18 = !{ptr @rnbd_clt_map_device._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rnbd_clt_map_device._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1601, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rnbd_clt_map_device.__UNIQUE_ID_ddebug321, !21, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1605, i32 3}
!27 = !{ptr @rnbd_clt_map_device._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rnbd_clt_map_device._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1612, i32 2}
!31 = !{ptr @rnbd_clt_map_device._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rnbd_clt_map_device._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1666, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rnbd_clt_unmap_device._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rnbd_clt_unmap_device._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1672, i32 3}
!40 = !{ptr @rnbd_clt_unmap_device._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rnbd_clt_unmap_device._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1688, i32 2}
!44 = !{ptr @rnbd_clt_unmap_device._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rnbd_clt_unmap_device._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1719, i32 3}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rnbd_clt_remap_device._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rnbd_clt_remap_device._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1722, i32 4}
!53 = !{ptr @rnbd_clt_remap_device._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rnbd_clt_remap_device._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1809, i32 39}
!57 = !{ptr @__initcall__kmod_rnbd_client__328_1813_rnbd_client_init6, !58, !"__initcall__kmod_rnbd_client__328_1813_rnbd_client_init6", i1 false, i1 false}
!58 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1813, i32 1}
!59 = !{ptr @__exitcall_rnbd_client_exit, !60, !"__exitcall_rnbd_client_exit", i1 false, i1 false}
!60 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1814, i32 1}
!61 = !{ptr @rnbd_client_major, !62, !"rnbd_client_major", i1 false, i1 false}
!62 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 24, i32 12}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 103, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rnbd_clt_change_capacity._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rnbd_clt_change_capacity._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 27, i32 8}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sess_lock, !69, !"sess_lock", i1 false, i1 false}
!72 = !{ptr @sess_list, !73, !"sess_list", i1 false, i1 false}
!73 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 28, i32 8}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1280, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @find_and_get_or_create_sess._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @find_and_get_or_create_sess._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @alloc_sess.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 808, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @alloc_sess.__key.38, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 812, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rnbd_init_cpu_qlists.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 752, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 737, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rnbd_clt_link_ev._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rnbd_clt_link_ev._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 658, i32 3}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @set_dev_states_to_disconnected._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @set_dev_states_to_disconnected._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 690, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @remap_devs._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @remap_devs._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 696, i32 3}
!105 = !{ptr @remap_devs._entry.47, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @remap_devs._entry_ptr.49, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 715, i32 3}
!109 = !{ptr @remap_devs._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @remap_devs._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 718, i32 4}
!113 = !{ptr @remap_devs._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @remap_devs._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @rnbd_mq_ops, !116, !"rnbd_mq_ops", i1 false, i1 false}
!116 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1222, i32 26}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1160, i32 3}
!119 = !{ptr @rnbd_queue_rq._rs, !118, !"_rs", i1 false, i1 false}
!120 = !{ptr @__func__.rnbd_queue_rq, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rnbd_queue_rq._entry, !118, !"_entry", i1 false, i1 false}
!123 = !{ptr @rnbd_queue_rq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @rnbd_client_xfer_request._rs, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1054, i32 3}
!126 = !{ptr @__func__.rnbd_client_xfer_request, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rnbd_client_xfer_request._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @rnbd_client_xfer_request._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/rnbd/rnbd-proto.h", i32 294, i32 3}
!132 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @msg_io_conf._rs, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 418, i32 3}
!135 = !{ptr @__func__.msg_io_conf, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @msg_io_conf._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @msg_io_conf._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1207, i32 3}
!143 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rnbd_rdma_map_queues._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @rnbd_rdma_map_queues._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1213, i32 3}
!148 = !{ptr @rnbd_rdma_map_queues._entry.66, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @rnbd_rdma_map_queues._entry_ptr.68, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @rnbd_get_iu.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 373, i32 2}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @send_usr_msg.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 445, i32 2}
!155 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1467, i32 3}
!158 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @init_dev._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @init_dev._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @init_dev.__key, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1482, i32 2}
!163 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 26, i32 8}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ida_lock, !165, !"ida_lock", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 516, i32 3}
!170 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @msg_open_conf._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @msg_open_conf._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 118, i32 3}
!175 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @process_msg_open_rsp._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @process_msg_open_rsp._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 134, i32 3}
!180 = !{ptr @process_msg_open_rsp._entry.80, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @process_msg_open_rsp._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @rnbd_client_setup_device.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1428, i32 12}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1397, i32 59}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1399, i32 2}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @rnbd_clt_setup_gen_disk.__UNIQUE_ID_ddebug320, !187, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!190 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @rnbd_client_ops, !192, !"rnbd_client_ops", i1 false, i1 false}
!192 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 982, i32 45}
!193 = !{ptr @rnbd_destroy_sessions.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1770, i32 4}
!195 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 25, i32 8}
!198 = !{ptr @index_ida, !197, !"index_ida", i1 false, i1 false}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1792, i32 3}
!201 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @rnbd_client_init._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @rnbd_client_init._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/block/rnbd/rnbd-clt.c", i32 1798, i32 3}
!206 = !{ptr @rnbd_client_init._entry.91, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @rnbd_client_init._entry_ptr.93, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{!"sp"}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{!"auto-init"}
!219 = !{i8 0, i8 2}
!220 = !{i64 869344, i64 869368, i64 869389, i64 869406, i64 869423}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 2148474366}
!223 = !{i64 2148388806, i64 2148388838, i64 2148388867, i64 2148388901, i64 2148388932, i64 2148388955}
!224 = !{i64 2149350480}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i64 2148998188, i64 2148998193, i64 2148998206, i64 2148998250, i64 2148998284, i64 2148998305}
!227 = !{i64 2148473287}
!228 = !{i64 2148387996, i64 2148388028, i64 2148388057, i64 2148388091, i64 2148388122, i64 2148388145}
!229 = !{i64 2148473516}
!230 = !{i64 2148384811, i64 2148384837, i64 2148384866, i64 2148384900, i64 2148384931, i64 2148384954}
!231 = !{i64 2155346353}
!232 = !{i64 2148393669, i64 2148393701, i64 2148393730, i64 2148393764, i64 2148393795, i64 2148393818}
!233 = !{i64 2148482774}
!234 = !{i64 2155348444}
!235 = !{i64 2148481661}
!236 = !{i64 2148392056, i64 2148392088, i64 2148392117, i64 2148392151, i64 2148392182, i64 2148392205}
!237 = !{i64 2155348807}
!238 = !{i64 2148387276, i64 2148387302, i64 2148387331, i64 2148387365, i64 2148387396, i64 2148387419}
!239 = !{i64 2155291567}
!240 = !{i64 2155283564}
!241 = !{i64 788511, i64 788572}
!242 = !{i64 791243}
!243 = !{i64 791528}
!244 = !{i64 2155291388}
