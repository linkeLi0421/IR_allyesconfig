; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/virtio_rpmsg_bus.c_pt.bc'
source_filename = "../drivers/rpmsg/virtio_rpmsg_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtproc_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, %struct.idr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_rpmsg_channel = type { %struct.rpmsg_device, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.rpmsg_hdr = type { i32, i32, i32, i16, i16, [0 x i8] }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.rpmsg_ns_msg = type { [32 x i8], i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_virtio_rpmsg_bus__240_1072_rpmsg_init4 = internal global ptr @rpmsg_init, section ".initcall4.init", align 4
@virtio_ipc_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @rpmsg_probe, ptr null, ptr @rpmsg_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rpmsg_fini = internal global ptr @rpmsg_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [73 x i8] c"virtio_rpmsg_bus.description=Virtio-based remote processor messaging bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [53 x i8] c"virtio_rpmsg_bus.file=drivers/rpmsg/virtio_rpmsg_bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [32 x i8] c"virtio_rpmsg_bus.license=GPL v2\00", section ".modinfo", align 1
@rpmsg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to register virtio driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpmsg_init\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/rpmsg/virtio_rpmsg_bus.c\00", [63 x i8] zeroinitializer }, align 32
@rpmsg_init._entry_ptr = internal global ptr @rpmsg_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtio_rpmsg_bus\00", [47 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 7, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@__const.rpmsg_probe.vq_cbs = private unnamed_addr constant [2 x ptr] [ptr @rpmsg_recv_done, ptr @rpmsg_xmit_done], align 8
@rpmsg_probe.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@rpmsg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vrp->endpoints_lock\00", [43 x i8] zeroinitializer }, align 32
@rpmsg_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vrp->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@rpmsg_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vrp->sendq\00", [20 x i8] zeroinitializer }, align 32
@rpmsg_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpmsg_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"buffers: va %pK, dma %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@virtio_rpmsg_ops = internal constant { %struct.rpmsg_device_ops, [44 x i8] } { %struct.rpmsg_device_ops { ptr @virtio_rpmsg_create_channel, ptr @virtio_rpmsg_release_channel, ptr @virtio_rpmsg_create_ept, ptr @virtio_rpmsg_announce_create, ptr @virtio_rpmsg_announce_destroy }, [44 x i8] zeroinitializer }, align 32
@rpmsg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 996, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpmsg host is online\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmsg_probe._entry_ptr = internal global ptr @rpmsg_probe._entry, section ".printk_index", align 4
@rpmsg_recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 787, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"uhm, incoming signal, but no used buffer ?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpmsg_recv_done\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_recv_done._entry_ptr = internal global ptr @rpmsg_recv_done._entry, section ".printk_index", align 4
@rpmsg_recv_done.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Received %u messages\0A\00", [42 x i8] zeroinitializer }, align 32
@rpmsg_recv_single.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpmsg_recv_single\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"From: 0x%x, To: 0x%x, Len: %d, Flags: %d, Reserved: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rpmsg_recv_single.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpmsg_virtio RX: \00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_recv_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 733, ptr @.str.25, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"inbound msg too big: (%d, %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_recv_single._entry_ptr = internal global ptr @rpmsg_recv_single._entry, section ".printk_index", align 4
@rpmsg_recv_single._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rpmsg_recv_single._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 761, ptr @.str.25, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msg received with no recipient\0A\00", [32 x i8] zeroinitializer }, align 32
@rpmsg_recv_single._entry_ptr.29 = internal global ptr @rpmsg_recv_single._entry.27, section ".printk_index", align 4
@rpmsg_recv_single._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 769, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add a virtqueue buffer: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rpmsg_recv_single._entry_ptr.32 = internal global ptr @rpmsg_recv_single._entry.30, section ".printk_index", align 4
@rpmsg_xmit_done.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpmsg_xmit_done\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_chrdev\00", [19 x i8] zeroinitializer }, align 32
@__rpmsg_create_channel._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 403, ptr @.str.18, ptr @.str.15 }, align 1
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"channel %s:%x:%x already exist\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__rpmsg_create_channel\00", [41 x i8] zeroinitializer }, align 32
@__rpmsg_create_channel._entry_ptr = internal global ptr @__rpmsg_create_channel._entry, section ".printk_index", align 4
@__rpmsg_create_ept.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ept->cb_lock\00", [18 x i8] zeroinitializer }, align 32
@virtio_endpoint_ops = internal constant { %struct.rpmsg_endpoint_ops, [60 x i8] } { %struct.rpmsg_endpoint_ops { ptr @virtio_rpmsg_destroy_ept, ptr @virtio_rpmsg_send, ptr @virtio_rpmsg_sendto, ptr @virtio_rpmsg_send_offchannel, ptr @virtio_rpmsg_trysend, ptr @virtio_rpmsg_trysendto, ptr @virtio_rpmsg_trysend_offchannel, ptr null, ptr @virtio_rpmsg_get_mtu }, [60 x i8] zeroinitializer }, align 32
@__rpmsg_create_ept._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 244, ptr @.str.18, ptr @.str.15 }, align 1
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"idr_alloc failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__rpmsg_create_ept\00", [45 x i8] zeroinitializer }, align 32
@__rpmsg_create_ept._entry_ptr = internal global ptr @__rpmsg_create_ept._entry, section ".printk_index", align 4
@rpmsg_send_offchannel_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 565, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid addr (src 0x%x, dst 0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpmsg_send_offchannel_raw\00", [38 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw._entry_ptr = internal global ptr @rpmsg_send_offchannel_raw._entry, section ".printk_index", align 4
@rpmsg_send_offchannel_raw._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 579, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"message is too big (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw._entry_ptr.46 = internal global ptr @rpmsg_send_offchannel_raw._entry.44, section ".printk_index", align 4
@rpmsg_send_offchannel_raw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 608, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for a tx buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw._entry_ptr.49 = internal global ptr @rpmsg_send_offchannel_raw._entry.47, section ".printk_index", align 4
@rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.43, ptr @.str.2, ptr @.str.50, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"TX From 0x%x, To 0x%x, Len %d, Flags %d, Reserved %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.43, ptr @.str.2, ptr @.str.51, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpmsg_virtio TX: \00", [46 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.2, i32 639, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"virtqueue_add_outbuf failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rpmsg_send_offchannel_raw._entry_ptr.54 = internal global ptr @rpmsg_send_offchannel_raw._entry.52, section ".printk_index", align 4
@virtio_rpmsg_announce_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 338, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to announce service %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"virtio_rpmsg_announce_create\00", [35 x i8] zeroinitializer }, align 32
@virtio_rpmsg_announce_create._entry_ptr = internal global ptr @virtio_rpmsg_announce_create._entry, section ".printk_index", align 4
@virtio_rpmsg_announce_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.57, ptr @.str.2, i32 362, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"virtio_rpmsg_announce_destroy\00", [34 x i8] zeroinitializer }, align 32
@virtio_rpmsg_announce_destroy._entry_ptr = internal global ptr @virtio_rpmsg_announce_destroy._entry, section ".printk_index", align 4
@rpmsg_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1031, ptr @.str.25, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't remove rpmsg device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_remove\00", [19 x i8] zeroinitializer }, align 32
@rpmsg_remove._entry_ptr = internal global ptr @rpmsg_remove._entry, section ".printk_index", align 4
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"virtio_ipc_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1052, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1068, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1055, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1043, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1048, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 871, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 871, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 871, i32 49 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 888, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 889, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 890, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 923, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"virtio_rpmsg_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 368, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 996, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 787, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 801, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 717, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 723, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 733, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 761, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 769, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 819, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 378, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [34 x i8] c"../drivers/rpmsg/rpmsg_internal.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 95, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 402, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 223, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"virtio_endpoint_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 155, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 244, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 565, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 579, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 608, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 620, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 623, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 639, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 338, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 362, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [36 x i8] c"../drivers/rpmsg/virtio_rpmsg_bus.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1031, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_rpmsg_fini, ptr @__initcall__kmod_virtio_rpmsg_bus__240_1072_rpmsg_init4, ptr @__rpmsg_create_channel._entry, ptr @__rpmsg_create_channel._entry_ptr, ptr @__rpmsg_create_ept._entry, ptr @__rpmsg_create_ept._entry_ptr, ptr @rpmsg_fini, ptr @rpmsg_init._entry, ptr @rpmsg_init._entry_ptr, ptr @rpmsg_probe._entry, ptr @rpmsg_probe._entry_ptr, ptr @rpmsg_recv_done._entry, ptr @rpmsg_recv_done._entry_ptr, ptr @rpmsg_recv_single._entry, ptr @rpmsg_recv_single._entry.27, ptr @rpmsg_recv_single._entry.30, ptr @rpmsg_recv_single._entry_ptr, ptr @rpmsg_recv_single._entry_ptr.29, ptr @rpmsg_recv_single._entry_ptr.32, ptr @rpmsg_remove._entry, ptr @rpmsg_remove._entry_ptr, ptr @rpmsg_send_offchannel_raw._entry, ptr @rpmsg_send_offchannel_raw._entry.44, ptr @rpmsg_send_offchannel_raw._entry.47, ptr @rpmsg_send_offchannel_raw._entry.52, ptr @rpmsg_send_offchannel_raw._entry_ptr, ptr @rpmsg_send_offchannel_raw._entry_ptr.46, ptr @rpmsg_send_offchannel_raw._entry_ptr.49, ptr @rpmsg_send_offchannel_raw._entry_ptr.54, ptr @virtio_rpmsg_announce_create._entry, ptr @virtio_rpmsg_announce_create._entry_ptr, ptr @virtio_rpmsg_announce_destroy._entry, ptr @virtio_rpmsg_announce_destroy._entry_ptr, ptr @virtio_ipc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @id_table, ptr @features, ptr @rpmsg_probe.names, ptr @.str.4, ptr @.str.5, ptr @rpmsg_probe.__key, ptr @.str.6, ptr @rpmsg_probe.__key.7, ptr @.str.8, ptr @rpmsg_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @virtio_rpmsg_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @rpmsg_recv_single._rs, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @xa_init_flags.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @virtio_endpoint_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_ipc_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_probe.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_rpmsg_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_recv_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_recv_single._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_recv_single._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_recv_single._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_endpoint_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_send_offchannel_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_send_offchannel_raw._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_send_offchannel_raw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_send_offchannel_raw._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_rpmsg_announce_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_rpmsg_announce_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_ipc_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_ipc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_probe(ptr noundef %vdev) #4 align 64 {
entry:
  %vq_cbs = alloca [2 x ptr], align 8
  %vqs = alloca [2 x ptr], align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vq_cbs) #11
  %0 = load i64, ptr @__const.rpmsg_probe.vq_cbs, align 8
  %1 = ptrtoint ptr %vq_cbs to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %vq_cbs, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs) #11
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vqs, align 4, !annotation !152
  %3 = getelementptr inbounds [2 x ptr], ptr %vqs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 336) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vdev, ptr %call7.i.i, align 8
  %endpoints = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %endpoints, ptr noundef nonnull @.str.35, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_next.i.i, align 8
  %endpoints_lock = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %endpoints_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @rpmsg_probe.__key) #11
  %tx_lock = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @rpmsg_probe.__key.7) #11
  %sendq = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %sendq, ptr noundef nonnull @.str.10, ptr noundef nonnull @rpmsg_probe.__key.9) #11
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %14(ptr noundef %vdev, i32 noundef 2, ptr noundef nonnull %vqs, ptr noundef nonnull %vq_cbs, ptr noundef nonnull @rpmsg_probe.names, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.free_vrp_crit_edge

if.end.free_vrp_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vrp

if.end12:                                         ; preds = %if.end
  %15 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqs, align 4
  %rvq = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %rvq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rvq, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %svq = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %svq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %svq, align 8
  %call15 = call i32 @virtqueue_get_vring_size(ptr noundef %16) #11
  %21 = ptrtoint ptr %svq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %svq, align 8
  %call17 = call i32 @virtqueue_get_vring_size(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %call17)
  %cmp.not = icmp eq i32 %call15, %call17
  br i1 %cmp.not, label %if.end12.if.end35_crit_edge, label %do.end29, !prof !153

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 902, i32 noundef 9, ptr noundef null) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end12.if.end35_crit_edge
  %23 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rvq, align 4
  %call43 = call i32 @virtqueue_get_vring_size(ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call43)
  %cmp44 = icmp ult i32 %call43, 256
  br i1 %cmp44, label %if.then45, label %if.end35.if.end49_crit_edge

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rvq, align 4
  %call47 = call i32 @virtqueue_get_vring_size(ptr noundef %26) #11
  %mul = shl i32 %call47, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end35.if.end49_crit_edge
  %.sink = phi i32 [ %mul, %if.then45 ], [ 512, %if.end35.if.end49_crit_edge ]
  %27 = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %buf_size = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 512, ptr %buf_size, align 8
  %mul52 = shl i32 %.sink, 9
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %parent = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %bufs_dma = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 8
  %call.i236 = call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef %mul52, ptr noundef %bufs_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool54.not = icmp eq ptr %call.i236, null
  br i1 %tobool54.not, label %if.end49.vqs_del_crit_edge, label %do.body57

if.end49.vqs_del_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %vqs_del

do.body57:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_probe, %if.then67)) #11
          to label %do.end72 [label %if.then67], !srcloc !154

if.then67:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmsg_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i236, ptr noundef %bufs_dma) #11
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body57
  %rbufs = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %rbufs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i236, ptr %rbufs, align 4
  %div234 = lshr exact i32 %mul52, 1
  %add.ptr = getelementptr i8, ptr %call.i236, i32 %div234
  %sbufs = getelementptr inbounds %struct.virtproc_info, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %sbufs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %sbufs, align 8
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp75247.not = icmp ult i32 %35, 2
  br i1 %cmp75247.not, label %do.end72.for.end_crit_edge, label %do.end72.for.body_crit_edge

do.end72.for.body_crit_edge:                      ; preds = %do.end72
  br label %for.body

do.end72.for.end_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end106.for.body_crit_edge, %do.end72.for.body_crit_edge
  %i.0248 = phi i32 [ %inc, %if.end106.for.body_crit_edge ], [ 0, %do.end72.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %36 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %37 = ptrtoint ptr %rbufs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rbufs, align 4
  %39 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_size, align 8
  %mul78 = mul i32 %40, %i.0248
  %add.ptr79 = getelementptr i8, ptr %38, i32 %mul78
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %sg, ptr noundef %add.ptr79, i32 noundef %40)
  %41 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rvq, align 4
  %call82 = call i32 @virtqueue_add_inbuf(ptr noundef %42, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %add.ptr79, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, 0
  br i1 %tobool84.not, label %for.body.if.end106_crit_edge, label %do.end100, !prof !153

for.body.if.end106_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

do.end100:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 941, i32 noundef 9, ptr noundef null) #11
  br label %if.end106

if.end106:                                        ; preds = %do.end100, %for.body.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  %inc = add nuw nsw i32 %i.0248, 1
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %27, align 4
  %div74235 = lshr i32 %44, 1
  %cmp75 = icmp ult i32 %inc, %div74235
  br i1 %cmp75, label %if.end106.for.body_crit_edge, label %if.end106.for.end_crit_edge

if.end106.for.end_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end106.for.body_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end106.for.end_crit_edge, %do.end72.for.end_crit_edge
  %45 = ptrtoint ptr %svq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %svq, align 8
  call void @virtqueue_disable_cb(ptr noundef %46) #11
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 1000) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.if.then117_crit_edge, label %if.end.i

for.end.if.then117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then117

if.end.i:                                         ; preds = %for.end
  %vrp2.i = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %vrp2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %vrp2.i, align 8
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @virtio_rpmsg_ops, ptr %ops.i, align 8
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %52, i32 0, i32 6
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %54 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @virtio_rpmsg_release_device, ptr %release.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %52, i32 0, i32 11
  %55 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %features.i.i.i.i, align 8
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 7
  %and.i.i.i.i = lshr i64 %56, 32
  %57 = trunc i64 %and.i.i.i.i to i8
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %little_endian.i, align 1
  %id.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %60 = call ptr @memcpy(ptr %id.i.i, ptr @.str.36, i32 13)
  %driver_override.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %driver_override.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.36, ptr %driver_override.i.i, align 4
  %call1.i.i = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool9.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool9.not.i, label %if.end.i.rpmsg_virtio_add_ctrl_dev.exit_crit_edge, label %if.then10.i

if.end.i.rpmsg_virtio_add_ctrl_dev.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpmsg_virtio_add_ctrl_dev.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %62 = inttoptr i32 %call1.i.i to ptr
  br label %rpmsg_virtio_add_ctrl_dev.exit

rpmsg_virtio_add_ctrl_dev.exit:                   ; preds = %if.then10.i, %if.end.i.rpmsg_virtio_add_ctrl_dev.exit_crit_edge
  %retval.0.i237 = phi ptr [ %62, %if.then10.i ], [ %call7.i.i.i, %if.end.i.rpmsg_virtio_add_ctrl_dev.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rpmsg_virtio_add_ctrl_dev.exit.if.then117_crit_edge, label %if.end119

rpmsg_virtio_add_ctrl_dev.exit.if.then117_crit_edge: ; preds = %rpmsg_virtio_add_ctrl_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then117

if.then117:                                       ; preds = %rpmsg_virtio_add_ctrl_dev.exit.if.then117_crit_edge, %for.end.if.then117_crit_edge
  %retval.0.i237245 = phi ptr [ %retval.0.i237, %rpmsg_virtio_add_ctrl_dev.exit.if.then117_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.if.then117_crit_edge ]
  %63 = ptrtoint ptr %retval.0.i237245 to i32
  br label %free_coherent

if.end119:                                        ; preds = %rpmsg_virtio_add_ctrl_dev.exit
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %64 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %65, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end119.if.end139_crit_edge, label %if.then121

if.end119.if.end139_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then121:                                       ; preds = %if.end119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i239 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 1000) #15
  %tobool123.not = icmp eq ptr %call7.i.i239, null
  br i1 %tobool123.not, label %if.then121.rpmsg_virtio_del_ctrl_dev.exit_crit_edge, label %if.end125

if.then121.rpmsg_virtio_del_ctrl_dev.exit_crit_edge: ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpmsg_virtio_del_ctrl_dev.exit

if.end125:                                        ; preds = %if.then121
  %vrp126 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %call7.i.i239, i32 0, i32 1
  %67 = ptrtoint ptr %vrp126 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %vrp126, align 8
  %ops = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i239, i32 0, i32 8
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @virtio_rpmsg_ops, ptr %ops, align 8
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %features.i.i.i, align 8
  %little_endian = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i239, i32 0, i32 7
  %and.i.i.i = lshr i64 %72, 32
  %73 = trunc i64 %and.i.i.i to i8
  %74 = and i8 %73, 1
  %75 = ptrtoint ptr %little_endian to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %little_endian, align 1
  %dev131 = getelementptr inbounds %struct.virtio_device, ptr %70, i32 0, i32 6
  %parent133 = getelementptr inbounds %struct.device, ptr %call7.i.i239, i32 0, i32 1
  %76 = ptrtoint ptr %parent133 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev131, ptr %parent133, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i239, i32 0, i32 35
  %77 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @virtio_rpmsg_release_device, ptr %release, align 4
  %call135 = call i32 @rpmsg_ns_register_device(ptr noundef nonnull %call7.i.i239) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end125.if.end139_crit_edge, label %free_vch

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.end139:                                        ; preds = %if.end125.if.end139_crit_edge, %if.end119.if.end139_crit_edge
  %78 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rvq, align 4
  %call141 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %79) #11
  call fastcc void @virtio_device_ready(ptr noundef %vdev)
  br i1 %call141, label %if.then144, label %if.end139.do.end150_crit_edge

if.end139.do.end150_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rvq, align 4
  %call146 = call zeroext i1 @virtqueue_notify(ptr noundef %81) #11
  br label %do.end150

do.end150:                                        ; preds = %if.then144, %if.end139.do.end150_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  br label %cleanup

free_vch:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i239) #11
  br label %rpmsg_virtio_del_ctrl_dev.exit

rpmsg_virtio_del_ctrl_dev.exit:                   ; preds = %free_vch, %if.then121.rpmsg_virtio_del_ctrl_dev.exit_crit_edge
  %err.0 = phi i32 [ %call135, %free_vch ], [ -12, %if.then121.rpmsg_virtio_del_ctrl_dev.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %retval.0.i237) #11
  br label %free_coherent

free_coherent:                                    ; preds = %rpmsg_virtio_del_ctrl_dev.exit, %if.then117
  %err.1 = phi i32 [ %63, %if.then117 ], [ %err.0, %rpmsg_virtio_del_ctrl_dev.exit ]
  %82 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent, align 8
  %84 = ptrtoint ptr %bufs_dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bufs_dma, align 8
  call void @dma_free_attrs(ptr noundef %83, i32 noundef %mul52, ptr noundef nonnull %call.i236, i32 noundef %85, i32 noundef 0) #11
  br label %vqs_del

vqs_del:                                          ; preds = %free_coherent, %if.end49.vqs_del_crit_edge
  %err.2 = phi i32 [ %err.1, %free_coherent ], [ -12, %if.end49.vqs_del_crit_edge ]
  %86 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %del_vqs, align 4
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  call void %89(ptr noundef %91) #11
  br label %free_vrp

free_vrp:                                         ; preds = %vqs_del, %if.end.free_vrp_crit_edge
  %err.3 = phi i32 [ %call.i, %if.end.free_vrp_crit_edge ], [ %err.2, %vqs_del ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_vrp, %do.end150, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %free_vrp ], [ 0, %do.end150 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vq_cbs) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_remove(ptr noundef %vdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %num_bufs = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bufs, align 4
  %buf_size = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_size, align 4
  tail call void @virtio_reset_device(ptr noundef %vdev) #11
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @rpmsg_remove_device) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mul = mul i32 %5, %3
  %endpoints = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 10
  tail call void @idr_destroy(ptr noundef %endpoints) #11
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %del_vqs, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void %9(ptr noundef %11) #11
  %parent = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %rbufs = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %rbufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rbufs, align 4
  %bufs_dma = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %bufs_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %mul, ptr noundef %15, i32 noundef %17, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_recv_done(ptr noundef %rvq) #4 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %rvq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !152
  %call = call ptr @virtqueue_get_buf(ptr noundef %rvq, ptr noundef nonnull %len) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.16) #14
  br label %cleanup

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %msgs_received.041 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %msg.040 = phi ptr [ %call8, %if.end7.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call4 = call fastcc i32 @rpmsg_recv_single(ptr noundef %3, ptr noundef %dev2, ptr noundef nonnull %msg.040, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %while.body.do.body9_crit_edge

while.body.do.body9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

if.end7:                                          ; preds = %while.body
  %inc = add i32 %msgs_received.041, 1
  %call8 = call ptr @virtqueue_get_buf(ptr noundef %rvq, ptr noundef nonnull %len) #11
  %tobool3.not = icmp eq ptr %call8, null
  br i1 %tobool3.not, label %if.end7.do.body9_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end7.do.body9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.body9:                                         ; preds = %if.end7.do.body9_crit_edge, %while.body.do.body9_crit_edge
  %msgs_received.0.lcssa = phi i32 [ %inc, %if.end7.do.body9_crit_edge ], [ %msgs_received.041, %while.body.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_recv_done.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_recv_done, %if.then14)) #11
          to label %do.end17 [label %if.then14], !srcloc !154

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmsg_recv_done.__UNIQUE_ID_ddebug237, ptr noundef %dev2, ptr noundef nonnull @.str.19, i32 noundef %msgs_received.0.lcssa) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msgs_received.0.lcssa)
  %tobool18.not = icmp eq i32 %msgs_received.0.lcssa, 0
  br i1 %tobool18.not, label %do.end17.cleanup_crit_edge, label %if.then19

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  %rvq20 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %rvq20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rvq20, align 4
  %call21 = call zeroext i1 @virtqueue_kick(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.end17.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_xmit_done(ptr nocapture noundef readonly %svq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %svq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_xmit_done.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_xmit_done, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !154

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmsg_xmit_done.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sendq = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %sendq, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpmsg_sg_init(ptr noundef %sg, ptr noundef %cpu_addr, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cpu_addr) #11
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef 1) #11
  %call1 = tail call ptr @vmalloc_to_page(ptr noundef %cpu_addr) #11
  %0 = ptrtoint ptr %cpu_addr to i32
  %and = and i32 %0, 4095
  %1 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sg, align 4
  %3 = ptrtoint ptr %call1 to i32
  %and2.i.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !153

do.body5.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

do.body11.i.i:                                    ; preds = %if.then
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !153

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %2, 3
  %or.i.i = or i32 %and.i.i, %3
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %5 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %length.i, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %cpu_addr to i32
  %cmp = icmp ugt ptr %cpu_addr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %8 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %8, %cpu_addr
  br i1 %cmp2, label %land.rhs, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %7, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %9, %shr
  %call3 = tail call i32 @pfn_valid(i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool = icmp eq i32 %call3, 0
  br i1 %tobool, label %land.rhs.do.end_crit_edge, label %land.rhs.if.end_crit_edge, !prof !157

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %cpu_addr, i32 noundef %len) #11
  br label %if.end25

if.end25:                                         ; preds = %if.end, %sg_set_page.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_rpmsg_release_device(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_ns_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.virtio_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_status, align 4
  %call = tail call zeroext i8 %3(ptr noundef %dev) #11
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %dev) #11
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %8 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !153

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %set_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_status, align 4
  %or = or i8 %call, 4
  tail call void %12(ptr noundef %dev, i8 noundef zeroext %or) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmsg_recv_single(ptr noundef %vrp, ptr noundef %dev, ptr noundef %msg, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %vrp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vrp, align 4
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %4, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  %len1 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %len1, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  %retval.0.i131 = select i1 %tobool13.i.i.i.not, i16 %6, i16 %7
  %conv = zext i16 %retval.0.i131 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_recv_single.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_recv_single, %if.then)) #11
          to label %do.body17 [label %if.then], !srcloc !154

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %msg, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %retval.0.i132 = select i1 %tobool13.i.i.i.not, i32 %9, i32 %10
  %dst = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %dst, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %retval.0.i133 = select i1 %tobool13.i.i.i.not, i32 %12, i32 %13
  %flags = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %flags, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  %retval.0.i134 = select i1 %tobool13.i.i.i.not, i16 %15, i16 %16
  %conv14 = zext i16 %retval.0.i134 to i32
  %reserved = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %reserved, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %retval.0.i135 = select i1 %tobool13.i.i.i.not, i32 %18, i32 %19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmsg_recv_single.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i132, i32 noundef %retval.0.i133, i32 noundef %conv, i32 noundef %conv14, i32 noundef %retval.0.i135) #11
  br label %do.body17

do.body17:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_recv_single.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_recv_single, %if.then29)) #11
          to label %do.end32 [label %if.then29], !srcloc !154

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %conv, 16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %msg, i32 noundef %add, i1 noundef zeroext true) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %buf_size = getelementptr inbounds %struct.virtproc_info, ptr %vrp, i32 0, i32 6
  %20 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %len)
  %cmp = icmp ult i32 %21, %len
  %sub = add i32 %len, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp34 = icmp ult i32 %sub, %conv
  %or.cond = select i1 %cmp, i1 true, i1 %cmp34
  br i1 %or.cond, label %do.end39, label %if.end40

do.end39:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %len, i32 noundef %conv) #14
  br label %cleanup

if.end40:                                         ; preds = %do.end32
  %endpoints_lock = getelementptr inbounds %struct.virtproc_info, ptr %vrp, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %endpoints_lock, i32 noundef 0) #11
  %endpoints = getelementptr inbounds %struct.virtproc_info, ptr %vrp, i32 0, i32 10
  %dst42 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 1
  %22 = ptrtoint ptr %dst42 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %dst42, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %retval.0.i136 = select i1 %tobool13.i.i.i.not, i32 %23, i32 %24
  %call44 = tail call ptr @idr_find(ptr noundef %endpoints, i32 noundef %retval.0.i136) #11
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.body62.critedge, label %if.then46

if.then46:                                        ; preds = %if.end40
  %refcount = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call44, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then46.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !157

if.then46.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then46
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then46.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then46.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %endpoints_lock) #11
  %cb_lock = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call44, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cb_lock, i32 noundef 0) #11
  %cb = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call44, i32 0, i32 2
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cb, align 4
  %tobool51.not = icmp eq ptr %28, null
  br i1 %tobool51.not, label %kref_get.exit.if.end58_crit_edge, label %if.then52

kref_get.exit.if.end58_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then52:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call44, align 4
  %data = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg, i32 0, i32 5
  %priv = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call44, i32 0, i32 5
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %msg, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %retval.0.i137 = select i1 %tobool13.i.i.i.not, i32 %34, i32 %35
  %call57 = tail call i32 %28(ptr noundef %30, ptr noundef %data, i32 noundef %conv, ptr noundef %32, i32 noundef %retval.0.i137) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %kref_get.exit.if.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef %cb_lock) #11
  %call.i.i.i.i.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !161
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i139 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i139, label %if.end5.i.i.i.i.if.end72_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.if.end72_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end72

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  tail call void @kfree(ptr noundef nonnull %call44) #11
  br label %if.end72

do.body62.critedge:                               ; preds = %if.end40
  tail call void @mutex_unlock(ptr noundef %endpoints_lock) #11
  %call63 = tail call i32 @___ratelimit(ptr noundef nonnull @rpmsg_recv_single._rs, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body62.critedge.if.end72_crit_edge, label %do.end68

do.body62.critedge.if.end72_crit_edge:            ; preds = %do.body62.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

do.end68:                                         ; preds = %do.body62.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #14
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %do.body62.critedge.if.end72_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end72_crit_edge
  %37 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_size, align 4
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %sg, ptr noundef %msg, i32 noundef %38)
  %rvq = getelementptr inbounds %struct.virtproc_info, ptr %vrp, i32 0, i32 1
  %39 = ptrtoint ptr %rvq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rvq, align 4
  %call74 = call i32 @virtqueue_add_inbuf(ptr noundef %40, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %msg, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end80, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call74) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end72.cleanup_crit_edge, %do.end39
  %retval.0 = phi i32 [ -22, %do.end39 ], [ %call74, %do.end80 ], [ 0, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @virtio_rpmsg_create_channel(ptr nocapture noundef readonly %rpdev, ptr noundef %chinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrp1 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  %call.i = tail call ptr @rpmsg_find_device(ptr noundef %dev1.i, ptr noundef %chinfo) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef nonnull %call.i) #11
  %src.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %4 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.37, ptr noundef %chinfo, i32 noundef %5, i32 noundef %7) #14
  br label %__rpmsg_create_channel.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1000) #15
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.__rpmsg_create_channel.exit_crit_edge, label %if.end5.i

if.end.i.__rpmsg_create_channel.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rpmsg_create_channel.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %vrp6.i = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %vrp6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %vrp6.i, align 8
  %src8.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %10 = ptrtoint ptr %src8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src8.i, align 4
  %src9.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %src9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %src9.i, align 8
  %dst10.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  %13 = ptrtoint ptr %dst10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst10.i, align 4
  %dst11.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %dst11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dst11.i, align 4
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @virtio_rpmsg_ops, ptr %ops.i, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features.i.i.i.i, align 8
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 7
  %and.i.i.i.i = lshr i64 %20, 32
  %21 = trunc i64 %and.i.i.i.i to i8
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %little_endian.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp ne i32 %11, -1
  %announce.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 6
  %frombool15.i = zext i1 %cmp.i to i8
  %24 = ptrtoint ptr %announce.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool15.i, ptr %announce.i, align 4
  %id.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %call20.i = tail call ptr @strncpy(ptr noundef %id.i, ptr noundef %chinfo, i32 noundef 32) #11
  %dev22.i = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 6
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev22.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %26 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @virtio_rpmsg_release_device, ptr %release.i, align 4
  %call25.i = tail call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  %call2..i = select i1 %tobool26.not.i, ptr %call7.i.i.i, ptr null
  br label %__rpmsg_create_channel.exit

__rpmsg_create_channel.exit:                      ; preds = %if.end5.i, %if.end.i.__rpmsg_create_channel.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ null, %if.end.i.__rpmsg_create_channel.exit_crit_edge ], [ %call2..i, %if.end5.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_release_channel(ptr nocapture noundef readonly %rpdev, ptr noundef %chinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrp1 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  %call = tail call i32 @rpmsg_unregister_device(ptr noundef %dev, ptr noundef %chinfo) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @virtio_rpmsg_create_ept(ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, [10 x i32] %chinfo.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chinfo.coerce.fca.8.extract = extractvalue [10 x i32] %chinfo.coerce, 8
  %vrp = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp, align 8
  %tobool.not.i = icmp eq ptr %rpdev, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %dev2.i, %cond.false.i ], [ %rpdev, %entry.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 116) #15
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %cond.end.i.__rpmsg_create_ept.exit_crit_edge, label %if.end.i

cond.end.i.__rpmsg_create_ept.exit_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rpmsg_create_ept.exit

if.end.i:                                         ; preds = %cond.end.i
  %refcount.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcount.i, align 4
  %cb_lock.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %cb_lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @__rpmsg_create_ept.__key) #11
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rpdev, ptr %call7.i.i.i, align 8
  %cb5.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %cb5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cb, ptr %cb5.i, align 8
  %priv6.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %priv6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %priv6.i, align 4
  %ops.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtio_endpoint_ops, ptr %ops.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chinfo.coerce.fca.8.extract)
  %cmp.i = icmp eq i32 %chinfo.coerce.fca.8.extract, -1
  %add.i = add i32 %chinfo.coerce.fca.8.extract, 1
  %id_min.0.i = select i1 %cmp.i, i32 1024, i32 %chinfo.coerce.fca.8.extract
  %endpoints_lock.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %endpoints_lock.i, i32 noundef 0) #11
  %endpoints.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 10
  %call9.i = tail call i32 @idr_alloc(ptr noundef %endpoints.i, ptr noundef nonnull %call7.i.i.i, i32 noundef %id_min.0.i, i32 noundef %add.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end15.i

do.end14.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cond.i, ptr noundef nonnull @.str.40, i32 noundef %call9.i) #14
  tail call void @mutex_unlock(ptr noundef %endpoints_lock.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__rpmsg_create_ept.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !153

if.end5.i.i.i.i.i.__rpmsg_create_ept.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rpmsg_create_ept.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %__rpmsg_create_ept.exit

if.then.i.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %__rpmsg_create_ept.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %addr16.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9.i, ptr %addr16.i, align 8
  tail call void @mutex_unlock(ptr noundef %endpoints_lock.i) #11
  br label %__rpmsg_create_ept.exit

__rpmsg_create_ept.exit:                          ; preds = %if.end15.i, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__rpmsg_create_ept.exit_crit_edge, %cond.end.i.__rpmsg_create_ept.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end15.i ], [ null, %cond.end.i.__rpmsg_create_ept.exit_crit_edge ], [ null, %if.end5.i.i.i.i.i.__rpmsg_create_ept.exit_crit_edge ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.then.i.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_announce_create(ptr noundef %rpdev) #4 align 64 {
entry:
  %nsm = alloca %struct.rpmsg_ns_msg, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrp1 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp1, align 8
  %announce = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 6
  %2 = ptrtoint ptr %announce to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %announce, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %4 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ept, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true4

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %7, i32 noundef 0) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %land.lhs.true4.if.end16_crit_edge, label %if.then

land.lhs.true4.if.end16_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nsm) #11
  %id = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 1
  %call7 = call ptr @strncpy(ptr noundef nonnull %nsm, ptr noundef %id, i32 noundef 32)
  %10 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ept, align 8
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %tobool.not.i = icmp eq ptr %rpdev, null
  br i1 %tobool.not.i, label %if.then.cpu_to_rpmsg32.exit32_crit_edge, label %if.else.i30

if.then.cpu_to_rpmsg32.exit32_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_to_rpmsg32.exit32

if.else.i30:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 7
  %14 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %little_endian.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  %16 = call i32 @llvm.bswap.i32(i32 %13) #11
  %retval.0.i.i = select i1 %tobool2.not.i, i32 %13, i32 %16
  br label %cpu_to_rpmsg32.exit32

cpu_to_rpmsg32.exit32:                            ; preds = %if.else.i30, %if.then.cpu_to_rpmsg32.exit32_crit_edge
  %retval.0.i.i.sink = phi i32 [ %retval.0.i.i, %if.else.i30 ], [ %13, %if.then.cpu_to_rpmsg32.exit32_crit_edge ]
  %17 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %nsm, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %retval.0.i.i.sink, ptr %17, align 1
  %flags = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %nsm, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %flags, align 1
  %call13 = call i32 @rpmsg_sendto(ptr noundef %11, ptr noundef nonnull %nsm, i32 noundef 40, i32 noundef 53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cpu_to_rpmsg32.exit32.if.end_crit_edge, label %do.end

cpu_to_rpmsg32.exit32.if.end_crit_edge:           ; preds = %cpu_to_rpmsg32.exit32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %cpu_to_rpmsg32.exit32
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.55, i32 noundef %call13) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %cpu_to_rpmsg32.exit32.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nsm) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end, %land.lhs.true4.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %err.0 = phi i32 [ %call13, %if.end ], [ 0, %land.lhs.true4.if.end16_crit_edge ], [ 0, %land.lhs.true.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_announce_destroy(ptr noundef %rpdev) #4 align 64 {
entry:
  %nsm = alloca %struct.rpmsg_ns_msg, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrp1 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp1, align 8
  %announce = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 6
  %2 = ptrtoint ptr %announce to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %announce, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %4 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ept, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true4

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %7, i32 noundef 0) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %land.lhs.true4.if.end16_crit_edge, label %if.then

land.lhs.true4.if.end16_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nsm) #11
  %id = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 1
  %call7 = call ptr @strncpy(ptr noundef nonnull %nsm, ptr noundef %id, i32 noundef 32)
  %10 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ept, align 8
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %tobool.not.i = icmp eq ptr %rpdev, null
  br i1 %tobool.not.i, label %if.then.cpu_to_rpmsg32.exit33_crit_edge, label %if.else.i31

if.then.cpu_to_rpmsg32.exit33_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_to_rpmsg32.exit33

if.else.i31:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 7
  %14 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %little_endian.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  %16 = call i32 @llvm.bswap.i32(i32 %13) #11
  %retval.0.i.i = select i1 %tobool2.not.i, i32 %13, i32 %16
  %retval.0.i.i30 = select i1 %tobool2.not.i, i32 1, i32 16777216
  br label %cpu_to_rpmsg32.exit33

cpu_to_rpmsg32.exit33:                            ; preds = %if.else.i31, %if.then.cpu_to_rpmsg32.exit33_crit_edge
  %retval.0.i.i.sink = phi i32 [ %retval.0.i.i, %if.else.i31 ], [ %13, %if.then.cpu_to_rpmsg32.exit33_crit_edge ]
  %retval.0.i32 = phi i32 [ %retval.0.i.i30, %if.else.i31 ], [ 1, %if.then.cpu_to_rpmsg32.exit33_crit_edge ]
  %17 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %nsm, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %retval.0.i.i.sink, ptr %17, align 1
  %flags = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %nsm, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %retval.0.i32, ptr %flags, align 1
  %call13 = call i32 @rpmsg_sendto(ptr noundef %11, ptr noundef nonnull %nsm, i32 noundef 40, i32 noundef 53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cpu_to_rpmsg32.exit33.if.end_crit_edge, label %do.end

cpu_to_rpmsg32.exit33.if.end_crit_edge:           ; preds = %cpu_to_rpmsg32.exit33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %cpu_to_rpmsg32.exit33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.55, i32 noundef %call13) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %cpu_to_rpmsg32.exit33.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nsm) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end, %land.lhs.true4.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %err.0 = phi i32 [ %call13, %if.end ], [ 0, %land.lhs.true4.if.end16_crit_edge ], [ 0, %land.lhs.true.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_find_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_rpmsg_destroy_ept(ptr noundef %ept) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %vrp = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrp, align 8
  %endpoints_lock.i = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %endpoints_lock.i, i32 noundef 0) #11
  %endpoints.i = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 10
  %addr.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef %endpoints.i, i32 noundef %5) #11
  tail call void @mutex_unlock(ptr noundef %endpoints_lock.i) #11
  %cb_lock.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cb_lock.i, i32 noundef 0) #11
  %cb.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 2
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cb.i, align 4
  tail call void @mutex_unlock(ptr noundef %cb_lock.i) #11
  %refcount.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__rpmsg_destroy_ept.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !153

if.end5.i.i.i.i.i.__rpmsg_destroy_ept.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rpmsg_destroy_ept.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %__rpmsg_destroy_ept.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  tail call void @kfree(ptr noundef %ept) #11
  br label %__rpmsg_destroy_ept.exit

__rpmsg_destroy_ept.exit:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__rpmsg_destroy_ept.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_send(ptr nocapture noundef readonly %ept, ptr nocapture noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %dst2 = getelementptr inbounds %struct.rpmsg_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst2, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_sendto(ptr nocapture noundef readonly %ept, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %dst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %3, i32 noundef %dst, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_send_offchannel(ptr nocapture noundef readonly %ept, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %src, i32 noundef %dst, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysend(ptr nocapture noundef readonly %ept, ptr nocapture noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %dst2 = getelementptr inbounds %struct.rpmsg_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst2, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysendto(ptr nocapture noundef readonly %ept, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %dst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %3, i32 noundef %dst, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysend_offchannel(ptr nocapture noundef readonly %ept, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %call = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %1, i32 noundef %src, i32 noundef %dst, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_rpmsg_get_mtu(ptr nocapture noundef readonly %ept) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %vrp = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrp, align 8
  %buf_size = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_size, align 4
  %sub = add i32 %5, -16
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %rpdev, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef readonly %data, i32 noundef %len, i1 noundef zeroext %wait) unnamed_addr #4 align 64 {
entry:
  %len.i205 = alloca i32, align 4
  %len.i188 = alloca i32, align 4
  %len.i = alloca i32, align 4
  %sg = alloca %struct.scatterlist, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrp1 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %vrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrp1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src)
  %cmp = icmp eq i32 %src, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst)
  %cmp3 = icmp eq i32 %dst, -1
  %or.cond = or i1 %cmp, %cmp3
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.42, i32 noundef %src, i32 noundef %dst) #14
  br label %cleanup120

if.end:                                           ; preds = %entry
  %buf_size = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_size, align 4
  %sub = add i32 %4, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp4 = icmp ult i32 %sub, %len
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.45, i32 noundef %len) #14
  br label %cleanup120

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len.i, align 4, !annotation !152
  %tx_lock.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %last_sbuf.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_sbuf.i, align 4
  %num_bufs.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_bufs.i, align 4
  %div10.i = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div10.i)
  %cmp.i = icmp ult i32 %7, %div10.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %sbufs.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %sbufs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbufs.i, align 4
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size, align 4
  %inc.i = add nuw i32 %7, 1
  %14 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %last_sbuf.i, align 4
  %mul.i = mul i32 %13, %7
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  br label %get_a_tx_buf.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %svq.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %svq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %svq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %16, ptr noundef nonnull %len.i) #11
  br label %get_a_tx_buf.exit

get_a_tx_buf.exit:                                ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %call.i, %if.else.i ]
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %tobool.not = icmp ne ptr %ret.0.i, null
  %brmerge = or i1 %tobool.not, %wait
  br i1 %brmerge, label %while.cond.preheader, label %get_a_tx_buf.exit.cleanup120_crit_edge

get_a_tx_buf.exit.cleanup120_crit_edge:           ; preds = %get_a_tx_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

while.cond.preheader:                             ; preds = %get_a_tx_buf.exit
  %sleepers.i = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 13
  %svq.i186 = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 2
  %sbufs.i194 = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 4
  %sendq = getelementptr inbounds %struct.virtproc_info, ptr %1, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %rpmsg_downref_sleepers.exit.while.cond_crit_edge, %while.cond.preheader
  %msg.0 = phi ptr [ %msg.1, %rpmsg_downref_sleepers.exit.while.cond_crit_edge ], [ %ret.0.i, %while.cond.preheader ]
  %tobool13.not = icmp eq ptr %msg.0, null
  br i1 %tobool13.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sleepers.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @llvm.prefetch.p0(ptr %sleepers.i, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sleepers.i, ptr %sleepers.i, i32 1, ptr elementtype(i32) %sleepers.i) #11, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i185 = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i185, label %if.then.i187, label %while.body.rpmsg_upref_sleepers.exit_crit_edge

while.body.rpmsg_upref_sleepers.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpmsg_upref_sleepers.exit

if.then.i187:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %svq.i186, align 4
  %call1.i = call zeroext i1 @virtqueue_enable_cb(ptr noundef %19) #11
  br label %rpmsg_upref_sleepers.exit

rpmsg_upref_sleepers.exit:                        ; preds = %if.then.i187, %while.body.rpmsg_upref_sleepers.exit_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 601) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i188) #11
  %20 = ptrtoint ptr %len.i188 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %len.i188, align 4, !annotation !152
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %21 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_sbuf.i, align 4
  %23 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_bufs.i, align 4
  %div10.i192 = lshr i32 %24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div10.i192)
  %cmp.i193 = icmp ult i32 %22, %div10.i192
  br i1 %cmp.i193, label %if.then.i199, label %if.else.i202

if.then.i199:                                     ; preds = %rpmsg_upref_sleepers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %sbufs.i194 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sbufs.i194, align 4
  %27 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_size, align 4
  %inc.i196 = add nuw i32 %22, 1
  %29 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i196, ptr %last_sbuf.i, align 4
  %mul.i197 = mul i32 %28, %22
  %add.ptr.i198 = getelementptr i8, ptr %26, i32 %mul.i197
  br label %get_a_tx_buf.exit204

if.else.i202:                                     ; preds = %rpmsg_upref_sleepers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %svq.i186, align 4
  %call.i201 = call ptr @virtqueue_get_buf(ptr noundef %31, ptr noundef nonnull %len.i188) #11
  br label %get_a_tx_buf.exit204

get_a_tx_buf.exit204:                             ; preds = %if.else.i202, %if.then.i199
  %ret.0.i203 = phi ptr [ %add.ptr.i198, %if.then.i199 ], [ %call.i201, %if.else.i202 ]
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i188) #11
  %tobool22.not = icmp eq ptr %ret.0.i203, null
  br i1 %tobool22.not, label %if.then34, label %get_a_tx_buf.exit204.if.end63_crit_edge

get_a_tx_buf.exit204.if.end63_crit_edge:          ; preds = %get_a_tx_buf.exit204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then34:                                        ; preds = %get_a_tx_buf.exit204
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then34
  %__ret35.0 = phi i32 [ 1500, %if.then34 ], [ %call60, %cleanup ]
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %sendq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i205) #11
  %33 = ptrtoint ptr %len.i205 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %len.i205, align 4, !annotation !152
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %34 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_sbuf.i, align 4
  %36 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_bufs.i, align 4
  %div10.i209 = lshr i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div10.i209)
  %cmp.i210 = icmp ult i32 %35, %div10.i209
  br i1 %cmp.i210, label %if.then.i216, label %if.else.i219

if.then.i216:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %sbufs.i194 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sbufs.i194, align 4
  %40 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_size, align 4
  %inc.i213 = add nuw i32 %35, 1
  %42 = ptrtoint ptr %last_sbuf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc.i213, ptr %last_sbuf.i, align 4
  %mul.i214 = mul i32 %41, %35
  %add.ptr.i215 = getelementptr i8, ptr %39, i32 %mul.i214
  br label %get_a_tx_buf.exit221

if.else.i219:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %svq.i186, align 4
  %call.i218 = call ptr @virtqueue_get_buf(ptr noundef %44, ptr noundef nonnull %len.i205) #11
  br label %get_a_tx_buf.exit221

get_a_tx_buf.exit221:                             ; preds = %if.else.i219, %if.then.i216
  %ret.0.i220 = phi ptr [ %add.ptr.i215, %if.then.i216 ], [ %call.i218, %if.else.i219 ]
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i205) #11
  %tobool40.not = icmp eq ptr %ret.0.i220, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.0)
  %tobool44.not = icmp eq i32 %__ret35.0, 0
  %spec.store.select126 = select i1 %tobool44.not, i32 1, i32 %__ret35.0
  %__ret35.1 = select i1 %tobool40.not, i32 %__ret35.0, i32 %spec.store.select126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool50.not = icmp eq i32 %__ret35.1, 0
  %not.tobool40.not = xor i1 %tobool40.not, true
  %45 = select i1 %not.tobool40.not, i1 true, i1 %tobool50.not
  br i1 %45, label %for.end, label %if.end56

if.end56:                                         ; preds = %get_a_tx_buf.exit221
  %tobool57.not = icmp eq i32 %call37, 0
  br i1 %tobool57.not, label %cleanup, label %if.end56.__out_crit_edge

if.end56.__out_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = call i32 @schedule_timeout(i32 noundef %__ret35.1) #11
  br label %for.cond

for.end:                                          ; preds = %get_a_tx_buf.exit221
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %sendq, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end56.__out_crit_edge
  %__ret35.2244 = phi i32 [ %__ret35.1, %for.end ], [ %call37, %if.end56.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end63

if.end63:                                         ; preds = %__out, %get_a_tx_buf.exit204.if.end63_crit_edge
  %__ret.1 = phi i32 [ 1500, %get_a_tx_buf.exit204.if.end63_crit_edge ], [ %__ret35.2244, %__out ]
  %msg.1 = phi ptr [ %ret.0.i203, %get_a_tx_buf.exit204.if.end63_crit_edge ], [ %ret.0.i220, %__out ]
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %call.i.i.i224 = call zeroext i1 @__kasan_check_write(ptr noundef %sleepers.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void @llvm.prefetch.p0(ptr %sleepers.i, i32 1, i32 3, i32 1) #11
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sleepers.i, ptr %sleepers.i, i32 1, ptr elementtype(i32) %sleepers.i) #11, !srcloc !168
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i226, label %if.end63.rpmsg_downref_sleepers.exit_crit_edge

if.end63.rpmsg_downref_sleepers.exit_crit_edge:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpmsg_downref_sleepers.exit

if.then.i226:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %svq.i186, align 4
  call void @virtqueue_disable_cb(ptr noundef %48) #11
  br label %rpmsg_downref_sleepers.exit

rpmsg_downref_sleepers.exit:                      ; preds = %if.then.i226, %if.end63.rpmsg_downref_sleepers.exit_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  %tobool65.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool65.not, label %do.end69, label %rpmsg_downref_sleepers.exit.while.cond_crit_edge

rpmsg_downref_sleepers.exit.while.cond_crit_edge: ; preds = %rpmsg_downref_sleepers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.end69:                                         ; preds = %rpmsg_downref_sleepers.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.48) #14
  br label %cleanup120

while.end:                                        ; preds = %while.cond
  %conv = trunc i32 %len to i16
  %tobool.not.i = icmp eq ptr %rpdev, null
  br i1 %tobool.not.i, label %cpu_to_rpmsg32.exit.thread, label %if.else.i239

cpu_to_rpmsg32.exit.thread:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %len72250 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 3
  %49 = ptrtoint ptr %len72250 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %conv, ptr %len72250, align 1
  %flags251 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 4
  %50 = ptrtoint ptr %flags251 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 0, ptr %flags251, align 1
  %51 = ptrtoint ptr %msg.0 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %src, ptr %msg.0, align 1
  br label %cpu_to_rpmsg32.exit241

if.else.i239:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 7
  %52 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %little_endian.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool2.not.i = icmp eq i8 %53, 0
  %54 = call i16 @llvm.bswap.i16(i16 %conv) #11
  %retval.0.i.i = select i1 %tobool2.not.i, i16 %conv, i16 %54
  %len72 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 3
  %55 = ptrtoint ptr %len72 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %retval.0.i.i, ptr %len72, align 1
  %flags = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 0, ptr %flags, align 1
  %57 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %little_endian.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool2.not.i231 = icmp eq i8 %58, 0
  %59 = call i32 @llvm.bswap.i32(i32 %src) #11
  %retval.0.i.i232 = select i1 %tobool2.not.i231, i32 %src, i32 %59
  %60 = ptrtoint ptr %msg.0 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %retval.0.i.i232, ptr %msg.0, align 1
  %61 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %little_endian.i, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool2.not.i237 = icmp eq i8 %62, 0
  %63 = call i32 @llvm.bswap.i32(i32 %dst) #11
  %retval.0.i.i238 = select i1 %tobool2.not.i237, i32 %dst, i32 %63
  br label %cpu_to_rpmsg32.exit241

cpu_to_rpmsg32.exit241:                           ; preds = %if.else.i239, %cpu_to_rpmsg32.exit.thread
  %flags252255 = phi ptr [ %flags, %if.else.i239 ], [ %flags251, %cpu_to_rpmsg32.exit.thread ]
  %retval.0.i240 = phi i32 [ %retval.0.i.i238, %if.else.i239 ], [ %dst, %cpu_to_rpmsg32.exit.thread ]
  %dst76 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 1
  %64 = ptrtoint ptr %dst76 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %retval.0.i240, ptr %dst76, align 1
  %reserved = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 2
  %65 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 0, ptr %reserved, align 1
  %data77 = getelementptr inbounds %struct.rpmsg_hdr, ptr %msg.0, i32 0, i32 5
  %66 = call ptr @memcpy(ptr %data77, ptr %data, i32 %len)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_send_offchannel_raw, %if.then86)) #11
          to label %do.body93 [label %if.then86], !srcloc !154

if.then86:                                        ; preds = %cpu_to_rpmsg32.exit241
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %flags252255 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %flags252255, align 1
  %conv88 = zext i16 %68 to i32
  %69 = ptrtoint ptr %reserved to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %reserved, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug233, ptr noundef %rpdev, ptr noundef nonnull @.str.50, i32 noundef %src, i32 noundef %dst, i32 noundef %len, i32 noundef %conv88, i32 noundef %70) #11
  br label %do.body93

do.body93:                                        ; preds = %if.then86, %cpu_to_rpmsg32.exit241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_send_offchannel_raw, %if.then105)) #11
          to label %do.end108 [label %if.then105], !srcloc !154

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %len, 16
  call void @print_hex_dump(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %msg.0, i32 noundef %add, i1 noundef zeroext true) #11
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %do.body93
  %add109 = add i32 %len, 16
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %sg, ptr noundef nonnull %msg.0, i32 noundef %add109)
  call void @mutex_lock_nested(ptr noundef %tx_lock.i, i32 noundef 0) #11
  %71 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %svq.i186, align 4
  %call110 = call i32 @virtqueue_add_outbuf(ptr noundef %72, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef nonnull %msg.0, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end116, label %do.end115

do.end115:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.53, i32 noundef %call110) #14
  br label %out

if.end116:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %svq.i186 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %svq.i186, align 4
  %call118 = call zeroext i1 @virtqueue_kick(ptr noundef %74) #11
  br label %out

out:                                              ; preds = %if.end116, %do.end115
  call void @mutex_unlock(ptr noundef %tx_lock.i) #11
  br label %cleanup120

cleanup120:                                       ; preds = %out, %do.end69, %get_a_tx_buf.exit.cleanup120_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -90, %do.end8 ], [ -512, %do.end69 ], [ %call110, %out ], [ -12, %get_a_tx_buf.exit.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_sendto(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_virtio_rpmsg_bus__240_1072_rpmsg_init4, !1, !"__initcall__kmod_virtio_rpmsg_bus__240_1072_rpmsg_init4", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1072, i32 1}
!2 = !{ptr @__exitcall_rpmsg_fini, !3, !"__exitcall_rpmsg_fini", i1 false, i1 false}
!3 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1078, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1081, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1082, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1068, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rpmsg_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @rpmsg_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1055, i32 17}
!17 = !{ptr @virtio_ipc_driver, !18, !"virtio_ipc_driver", i1 false, i1 false}
!18 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1052, i32 29}
!19 = !{ptr @id_table, !20, !"id_table", i1 false, i1 false}
!20 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1043, i32 32}
!21 = !{ptr @features, !22, !"features", i1 false, i1 false}
!22 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1048, i32 21}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 871, i32 40}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 871, i32 49}
!27 = !{ptr @rpmsg_probe.names, !28, !"names", i1 false, i1 false}
!28 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 871, i32 28}
!29 = !{ptr @rpmsg_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 888, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rpmsg_probe.__key.7, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 889, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rpmsg_probe.__key.9, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 890, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 923, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rpmsg_probe.__UNIQUE_ID_ddebug239, !39, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 996, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rpmsg_probe._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @rpmsg_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 787, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rpmsg_recv_done._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @rpmsg_recv_done._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 801, i32 2}
!56 = !{ptr @rpmsg_recv_done.__UNIQUE_ID_ddebug237, !55, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 717, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rpmsg_recv_single.__UNIQUE_ID_ddebug235, !58, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 723, i32 2}
!63 = !{ptr @rpmsg_recv_single.__UNIQUE_ID_ddebug236, !62, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!64 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 733, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rpmsg_recv_single._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rpmsg_recv_single._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 761, i32 3}
!72 = !{ptr @rpmsg_recv_single._rs, !71, !"_rs", i1 false, i1 false}
!73 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rpmsg_recv_single._entry.27, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @rpmsg_recv_single._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 769, i32 3}
!78 = !{ptr @rpmsg_recv_single._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rpmsg_recv_single._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 819, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rpmsg_xmit_done.__UNIQUE_ID_ddebug238, !81, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!84 = !{ptr @xa_init_flags.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rpmsg/rpmsg_internal.h", i32 95, i32 25}
!89 = !{ptr @virtio_rpmsg_ops, !90, !"virtio_rpmsg_ops", i1 false, i1 false}
!90 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 368, i32 38}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 402, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__rpmsg_create_channel._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @__rpmsg_create_channel._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @__rpmsg_create_ept.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 223, i32 2}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 244, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__rpmsg_create_ept._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @__rpmsg_create_ept._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @virtio_endpoint_ops, !105, !"virtio_endpoint_ops", i1 false, i1 false}
!105 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 155, i32 40}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 565, i32 3}
!108 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rpmsg_send_offchannel_raw._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rpmsg_send_offchannel_raw._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 579, i32 3}
!113 = !{ptr @rpmsg_send_offchannel_raw._entry.44, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rpmsg_send_offchannel_raw._entry_ptr.46, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 608, i32 4}
!117 = !{ptr @rpmsg_send_offchannel_raw._entry.47, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @rpmsg_send_offchannel_raw._entry_ptr.49, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 620, i32 2}
!121 = !{ptr @rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug233, !120, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 623, i32 2}
!124 = !{ptr @rpmsg_send_offchannel_raw.__UNIQUE_ID_ddebug234, !123, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 639, i32 3}
!127 = !{ptr @rpmsg_send_offchannel_raw._entry.52, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rpmsg_send_offchannel_raw._entry_ptr.54, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 338, i32 4}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @virtio_rpmsg_announce_create._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @virtio_rpmsg_announce_create._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 362, i32 4}
!136 = !{ptr @virtio_rpmsg_announce_destroy._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @virtio_rpmsg_announce_destroy._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/rpmsg/virtio_rpmsg_bus.c", i32 1031, i32 3}
!140 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rpmsg_remove._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @rpmsg_remove._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2148350760, i64 2148350765, i64 2148350778, i64 2148350822, i64 2148350856, i64 2148350877}
!155 = !{i64 2153804032, i64 2153804524, i64 2153804069, i64 2153804125, i64 2153804159, i64 2153804183, i64 2153804224, i64 2153804245, i64 2153804273, i64 2153804307}
!156 = !{i64 2153805642, i64 2153806134, i64 2153805679, i64 2153805735, i64 2153805769, i64 2153805793, i64 2153805834, i64 2153805855, i64 2153805883, i64 2153805917}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2153982028, i64 2153982522, i64 2153982065, i64 2153982121, i64 2153982155, i64 2153982179, i64 2153982220, i64 2153982241, i64 2153982269, i64 2153982303}
!159 = !{i64 2148538897, i64 2148538929, i64 2148538958, i64 2148538992, i64 2148539023, i64 2148539046}
!160 = !{i64 2148626898}
!161 = !{i64 2148541362, i64 2148541394, i64 2148541423, i64 2148541457, i64 2148541488, i64 2148541511}
!162 = !{i64 2149648951}
!163 = !{i8 0, i8 2}
!164 = !{i64 2148622778}
!165 = !{i64 2148538087, i64 2148538119, i64 2148538148, i64 2148538182, i64 2148538213, i64 2148538236}
!166 = !{i64 2148623007}
!167 = !{i64 2148625819}
!168 = !{i64 2148540552, i64 2148540584, i64 2148540613, i64 2148540647, i64 2148540678, i64 2148540701}
!169 = !{i64 2148626048}
