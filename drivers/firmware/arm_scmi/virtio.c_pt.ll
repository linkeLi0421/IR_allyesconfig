; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/virtio.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.scmi_vio_channel = type { ptr, ptr, %struct.list_head, i8, i8, i32, %struct.spinlock, %struct.spinlock }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.scmi_vio_msg = type { ptr, ptr, %struct.list_head, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scmi_chan_info = type { ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }

@scmi_virtio_ops = internal constant { %struct.scmi_transport_ops, [52 x i8] } { %struct.scmi_transport_ops { ptr @virtio_link_supplier, ptr @virtio_chan_available, ptr @virtio_chan_setup, ptr @virtio_chan_free, ptr @virtio_get_max_msg, ptr @virtio_send_message, ptr null, ptr @virtio_fetch_response, ptr @virtio_fetch_notification, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@scmi_virtio_desc = dso_local constant { %struct.scmi_desc, [40 x i8] } { %struct.scmi_desc { ptr @virtio_scmi_init, ptr @virtio_scmi_exit, ptr @scmi_virtio_ops, i32 60000, i32 0, i32 128 }, [40 x i8] zeroinitializer }, align 32
@virtio_scmi_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr @scmi_vio_validate, ptr @scmi_vio_probe, ptr null, ptr @scmi_vio_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi-virtio\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 32, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@scmi_vio_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device does not comply with spec version 1.x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi_vio_validate\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/arm_scmi/virtio.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_vio_validate._entry_ptr = internal global ptr @scmi_vio_validate._entry, section ".printk_index", align 4
@scmi_vdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scmi_vio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"One SCMI Virtio device was already initialized: only one allowed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scmi_vio_probe\00", [17 x i8] zeroinitializer }, align 32
@scmi_vio_probe._entry_ptr = internal global ptr @scmi_vio_probe._entry, section ".printk_index", align 4
@scmi_vio_complete_callbacks = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @scmi_vio_complete_cb, ptr @scmi_vio_complete_cb], [24 x i8] zeroinitializer }, align 32
@scmi_vio_vqueue_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@scmi_vio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get %d virtqueue(s)\0A\00", [33 x i8] zeroinitializer }, align 32
@scmi_vio_probe._entry_ptr.10 = internal global ptr @scmi_vio_probe._entry.8, section ".printk_index", align 4
@scmi_vio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channels[i].lock\00", [46 x i8] zeroinitializer }, align 32
@scmi_vio_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&channels[i].ready_lock\00", [40 x i8] zeroinitializer }, align 32
@scmi_vio_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@scmi_vio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 433, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s virtqueue could hold %d messages. Only %ld allowed to be pending.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scmi_vio_probe._entry_ptr.17 = internal global ptr @scmi_vio_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@scmi_vio_complete_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scmi_vio_feed_vq_rx.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@scmi_vio_feed_vq_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 98, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add to virtqueue (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scmi_vio_feed_vq_rx\00", [44 x i8] zeroinitializer }, align 32
@scmi_vio_feed_vq_rx._entry_ptr = internal global ptr @scmi_vio_feed_vq_rx._entry, section ".printk_index", align 4
@virtio_link_supplier.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@virtio_link_supplier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 197, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Deferring probe after not finding a bound scmi-virtio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtio_link_supplier\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@virtio_link_supplier._entry_ptr = internal global ptr @virtio_link_supplier._entry, section ".printk_index", align 4
@virtio_link_supplier._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Adding link to supplier virtio device failed\0A\00", [50 x i8] zeroinitializer }, align 32
@virtio_link_supplier._entry_ptr.27 = internal global ptr @virtio_link_supplier._entry.25, section ".printk_index", align 4
@virtio_chan_available.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virtio_send_message.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@virtio_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() failed to add to virtqueue (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"virtio_send_message\00", [44 x i8] zeroinitializer }, align 32
@virtio_send_message._entry_ptr = internal global ptr @virtio_send_message._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"scmi_virtio_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 371, i32 40 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"scmi_virtio_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 502, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"virtio_scmi_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 481, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 482, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 476, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 472, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 464, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"scmi_vdev\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 77, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 394, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"scmi_vio_complete_callbacks\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 181, i32 23 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"scmi_vio_vqueue_names\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 179, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 412, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 419, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 420, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 430, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 98, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 196, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 203, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [38 x i8] c"../drivers/firmware/arm_scmi/virtio.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 337, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @scmi_vio_feed_vq_rx._entry, ptr @scmi_vio_feed_vq_rx._entry_ptr, ptr @scmi_vio_probe._entry, ptr @scmi_vio_probe._entry.14, ptr @scmi_vio_probe._entry.8, ptr @scmi_vio_probe._entry_ptr, ptr @scmi_vio_probe._entry_ptr.10, ptr @scmi_vio_probe._entry_ptr.17, ptr @scmi_vio_validate._entry, ptr @scmi_vio_validate._entry_ptr, ptr @virtio_link_supplier._entry, ptr @virtio_link_supplier._entry.25, ptr @virtio_link_supplier._entry_ptr, ptr @virtio_link_supplier._entry_ptr.27, ptr @virtio_send_message._entry, ptr @virtio_send_message._entry_ptr, ptr @scmi_virtio_ops, ptr @scmi_virtio_desc, ptr @virtio_scmi_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @scmi_vdev, ptr @.str.6, ptr @.str.7, ptr @scmi_vio_complete_callbacks, ptr @scmi_vio_vqueue_names, ptr @.str.9, ptr @scmi_vio_probe.__key, ptr @.str.11, ptr @scmi_vio_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_virtio_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_virtio_desc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_scmi_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_complete_callbacks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_vqueue_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_vio_feed_vq_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_link_supplier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_link_supplier._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_scmi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_scmi_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_scmi_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_scmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_vio_validate(ptr noundef %vdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %1, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_vio_probe(ptr noundef %vdev) #1 align 64 {
entry:
  %vqs = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs) #6
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vqs, align 4, !annotation !85
  %1 = getelementptr inbounds [2 x ptr], ptr %vqs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !85
  %3 = load ptr, ptr @scmi_vdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #6
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  %cond = select i1 %tobool13.i.i.i.not, i32 1, i32 2
  %6 = mul nuw nsw i32 %cond, 112
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %6, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  br i1 %tobool13.i.i.i.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %is_rx = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 1, i32 3
  %7 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_rx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %11(ptr noundef %vdev, i32 noundef %cond, ptr noundef nonnull %vqs, ptr noundef nonnull @scmi_vio_complete_callbacks, ptr noundef nonnull @scmi_vio_vqueue_names, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end9.for.body_crit_edge, label %do.end15

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %cond) #9
  br label %cleanup

for.body:                                         ; preds = %if.end102.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0168 = phi i32 [ %inc, %if.end102.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx18 = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168
  %lock = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @scmi_vio_probe.__key, i16 noundef signext 3) #6
  %ready_lock = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 7
  call void @__raw_spin_lock_init(ptr noundef %ready_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @scmi_vio_probe.__key.12, i16 noundef signext 3) #6
  %free_list = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 2
  %12 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_list, ptr %prev.i, align 4
  %arrayidx28 = getelementptr [2 x ptr], ptr %vqs, i32 0, i32 %i.0168
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx28, align 4
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx18, align 4
  %call32 = call i32 @virtqueue_get_vring_size(ptr noundef %15) #6
  %is_rx34 = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 3
  %17 = ptrtoint ptr %is_rx34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_rx34, align 4, !range !86
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %spec.select = lshr i32 %call32, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %spec.select)
  %cmp53 = icmp ugt i32 %spec.select, 1024
  br i1 %cmp53, label %do.body55, label %for.body.if.end102_crit_edge

for.body.if.end102_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.body55:                                        ; preds = %for.body
  %.b164 = load i1, ptr @scmi_vio_probe.__print_once, align 1
  br i1 %.b164, label %do.body55.if.end102_crit_edge, label %if.then57

do.body55.if.end102_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then57:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @scmi_vio_probe.__print_once, align 1
  %21 = ptrtoint ptr %is_rx34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_rx34, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool63.not = icmp eq i8 %22, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.19, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond64, i32 noundef %spec.select, i32 noundef 1024) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then57, %do.body55.if.end102_crit_edge, %for.body.if.end102_crit_edge
  %sz.1 = phi i32 [ %spec.select, %for.body.if.end102_crit_edge ], [ 1024, %do.body55.if.end102_crit_edge ], [ 1024, %if.then57 ]
  %max_msg = getelementptr %struct.scmi_vio_channel, ptr %call5.i.i, i32 %i.0168, i32 5
  %23 = ptrtoint ptr %max_msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sz.1, ptr %max_msg, align 4
  %inc = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %if.end102.for.body_crit_edge

if.end102.for.body_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %priv, align 8
  store volatile ptr %vdev, ptr @scmi_vdev, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call.i, %do.end15 ], [ 0, %for.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_vio_remove(ptr noundef %vdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_reset_device(ptr noundef %vdev) #6
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %del_vqs, align 4
  tail call void %3(ptr noundef %vdev) #6
  store volatile ptr null, ptr @scmi_vdev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_vio_complete_cb(ptr noundef %vqueue) #1 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #6
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !85
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 3
  %1 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b104 = load i1, ptr @scmi_vio_complete_cb.__already_done, align 1
  br i1 %.b104, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !89

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @scmi_vio_complete_cb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39:                                         ; preds = %entry
  %index = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6
  %ready_lock = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 7
  %call45113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ready_lock) #6
  %ready = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 4
  %7 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ready, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool50.not114 = icmp eq i8 %8, 0
  br i1 %tobool50.not114, label %if.end39.unlock_ready_out_crit_edge, label %if.end56.lr.ph

if.end39.unlock_ready_out_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ready_out

if.end56.lr.ph:                                   ; preds = %if.end39
  %lock = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 6
  %cinfo = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 1
  %is_rx.i = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 3
  %free_list.i = getelementptr %struct.scmi_vio_channel, ptr %4, i32 %6, i32 2
  br label %if.end56

if.then51:                                        ; preds = %if.end71
  br i1 %tobool61.not, label %if.then51.unlock_ready_out_crit_edge, label %if.then53

if.then51.unlock_ready_out_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ready_out

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vqueue) #6
  br label %unlock_ready_out

if.end56:                                         ; preds = %if.end71.if.end56_crit_edge, %if.end56.lr.ph
  %call45116 = phi i32 [ %call45113, %if.end56.lr.ph ], [ %call45, %if.end71.if.end56_crit_edge ]
  %cb_enabled.0.off0115 = phi i1 [ true, %if.end56.lr.ph ], [ %tobool61.not, %if.end71.if.end56_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock) #6
  br i1 %cb_enabled.0.off0115, label %if.then58, label %if.end56.if.end59_crit_edge

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void @virtqueue_disable_cb(ptr noundef %vqueue) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %call60 = call ptr @virtqueue_get_buf(ptr noundef %vqueue, ptr noundef nonnull %length) #6
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.then62, label %if.then69

if.then62:                                        ; preds = %if.end59
  %call63 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vqueue) #6
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  br i1 %call63, label %if.then62.unlock_ready_out_crit_edge, label %if.then62.if.end71_crit_edge

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then62.unlock_ready_out_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ready_out

if.then69:                                        ; preds = %if.end59
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %rx_len = getelementptr inbounds %struct.scmi_vio_msg, ptr %call60, i32 0, i32 3
  %11 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_len, align 4
  %12 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cinfo, align 4
  %input = getelementptr inbounds %struct.scmi_vio_msg, ptr %call60, i32 0, i32 1
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %call70 = call i32 @msg_read_header(ptr noundef %15) #6
  call void @scmi_rx_callback(ptr noundef %13, i32 noundef %call70, ptr noundef nonnull %call60) #6
  %16 = ptrtoint ptr %is_rx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_rx.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cinfo, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call fastcc void @scmi_vio_feed_vq_rx(ptr noundef %arrayidx, ptr noundef nonnull %call60, ptr noundef %21) #6
  br label %if.end71

if.else.i:                                        ; preds = %if.then69
  call void @_raw_spin_lock(ptr noundef %lock) #6
  %list.i = getelementptr inbounds %struct.scmi_vio_msg, ptr %call60, i32 0, i32 2
  %22 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %free_list.i, ptr noundef %23) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_add.exit.i_crit_edge

if.else.i.list_add.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.scmi_vio_msg, ptr %call60, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end71

if.end71:                                         ; preds = %list_add.exit.i, %if.then.i, %if.then62.if.end71_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ready_lock, i32 noundef %call45116) #6
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ready_lock) #6
  %28 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ready, align 1, !range !86
  %tobool50.not = icmp eq i8 %29, 0
  br i1 %tobool50.not, label %if.then51, label %if.end71.if.end56_crit_edge

if.end71.if.end56_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

unlock_ready_out:                                 ; preds = %if.then62.unlock_ready_out_crit_edge, %if.then53, %if.then51.unlock_ready_out_crit_edge, %if.end39.unlock_ready_out_crit_edge
  %call45109 = phi i32 [ %call45, %if.then51.unlock_ready_out_crit_edge ], [ %call45, %if.then53 ], [ %call45113, %if.end39.unlock_ready_out_crit_edge ], [ %call45116, %if.then62.unlock_ready_out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ready_lock, i32 noundef %call45109) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock_ready_out, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_rx_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msg_read_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_vio_feed_vq_rx(ptr noundef %vioch, ptr noundef %msg, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %sg_in = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_in) #6
  %input = getelementptr inbounds %struct.scmi_vio_msg, ptr %msg, i32 0, i32 1
  %0 = call ptr @memset(ptr %sg_in, i32 255, i32 20)
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %input, align 4
  call void @sg_init_one(ptr noundef nonnull %sg_in, ptr noundef %2, i32 noundef 136) #6
  %lock = getelementptr inbounds %struct.scmi_vio_channel, ptr %vioch, i32 0, i32 6
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = ptrtoint ptr %vioch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vioch, align 4
  %call5 = call i32 @virtqueue_add_inbuf(ptr noundef %4, ptr noundef nonnull %sg_in, i32 noundef 1, ptr noundef %msg, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %do.body6

do.body6:                                         ; preds = %entry
  %.b1 = load i1, ptr @scmi_vio_feed_vq_rx.__print_once, align 1
  br i1 %.b1, label %do.body6.if.end16_crit_edge, label %if.then8

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @scmi_vio_feed_vq_rx.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call5) #9
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %vioch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vioch, align 4
  %call15 = call zeroext i1 @virtqueue_kick(ptr noundef %6) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8, %do.body6.if.end16_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_in) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_link_supplier(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scmi_vdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %.b14 = load i1, ptr @virtio_link_supplier.__print_once, align 1
  br i1 %.b14, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @virtio_link_supplier.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %return

if.end5:                                          ; preds = %entry
  %dev6 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %call = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %dev6, i32 noundef 2) #6
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %do.end10, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %return

return:                                           ; preds = %do.end10, %if.end5.return_crit_edge, %if.then2, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -125, %do.end10 ], [ -517, %do.body.return_crit_edge ], [ -517, %if.then2 ], [ 0, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @virtio_chan_available(ptr nocapture noundef readnone %dev, i32 noundef %idx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scmi_vdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @virtio_chan_available.__already_done, align 1
  br i1 %.b55, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !89

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @virtio_chan_available.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39:                                         ; preds = %entry
  %priv = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %3 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx, label %if.end39.cleanup_crit_edge [
    i32 0, label %if.end39.sw.epilog_crit_edge
    i32 1, label %sw.bb40
  ]

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb40:                                          ; preds = %if.end39
  tail call void @virtio_check_driver_offered_feature(ptr noundef nonnull %0, i32 noundef 0) #6
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  %arrayidx42 = getelementptr %struct.scmi_vio_channel, ptr %2, i32 1
  br i1 %tobool13.i.i.i.not, label %sw.bb40.cleanup_crit_edge, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb40.sw.epilog_crit_edge, %if.end39.sw.epilog_crit_edge
  %vioch.0 = phi ptr [ %2, %if.end39.sw.epilog_crit_edge ], [ %arrayidx42, %sw.bb40.sw.epilog_crit_edge ]
  %tobool44.not = icmp eq ptr %vioch.0, null
  br i1 %tobool44.not, label %sw.epilog.cleanup_crit_edge, label %land.rhs45

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs45:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %cinfo = getelementptr inbounds %struct.scmi_vio_channel, ptr %vioch.0, i32 0, i32 1
  %6 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cinfo, align 4
  %tobool46.not = icmp eq ptr %7, null
  br label %cleanup

cleanup:                                          ; preds = %land.rhs45, %sw.epilog.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.end39.cleanup_crit_edge ], [ false, %sw.epilog.cleanup_crit_edge ], [ %tobool46.not, %land.rhs45 ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %sw.bb40.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_chan_setup(ptr noundef %cinfo, ptr nocapture noundef readnone %dev, i1 noundef zeroext %tx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scmi_vdev, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end:                                           ; preds = %entry
  %not.tx = xor i1 %tx, true
  %cond = zext i1 %not.tx to i32
  %priv = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %arrayidx = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond
  %max_msg = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 5
  %3 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp99.not = icmp eq i32 %4, 0
  br i1 %cmp99.not, label %if.end.do.body34_crit_edge, label %for.body.lr.ph

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

for.body.lr.ph:                                   ; preds = %if.end
  %lock = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 6
  %free_list = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 2
  %prev.i = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cinfo, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 20, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %for.body.cleanup63_crit_edge, label %if.end5

for.body.cleanup63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end5:                                          ; preds = %for.body
  br i1 %tx, label %if.then7, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cinfo, align 4
  %call.i97 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 136, i32 noundef 3520) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i97, ptr %call.i, align 4
  %tobool11.not = icmp eq ptr %call.i97, null
  br i1 %tobool11.not, label %if.then7.cleanup63_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7.cleanup63_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %10 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cinfo, align 4
  %call.i98 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 136, i32 noundef 3520) #6
  %input = getelementptr inbounds %struct.scmi_vio_msg, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i98, ptr %input, align 4
  %tobool18.not = icmp eq ptr %call.i98, null
  br i1 %tobool18.not, label %if.end14.cleanup63_crit_edge, label %if.end20

if.end14.cleanup63_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end20:                                         ; preds = %if.end14
  br i1 %tx, label %do.body23, label %if.else

do.body23:                                        ; preds = %if.end20
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %list = getelementptr inbounds %struct.scmi_vio_msg, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %free_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body23.list_add_tail.exit_crit_edge

do.body23.list_add_tail.exit_crit_edge:           ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.scmi_vio_msg, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body23.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #6
  br label %for.inc

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cinfo, align 4
  tail call fastcc void @scmi_vio_feed_vq_rx(ptr noundef %arrayidx, ptr noundef nonnull %call.i, ptr noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %list_add_tail.exit
  %inc = add nuw i32 %i.0100, 1
  %21 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_msg, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body34_crit_edge

for.inc.do.body34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body34:                                        ; preds = %for.inc.do.body34_crit_edge, %if.end.do.body34_crit_edge
  %lock40 = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 6
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock40) #6
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %23 = ptrtoint ptr %transport_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %transport_info, align 4
  %cinfo47 = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 1
  %24 = ptrtoint ptr %cinfo47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cinfo, ptr %cinfo47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock40, i32 noundef %call42) #6
  %ready_lock = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 7
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ready_lock) #6
  %ready = getelementptr %struct.scmi_vio_channel, ptr %2, i32 %cond, i32 4
  %25 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ready, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ready_lock, i32 noundef %call57) #6
  br label %cleanup63

cleanup63:                                        ; preds = %do.body34, %if.end14.cleanup63_crit_edge, %if.then7.cleanup63_crit_edge, %for.body.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ 0, %do.body34 ], [ -517, %entry.cleanup63_crit_edge ], [ -12, %for.body.cleanup63_crit_edge ], [ -12, %if.then7.cleanup63_crit_edge ], [ -12, %if.end14.cleanup63_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_chan_free(i32 noundef %id, ptr noundef %p, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %ready_lock = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ready_lock) #6
  %ready = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ready, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ready_lock, i32 noundef %call2) #6
  tail call void @scmi_free_channel(ptr noundef %p, ptr noundef %data, i32 noundef %id) #6
  %lock = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 6
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %cinfo19 = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cinfo19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cinfo19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_get_max_msg(ptr nocapture noundef readonly %base_cinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %base_cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %max_msg = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_msg, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_send_message(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #1 align 64 {
entry:
  %sg_out = alloca %struct.scatterlist, align 4
  %sg_in = alloca %struct.scatterlist, align 4
  %sgs = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_out) #6
  %2 = call ptr @memset(ptr %sg_out, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_in) #6
  %3 = call ptr @memset(ptr %sg_in, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #6
  %4 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  %5 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg_out, ptr %sgs, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sg_in, ptr %4, align 4
  %lock = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 6
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %free_list = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %8, %free_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %8, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  call void @msg_tx_prepare(ptr noundef %18, ptr noundef %xfer) #6
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %call10 = call i32 @msg_command_size(ptr noundef %xfer) #6
  call void @sg_init_one(ptr noundef nonnull %sg_out, ptr noundef %20, i32 noundef %call10) #6
  %input = getelementptr i8, ptr %8, i32 -4
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  %call11 = call i32 @msg_response_size(ptr noundef %xfer) #6
  call void @sg_init_one(ptr noundef nonnull %sg_in, ptr noundef %22, i32 noundef %call11) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call12 = call i32 @virtqueue_add_sgs(ptr noundef %24, ptr noundef nonnull %sgs, i32 noundef 1, i32 noundef 1, ptr noundef %add.ptr, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %list_del.exit
  %25 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_list, align 4
  %call.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %free_list, ptr noundef %26) #6
  br i1 %call.i.i56, label %if.end.i.i57, label %if.then14.list_add.exit_crit_edge

if.then14.list_add.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i57:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %8, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %8, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %8, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i57, %if.then14.list_add.exit_crit_edge
  %.b55 = load i1, ptr @virtio_send_message.__print_once, align 1
  br i1 %.b55, label %list_add.exit.cleanup_crit_edge, label %if.then19

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @virtio_send_message.__print_once, align 1
  %cinfo23 = getelementptr inbounds %struct.scmi_vio_channel, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %cinfo23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cinfo23, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %call12) #9
  br label %cleanup

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call28 = call zeroext i1 @virtqueue_kick(ptr noundef %36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call12, %list_add.exit.cleanup_crit_edge ], [ %call12, %if.then19 ], [ %call12, %if.else ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_in) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_out) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fetch_response(ptr nocapture noundef readnone %cinfo, ptr noundef %xfer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.scmi_vio_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %rx_len = getelementptr inbounds %struct.scmi_vio_msg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len, align 4
  tail call void @msg_fetch_response(ptr noundef %3, i32 noundef %5, ptr noundef %xfer) #6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %priv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fetch_notification(ptr nocapture noundef readnone %cinfo, i32 noundef %max_len, ptr noundef %xfer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.scmi_vio_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %rx_len = getelementptr inbounds %struct.scmi_vio_msg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len, align 4
  tail call void @msg_fetch_notification(ptr noundef %3, i32 noundef %5, i32 noundef %max_len, ptr noundef %xfer) #6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %priv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_free_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_tx_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msg_command_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msg_response_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_fetch_response(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_fetch_notification(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @scmi_virtio_desc, !1, !"scmi_virtio_desc", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 502, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 482, i32 17}
!4 = !{ptr @virtio_scmi_driver, !5, !"virtio_scmi_driver", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 481, i32 29}
!6 = !{ptr @id_table, !7, !"id_table", i1 false, i1 false}
!7 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 476, i32 38}
!8 = !{ptr @features, !9, !"features", i1 false, i1 false}
!9 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 472, i32 21}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 464, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @scmi_vio_validate._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @scmi_vio_validate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 394, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scmi_vio_probe._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @scmi_vio_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 412, i32 3}
!25 = !{ptr @scmi_vio_probe._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @scmi_vio_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @scmi_vio_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 419, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @scmi_vio_probe.__key.12, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 420, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__print_once", i1 false, i1 false}
!34 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 430, i32 4}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @scmi_vio_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @scmi_vio_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @scmi_vdev, !42, !"scmi_vdev", i1 false, i1 false}
!42 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 77, i32 30}
!43 = !{ptr @scmi_vio_complete_callbacks, !44, !"scmi_vio_complete_callbacks", i1 false, i1 false}
!44 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 181, i32 23}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 128, i32 6}
!47 = distinct !{null, !48, !"__print_once", i1 false, i1 false}
!48 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 98, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @scmi_vio_feed_vq_rx._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @scmi_vio_feed_vq_rx._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @scmi_vio_vqueue_names, !54, !"scmi_vio_vqueue_names", i1 false, i1 false}
!54 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 179, i32 26}
!55 = !{ptr @scmi_virtio_ops, !56, !"scmi_virtio_ops", i1 false, i1 false}
!56 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 371, i32 40}
!57 = distinct !{null, !58, !"__print_once", i1 false, i1 false}
!58 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 196, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @virtio_link_supplier._entry, !58, !"_entry", i1 false, i1 false}
!63 = !{ptr @virtio_link_supplier._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 203, i32 3}
!66 = !{ptr @virtio_link_supplier._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @virtio_link_supplier._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 214, i32 6}
!70 = distinct !{null, !71, !"__print_once", i1 false, i1 false}
!71 = !{!"../drivers/firmware/arm_scmi/virtio.c", i32 337, i32 3}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @virtio_send_message._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @virtio_send_message._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i8 0, i8 2}
!87 = !{i64 2154447793}
!88 = !{i64 2154450103}
!89 = !{!"branch_weights", i32 2000, i32 1}
