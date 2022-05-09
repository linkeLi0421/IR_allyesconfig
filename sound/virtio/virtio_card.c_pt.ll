; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_card.c_pt.bc'
source_filename = "../sound/virtio/virtio_card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.virtio_pcm_substream = type { ptr, i32, i32, i32, i32, ptr, %struct.snd_pcm_hardware, %struct.work_struct, %struct.spinlock, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtio_snd_event = type { %struct.virtio_snd_hdr, i32 }
%struct.virtio_snd_hdr = type { i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@virtsnd_msg_timeout_ms = dso_local global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_str_msg_timeout_ms = internal constant [26 x i8] c"virtio_snd.msg_timeout_ms\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_msg_timeout_ms = internal constant %struct.kernel_param { ptr @__param_str_msg_timeout_ms, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @virtsnd_msg_timeout_ms } }, section "__param", align 4
@__UNIQUE_ID_msg_timeout_mstype233 = internal constant [40 x i8] c"virtio_snd.parmtype=msg_timeout_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_timeout_ms234 = internal constant [74 x i8] c"virtio_snd.parm=msg_timeout_ms:Message completion timeout in milliseconds\00", section ".modinfo", align 1
@__initcall__kmod_virtio_snd__235_435_virtsnd_driver_init6 = internal global ptr @virtsnd_driver_init, section ".initcall6.init", align 4
@virtsnd_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr null, i32 0, ptr null, i32 0, ptr @virtsnd_validate, ptr @virtsnd_probe, ptr null, ptr @virtsnd_remove, ptr null, ptr @virtsnd_freeze, ptr @virtsnd_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtsnd_driver_exit = internal global ptr @virtsnd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"virtio_snd.description=Virtio sound card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [40 x i8] c"virtio_snd.file=sound/virtio/virtio_snd\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"virtio_snd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_snd\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 25, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@virtsnd_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"configuration access disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtsnd_validate\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/virtio/virtio_card.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_validate._entry_ptr = internal global ptr @virtsnd_validate._entry, section ".printk_index", align 4
@virtsnd_validate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device does not comply with spec version 1.x\0A\00", [50 x i8] zeroinitializer }, align 32
@virtsnd_validate._entry_ptr.8 = internal global ptr @virtsnd_validate._entry.6, section ".printk_index", align 4
@virtsnd_validate._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"msg_timeout_ms value cannot be zero\0A\00", [59 x i8] zeroinitializer }, align 32
@virtsnd_validate._entry_ptr.11 = internal global ptr @virtsnd_validate._entry.9, section ".printk_index", align 4
@virtsnd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&snd->queues[i].lock\00", [43 x i8] zeroinitializer }, align 32
@virtsnd_find_vqs.callbacks = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @virtsnd_ctl_notify_cb, ptr @virtsnd_event_notify_cb, ptr @virtsnd_pcm_tx_notify_cb, ptr @virtsnd_pcm_rx_notify_cb], [16 x i8] zeroinitializer }, align 32
@virtsnd_find_vqs.names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtsnd-ctl\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virtsnd-event\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtsnd-tx\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtsnd-rx\00", [21 x i8] zeroinitializer }, align 32
@virtsnd_find_vqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize virtqueues\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtsnd_find_vqs\00", [47 x i8] zeroinitializer }, align 32
@virtsnd_find_vqs._entry_ptr = internal global ptr @virtsnd_find_vqs._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio-snd\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VirtIO SoundCard\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VirtIO SoundCard at %s/%s/%s\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VirtIO SoundCard at %s/%s\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4096, i64 4097, i64 4352, i64 4353]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 4096, i64 4097, i64 4352, i64 4353]
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"virtsnd_msg_timeout_ms\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 14, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"virtsnd_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 422, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 423, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 417, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 269, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 274, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 280, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 314, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 112, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 118, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 119, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 120, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 121, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 122, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 132, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 212, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 214, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 218, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [30 x i8] c"../sound/virtio/virtio_card.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 223, i32 5 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_msg_timeout_ms234, ptr @__UNIQUE_ID_msg_timeout_mstype233, ptr @__exitcall_virtsnd_driver_exit, ptr @__initcall__kmod_virtio_snd__235_435_virtsnd_driver_init6, ptr @__param_msg_timeout_ms, ptr @virtsnd_driver_exit, ptr @virtsnd_find_vqs._entry, ptr @virtsnd_find_vqs._entry_ptr, ptr @virtsnd_validate._entry, ptr @virtsnd_validate._entry.6, ptr @virtsnd_validate._entry.9, ptr @virtsnd_validate._entry_ptr, ptr @virtsnd_validate._entry_ptr.11, ptr @virtsnd_validate._entry_ptr.8, ptr @virtsnd_msg_timeout_ms, ptr @virtsnd_driver, ptr @.str, ptr @id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @virtsnd_probe.__key, ptr @.str.12, ptr @virtsnd_find_vqs.callbacks, ptr @virtsnd_find_vqs.names, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_msg_timeout_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_validate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_validate._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_find_vqs.callbacks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_find_vqs.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_find_vqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtsnd_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtsnd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtsnd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_validate(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %return

if.end:                                           ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %do.end3, label %if.end5

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.7) #11
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr @virtsnd_msg_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.10) #11
  br label %return

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @virtsnd_pcm_validate(ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %. = select i1 %tobool13.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end11, %do.end9, %do.end3, %do.end
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end3 ], [ -22, %do.end ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_probe(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vdev, ptr %call.i, align 4
  %ctl_msgs = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %ctl_msgs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ctl_msgs, ptr %ctl_msgs, align 4
  %prev.i = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctl_msgs, ptr %prev.i, align 4
  %pcm_list = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pcm_list, ptr %pcm_list, align 4
  %prev.i33 = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pcm_list, ptr %prev.i33, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %priv, align 8
  %arrayidx = getelementptr %struct.virtio_snd, ptr %call.i, i32 0, i32 1, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtsnd_probe.__key, i16 noundef signext 3) #8
  %arrayidx.1 = getelementptr %struct.virtio_snd, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtsnd_probe.__key, i16 noundef signext 3) #8
  %arrayidx.2 = getelementptr %struct.virtio_snd, ptr %call.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtsnd_probe.__key, i16 noundef signext 3) #8
  %arrayidx.3 = getelementptr %struct.virtio_snd, ptr %call.i, i32 0, i32 1, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtsnd_probe.__key, i16 noundef signext 3) #8
  %call3 = tail call fastcc i32 @virtsnd_find_vqs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end6:                                          ; preds = %if.end
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_status.i, align 4
  %call.i34 = tail call zeroext i8 %9(ptr noundef %vdev) #8
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end6.do.body.i_crit_edge, label %if.then.i

if.end6.do.body.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %vdev) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end6.do.body.i_crit_edge
  %14 = and i8 %call.i34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !75

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i34, 4
  tail call void %18(ptr noundef %vdev, i8 noundef zeroext %or.i) #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6
  %card.i = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 2
  %call.i35 = tail call i32 @snd_card_new(ptr noundef %dev2.i, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %card.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i = icmp slt i32 %call.i35, 0
  br i1 %cmp.i, label %virtio_device_ready.exit.if.then12_crit_edge, label %if.end.i

virtio_device_ready.exit.if.then12_crit_edge:     ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end.i:                                         ; preds = %virtio_device_ready.exit
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %private_data.i, align 8
  %24 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 2
  %call5.i = tail call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str.19, i32 noundef 16) #8
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 3
  %call8.i = tail call i32 @strscpy(ptr noundef %shortname.i, ptr noundef nonnull @.str.20, i32 noundef 32) #8
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %tobool.not.i36 = icmp eq ptr %30, null
  %31 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i, align 4
  %longname19.i = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 4
  br i1 %tobool.not.i36, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then9.i.dev_name.exit.i_crit_edge

if.then9.i.dev_name.exit.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then9.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %if.then9.i.dev_name.exit.i_crit_edge ]
  %init_name.i99.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %init_name.i99.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i99.i, align 8
  %tobool.not.i100.i = icmp eq ptr %40, null
  br i1 %tobool.not.i100.i, label %if.end.i101.i, label %dev_name.exit.i.dev_name.exit103.i_crit_edge

dev_name.exit.i.dev_name.exit103.i_crit_edge:     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit103.i

if.end.i101.i:                                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit103.i

dev_name.exit103.i:                               ; preds = %if.end.i101.i, %dev_name.exit.i.dev_name.exit103.i_crit_edge
  %retval.0.i102.i = phi ptr [ %42, %if.end.i101.i ], [ %40, %dev_name.exit.i.dev_name.exit103.i_crit_edge ]
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname19.i, i32 noundef 80, ptr noundef nonnull @.str.21, ptr noundef %34, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i102.i) #8
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  %init_name.i104.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i104.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i104.i, align 8
  %tobool.not.i105.i = icmp eq ptr %44, null
  br i1 %tobool.not.i105.i, label %if.end.i106.i, label %if.else.i.dev_name.exit108.i_crit_edge

if.else.i.dev_name.exit108.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit108.i

if.end.i106.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %28, align 4
  br label %dev_name.exit108.i

dev_name.exit108.i:                               ; preds = %if.end.i106.i, %if.else.i.dev_name.exit108.i_crit_edge
  %retval.0.i107.i = phi ptr [ %46, %if.end.i106.i ], [ %44, %if.else.i.dev_name.exit108.i_crit_edge ]
  %init_name.i109.i = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %init_name.i109.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i109.i, align 8
  %tobool.not.i110.i = icmp eq ptr %48, null
  br i1 %tobool.not.i110.i, label %if.end.i111.i, label %dev_name.exit108.i.dev_name.exit113.i_crit_edge

dev_name.exit108.i.dev_name.exit113.i_crit_edge:  ; preds = %dev_name.exit108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit113.i

if.end.i111.i:                                    ; preds = %dev_name.exit108.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit113.i

dev_name.exit113.i:                               ; preds = %if.end.i111.i, %dev_name.exit108.i.dev_name.exit113.i_crit_edge
  %retval.0.i112.i = phi ptr [ %50, %if.end.i111.i ], [ %48, %dev_name.exit108.i.dev_name.exit113.i_crit_edge ]
  %call24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname19.i, i32 noundef 80, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i107.i, ptr noundef %retval.0.i112.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %dev_name.exit113.i, %dev_name.exit103.i
  %call26.i = tail call i32 @virtsnd_jack_parse_cfg(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.if.then12_crit_edge

if.end25.i.if.then12_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end29.i:                                       ; preds = %if.end25.i
  %call30.i = tail call i32 @virtsnd_pcm_parse_cfg(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.if.then12_crit_edge

if.end29.i.if.then12_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end33.i:                                       ; preds = %if.end29.i
  %call34.i = tail call i32 @virtsnd_chmap_parse_cfg(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.if.then12_crit_edge

if.end33.i.if.then12_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end37.i:                                       ; preds = %if.end33.i
  %njacks.i = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %njacks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %njacks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool38.not.i = icmp eq i32 %52, 0
  br i1 %tobool38.not.i, label %if.end37.i.if.end44.i_crit_edge, label %if.then39.i

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.end37.i
  %call40.i = tail call i32 @virtsnd_jack_build_devs(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then39.i.if.end44.i_crit_edge, label %if.then39.i.if.then12_crit_edge

if.then39.i.if.then12_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then39.i.if.end44.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i.if.end44.i_crit_edge, %if.end37.i.if.end44.i_crit_edge
  %nsubstreams.i = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 9
  %53 = ptrtoint ptr %nsubstreams.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nsubstreams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool45.not.i = icmp eq i32 %54, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then46.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end44.i
  %call47.i = tail call i32 @virtsnd_pcm_build_devs(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then46.i.if.end51.i_crit_edge, label %if.then46.i.if.then12_crit_edge

if.then46.i.if.then12_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then46.i.if.end51.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i.if.end51.i_crit_edge, %if.end44.i.if.end51.i_crit_edge
  %nchmaps.i = getelementptr inbounds %struct.virtio_snd, ptr %call.i, i32 0, i32 11
  %55 = ptrtoint ptr %nchmaps.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nchmaps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool52.not.i = icmp eq i32 %56, 0
  br i1 %tobool52.not.i, label %if.end51.i.virtsnd_build_devs.exit_crit_edge, label %if.then53.i

if.end51.i.virtsnd_build_devs.exit_crit_edge:     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_build_devs.exit

if.then53.i:                                      ; preds = %if.end51.i
  %call54.i = tail call i32 @virtsnd_chmap_build_devs(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.then53.i.virtsnd_build_devs.exit_crit_edge, label %if.then53.i.if.then12_crit_edge

if.then53.i.if.then12_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then53.i.virtsnd_build_devs.exit_crit_edge:    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_build_devs.exit

virtsnd_build_devs.exit:                          ; preds = %if.then53.i.virtsnd_build_devs.exit_crit_edge, %if.end51.i.virtsnd_build_devs.exit_crit_edge
  %57 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card.i, align 4
  %call60.i = tail call i32 @snd_card_register(ptr noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool8.not = icmp eq i32 %call60.i, 0
  br i1 %tobool8.not, label %if.end10, label %virtsnd_build_devs.exit.if.then12_crit_edge

virtsnd_build_devs.exit.if.then12_crit_edge:      ; preds = %virtsnd_build_devs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end10:                                         ; preds = %virtsnd_build_devs.exit
  %vqueue.i = getelementptr %struct.virtio_snd, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %59 = ptrtoint ptr %vqueue.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vqueue.i, align 4
  %call1.i = tail call zeroext i1 @virtqueue_enable_cb(ptr noundef %60) #8
  br i1 %call1.i, label %if.end10.cleanup_crit_edge, label %if.then.i37

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i37:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %vqueue.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vqueue.i, align 4
  tail call void @virtsnd_event_notify_cb(ptr noundef %62) #8
  br label %cleanup

if.then12:                                        ; preds = %virtsnd_build_devs.exit.if.then12_crit_edge, %if.then53.i.if.then12_crit_edge, %if.then46.i.if.then12_crit_edge, %if.then39.i.if.then12_crit_edge, %if.end33.i.if.then12_crit_edge, %if.end29.i.if.then12_crit_edge, %if.end25.i.if.then12_crit_edge, %virtio_device_ready.exit.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %rc.0.ph = phi i32 [ %call60.i, %virtsnd_build_devs.exit.if.then12_crit_edge ], [ %call3, %if.end.if.then12_crit_edge ], [ %call54.i, %if.then53.i.if.then12_crit_edge ], [ %call47.i, %if.then46.i.if.then12_crit_edge ], [ %call40.i, %if.then39.i.if.then12_crit_edge ], [ %call34.i, %if.end33.i.if.then12_crit_edge ], [ %call30.i, %if.end29.i.if.then12_crit_edge ], [ %call26.i, %if.end25.i.if.then12_crit_edge ], [ %call.i35, %virtio_device_ready.exit.if.then12_crit_edge ]
  tail call void @virtsnd_remove(ptr noundef %vdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then.i37, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.0.ph, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then.i37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtsnd_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @virtsnd_disable_event_vq(ptr noundef %1)
  tail call void @virtsnd_ctl_msg_cancel_all(ptr noundef %1) #8
  %card = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_card_free(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %del_vqs, align 4
  tail call void %7(ptr noundef %vdev) #8
  tail call void @virtio_reset_device(ptr noundef %vdev) #8
  %nsubstreams = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 9
  %substreams = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substreams, align 4
  %tobool2.not19 = icmp eq ptr %9, null
  br i1 %tobool2.not19, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %10 = phi ptr [ %14, %for.body.land.rhs_crit_edge ], [ %9, %if.end.land.rhs_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsubstreams, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.020, i32 %12)
  %cmp = icmp ult i32 %i.020, %12
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.virtio_pcm_substream, ptr %10, i32 %i.020
  %elapsed_period = getelementptr %struct.virtio_pcm_substream, ptr %10, i32 %i.020, i32 7
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %elapsed_period) #8
  tail call void @virtsnd_pcm_msg_free(ptr noundef %arrayidx) #8
  %inc = add nuw i32 %i.020, 1
  %13 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substreams, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %event_msgs = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %event_msgs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_msgs, align 4
  tail call void @kfree(ptr noundef %16) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @virtsnd_disable_event_vq(ptr noundef %1)
  tail call void @virtsnd_ctl_msg_cancel_all(ptr noundef %1) #8
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_vqs, align 4
  tail call void %5(ptr noundef %vdev) #8
  tail call void @virtio_reset_device(ptr noundef %vdev) #8
  %nsubstreams = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsubstreams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not = icmp eq i32 %7, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %substreams = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substreams, align 4
  %elapsed_period = getelementptr %struct.virtio_pcm_substream, ptr %9, i32 %i.013, i32 7
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %elapsed_period) #8
  %inc = add nuw i32 %i.013, 1
  %10 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nsubstreams, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %event_msgs = getelementptr inbounds %struct.virtio_snd, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %event_msgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event_msgs, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %event_msgs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event_msgs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtsnd_restore(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @virtsnd_find_vqs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call zeroext i8 %5(ptr noundef %vdev) #8
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %vdev) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %10 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !75

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #8, !srcloc !76
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
  tail call void %14(ptr noundef %vdev, i8 noundef zeroext %or.i) #8
  %vqueue.i = getelementptr %struct.virtio_snd, ptr %1, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %vqueue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqueue.i, align 4
  %call1.i = tail call zeroext i1 @virtqueue_enable_cb(ptr noundef %16) #8
  br i1 %call1.i, label %virtio_device_ready.exit.cleanup_crit_edge, label %if.then.i5

virtio_device_ready.exit.cleanup_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i5:                                       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %vqueue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vqueue.i, align 4
  tail call void @virtsnd_event_notify_cb(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i5, %virtio_device_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtsnd_find_vqs(ptr nocapture noundef %snd) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %psgs.i = alloca [1 x ptr], align 4
  %vqs = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vqs) #8
  %2 = call ptr @memset(ptr %vqs, i32 0, i32 16)
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %6(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %vqs, ptr noundef nonnull @virtsnd_find_vqs.callbacks, ptr noundef nonnull @virtsnd_find_vqs.names, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vqs, align 4
  %vqueue = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %vqueue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %vqueue, align 4
  %arrayidx.1 = getelementptr inbounds [4 x ptr], ptr %vqs, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %vqueue.1 = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %vqueue.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %vqueue.1, align 4
  %arrayidx.2 = getelementptr inbounds [4 x ptr], ptr %vqs, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %vqueue.2 = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %vqueue.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %vqueue.2, align 4
  %arrayidx.3 = getelementptr inbounds [4 x ptr], ptr %vqs, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %vqueue.3 = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 3, i32 1
  %18 = ptrtoint ptr %vqueue.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %vqueue.3, align 4
  call void @virtqueue_disable_cb(ptr noundef %11) #8
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1, align 4
  %call5 = call i32 @virtqueue_get_vring_size(ptr noundef %20) #8
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call5, i32 8) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

kmalloc_array.exit.thread:                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %event_msgs39 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 4
  %23 = ptrtoint ptr %event_msgs39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %event_msgs39, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %for.body.preheader
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #12
  %event_msgs = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 4
  %25 = ptrtoint ptr %event_msgs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i, ptr %event_msgs, align 4
  %tobool8.not = icmp eq ptr %call8.i, null
  br i1 %tobool8.not, label %if.end7.i.cleanup_crit_edge, label %for.cond11.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond11.preheader:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp1242.not = icmp eq i32 %call5, 0
  br i1 %cmp1242.not, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %i.143 = phi i32 [ %inc18, %for.body13.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  %28 = ptrtoint ptr %event_msgs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %event_msgs, align 4
  %arrayidx16 = getelementptr %struct.virtio_snd_event, ptr %29, i32 %i.143
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %30 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psgs.i) #8
  %31 = ptrtoint ptr %psgs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sg.i, ptr %psgs.i, align 4
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 0, ptr %arrayidx16, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %arrayidx16, i32 noundef 8) #8
  %call.i37 = call i32 @virtqueue_add_sgs(ptr noundef %27, ptr noundef nonnull %psgs.i, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx16, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psgs.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %inc18 = add nuw i32 %i.143, 1
  %exitcond.not = icmp eq i32 %inc18, %call5
  br i1 %exitcond.not, label %for.body13.cleanup_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.body13.cleanup_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body13.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ 0, %for.cond11.preheader.cleanup_crit_edge ], [ 0, %for.body13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vqs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_ctl_notify_cb(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtsnd_event_notify_cb(ptr noundef %vqueue) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %psgs.i = alloca [1 x ptr], align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.virtio_snd, ptr %3, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #8
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %length, align 4, !annotation !78
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #8
  br label %do.body6

do.body6:                                         ; preds = %do.cond11.do.body6_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %vqueue) #8
  %call725 = call ptr @virtqueue_get_buf(ptr noundef %vqueue, ptr noundef nonnull %length) #8
  %tobool.not26 = icmp eq ptr %call725, null
  br i1 %tobool.not26, label %do.body6.while.end_crit_edge, label %do.body6.while.body_crit_edge

do.body6.while.body_crit_edge:                    ; preds = %do.body6
  br label %while.body

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %virtsnd_event_send.exit.while.body_crit_edge, %do.body6.while.body_crit_edge
  %call727 = phi ptr [ %call7, %virtsnd_event_send.exit.while.body_crit_edge ], [ %call725, %do.body6.while.body_crit_edge ]
  %5 = ptrtoint ptr %call727 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call727, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %while.body.virtsnd_event_dispatch.exit_crit_edge [
    i32 4096, label %while.body.sw.bb.i_crit_edge
    i32 4097, label %while.body.sw.bb.i_crit_edge28
    i32 4352, label %while.body.sw.bb1.i_crit_edge
    i32 4353, label %while.body.sw.bb1.i_crit_edge29
  ]

while.body.sw.bb1.i_crit_edge29:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

while.body.sw.bb1.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

while.body.sw.bb.i_crit_edge28:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

while.body.sw.bb.i_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

while.body.virtsnd_event_dispatch.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_event_dispatch.exit

sw.bb.i:                                          ; preds = %while.body.sw.bb.i_crit_edge, %while.body.sw.bb.i_crit_edge28
  call void @virtsnd_jack_event(ptr noundef %3, ptr noundef nonnull %call727) #8
  br label %virtsnd_event_dispatch.exit

sw.bb1.i:                                         ; preds = %while.body.sw.bb1.i_crit_edge, %while.body.sw.bb1.i_crit_edge29
  call void @virtsnd_pcm_event(ptr noundef %3, ptr noundef nonnull %call727) #8
  br label %virtsnd_event_dispatch.exit

virtsnd_event_dispatch.exit:                      ; preds = %sw.bb1.i, %sw.bb.i, %while.body.virtsnd_event_dispatch.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %9 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psgs.i) #8
  %10 = ptrtoint ptr %psgs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sg.i, ptr %psgs.i, align 4
  %11 = ptrtoint ptr %call727 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %call727, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call727, i32 noundef 8) #8
  %call.i = call i32 @virtqueue_add_sgs(ptr noundef %vqueue, ptr noundef nonnull %psgs.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %call727, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %virtsnd_event_dispatch.exit.virtsnd_event_send.exit_crit_edge

virtsnd_event_dispatch.exit.virtsnd_event_send.exit_crit_edge: ; preds = %virtsnd_event_dispatch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_event_send.exit

if.end.i:                                         ; preds = %virtsnd_event_dispatch.exit
  %call2.i = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %vqueue) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i.virtsnd_event_send.exit_crit_edge

if.end.i.virtsnd_event_send.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_event_send.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call zeroext i1 @virtqueue_notify(ptr noundef %vqueue) #8
  br label %virtsnd_event_send.exit

virtsnd_event_send.exit:                          ; preds = %if.then3.i, %if.end.i.virtsnd_event_send.exit_crit_edge, %virtsnd_event_dispatch.exit.virtsnd_event_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psgs.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %call7 = call ptr @virtqueue_get_buf(ptr noundef %vqueue, ptr noundef nonnull %length) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %virtsnd_event_send.exit.while.end_crit_edge, label %virtsnd_event_send.exit.while.body_crit_edge

virtsnd_event_send.exit.while.body_crit_edge:     ; preds = %virtsnd_event_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

virtsnd_event_send.exit.while.end_crit_edge:      ; preds = %virtsnd_event_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %virtsnd_event_send.exit.while.end_crit_edge, %do.body6.while.end_crit_edge
  %call8 = call zeroext i1 @virtqueue_is_broken(ptr noundef %vqueue) #8
  br i1 %call8, label %while.end.do.end15_crit_edge, label %do.cond11, !prof !77

while.end.do.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.cond11:                                        ; preds = %while.end
  %call12 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vqueue) #8
  br i1 %call12, label %do.cond11.do.end15_crit_edge, label %do.cond11.do.body6_crit_edge

do.cond11.do.body6_crit_edge:                     ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.cond11.do.end15_crit_edge:                     ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end15:                                         ; preds = %do.cond11.do.end15_crit_edge, %while.end.do.end15_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_pcm_tx_notify_cb(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_pcm_rx_notify_cb(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_jack_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_pcm_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_jack_parse_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_parse_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_chmap_parse_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_jack_build_devs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_pcm_build_devs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_chmap_build_devs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtsnd_disable_event_vq(ptr noundef %snd) unnamed_addr #2 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #8
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !78
  %vqueue = getelementptr %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vqueue, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #8
  %3 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vqueue, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %4) #8
  %5 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqueue, align 4
  %call816 = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %length) #8
  %tobool9.not17 = icmp eq ptr %call816, null
  br i1 %tobool9.not17, label %do.body1.while.end_crit_edge, label %do.body1.while.body_crit_edge

do.body1.while.body_crit_edge:                    ; preds = %do.body1
  br label %while.body

do.body1.while.end_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %virtsnd_event_dispatch.exit.while.body_crit_edge, %do.body1.while.body_crit_edge
  %call818 = phi ptr [ %call8, %virtsnd_event_dispatch.exit.while.body_crit_edge ], [ %call816, %do.body1.while.body_crit_edge ]
  %7 = ptrtoint ptr %call818 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call818, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %9, label %while.body.virtsnd_event_dispatch.exit_crit_edge [
    i32 4096, label %while.body.sw.bb.i_crit_edge
    i32 4097, label %while.body.sw.bb.i_crit_edge19
    i32 4352, label %while.body.sw.bb1.i_crit_edge
    i32 4353, label %while.body.sw.bb1.i_crit_edge20
  ]

while.body.sw.bb1.i_crit_edge20:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

while.body.sw.bb1.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

while.body.sw.bb.i_crit_edge19:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

while.body.sw.bb.i_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

while.body.virtsnd_event_dispatch.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_event_dispatch.exit

sw.bb.i:                                          ; preds = %while.body.sw.bb.i_crit_edge, %while.body.sw.bb.i_crit_edge19
  call void @virtsnd_jack_event(ptr noundef %snd, ptr noundef nonnull %call818) #8
  br label %virtsnd_event_dispatch.exit

sw.bb1.i:                                         ; preds = %while.body.sw.bb1.i_crit_edge, %while.body.sw.bb1.i_crit_edge20
  call void @virtsnd_pcm_event(ptr noundef %snd, ptr noundef nonnull %call818) #8
  br label %virtsnd_event_dispatch.exit

virtsnd_event_dispatch.exit:                      ; preds = %sw.bb1.i, %sw.bb.i, %while.body.virtsnd_event_dispatch.exit_crit_edge
  %11 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vqueue, align 4
  %call8 = call ptr @virtqueue_get_buf(ptr noundef %12, ptr noundef nonnull %length) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %virtsnd_event_dispatch.exit.while.end_crit_edge, label %virtsnd_event_dispatch.exit.while.body_crit_edge

virtsnd_event_dispatch.exit.while.body_crit_edge: ; preds = %virtsnd_event_dispatch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

virtsnd_event_dispatch.exit.while.end_crit_edge:  ; preds = %virtsnd_event_dispatch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %virtsnd_event_dispatch.exit.while.end_crit_edge, %do.body1.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3) #8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_ctl_msg_cancel_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtsnd_pcm_msg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @virtsnd_msg_timeout_ms, !1, !"virtsnd_msg_timeout_ms", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_card.c", i32 14, i32 5}
!2 = !{ptr @__param_msg_timeout_ms, !3, !"__param_msg_timeout_ms", i1 false, i1 false}
!3 = !{!"../sound/virtio/virtio_card.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_msg_timeout_mstype233, !3, !"__UNIQUE_ID_msg_timeout_mstype233", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_msg_timeout_ms234, !6, !"__UNIQUE_ID_msg_timeout_ms234", i1 false, i1 false}
!6 = !{!"../sound/virtio/virtio_card.c", i32 16, i32 1}
!7 = !{ptr @__initcall__kmod_virtio_snd__235_435_virtsnd_driver_init6, !8, !"__initcall__kmod_virtio_snd__235_435_virtsnd_driver_init6", i1 false, i1 false}
!8 = !{!"../sound/virtio/virtio_card.c", i32 435, i32 1}
!9 = !{ptr @__exitcall_virtsnd_driver_exit, !8, !"__exitcall_virtsnd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description236, !11, !"__UNIQUE_ID_description236", i1 false, i1 false}
!11 = !{!"../sound/virtio/virtio_card.c", i32 438, i32 1}
!12 = !{ptr @__UNIQUE_ID_file237, !13, !"__UNIQUE_ID_file237", i1 false, i1 false}
!13 = !{!"../sound/virtio/virtio_card.c", i32 439, i32 1}
!14 = !{ptr @__UNIQUE_ID_license238, !13, !"__UNIQUE_ID_license238", i1 false, i1 false}
!15 = !{ptr @__param_str_msg_timeout_ms, !3, !"__param_str_msg_timeout_ms", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/virtio/virtio_card.c", i32 423, i32 17}
!18 = !{ptr @virtsnd_driver, !19, !"virtsnd_driver", i1 false, i1 false}
!19 = !{!"../sound/virtio/virtio_card.c", i32 422, i32 29}
!20 = !{ptr @id_table, !21, !"id_table", i1 false, i1 false}
!21 = !{!"../sound/virtio/virtio_card.c", i32 417, i32 38}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/virtio/virtio_card.c", i32 269, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @virtsnd_validate._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @virtsnd_validate._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/virtio/virtio_card.c", i32 274, i32 3}
!32 = !{ptr @virtsnd_validate._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @virtsnd_validate._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/virtio/virtio_card.c", i32 280, i32 3}
!36 = !{ptr @virtsnd_validate._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @virtsnd_validate._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @virtsnd_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/virtio/virtio_card.c", i32 314, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @virtsnd_find_vqs.callbacks, !42, !"callbacks", i1 false, i1 false}
!42 = !{!"../sound/virtio/virtio_card.c", i32 112, i32 24}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/virtio/virtio_card.c", i32 119, i32 29}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/virtio/virtio_card.c", i32 120, i32 27}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/virtio/virtio_card.c", i32 121, i32 24}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/virtio/virtio_card.c", i32 122, i32 24}
!51 = !{ptr @virtsnd_find_vqs.names, !52, !"names", i1 false, i1 false}
!52 = !{!"../sound/virtio/virtio_card.c", i32 118, i32 21}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/virtio/virtio_card.c", i32 132, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @virtsnd_find_vqs._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @virtsnd_find_vqs._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/virtio/virtio_card.c", i32 212, i32 29}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/virtio/virtio_card.c", i32 214, i32 32}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/virtio/virtio_card.c", i32 218, i32 5}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/virtio/virtio_card.c", i32 223, i32 5}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2153847691, i64 2153848185, i64 2153847728, i64 2153847784, i64 2153847818, i64 2153847842, i64 2153847883, i64 2153847904, i64 2153847932, i64 2153847966}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{!"auto-init"}
