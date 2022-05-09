; ModuleID = '/llk/IR_all_yes/drivers/scsi/virtio_scsi.c_pt.bc'
source_filename = "../drivers/scsi/virtio_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.virtio_scsi = type { ptr, [8 x %struct.virtio_scsi_event_node], i32, %struct.hlist_node, i8, %struct.virtio_scsi_vq, %struct.virtio_scsi_vq, [0 x %struct.virtio_scsi_vq] }
%struct.virtio_scsi_event_node = type { ptr, %struct.virtio_scsi_event, %struct.work_struct }
%struct.virtio_scsi_event = type { i32, [8 x i8], i32 }
%struct.virtio_scsi_vq = type { %struct.spinlock, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.virtio_scsi_cmd_req = type <{ [8 x i8], i64, i8, i8, i8, [32 x i8] }>
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virtio_scsi_cmd_req_pi = type <{ [8 x i8], i64, i8, i8, i8, i32, i32, [32 x i8] }>
%struct.virtio_scsi_cmd = type <{ ptr, ptr, %union.anon.83, %union.anon.84, [81 x i8] }>
%union.anon.83 = type <{ %struct.virtio_scsi_ctrl_tmf_req, [35 x i8] }>
%struct.virtio_scsi_ctrl_tmf_req = type { i32, i32, [8 x i8], i64 }
%union.anon.84 = type { %struct.virtio_scsi_cmd_resp }
%struct.virtio_scsi_cmd_resp = type { i32, i32, i16, i8, i8, [96 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@virtio_scsi_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 3, ptr null, i32 0, ptr null, ptr @virtscsi_probe, ptr null, ptr @virtscsi_remove, ptr null, ptr @virtscsi_freeze, ptr @virtscsi_restore }, [36 x i8] zeroinitializer }, align 32
@virtscsi_cmd_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@virtscsi_cmd_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_virtio_scsi__300_1029_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [47 x i8] c"virtio_scsi.description=Virtio SCSI HBA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [42 x i8] c"virtio_scsi.file=drivers/scsi/virtio_scsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [24 x i8] c"virtio_scsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtio_scsi\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 8, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@virtscsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtscsi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/virtio_scsi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtscsi_probe._entry_ptr = internal global ptr @virtscsi_probe._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@virtscsi_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 256, ptr @virtscsi_queuecommand, ptr @virtscsi_commit_rqs, ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @virtscsi_abort, ptr @virtscsi_device_reset, ptr null, ptr null, ptr null, ptr @virtscsi_device_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtscsi_change_queue_depth, ptr @virtscsi_map_queues, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtscsi_eh_timed_out, ptr null, ptr null, ptr @.str, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Virtio SCSI HBA\00", [16 x i8] zeroinitializer }, align 32
@virtscsi_queuecommand.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtscsi_queuecommand\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmd %p CDB: %#02x\0A\00", [45 x i8] zeroinitializer }, align 32
@virtscsi_complete_cmd.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtscsi_complete_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmd %p response %u status %#02x sense_len %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown response %d\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"abort\0A\00", [25 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device reset\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"request\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@virtscsi_init_vq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&virtscsi_vq->vq_lock\00", [42 x i8] zeroinitializer }, align 32
@virtscsi_kick_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&event_node->work)\00", [59 x i8] zeroinitializer }, align 32
@virtscsi_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013virtio_scsi: Unsupported virtio scsi event %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtscsi_handle_event\00", [42 x i8] zeroinitializer }, align 32
@virtscsi_handle_event._entry_ptr = internal global ptr @virtscsi_handle_event._entry, section ".printk_index", align 4
@virtscsi_handle_transport_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013virtio_scsi: SCSI device %d 0 %d %d not found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"virtscsi_handle_transport_reset\00", [32 x i8] zeroinitializer }, align 32
@virtscsi_handle_transport_reset._entry_ptr = internal global ptr @virtscsi_handle_transport_reset._entry, section ".printk_index", align 4
@virtscsi_handle_transport_reset._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016virtio_scsi: Unsupported virtio scsi event reason %x\0A\00", [40 x i8] zeroinitializer }, align 32
@virtscsi_handle_transport_reset._entry_ptr.28 = internal global ptr @virtscsi_handle_transport_reset._entry.26, section ".printk_index", align 4
@virtscsi_handle_param_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"virtscsi_handle_param_change\00", [35 x i8] zeroinitializer }, align 32
@virtscsi_handle_param_change._entry_ptr = internal global ptr @virtscsi_handle_param_change._entry, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio_scsi_cmd\00", [16 x i8] zeroinitializer }, align 32
@init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013virtio_scsi: kmem_cache_create() for virtscsi_cmd_cache failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@init._entry_ptr = internal global ptr @init._entry, section ".printk_index", align 4
@init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013virtio_scsi: mempool_create() for virtscsi_cmd_pool failed\0A\00", [34 x i8] zeroinitializer }, align 32
@init._entry_ptr.35 = internal global ptr @init._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 9]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"virtio_scsi_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 977, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"virtscsi_cmd_pool\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 91, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"virtscsi_cmd_cache\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 90, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 980, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 964, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 969, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 851, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"virtscsi_host_template\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 739, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 741, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 569, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 115, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 150, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 150, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 696, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 696, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 638, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 809, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 810, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 813, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 774, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 236, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 396, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 299, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 304, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 320, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 995, i32 23 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 997, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [30 x i8] c"../drivers/scsi/virtio_scsi.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1006, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_fini, ptr @__initcall__kmod_virtio_scsi__300_1029_init6, ptr @fini, ptr @init._entry, ptr @init._entry.33, ptr @init._entry_ptr, ptr @init._entry_ptr.35, ptr @virtscsi_handle_event._entry, ptr @virtscsi_handle_event._entry_ptr, ptr @virtscsi_handle_param_change._entry, ptr @virtscsi_handle_param_change._entry_ptr, ptr @virtscsi_handle_transport_reset._entry, ptr @virtscsi_handle_transport_reset._entry.26, ptr @virtscsi_handle_transport_reset._entry_ptr, ptr @virtscsi_handle_transport_reset._entry_ptr.28, ptr @virtscsi_probe._entry, ptr @virtscsi_probe._entry_ptr, ptr @virtio_scsi_driver, ptr @virtscsi_cmd_pool, ptr @virtscsi_cmd_cache, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @virtscsi_host_template, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @virtscsi_init_vq.__key, ptr @.str.20, ptr @virtscsi_kick_event.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_scsi_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_cmd_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_cmd_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_init_vq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_kick_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_handle_transport_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_handle_transport_reset._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtscsi_handle_param_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_scsi_driver) #10
  %0 = load ptr, ptr @virtscsi_cmd_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #10
  %1 = load ptr, ptr @virtscsi_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.30, i32 noundef 256, i32 noundef 128, i32 noundef 0, ptr noundef null) #10
  store ptr %call, ptr @virtscsi_cmd_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.error.sink.split_crit_edge, label %if.end

entry.error.sink.split_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.sink.split

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #10
  store ptr %call.i, ptr @virtscsi_cmd_pool, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.error.sink.split_crit_edge, label %if.end10

if.end.error.sink.split_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.sink.split

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_scsi_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.error_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

error.sink.split:                                 ; preds = %if.end.error.sink.split_crit_edge, %entry.error.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.31, %entry.error.sink.split_crit_edge ], [ @.str.34, %if.end.error.sink.split_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink) #13
  br label %error

error:                                            ; preds = %error.sink.split, %if.end10.error_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.error_crit_edge ], [ -12, %error.sink.split ]
  %0 = load ptr, ptr @virtscsi_cmd_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #10
  store ptr null, ptr @virtscsi_cmd_pool, align 4
  %1 = load ptr, ptr @virtscsi_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  store ptr null, ptr @virtscsi_cmd_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  %virtio_cread_v23 = alloca i16, align 2
  %virtio_cread_v49 = alloca i32, align 4
  %virtio_cread_v83 = alloca i32, align 4
  %virtio_cread_v118 = alloca i32, align 4
  %virtio_cread_v143 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #10
  %4 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !104
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 857) #10
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 8
  %get9 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %get9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get9, align 4
  call void %8(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #10
  %9 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virtio_cread_v, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %11 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %12, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %13 = call i32 @llvm.bswap.i32(i32 %10) #10
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %10, i32 %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool13.not = icmp eq i32 %retval.0.i.i, 0
  %cond = select i1 %tobool13.not, i32 1, i32 %retval.0.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %cond)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v23) #10
  %16 = ptrtoint ptr %virtio_cread_v23 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %virtio_cread_v23, align 2, !annotation !104
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 860) #10
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 8
  %get36 = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %get36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get36, align 4
  call void %20(ptr noundef %vdev, i32 noundef 30, ptr noundef nonnull %virtio_cread_v23, i32 noundef 2) #10
  %21 = ptrtoint ptr %virtio_cread_v23 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %virtio_cread_v23, align 2
  %23 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i243 = and i64 %24, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i243)
  %tobool13.i.i.i.not.i244 = icmp eq i64 %and.i.i.i.i243, 0
  %25 = call i16 @llvm.bswap.i16(i16 %22) #10
  %retval.0.i.i245 = select i1 %tobool13.i.i.i.not.i244, i16 %22, i16 %25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v23) #10
  %conv41 = zext i16 %retval.0.i.i245 to i32
  %add = add nuw nsw i32 %conv41, 1
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 48) #10
  %27 = extractvalue { i32, i1 } %26, 1
  %28 = extractvalue { i32, i1 } %26, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %28, i32 628) #10
  %retval.0.i = select i1 %27, i32 -1, i32 %spec.select.i
  %call43 = call ptr @scsi_host_alloc(ptr noundef nonnull @virtscsi_host_template, i32 noundef %retval.0.i) #10
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end.cleanup_crit_edge, label %if.end46

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v49) #10
  %29 = ptrtoint ptr %virtio_cread_v49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %virtio_cread_v49, align 4, !annotation !104
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 867) #10
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 8
  %get62 = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %get62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get62, align 4
  call void %33(ptr noundef %vdev, i32 noundef 4, ptr noundef nonnull %virtio_cread_v49, i32 noundef 4) #10
  %34 = ptrtoint ptr %virtio_cread_v49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virtio_cread_v49, align 4
  %36 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i247 = and i64 %37, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i247)
  %tobool13.i.i.i.not.i248 = icmp eq i64 %and.i.i.i.i247, 0
  %38 = call i32 @llvm.bswap.i32(i32 %35) #10
  %retval.0.i.i249 = select i1 %tobool13.i.i.i.not.i248, i32 %35, i32 %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i249)
  %tobool67.not = icmp eq i32 %retval.0.i.i249, 0
  %39 = trunc i32 %retval.0.i.i249 to i16
  %conv72 = select i1 %tobool67.not, i16 1, i16 %39
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 28
  %40 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv72, ptr %sg_tablesize, align 2
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 53
  %41 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %vdev, ptr %hostdata.i, align 4
  %num_queues75 = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 1, i32 35
  %42 = ptrtoint ptr %num_queues75 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %15, ptr %num_queues75, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call43, ptr %priv, align 8
  %call76 = call fastcc i32 @virtscsi_init(ptr noundef %vdev, ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end46.virtscsi_init_failed_crit_edge

if.end46.virtscsi_init_failed_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_init_failed

if.end79:                                         ; preds = %if.end46
  %vq = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %44 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vq, align 4
  %call80 = call i32 @virtqueue_get_vring_size(ptr noundef %45) #10
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 26
  %46 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call80, ptr %can_queue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v83) #10
  %47 = ptrtoint ptr %virtio_cread_v83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %virtio_cread_v83, align 4, !annotation !104
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 880) #10
  %48 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config, align 8
  %get96 = getelementptr inbounds %struct.virtio_config_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %get96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get96, align 4
  call void %51(ptr noundef %vdev, i32 noundef 12, ptr noundef nonnull %virtio_cread_v83, i32 noundef 4) #10
  %52 = ptrtoint ptr %virtio_cread_v83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virtio_cread_v83, align 4
  %54 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i251 = and i64 %55, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i251)
  %tobool13.i.i.i.not.i252 = icmp eq i64 %and.i.i.i.i251, 0
  %56 = call i32 @llvm.bswap.i32(i32 %53) #10
  %retval.0.i.i253 = select i1 %tobool13.i.i.i.not.i252, i32 %53, i32 %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i253)
  %tobool101.not = icmp eq i32 %retval.0.i.i253, 0
  %cond105 = select i1 %tobool101.not, i32 1, i32 %retval.0.i.i253
  %57 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %can_queue, align 4
  %59 = call i32 @llvm.umin.i32(i32 %cond105, i32 %58)
  %conv114 = trunc i32 %59 to i16
  %cmd_per_lun115 = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 27
  %60 = ptrtoint ptr %cmd_per_lun115 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv114, ptr %cmd_per_lun115, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v118) #10
  %61 = ptrtoint ptr %virtio_cread_v118 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %virtio_cread_v118, align 4, !annotation !104
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 882) #10
  %62 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config, align 8
  %get131 = getelementptr inbounds %struct.virtio_config_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %get131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get131, align 4
  call void %65(ptr noundef %vdev, i32 noundef 8, ptr noundef nonnull %virtio_cread_v118, i32 noundef 4) #10
  %66 = ptrtoint ptr %virtio_cread_v118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %virtio_cread_v118, align 4
  %68 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i255 = and i64 %69, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i255)
  %tobool13.i.i.i.not.i256 = icmp eq i64 %and.i.i.i.i255, 0
  %70 = call i32 @llvm.bswap.i32(i32 %67) #10
  %retval.0.i.i257 = select i1 %tobool13.i.i.i.not.i256, i32 %67, i32 %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i257)
  %tobool136.not = icmp eq i32 %retval.0.i.i257, 0
  %cond140 = select i1 %tobool136.not, i32 65535, i32 %retval.0.i.i257
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 30
  %71 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond140, ptr %max_sectors, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v143) #10
  %72 = ptrtoint ptr %virtio_cread_v143 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %virtio_cread_v143, align 4, !annotation !104
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 887) #10
  %73 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config, align 8
  %get156 = getelementptr inbounds %struct.virtio_config_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %get156 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get156, align 4
  call void %76(ptr noundef %vdev, i32 noundef 32, ptr noundef nonnull %virtio_cread_v143, i32 noundef 4) #10
  %77 = ptrtoint ptr %virtio_cread_v143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %virtio_cread_v143, align 4
  %79 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i259 = and i64 %80, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i259)
  %tobool13.i.i.i.not.i260 = icmp eq i64 %and.i.i.i.i259, 0
  %81 = call i32 @llvm.bswap.i32(i32 %78) #10
  %retval.0.i.i261 = select i1 %tobool13.i.i.i.not.i260, i32 %78, i32 %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v143) #10
  %add162 = add i32 %retval.0.i.i261, 16385
  %conv163 = zext i32 %add162 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 22
  %82 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv163, ptr %max_lun, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 21
  %83 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add, ptr %max_id, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 20
  %84 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %max_channel, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 24
  %85 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 32, ptr %max_cmd_len, align 4
  %nr_hw_queues = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 34
  %86 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %15, ptr %nr_hw_queues, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 3) #10
  %87 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i = and i64 %88, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end79.if.end166_crit_edge, label %if.then165

if.end79.if.end166_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then165:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 41
  %89 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 119, ptr %prot_capabilities.i, align 4
  %prot_guard_type.i = getelementptr inbounds %struct.Scsi_Host, ptr %call43, i32 0, i32 42
  %90 = ptrtoint ptr %prot_guard_type.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %prot_guard_type.i, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end79.if.end166_crit_edge
  %dev167 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call43, ptr noundef %dev167, ptr noundef %dev167) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool169.not = icmp eq i32 %call.i, 0
  %91 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config, align 8
  br i1 %tobool169.not, label %if.end171, label %scsi_add_host_failed

if.end171:                                        ; preds = %if.end166
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %get_status.i, align 4
  %call.i262 = call zeroext i8 %94(ptr noundef %vdev) #10
  %95 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %tobool.not.i = icmp eq ptr %98, null
  br i1 %tobool.not.i, label %if.end171.do.body.i_crit_edge, label %if.then.i

if.end171.do.body.i_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then.i:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  call void %98(ptr noundef %vdev) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end171.do.body.i_crit_edge
  %99 = and i8 %call.i262, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool4.not.i = icmp eq i8 %99, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !105

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %100 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i262, 4
  call void %103(ptr noundef %vdev, i8 noundef zeroext %or.i) #10
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #10
  %104 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i265 = and i64 %105, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i265)
  %tobool13.i.i266.not = icmp eq i64 %and.i.i265, 0
  br i1 %tobool13.i.i266.not, label %virtio_device_ready.exit.if.end175_crit_edge, label %if.then173

virtio_device_ready.exit.if.end175_crit_edge:     ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then173:                                       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %hostdata.i, ptr %arrayidx.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.i) #10
  %arrayidx.1.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 4
  %107 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %hostdata.i, ptr %arrayidx.1.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.1.i) #10
  %arrayidx.2.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 5, i32 4
  %108 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %hostdata.i, ptr %arrayidx.2.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.2.i) #10
  %arrayidx.3.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %hostdata.i, ptr %arrayidx.3.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.3.i) #10
  %arrayidx.4.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 13, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %hostdata.i, ptr %arrayidx.4.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.4.i) #10
  %arrayidx.5.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 13, i32 11
  %111 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %hostdata.i, ptr %arrayidx.5.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.5.i) #10
  %arrayidx.6.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 13, i32 13, i32 3, i32 1
  %112 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %hostdata.i, ptr %arrayidx.6.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.6.i) #10
  %arrayidx.7.i = getelementptr %struct.Scsi_Host, ptr %call43, i32 1, i32 19
  %113 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %hostdata.i, ptr %arrayidx.7.i, align 4
  call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.7.i) #10
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %virtio_device_ready.exit.if.end175_crit_edge
  call void @scsi_scan_host(ptr noundef nonnull %call43) #10
  br label %cleanup

scsi_add_host_failed:                             ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %92, i32 0, i32 8
  %114 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %del_vqs, align 4
  call void %115(ptr noundef %vdev) #10
  br label %virtscsi_init_failed

virtscsi_init_failed:                             ; preds = %scsi_add_host_failed, %if.end46.virtscsi_init_failed_crit_edge
  %err.0 = phi i32 [ %call76, %if.end46.virtscsi_init_failed_crit_edge ], [ %call.i, %scsi_add_host_failed ]
  call void @scsi_host_put(ptr noundef nonnull %call43) #10
  br label %cleanup

cleanup:                                          ; preds = %virtscsi_init_failed, %if.end175, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %virtscsi_init_failed ], [ 0, %if.end175 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #10
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %event_vq.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 48
  tail call void @_raw_spin_lock_irq(ptr noundef %event_vq.i) #10
  %stop_events.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 37, i32 6
  %4 = ptrtoint ptr %stop_events.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %stop_events.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_vq.i) #10
  %work.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 3
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #10
  %work.1.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 3
  %call.1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.1.i) #10
  %work.2.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 3
  %call.2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.2.i) #10
  %work.3.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 2
  %call.3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.3.i) #10
  %work.4.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2, i32 2
  %call.4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.4.i) #10
  %work.5.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %call.5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.5.i) #10
  %work.6.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 5, i32 2
  %call.6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.6.i) #10
  %work.7.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 23
  %call.7.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.7.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @scsi_remove_host(ptr noundef %1) #10
  tail call void @virtio_reset_device(ptr noundef %vdev) #10
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del_vqs.i, align 4
  tail call void %8(ptr noundef %vdev) #10
  tail call void @scsi_host_put(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_reset_device(ptr noundef %vdev) #10
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %del_vqs.i, align 4
  tail call void %3(ptr noundef %vdev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_restore(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call2 = tail call fastcc i32 @virtscsi_init(ptr noundef %vdev, ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %call.i = tail call zeroext i8 %5(ptr noundef %vdev) #10
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %vdev) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %10 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !105

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  tail call void %14(ptr noundef %vdev, i8 noundef zeroext %or.i) #10
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #10
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %15 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %virtio_device_ready.exit.cleanup_crit_edge, label %if.then4

virtio_device_ready.exit.cleanup_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hostdata.i, ptr %arrayidx.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.i) #10
  %arrayidx.1.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hostdata.i, ptr %arrayidx.1.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.1.i) #10
  %arrayidx.2.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 4
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hostdata.i, ptr %arrayidx.2.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.2.i) #10
  %arrayidx.3.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hostdata.i, ptr %arrayidx.3.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.3.i) #10
  %arrayidx.4.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %hostdata.i, ptr %arrayidx.4.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.4.i) #10
  %arrayidx.5.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 11
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hostdata.i, ptr %arrayidx.5.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.5.i) #10
  %arrayidx.6.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hostdata.i, ptr %arrayidx.6.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.6.i) #10
  %arrayidx.7.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 19
  %24 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hostdata.i, ptr %arrayidx.7.i, align 4
  tail call fastcc void @virtscsi_kick_event(ptr noundef %hostdata.i, ptr noundef %arrayidx.7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %virtio_device_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtscsi_init(ptr noundef %vdev, ptr noundef %vscsi) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.irq_affinity, align 4
  %virtio_cwrite_v = alloca i32, align 4
  %virtio_cwrite_v39 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %desc) #10
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %desc, align 4
  %num_queues = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 2
  %3 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_queues, align 4
  %add = add i32 %4, 2
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.out_crit_edge, label %if.end7.i164, !prof !107

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7.i164:                                     ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #14
  %call8.i130 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #14
  %call8.i163 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call8.i130, null
  %tobool3.not = icmp eq ptr %call8.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call8.i163, null
  %or.cond100 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond100, label %if.end7.i164.out_crit_edge, label %if.end

if.end7.i164.out_crit_edge:                       ; preds = %if.end7.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %if.end7.i164
  %8 = ptrtoint ptr %call8.i130 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @virtscsi_ctrl_done, ptr %call8.i130, align 128
  %arrayidx6 = getelementptr ptr, ptr %call8.i130, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtscsi_event_done, ptr %arrayidx6, align 4
  %10 = ptrtoint ptr %call8.i163 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.17, ptr %call8.i163, align 128
  %arrayidx8 = getelementptr ptr, ptr %call8.i163, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.18, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp194 = icmp ugt i32 %add, 2
  br i1 %cmp194, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0195 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 2, %if.end.for.body_crit_edge ]
  %arrayidx9 = getelementptr ptr, ptr %call8.i130, i32 %i.0195
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @virtscsi_req_done, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr ptr, ptr %call8.i163, i32 %i.0195
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.19, ptr %arrayidx10, align 4
  %inc = add nuw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %17(ptr noundef %vdev, i32 noundef %add, ptr noundef %call8.i, ptr noundef %call8.i130, ptr noundef %call8.i163, ptr noundef null, ptr noundef nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %for.end
  %ctrl_vq = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 5
  %18 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call8.i, align 128
  call void @__raw_spin_lock_init(ptr noundef %ctrl_vq, ptr noundef nonnull @.str.20, ptr noundef nonnull @virtscsi_init_vq.__key, i16 noundef signext 3) #10
  %vq1.i = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %vq1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %vq1.i, align 4
  %event_vq = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 6
  %arrayidx16 = getelementptr ptr, ptr %call8.i, i32 1
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx16, align 4
  call void @__raw_spin_lock_init(ptr noundef %event_vq, ptr noundef nonnull @.str.20, ptr noundef nonnull @virtscsi_init_vq.__key, i16 noundef signext 3) #10
  %vq1.i167 = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %vq1.i167 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %vq1.i167, align 4
  br i1 %cmp194, label %if.end14.for.body19_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end14.for.body19_crit_edge:                    ; preds = %if.end14
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.end14.for.body19_crit_edge
  %i.1197 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ 2, %if.end14.for.body19_crit_edge ]
  %sub = add i32 %i.1197, -2
  %arrayidx20 = getelementptr %struct.virtio_scsi, ptr %vscsi, i32 0, i32 7, i32 %sub
  %arrayidx21 = getelementptr ptr, ptr %call8.i, i32 %i.1197
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21, align 4
  call void @__raw_spin_lock_init(ptr noundef %arrayidx20, ptr noundef nonnull @.str.20, ptr noundef nonnull @virtscsi_init_vq.__key, i16 noundef signext 3) #10
  %vq1.i168 = getelementptr %struct.virtio_scsi, ptr %vscsi, i32 0, i32 7, i32 %sub, i32 1
  %26 = ptrtoint ptr %vq1.i168 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %vq1.i168, align 4
  %inc23 = add nuw i32 %i.1197, 1
  %exitcond198.not = icmp eq i32 %inc23, %add
  br i1 %exitcond198.not, label %for.body19.do.body_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

for.body19.do.body_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.body19.do.body_crit_edge, %if.end14.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v) #10
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %27 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %28, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 32, i32 536870912
  %29 = ptrtoint ptr %virtio_cwrite_v to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %virtio_cwrite_v, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 827) #10
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 8
  %set = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set, align 4
  call void %33(ptr noundef %vdev, i32 noundef 24, ptr noundef nonnull %virtio_cwrite_v, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v39) #10
  %34 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i170 = and i64 %35, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i170)
  %tobool13.i.i.i.not.i171 = icmp eq i64 %and.i.i.i.i170, 0
  %retval.0.i.i172 = select i1 %tobool13.i.i.i.not.i171, i32 96, i32 1610612736
  %36 = ptrtoint ptr %virtio_cwrite_v39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i172, ptr %virtio_cwrite_v39, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 828) #10
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 8
  %set53 = getelementptr inbounds %struct.virtio_config_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %set53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set53, align 4
  call void %40(ptr noundef %vdev, i32 noundef 20, ptr noundef nonnull %virtio_cwrite_v39, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v39) #10
  br label %out

out:                                              ; preds = %do.body, %for.end.out_crit_edge, %if.end7.i164.out_crit_edge, %entry.out_crit_edge
  %retval.0.i165193 = phi ptr [ %call8.i163, %for.end.out_crit_edge ], [ %call8.i163, %do.body ], [ %call8.i163, %if.end7.i164.out_crit_edge ], [ null, %entry.out_crit_edge ]
  %retval.0.i176180192 = phi ptr [ %call8.i, %for.end.out_crit_edge ], [ %call8.i, %do.body ], [ %call8.i, %if.end7.i164.out_crit_edge ], [ null, %entry.out_crit_edge ]
  %retval.0.i132182191 = phi ptr [ %call8.i130, %for.end.out_crit_edge ], [ %call8.i130, %do.body ], [ %call8.i130, %if.end7.i164.out_crit_edge ], [ null, %entry.out_crit_edge ]
  %err.0 = phi i32 [ %call.i, %for.end.out_crit_edge ], [ 0, %do.body ], [ -12, %if.end7.i164.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i165193) #10
  call void @kfree(ptr noundef %retval.0.i132182191) #10
  call void @kfree(ptr noundef %retval.0.i176180192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool58.not = icmp eq i32 %err.0, 0
  br i1 %tobool58.not, label %out.if.end60_crit_edge, label %if.then59

out.if.end60_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @virtio_reset_device(ptr noundef %vdev) #10
  %config.i173 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %41 = ptrtoint ptr %config.i173 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i173, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %del_vqs.i, align 4
  call void %44(ptr noundef %vdev) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %out.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %desc) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_queuecommand(ptr noundef %shost, ptr noundef %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %add.ptr.i.i.i = getelementptr i8, ptr %sc, i32 -192
  %call1.i = tail call i32 @blk_mq_unique_tag(ptr noundef %add.ptr.i.i.i) #10
  %shr.i.i = lshr i32 %call1.i, 16
  %arrayidx.i = getelementptr %struct.virtio_scsi, ptr %hostdata.i, i32 0, i32 7, i32 %shr.i.i
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents.i, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 28
  %2 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sg_tablesize, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %do.body6, label %do.body12, !prof !107

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/virtio_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.body12:                                        ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 15
  %4 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13 = icmp eq i32 %5, 0
  br i1 %cmp13, label %do.body22, label %do.body31, !prof !107

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/virtio_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

do.body31:                                        ; preds = %do.body12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtscsi_queuecommand.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtscsi_queuecommand, %if.then40)) #10
          to label %do.end44 [label %if.then40], !srcloc !110

if.then40:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %8 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmnd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv41 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @virtscsi_queuecommand.__UNIQUE_ID_ddebug293, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.8, ptr noundef %sc, i32 noundef %conv41) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body31
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sc, ptr %add.ptr.i, align 128
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 14
  %13 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %14)
  %cmp48 = icmp ugt i16 %14, 32
  br i1 %cmp48, label %do.body57, label %do.end65, !prof !107

do.body57:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/virtio_scsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 574, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

do.end65:                                         ; preds = %do.end44
  %15 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hostdata.i, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %16, i32 noundef 3) #10
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %18, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  %19 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hostdata.i, align 4
  %req74 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %21 = ptrtoint ptr %req74 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %req74, align 1
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 8
  %conv.i = trunc i32 %25 to i8
  %arrayidx2.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %lun4.i = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 18
  %27 = ptrtoint ptr %lun4.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lun4.i, align 8
  %shr.i = lshr i64 %28, 8
  %29 = trunc i64 %shr.i to i8
  %conv5.i = or i8 %29, 64
  %arrayidx7.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 10
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv5.i, ptr %arrayidx7.i, align 1
  %31 = load i64, ptr %lun4.i, align 8
  %conv10.i = trunc i64 %31 to i8
  %arrayidx12.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 11
  %32 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %33 = ptrtoint ptr %sc to i32
  %conv13.i = zext i32 %33 to i64
  %features.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 11
  %34 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i147 = and i64 %35, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i147)
  %tobool13.i.i.i.not.i.i148 = icmp eq i64 %and.i.i.i.i.i147, 0
  %36 = tail call i64 @llvm.bswap.i64(i64 %conv13.i) #10
  %retval.0.i.i.i149 = select i1 %tobool13.i.i.i.not.i.i148, i64 %conv13.i, i64 %36
  %tag.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %tag.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %retval.0.i.i.i149, ptr %tag.i, align 1
  %task_attr.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %task_attr.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %task_attr.i, align 1
  %prio.i = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %req74, i32 0, i32 3
  %39 = ptrtoint ptr %prio.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %prio.i, align 1
  %crn.i = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %req74, i32 0, i32 4
  %40 = ptrtoint ptr %crn.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %crn.i, align 1
  br i1 %tobool13.i.i.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %do.end65
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %if.then67.virtio_scsi_init_hdr_pi.exit_crit_edge, label %lor.lhs.false.i

if.then67.virtio_scsi_init_hdr_pi.exit_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtio_scsi_init_hdr_pi.exit

lor.lhs.false.i:                                  ; preds = %if.then67
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 18
  %41 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.virtio_scsi_init_hdr_pi.exit_crit_edge, label %scsi_prot_sg_count.exit.i

lor.lhs.false.i.virtio_scsi_init_hdr_pi.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtio_scsi_init_hdr_pi.exit

scsi_prot_sg_count.exit.i:                        ; preds = %lor.lhs.false.i
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.i = icmp eq i32 %44, 0
  br i1 %tobool2.not.i, label %scsi_prot_sg_count.exit.i.virtio_scsi_init_hdr_pi.exit_crit_edge, label %if.end.i

scsi_prot_sg_count.exit.i.virtio_scsi_init_hdr_pi.exit_crit_edge: ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtio_scsi_init_hdr_pi.exit

if.end.i:                                         ; preds = %scsi_prot_sg_count.exit.i
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disk.i, align 8
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue.i.i, align 4
  %integrity.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %integrity.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %integrity.i.i, align 4
  %tobool.not.i29.i = icmp eq ptr %52, null
  %.integrity.i.i = select i1 %tobool.not.i29.i, ptr null, ptr %integrity.i.i
  %53 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sc_data_direction, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %if.end.i.virtio_scsi_init_hdr_pi.exit_crit_edge [
    i32 1, label %if.then4.i
    i32 2, label %if.then10.i
  ]

if.end.i.virtio_scsi_init_hdr_pi.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtio_scsi_init_hdr_pi.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %__data_len.i.i.i = getelementptr i8, ptr %sc, i32 -160
  %56 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i30.i = lshr i32 %57, 9
  %interval_exp.i.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %interval_exp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %interval_exp.i.i.i, align 2
  %conv.i.i.i = zext i8 %59 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -9
  %shr.i.i.i = lshr i32 %shr.i30.i, %sub.i.i.i
  %tuple_size.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %tuple_size.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tuple_size.i.i, align 1
  %conv.i31.i = zext i8 %61 to i32
  %mul.i.i = mul nuw nsw i32 %shr.i.i.i, %conv.i31.i
  %62 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %63, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i = icmp eq i64 %and.i.i.i.i.i, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %mul.i.i) #10
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i.i, i32 %mul.i.i, i32 %64
  %pi_bytesout.i = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %req74, i32 0, i32 5
  %65 = ptrtoint ptr %pi_bytesout.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %retval.0.i.i.i, ptr %pi_bytesout.i, align 1
  br label %virtio_scsi_init_hdr_pi.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %__data_len.i.i32.i = getelementptr i8, ptr %sc, i32 -160
  %66 = ptrtoint ptr %__data_len.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %__data_len.i.i32.i, align 8
  %shr.i33.i = lshr i32 %67, 9
  %interval_exp.i.i34.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %interval_exp.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %interval_exp.i.i34.i, align 2
  %conv.i.i35.i = zext i8 %69 to i32
  %sub.i.i36.i = add nsw i32 %conv.i.i35.i, -9
  %shr.i.i37.i = lshr i32 %shr.i33.i, %sub.i.i36.i
  %tuple_size.i38.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %tuple_size.i38.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tuple_size.i38.i, align 1
  %conv.i39.i = zext i8 %71 to i32
  %mul.i40.i = mul nuw nsw i32 %shr.i.i37.i, %conv.i39.i
  %72 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i42.i = and i64 %73, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i42.i)
  %tobool13.i.i.i.not.i43.i = icmp eq i64 %and.i.i.i.i42.i, 0
  %74 = tail call i32 @llvm.bswap.i32(i32 %mul.i40.i) #10
  %retval.0.i.i44.i = select i1 %tobool13.i.i.i.not.i43.i, i32 %mul.i40.i, i32 %74
  %pi_bytesin.i = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %req74, i32 0, i32 6
  %75 = ptrtoint ptr %pi_bytesin.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %retval.0.i.i44.i, ptr %pi_bytesin.i, align 1
  br label %virtio_scsi_init_hdr_pi.exit

virtio_scsi_init_hdr_pi.exit:                     ; preds = %if.then10.i, %if.then4.i, %if.end.i.virtio_scsi_init_hdr_pi.exit_crit_edge, %scsi_prot_sg_count.exit.i.virtio_scsi_init_hdr_pi.exit_crit_edge, %lor.lhs.false.i.virtio_scsi_init_hdr_pi.exit_crit_edge, %if.then67.virtio_scsi_init_hdr_pi.exit_crit_edge
  %cdb = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %add.ptr.i, i32 0, i32 2, i32 1, i32 3
  br label %if.end81

if.else:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  %cdb76 = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %req74, i32 0, i32 5
  br label %if.end81

if.end81:                                         ; preds = %if.else, %virtio_scsi_init_hdr_pi.exit
  %cdb76.sink = phi ptr [ %cdb76, %if.else ], [ %cdb, %virtio_scsi_init_hdr_pi.exit ]
  %req_size.0 = phi i32 [ 51, %if.else ], [ 59, %virtio_scsi_init_hdr_pi.exit ]
  %cmnd78 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %76 = ptrtoint ptr %cmnd78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmnd78, align 4
  %78 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cmd_len, align 4
  %conv80 = zext i16 %79 to i32
  %80 = call ptr @memcpy(ptr %cdb76.sink, ptr %77, i32 %conv80)
  %flags82 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 25
  %81 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags82, align 4
  %and = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp83 = icmp ne i32 %and, 0
  %call87 = tail call fastcc i32 @virtscsi_add_cmd(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i, i32 noundef %req_size.0, i32 noundef 108, i1 noundef zeroext %cmp83)
  %83 = zext i32 %call87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call87, label %if.end81.cleanup_crit_edge [
    i32 -5, label %if.then90
    i32 0, label %if.end81.if.end108_crit_edge
  ]

if.end81.if.end108_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %response = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %add.ptr.i, i32 0, i32 3, i32 0, i32 4
  %84 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %response, align 1
  %call97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #10
  tail call void @virtscsi_complete_cmd(ptr noundef %hostdata.i, ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call97) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then90, %if.end81.if.end108_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end81.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end108 ], [ 4181, %if.end81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_commit_rqs(ptr noundef %shost, i16 noundef zeroext %hwq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %idxprom = zext i16 %hwq to i32
  %arrayidx = getelementptr %struct.virtio_scsi, ptr %hostdata.i, i32 0, i32 7, i32 %idxprom
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #10
  %vq5.i = getelementptr %struct.virtio_scsi, ptr %hostdata.i, i32 0, i32 7, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %vq5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq5.i, align 4
  %call6.i = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call2.i) #10
  br i1 %call6.i, label %if.then.i, label %entry.virtscsi_kick_vq.exit_crit_edge

entry.virtscsi_kick_vq.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_kick_vq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vq5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vq5.i, align 4
  %call9.i = tail call zeroext i1 @virtqueue_notify(ptr noundef %3) #10
  br label %virtscsi_kick_vq.exit

virtscsi_kick_vq.exit:                            ; preds = %if.then.i, %entry.virtscsi_kick_vq.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_abort(ptr noundef %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.13, ptr noundef %sc, ptr noundef nonnull @.str.14) #10
  %4 = load ptr, ptr @virtscsi_cmd_pool, align 4
  %call1 = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 3072) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %5 = call ptr @memset(ptr %call1, i32 0, i32 256)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %conv = trunc i32 %9 to i8
  %lun5 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %lun5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun5, align 8
  %shr = lshr i64 %11, 8
  %12 = trunc i64 %shr to i8
  %conv6 = or i8 %12, 64
  %conv10 = trunc i64 %11 to i8
  %13 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hostdata.i, align 4
  %15 = ptrtoint ptr %sc to i32
  %conv12 = zext i32 %15 to i64
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %14, i32 0, i32 11
  %16 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %17, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %18 = call i64 @llvm.bswap.i64(i64 %conv12) #10
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i64 %conv12, i64 %18
  %.compoundliteral.sroa.3.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call1, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %.compoundliteral.sroa.3.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %.compoundliteral.sroa.3.0.req.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call1, i32 0, i32 2, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.4.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %.compoundliteral.sroa.4.0.req.sroa_idx, align 1
  %.compoundliteral.sroa.5.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call1, i32 0, i32 2, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %.compoundliteral.sroa.5.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv6, ptr %.compoundliteral.sroa.5.0.req.sroa_idx, align 2
  %.compoundliteral.sroa.6.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call1, i32 0, i32 2, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %.compoundliteral.sroa.6.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv10, ptr %.compoundliteral.sroa.6.0.req.sroa_idx, align 1
  %.compoundliteral.sroa.8.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call1, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %.compoundliteral.sroa.8.0.req.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %retval.0.i.i, ptr %.compoundliteral.sroa.8.0.req.sroa_idx, align 8
  %call14 = call fastcc i32 @virtscsi_tmf(ptr noundef %hostdata.i, ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_device_reset(ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.16) #10
  %4 = load ptr, ptr @virtscsi_cmd_pool, align 4
  %call2 = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 3072) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %5 = call ptr @memset(ptr %call2, i32 0, i32 256)
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %9, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 5, i32 83886080
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %conv = trunc i32 %13 to i8
  %lun7 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 18
  %14 = ptrtoint ptr %lun7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lun7, align 8
  %shr = lshr i64 %15, 8
  %16 = trunc i64 %shr to i8
  %conv8 = or i8 %16, 64
  %conv12 = trunc i64 %15 to i8
  %.compoundliteral.sroa.2.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %.compoundliteral.sroa.2.0.req.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.i, ptr %.compoundliteral.sroa.2.0.req.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %.compoundliteral.sroa.3.0.req.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.4.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %.compoundliteral.sroa.4.0.req.sroa_idx, align 1
  %.compoundliteral.sroa.5.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %.compoundliteral.sroa.5.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %.compoundliteral.sroa.5.0.req.sroa_idx, align 2
  %.compoundliteral.sroa.6.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %.compoundliteral.sroa.6.0.req.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12, ptr %.compoundliteral.sroa.6.0.req.sroa_idx, align 1
  %.compoundliteral.sroa.8.0.req.sroa_idx = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call2, i32 0, i32 2, i32 0, i32 3
  %22 = ptrtoint ptr %.compoundliteral.sroa.8.0.req.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %.compoundliteral.sroa.8.0.req.sroa_idx, align 8
  %call14 = call fastcc i32 @virtscsi_tmf(ptr noundef %hostdata.i, ptr noundef nonnull %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @virtscsi_device_alloc(ptr nocapture noundef writeonly %sdevice) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, ptr %sdevice, i32 0, i32 39
  %0 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 268435456, ptr %sdev_bflags, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_change_queue_depth(ptr noundef %sdev, i32 noundef %qdepth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_per_lun, align 8
  %conv = sext i16 %3 to i32
  %4 = tail call i32 @llvm.smin.i32(i32 %conv, i32 %qdepth)
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %4) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtscsi_map_queues(ptr noundef %shost) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 4
  %call1 = tail call i32 @blk_mq_virtio_map_queues(ptr noundef %tag_set, ptr noundef %1, i32 noundef 2) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtscsi_eh_timed_out(ptr nocapture noundef readnone %scmnd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtscsi_add_cmd(ptr noundef %vq, ptr noundef %cmd, i32 noundef %req_size, i32 noundef %resp_size, i1 noundef zeroext %kick) unnamed_addr #2 align 64 {
entry:
  %sgs.i = alloca [6 x ptr], align 4
  %req.i = alloca %struct.scatterlist, align 4
  %resp.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vq) #10
  %vq5 = getelementptr inbounds %struct.virtio_scsi_vq, ptr %vq, i32 0, i32 1
  %0 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq5, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sgs.i) #10
  %4 = getelementptr inbounds [6 x ptr], ptr %sgs.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %4, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %6 = call ptr @memset(ptr %req.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp.i) #10
  %tobool.not.i = icmp eq ptr %3, null
  %7 = call ptr @memset(ptr %resp.i, i32 255, i32 20)
  br i1 %tobool.not.i, label %entry.if.end11.i_crit_edge, label %land.lhs.true.i

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %entry
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_data_direction.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %9, label %if.then4.i [
    i32 3, label %land.lhs.true.i.if.end11.i_crit_edge
    i32 2, label %land.lhs.true.i.if.end.i_crit_edge
  ]

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %land.lhs.true.i.if.end.i_crit_edge
  %out.0.i = phi ptr [ %sdb.i, %if.then4.i ], [ null, %land.lhs.true.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6.not.i = icmp eq i32 %9, 1
  %sdb8.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %spec.select.i = select i1 %cmp6.not.i, ptr null, ptr %sdb8.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %land.lhs.true.i.if.end11.i_crit_edge, %entry.if.end11.i_crit_edge
  %out.1.i = phi ptr [ null, %land.lhs.true.i.if.end11.i_crit_edge ], [ null, %entry.if.end11.i_crit_edge ], [ %out.0.i, %if.end.i ]
  %in.0.i = phi ptr [ null, %land.lhs.true.i.if.end11.i_crit_edge ], [ null, %entry.if.end11.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %req12.i = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %cmd, i32 0, i32 2
  call void @sg_init_one(ptr noundef nonnull %req.i, ptr noundef %req12.i, i32 noundef %req_size) #10
  %11 = ptrtoint ptr %sgs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req.i, ptr %sgs.i, align 4
  %tobool13.not.i = icmp eq ptr %out.1.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end23.i_crit_edge, label %if.then14.i

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then14.i:                                      ; preds = %if.end11.i
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then14.i.if.end20.i_crit_edge, label %scsi_prot_sg_count.exit.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

scsi_prot_sg_count.exit.i:                        ; preds = %if.then14.i
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not.i = icmp eq i32 %15, 0
  br i1 %tobool15.not.i, label %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge, label %scsi_prot_sglist.exit.i

scsi_prot_sg_count.exit.i.if.end20.i_crit_edge:   ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

scsi_prot_sglist.exit.i:                          ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %4, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %scsi_prot_sglist.exit.i, %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge, %if.then14.i.if.end20.i_crit_edge
  %out_num.0.i = phi i32 [ 2, %scsi_prot_sglist.exit.i ], [ 1, %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge ], [ 1, %if.then14.i.if.end20.i_crit_edge ]
  %19 = ptrtoint ptr %out.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %out.1.i, align 4
  %inc21.i = add nuw nsw i32 %out_num.0.i, 1
  %arrayidx22.i = getelementptr [6 x ptr], ptr %sgs.i, i32 0, i32 %out_num.0.i
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %if.end11.i.if.end23.i_crit_edge
  %out_num.1.i = phi i32 [ %inc21.i, %if.end20.i ], [ 1, %if.end11.i.if.end23.i_crit_edge ]
  %resp24.i = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %cmd, i32 0, i32 3
  call void @sg_init_one(ptr noundef nonnull %resp.i, ptr noundef %resp24.i, i32 noundef %resp_size) #10
  %arrayidx26.i = getelementptr [6 x ptr], ptr %sgs.i, i32 0, i32 %out_num.1.i
  %22 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resp.i, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %in.0.i, null
  br i1 %tobool27.not.i, label %if.end23.i.__virtscsi_add_cmd.exit_crit_edge, label %if.then28.i

if.end23.i.__virtscsi_add_cmd.exit_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__virtscsi_add_cmd.exit

if.then28.i:                                      ; preds = %if.end23.i
  %prot_sdb.i71.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %prot_sdb.i71.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prot_sdb.i71.i, align 4
  %tobool.not.i72.i = icmp eq ptr %24, null
  br i1 %tobool.not.i72.i, label %if.then28.i.if.end36.i_crit_edge, label %scsi_prot_sg_count.exit76.i

if.then28.i.if.end36.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

scsi_prot_sg_count.exit76.i:                      ; preds = %if.then28.i
  %nents.i73.i = getelementptr inbounds %struct.sg_table, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nents.i73.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nents.i73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not.i = icmp eq i32 %26, 0
  br i1 %tobool30.not.i, label %scsi_prot_sg_count.exit76.i.if.end36.i_crit_edge, label %scsi_prot_sglist.exit81.i

scsi_prot_sg_count.exit76.i.if.end36.i_crit_edge: ; preds = %scsi_prot_sg_count.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

scsi_prot_sglist.exit81.i:                        ; preds = %scsi_prot_sg_count.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %add34.i = add nuw nsw i32 %out_num.1.i, 1
  %arrayidx35.i = getelementptr [6 x ptr], ptr %sgs.i, i32 0, i32 %add34.i
  %29 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %scsi_prot_sglist.exit81.i, %scsi_prot_sg_count.exit76.i.if.end36.i_crit_edge, %if.then28.i.if.end36.i_crit_edge
  %in_num.0.i = phi i32 [ 2, %scsi_prot_sglist.exit81.i ], [ 1, %scsi_prot_sg_count.exit76.i.if.end36.i_crit_edge ], [ 1, %if.then28.i.if.end36.i_crit_edge ]
  %30 = ptrtoint ptr %in.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in.0.i, align 4
  %inc38.i = add nuw nsw i32 %in_num.0.i, 1
  %add39.i = add nuw nsw i32 %in_num.0.i, %out_num.1.i
  %arrayidx40.i = getelementptr [6 x ptr], ptr %sgs.i, i32 0, i32 %add39.i
  %32 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx40.i, align 4
  br label %__virtscsi_add_cmd.exit

__virtscsi_add_cmd.exit:                          ; preds = %if.end36.i, %if.end23.i.__virtscsi_add_cmd.exit_crit_edge
  %in_num.1.i = phi i32 [ %inc38.i, %if.end36.i ], [ 1, %if.end23.i.__virtscsi_add_cmd.exit_crit_edge ]
  %call42.i = call i32 @virtqueue_add_sgs(ptr noundef %1, ptr noundef nonnull %sgs.i, i32 noundef %out_num.1.i, i32 noundef %in_num.1.i, ptr noundef %cmd, i32 noundef 2592) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sgs.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not = icmp eq i32 %call42.i, 0
  %33 = and i1 %tobool.not, %kick
  br i1 %33, label %if.then, label %if.end17.critedge

if.then:                                          ; preds = %__virtscsi_add_cmd.exit
  %34 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vq5, align 4
  %call10 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %35) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %vq, i32 noundef %call2) #10
  br i1 %call10, label %if.then14, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vq5, align 4
  %call16 = call zeroext i1 @virtqueue_notify(ptr noundef %37) #10
  br label %if.end17

if.end17.critedge:                                ; preds = %__virtscsi_add_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %vq, i32 noundef %call2) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end17.critedge, %if.then14, %if.then.if.end17_crit_edge
  ret i32 %call42.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_complete_cmd(ptr nocapture noundef readonly %vscsi, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 128
  %resp2 = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtscsi_complete_cmd.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtscsi_complete_cmd, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55
  %response = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 4
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  %conv = zext i8 %5 to i32
  %status = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  %conv5 = zext i8 %7 to i32
  %8 = ptrtoint ptr %resp2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %resp2, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @virtscsi_complete_cmd.__UNIQUE_ID_ddebug290, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %conv, i32 noundef %conv5, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status6 = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %status6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status6, align 1
  %conv7 = zext i8 %11 to i32
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %result, align 4
  %13 = ptrtoint ptr %vscsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vscsi, align 4
  %resid = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %resid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %resid, align 1
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %14, i32 0, i32 11
  %17 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %18, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %16, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %do.end.virtscsi_compute_resid.exit_crit_edge, label %if.then.i

do.end.virtscsi_compute_resid.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_compute_resid.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i.i, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %retval.0.i.i) #10
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %resid_len.i.i, align 4
  br label %virtscsi_compute_resid.exit

virtscsi_compute_resid.exit:                      ; preds = %if.then.i, %do.end.virtscsi_compute_resid.exit_crit_edge
  %response9 = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 4
  %24 = ptrtoint ptr %response9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %response9, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %25, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb11
    i8 2, label %sw.bb12
    i8 3, label %sw.bb13
    i8 4, label %sw.bb14
    i8 5, label %sw.bb15
    i8 6, label %sw.bb16
    i8 7, label %sw.bb17
    i8 8, label %sw.bb18
    i8 9, label %virtscsi_compute_resid.exit.sw.bb21_crit_edge
  ]

virtscsi_compute_resid.exit.sw.bb21_crit_edge:    ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

sw.bb:                                            ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result, align 4
  %and.i = and i32 %28, -16711681
  br label %sw.epilog

sw.bb11:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result, align 4
  %and.i98 = and i32 %30, -16711681
  %or.i = or i32 %and.i98, 458752
  br label %sw.epilog

sw.bb12:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %result, align 4
  %and.i100 = and i32 %32, -16711681
  %or.i101 = or i32 %and.i100, 327680
  br label %sw.epilog

sw.bb13:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result, align 4
  %and.i103 = and i32 %34, -16711681
  %or.i104 = or i32 %and.i103, 262144
  br label %sw.epilog

sw.bb14:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %result, align 4
  %and.i106 = and i32 %36, -16711681
  %or.i107 = or i32 %and.i106, 524288
  br label %sw.epilog

sw.bb15:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result, align 4
  %and.i109 = and i32 %38, -16711681
  %or.i110 = or i32 %and.i109, 131072
  br label %sw.epilog

sw.bb16:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result, align 4
  %and.i112 = and i32 %40, -16711681
  %or.i113 = or i32 %and.i112, 917504
  br label %sw.epilog

sw.bb17:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result, align 4
  %and.i115 = and i32 %42, -16711681
  %or.i116 = or i32 %and.i115, 1048576
  br label %sw.epilog

sw.bb18:                                          ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %result, align 4
  %and.i118 = and i32 %44, -16711681
  %or.i119 = or i32 %and.i118, 1114112
  br label %sw.epilog

sw.default:                                       ; preds = %virtscsi_compute_resid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %conv10) #10
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.default, %virtscsi_compute_resid.exit.sw.bb21_crit_edge
  %45 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %result, align 4
  %and.i121 = and i32 %46, -16711681
  %or.i122 = or i32 %and.i121, 458752
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %or.i122.sink = phi i32 [ %or.i122, %sw.bb21 ], [ %or.i119, %sw.bb18 ], [ %or.i116, %sw.bb17 ], [ %or.i113, %sw.bb16 ], [ %or.i110, %sw.bb15 ], [ %or.i107, %sw.bb14 ], [ %or.i104, %sw.bb13 ], [ %or.i101, %sw.bb12 ], [ %or.i, %sw.bb11 ], [ %and.i, %sw.bb ]
  %47 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i122.sink, ptr %result, align 4
  %48 = ptrtoint ptr %vscsi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vscsi, align 4
  %50 = ptrtoint ptr %resp2 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %resp2, align 1
  %features.i.i.i.i123 = getelementptr inbounds %struct.virtio_device, ptr %49, i32 0, i32 11
  %52 = ptrtoint ptr %features.i.i.i.i123 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i.i.i.i123, align 8
  %and.i.i.i.i124 = and i64 %53, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i124)
  %tobool13.i.i.i.not.i125 = icmp eq i64 %and.i.i.i.i124, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %retval.0.i.i126 = select i1 %tobool13.i.i.i.not.i125, i32 %51, i32 %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %retval.0.i.i126)
  %cmp = icmp ugt i32 %retval.0.i.i126, 96
  br i1 %cmp, label %do.end41, label %sw.epilog.if.end47_crit_edge, !prof !107

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 159, i32 noundef 9, ptr noundef null) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %sw.epilog.if.end47_crit_edge
  %55 = ptrtoint ptr %resp2 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %resp2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool56.not = icmp eq i32 %56, 0
  br i1 %tobool56.not, label %if.end47.if.end64_crit_edge, label %if.then57

if.end47.if.end64_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %57 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sense_buffer, align 4
  %sense = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %buf, i32 0, i32 3, i32 0, i32 5
  %59 = ptrtoint ptr %vscsi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vscsi, align 4
  %features.i.i.i.i127 = getelementptr inbounds %struct.virtio_device, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %features.i.i.i.i127 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features.i.i.i.i127, align 8
  %and.i.i.i.i128 = and i64 %62, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i128)
  %tobool13.i.i.i.not.i129 = icmp eq i64 %and.i.i.i.i128, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  %retval.0.i.i130 = select i1 %tobool13.i.i.i.not.i129, i32 %56, i32 %63
  %64 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i130, i32 96)
  %65 = call ptr @memcpy(ptr %58, ptr %sense, i32 %64)
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end47.if.end64_crit_edge
  tail call void @scsi_done(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_unique_tag(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtscsi_tmf(ptr noundef %vscsi, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %comp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %comp) #10
  %0 = getelementptr inbounds i8, ptr %comp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %comp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #10
  %comp1 = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %comp1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %comp, ptr %comp1, align 4
  %ctrl_vq = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 5
  %call = call fastcc i32 @virtscsi_add_cmd(ptr noundef %ctrl_vq, ptr noundef %cmd, i32 noundef 24, i32 noundef 1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @wait_for_completion(ptr noundef nonnull %comp) #10
  %resp = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.selectcmp.case1 = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %switch.selectcmp.case2 = icmp eq i8 %5, 10
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, i32 8194, i32 8195
  %num_queues.i = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 2
  %7 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.i = icmp sgt i32 %8, 0
  br i1 %cmp5.i, label %if.end.for.body.i_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.virtio_scsi, ptr %vscsi, i32 0, i32 7, i32 %i.06.i
  call fastcc void @virtscsi_vq_done(ptr noundef %vscsi, ptr noundef %arrayidx.i, ptr noundef nonnull @virtscsi_complete_cmd) #10
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.body.i.out_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.body.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ 8195, %entry.out_crit_edge ], [ %6, %if.end.out_crit_edge ], [ %6, %for.body.i.out_crit_edge ]
  %9 = load ptr, ptr @virtscsi_cmd_pool, align 4
  call void @mempool_free(ptr noundef %cmd, ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %comp) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtscsi_vq_done(ptr noundef %vscsi, ptr noundef %virtscsi_vq, ptr nocapture noundef readonly %fn) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !104
  %vq1 = getelementptr inbounds %struct.virtio_scsi_vq, ptr %virtscsi_vq, i32 0, i32 1
  %1 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vq1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %virtscsi_vq) #10
  br label %do.body6

do.body6:                                         ; preds = %do.cond12.do.body6_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %2) #10
  %call723 = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #10
  %cmp8.not24 = icmp eq ptr %call723, null
  br i1 %cmp8.not24, label %do.body6.while.end_crit_edge, label %do.body6.while.body_crit_edge

do.body6.while.body_crit_edge:                    ; preds = %do.body6
  br label %while.body

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body6.while.body_crit_edge
  %call725 = phi ptr [ %call7, %while.body.while.body_crit_edge ], [ %call723, %do.body6.while.body_crit_edge ]
  call void %fn(ptr noundef %vscsi, ptr noundef nonnull %call725) #10, !callees !112
  %call7 = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #10
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body6.while.end_crit_edge
  %call10 = call zeroext i1 @virtqueue_is_broken(ptr noundef %2) #10
  br i1 %call10, label %while.end.do.end16_crit_edge, label %do.cond12, !prof !107

while.end.do.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.cond12:                                        ; preds = %while.end
  %call13 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %2) #10
  br i1 %call13, label %do.cond12.do.end16_crit_edge, label %do.cond12.do.body6_crit_edge

do.cond12.do.body6_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.cond12.do.end16_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end16:                                         ; preds = %do.cond12.do.end16_crit_edge, %while.end.do.end16_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %virtscsi_vq, i32 noundef %call3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_virtio_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_ctrl_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %ctrl_vq = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 37, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #10
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len.i, align 4, !annotation !104
  %vq1.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 47
  %5 = ptrtoint ptr %vq1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vq1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_vq) #10
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.cond12.i.do.body6.i_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %6) #10
  %call723.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #10
  %cmp8.not24.i = icmp eq ptr %call723.i, null
  br i1 %cmp8.not24.i, label %do.body6.i.while.end.i_crit_edge, label %do.body6.i.while.body.i_crit_edge

do.body6.i.while.body.i_crit_edge:                ; preds = %do.body6.i
  br label %while.body.i

do.body6.i.while.end.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %virtscsi_complete_free.exit.while.body.i_crit_edge, %do.body6.i.while.body.i_crit_edge
  %call725.i = phi ptr [ %call7.i, %virtscsi_complete_free.exit.while.body.i_crit_edge ], [ %call723.i, %do.body6.i.while.body.i_crit_edge ]
  %comp.i = getelementptr inbounds %struct.virtio_scsi_cmd, ptr %call725.i, i32 0, i32 1
  %7 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %comp.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.body.i.virtscsi_complete_free.exit_crit_edge, label %if.then.i

while.body.i.virtscsi_complete_free.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_complete_free.exit

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @complete(ptr noundef nonnull %8) #10
  br label %virtscsi_complete_free.exit

virtscsi_complete_free.exit:                      ; preds = %if.then.i, %while.body.i.virtscsi_complete_free.exit_crit_edge
  %call7.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #10
  %cmp8.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.not.i, label %virtscsi_complete_free.exit.while.end.i_crit_edge, label %virtscsi_complete_free.exit.while.body.i_crit_edge

virtscsi_complete_free.exit.while.body.i_crit_edge: ; preds = %virtscsi_complete_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

virtscsi_complete_free.exit.while.end.i_crit_edge: ; preds = %virtscsi_complete_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %virtscsi_complete_free.exit.while.end.i_crit_edge, %do.body6.i.while.end.i_crit_edge
  %call10.i = call zeroext i1 @virtqueue_is_broken(ptr noundef %6) #10
  br i1 %call10.i, label %while.end.i.virtscsi_vq_done.exit_crit_edge, label %do.cond12.i, !prof !107

while.end.i.virtscsi_vq_done.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_vq_done.exit

do.cond12.i:                                      ; preds = %while.end.i
  %call13.i = call zeroext i1 @virtqueue_enable_cb(ptr noundef %6) #10
  br i1 %call13.i, label %do.cond12.i.virtscsi_vq_done.exit_crit_edge, label %do.cond12.i.do.body6.i_crit_edge

do.cond12.i.do.body6.i_crit_edge:                 ; preds = %do.cond12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i

do.cond12.i.virtscsi_vq_done.exit_crit_edge:      ; preds = %do.cond12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_vq_done.exit

virtscsi_vq_done.exit:                            ; preds = %do.cond12.i.virtscsi_vq_done.exit_crit_edge, %while.end.i.virtscsi_vq_done.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_vq, i32 noundef %call3.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_event_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %event_vq = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #10
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len.i, align 4, !annotation !104
  %vq1.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %vq1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vq1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_vq) #10
  %stop_events.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 37, i32 6
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.cond12.i.do.body6.i_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %6) #10
  %call723.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #10
  %cmp8.not24.i = icmp eq ptr %call723.i, null
  br i1 %cmp8.not24.i, label %do.body6.i.while.end.i_crit_edge, label %do.body6.i.while.body.i_crit_edge

do.body6.i.while.body.i_crit_edge:                ; preds = %do.body6.i
  br label %while.body.i

do.body6.i.while.end.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %virtscsi_complete_event.exit.while.body.i_crit_edge, %do.body6.i.while.body.i_crit_edge
  %call725.i = phi ptr [ %call7.i, %virtscsi_complete_event.exit.while.body.i_crit_edge ], [ %call723.i, %do.body6.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %stop_events.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_events.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.i.virtscsi_complete_event.exit_crit_edge

while.body.i.virtscsi_complete_event.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_complete_event.exit

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %9 = load ptr, ptr @system_freezable_wq, align 4
  %work.i = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %call725.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work.i) #10
  br label %virtscsi_complete_event.exit

virtscsi_complete_event.exit:                     ; preds = %if.then.i, %while.body.i.virtscsi_complete_event.exit_crit_edge
  %call7.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #10
  %cmp8.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.not.i, label %virtscsi_complete_event.exit.while.end.i_crit_edge, label %virtscsi_complete_event.exit.while.body.i_crit_edge

virtscsi_complete_event.exit.while.body.i_crit_edge: ; preds = %virtscsi_complete_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

virtscsi_complete_event.exit.while.end.i_crit_edge: ; preds = %virtscsi_complete_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %virtscsi_complete_event.exit.while.end.i_crit_edge, %do.body6.i.while.end.i_crit_edge
  %call10.i = call zeroext i1 @virtqueue_is_broken(ptr noundef %6) #10
  br i1 %call10.i, label %while.end.i.virtscsi_vq_done.exit_crit_edge, label %do.cond12.i, !prof !107

while.end.i.virtscsi_vq_done.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_vq_done.exit

do.cond12.i:                                      ; preds = %while.end.i
  %call13.i = call zeroext i1 @virtqueue_enable_cb(ptr noundef %6) #10
  br i1 %call13.i, label %do.cond12.i.virtscsi_vq_done.exit_crit_edge, label %do.cond12.i.do.body6.i_crit_edge

do.cond12.i.do.body6.i_crit_edge:                 ; preds = %do.cond12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i

do.cond12.i.virtscsi_vq_done.exit_crit_edge:      ; preds = %do.cond12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_vq_done.exit

virtscsi_vq_done.exit:                            ; preds = %do.cond12.i.virtscsi_vq_done.exit_crit_edge, %while.end.i.virtscsi_vq_done.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_vq, i32 noundef %call3.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_req_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %index2 = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %sub = add i32 %5, -2
  %arrayidx = getelementptr %struct.virtio_scsi, ptr %hostdata.i, i32 0, i32 7, i32 %sub
  tail call fastcc void @virtscsi_vq_done(ptr noundef %hostdata.i, ptr noundef %arrayidx, ptr noundef nonnull @virtscsi_complete_cmd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtscsi_kick_event(ptr noundef %vscsi, ptr noundef %event_node) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #10
  %work = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 2
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @virtscsi_kick_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4 = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @virtscsi_handle_event, ptr %func, align 4
  %event = getelementptr inbounds %struct.virtio_scsi_event_node, ptr %event_node, i32 0, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %event, i32 noundef 16) #10
  %event_vq = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 6
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_vq) #10
  %vq = getelementptr inbounds %struct.virtio_scsi, ptr %vscsi, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vq, align 4
  %call14 = call i32 @virtqueue_add_inbuf(ptr noundef %6, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %event_node, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vq, align 4
  %call17 = call zeroext i1 @virtqueue_kick(ptr noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_vq, i32 noundef %call8) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtscsi_handle_event(ptr noundef %work) #2 align 64 {
entry:
  %scsi_cmd.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %event2 = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %event2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %event2, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %7, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 -2147483648, i32 128
  %and = and i32 %retval.0.i.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %neg = xor i32 %retval.0.i.i, -1
  %and7 = and i32 %3, %neg
  %8 = ptrtoint ptr %event2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %and7, ptr %event2, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %priv.i.i = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i) #10
  %13 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %scsi_cmd.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 256) #15
  %call2.i = tail call ptr @__scsi_iterate_devices(ptr noundef %12, ptr noundef null) #10
  %tobool.not41.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not41.i, label %if.then.virtscsi_rescan_hotunplug.exit_crit_edge, label %for.body.preheader.i

if.then.virtscsi_rescan_hotunplug.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_rescan_hotunplug.exit

for.body.preheader.i:                             ; preds = %if.then
  %16 = getelementptr inbounds i8, ptr %scsi_cmd.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %sdev.042.i = phi ptr [ %call23.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %for.body.preheader.i ]
  %inquiry_len3.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.042.i, i32 0, i32 27
  %17 = ptrtoint ptr %inquiry_len3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %inquiry_len3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  %narrow.i = select i1 %tobool4.not.i, i8 36, i8 %18
  %spec.select.i = zext i8 %narrow.i to i32
  %19 = call ptr @memset(ptr %16, i32 0, i32 15)
  %20 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %scsi_cmd.i, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %narrow.i, ptr %13, align 1
  %22 = call ptr @memset(ptr %call7.i.i, i32 0, i32 256)
  %call.i.i = call i32 @__scsi_execute(ptr noundef nonnull %sdev.042.i, ptr noundef nonnull %scsi_cmd.i, i32 noundef 2, ptr noundef %call7.i.i, i32 noundef %spec.select.i, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %tobool14.not.i = icmp ult i8 %24, 32
  br i1 %tobool14.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.for.inc.sink.split.i_crit_edge

land.lhs.true.i.for.inc.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp sgt i32 %call.i.i, 0
  %25 = and i32 %call.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %25)
  %cmp19.i = icmp eq i32 %25, 262144
  %or.cond.i = and i1 %cmp15.i, %cmp19.i
  br i1 %or.cond.i, label %if.else.i.for.inc.sink.split.i_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else.i.for.inc.sink.split.i_crit_edge, %land.lhs.true.i.for.inc.sink.split.i_crit_edge
  call void @scsi_remove_device(ptr noundef nonnull %sdev.042.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %call23.i = call ptr @__scsi_iterate_devices(ptr noundef %12, ptr noundef nonnull %sdev.042.i) #10
  %tobool.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i, label %for.inc.i.virtscsi_rescan_hotunplug.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.virtscsi_rescan_hotunplug.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %virtscsi_rescan_hotunplug.exit

virtscsi_rescan_hotunplug.exit:                   ; preds = %for.inc.i.virtscsi_rescan_hotunplug.exit_crit_edge, %if.then.virtscsi_rescan_hotunplug.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  call void @scsi_scan_host(ptr noundef %29) #10
  br label %if.end

if.end:                                           ; preds = %virtscsi_rescan_hotunplug.exit, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %event2 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %event2, align 1
  %features.i.i.i.i36 = getelementptr inbounds %struct.virtio_device, ptr %31, i32 0, i32 11
  %34 = ptrtoint ptr %features.i.i.i.i36 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %features.i.i.i.i36, align 8
  %and.i.i.i.i37 = and i64 %35, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i37)
  %tobool13.i.i.i.not.i38 = icmp eq i64 %and.i.i.i.i37, 0
  %36 = call i32 @llvm.bswap.i32(i32 %33) #10
  %retval.0.i.i39 = select i1 %tobool13.i.i.i.not.i38, i32 %33, i32 %36
  %37 = zext i32 %retval.0.i.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %retval.0.i.i39, label %do.end [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 3, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %priv.i.i40 = getelementptr inbounds %struct.virtio_device, ptr %31, i32 0, i32 12
  %38 = ptrtoint ptr %priv.i.i40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i40, align 8
  %arrayidx.i = getelementptr i8, ptr %work, i32 -11
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %41 to i32
  %arrayidx3.i = getelementptr i8, ptr %work, i32 -10
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %43 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %arrayidx6.i = getelementptr i8, ptr %work, i32 -9
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %45 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %reason.i = getelementptr i8, ptr %work, i32 -4
  %46 = ptrtoint ptr %reason.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %reason.i, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i38, i32 %47, i32 %48
  %49 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %retval.0.i.i.i, label %do.end22.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i41 = icmp eq i32 %or.i, 0
  br i1 %cmp.i41, label %if.then.i, label %if.else.i42

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  call void @scsi_scan_target(ptr noundef %shost_gendev.i, i32 noundef 0, i32 noundef %conv.i, i64 noundef -1, i32 noundef 0) #10
  br label %sw.epilog

if.else.i42:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv11.i = zext i32 %or.i to i64
  %call12.i = call i32 @scsi_add_device(ptr noundef %39, i32 noundef 0, i32 noundef %conv.i, i64 noundef %conv11.i) #10
  br label %sw.epilog

sw.bb13.i:                                        ; preds = %sw.bb
  %conv14.i = zext i32 %or.i to i64
  %call15.i = call ptr @scsi_device_lookup(ptr noundef %39, i32 noundef 0, i32 noundef %conv.i, i64 noundef %conv14.i) #10
  %tobool.not.i43 = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i43, label %do.end.i, label %if.then16.i

if.then16.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @scsi_remove_device(ptr noundef nonnull %call15.i) #10
  call void @scsi_device_put(ptr noundef nonnull %call15.i) #10
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 17
  %50 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %host_no.i, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %51, i32 noundef %conv.i, i32 noundef %or.i) #13
  br label %sw.epilog

do.end22.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %47) #13
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %priv.i.i44 = getelementptr inbounds %struct.virtio_device, ptr %31, i32 0, i32 12
  %52 = ptrtoint ptr %priv.i.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i.i44, align 8
  %arrayidx.i45 = getelementptr i8, ptr %work, i32 -11
  %54 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i45, align 1
  %conv.i46 = zext i8 %55 to i32
  %arrayidx3.i47 = getelementptr i8, ptr %work, i32 -10
  %56 = ptrtoint ptr %arrayidx3.i47 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx3.i47, align 1
  %conv4.i48 = zext i8 %57 to i32
  %shl.i49 = shl nuw nsw i32 %conv4.i48, 8
  %arrayidx6.i50 = getelementptr i8, ptr %work, i32 -9
  %58 = ptrtoint ptr %arrayidx6.i50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx6.i50, align 1
  %conv7.i51 = zext i8 %59 to i32
  %or.i52 = or i32 %shl.i49, %conv7.i51
  %reason.i53 = getelementptr i8, ptr %work, i32 -4
  %60 = ptrtoint ptr %reason.i53 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %reason.i53, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %retval.0.i.i.i57 = select i1 %tobool13.i.i.i.not.i38, i32 %61, i32 %62
  %shr.i = lshr i32 %retval.0.i.i.i57, 8
  %conv15.i = zext i32 %or.i52 to i64
  %call16.i = call ptr @scsi_device_lookup(ptr noundef %53, i32 noundef 0, i32 noundef %conv.i46, i64 noundef %conv15.i) #10
  %tobool.not.i58 = icmp eq ptr %call16.i, null
  br i1 %tobool.not.i58, label %do.end.i60, label %if.end.i

do.end.i60:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %host_no.i59 = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 17
  %63 = ptrtoint ptr %host_no.i59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host_no.i59, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %64, i32 noundef %conv.i46, i32 noundef %or.i52) #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb13
  %conv18.i = and i32 %retval.0.i.i.i57, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %conv18.i)
  %cmp.i61 = icmp eq i32 %conv18.i, 42
  br i1 %cmp.i61, label %land.lhs.true.i62, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i62:                                ; preds = %if.end.i
  %trunc.i = trunc i32 %shr.i to i8
  %65 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc.i, label %land.lhs.true.i62.if.end31.i_crit_edge [
    i8 0, label %land.lhs.true.i62.if.then30.i_crit_edge
    i8 1, label %land.lhs.true.i62.if.then30.i_crit_edge63
    i8 9, label %land.lhs.true.i62.if.then30.i_crit_edge64
  ]

land.lhs.true.i62.if.then30.i_crit_edge64:        ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

land.lhs.true.i62.if.then30.i_crit_edge63:        ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

land.lhs.true.i62.if.then30.i_crit_edge:          ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

land.lhs.true.i62.if.end31.i_crit_edge:           ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then30.i:                                      ; preds = %land.lhs.true.i62.if.then30.i_crit_edge, %land.lhs.true.i62.if.then30.i_crit_edge63, %land.lhs.true.i62.if.then30.i_crit_edge64
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %call16.i, i32 0, i32 55
  call void @scsi_rescan_device(ptr noundef %sdev_gendev.i) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %land.lhs.true.i62.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  call void @scsi_device_put(ptr noundef nonnull %call16.i) #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %33) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end31.i, %do.end.i60, %do.end22.i, %do.end.i, %if.then16.i, %if.else.i42, %if.then.i, %if.end.sw.epilog_crit_edge
  call fastcc void @virtscsi_kick_event(ptr noundef %1, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_target(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_virtio_scsi__300_1029_init6, !1, !"__initcall__kmod_virtio_scsi__300_1029_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/virtio_scsi.c", i32 1029, i32 1}
!2 = !{ptr @__exitcall_fini, !3, !"__exitcall_fini", i1 false, i1 false}
!3 = !{!"../drivers/scsi/virtio_scsi.c", i32 1030, i32 1}
!4 = !{ptr @__UNIQUE_ID_description301, !5, !"__UNIQUE_ID_description301", i1 false, i1 false}
!5 = !{!"../drivers/scsi/virtio_scsi.c", i32 1033, i32 1}
!6 = !{ptr @__UNIQUE_ID_file302, !7, !"__UNIQUE_ID_file302", i1 false, i1 false}
!7 = !{!"../drivers/scsi/virtio_scsi.c", i32 1034, i32 1}
!8 = !{ptr @__UNIQUE_ID_license303, !7, !"__UNIQUE_ID_license303", i1 false, i1 false}
!9 = !{ptr @virtscsi_cmd_cache, !10, !"virtscsi_cmd_cache", i1 false, i1 false}
!10 = !{!"../drivers/scsi/virtio_scsi.c", i32 90, i32 27}
!11 = !{ptr @virtscsi_cmd_pool, !12, !"virtscsi_cmd_pool", i1 false, i1 false}
!12 = !{!"../drivers/scsi/virtio_scsi.c", i32 91, i32 19}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/virtio_scsi.c", i32 980, i32 17}
!15 = !{ptr @virtio_scsi_driver, !16, !"virtio_scsi_driver", i1 false, i1 false}
!16 = !{!"../drivers/scsi/virtio_scsi.c", i32 977, i32 29}
!17 = !{ptr @id_table, !18, !"id_table", i1 false, i1 false}
!18 = !{!"../drivers/scsi/virtio_scsi.c", i32 964, i32 32}
!19 = !{ptr @features, !20, !"features", i1 false, i1 false}
!20 = !{!"../drivers/scsi/virtio_scsi.c", i32 969, i32 21}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/virtio_scsi.c", i32 851, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @virtscsi_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @virtscsi_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/virtio_scsi.c", i32 741, i32 10}
!31 = !{ptr @virtscsi_host_template, !32, !"virtscsi_host_template", i1 false, i1 false}
!32 = !{!"../drivers/scsi/virtio_scsi.c", i32 739, i32 34}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/virtio_scsi.c", i32 569, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @virtscsi_queuecommand.__UNIQUE_ID_ddebug293, !34, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/virtio_scsi.c", i32 115, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @virtscsi_complete_cmd.__UNIQUE_ID_ddebug290, !38, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/virtio_scsi.c", i32 150, i32 15}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/virtio_scsi.c", i32 150, i32 33}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/virtio_scsi.c", i32 696, i32 14}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/virtio_scsi.c", i32 696, i32 29}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/virtio_scsi.c", i32 638, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/virtio_scsi.c", i32 809, i32 13}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/virtio_scsi.c", i32 810, i32 13}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/virtio_scsi.c", i32 813, i32 14}
!60 = !{ptr @virtscsi_init_vq.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/scsi/virtio_scsi.c", i32 774, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @virtscsi_kick_event.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/scsi/virtio_scsi.c", i32 236, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/virtio_scsi.c", i32 396, i32 3}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @virtscsi_handle_event._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @virtscsi_handle_event._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/virtio_scsi.c", i32 299, i32 4}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @virtscsi_handle_transport_reset._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @virtscsi_handle_transport_reset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/virtio_scsi.c", i32 304, i32 3}
!78 = !{ptr @virtscsi_handle_transport_reset._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @virtscsi_handle_transport_reset._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/virtio_scsi.c", i32 320, i32 3}
!82 = !{ptr @virtscsi_handle_param_change._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @virtscsi_handle_param_change._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/virtio_scsi.c", i32 995, i32 23}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/virtio_scsi.c", i32 997, i32 3}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @init._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @init._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/virtio_scsi.c", i32 1006, i32 3}
!93 = !{ptr @init._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @init._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2154153076, i64 2154153570, i64 2154153113, i64 2154153169, i64 2154153203, i64 2154153227, i64 2154153268, i64 2154153289, i64 2154153317, i64 2154153351}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2154839931, i64 2154840422, i64 2154839968, i64 2154840024, i64 2154840058, i64 2154840082, i64 2154840123, i64 2154840144, i64 2154840172, i64 2154840206}
!109 = !{i64 2154841592, i64 2154842083, i64 2154841629, i64 2154841685, i64 2154841719, i64 2154841743, i64 2154841784, i64 2154841805, i64 2154841833, i64 2154841867}
!110 = !{i64 2148978775, i64 2148978780, i64 2148978793, i64 2148978837, i64 2148978871, i64 2148978892}
!111 = !{i64 2154845569, i64 2154846060, i64 2154845606, i64 2154845662, i64 2154845696, i64 2154845720, i64 2154845761, i64 2154845782, i64 2154845810, i64 2154845844}
!112 = distinct !{ptr @virtscsi_complete_cmd, null, null}
!113 = !{i8 0, i8 2}
