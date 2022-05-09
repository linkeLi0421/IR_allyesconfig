; ModuleID = '/llk/IR_all_yes/drivers/crypto/virtio/virtio_crypto_core.c_pt.bc'
source_filename = "../drivers/crypto/virtio/virtio_crypto_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.virtio_crypto_request = type { i8, ptr, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.virtio_crypto = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.virtio_crypto_op_ctrl_req, %struct.virtio_crypto_session_input, %struct.virtio_crypto_inhdr, i32, %struct.atomic_t, %struct.list_head, ptr, i8, i8 }
%struct.virtio_crypto_op_ctrl_req = type { %struct.virtio_crypto_ctrl_header, %union.anon.77 }
%struct.virtio_crypto_ctrl_header = type { i32, i32, i32, i32 }
%union.anon.77 = type { %struct.virtio_crypto_destroy_session_req }
%struct.virtio_crypto_destroy_session_req = type { i64, [48 x i8] }
%struct.virtio_crypto_session_input = type { i64, i32, i32 }
%struct.virtio_crypto_inhdr = type { i8 }
%struct.data_queue = type { ptr, %struct.spinlock, [32 x i8], ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_virtio_crypto__231_525_virtio_crypto_driver_init6 = internal global ptr @virtio_crypto_driver_init, section ".initcall6.init", align 4
@virtio_crypto_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 0, ptr null, i32 0, ptr null, ptr @virtcrypto_probe, ptr null, ptr @virtcrypto_remove, ptr @virtcrypto_config_changed, ptr @virtcrypto_freeze, ptr @virtcrypto_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_crypto_driver_exit = internal global ptr @virtio_crypto_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [54 x i8] c"virtio_crypto.description=virtio crypto device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [55 x i8] c"virtio_crypto.file=drivers/crypto/virtio/virtio_crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"virtio_crypto.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [55 x i8] c"virtio_crypto.author=Gonglei <arei.gonglei@huawei.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virtio_crypto\00", [18 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 20, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal constant { [0 x i32], [32 x i8] } zeroinitializer, align 32
@virtcrypto_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtcrypto_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/crypto/virtio/virtio_crypto_core.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry_ptr = internal global ptr @virtcrypto_probe._entry, section ".printk_index", align 4
@virtcrypto_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid NUMA configuration.\0A\00", [35 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry_ptr.8 = internal global ptr @virtcrypto_probe._entry.6, section ".printk_index", align 4
@virtcrypto_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to add new virtio crypto device.\0A\00", [55 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry_ptr.11 = internal global ptr @virtcrypto_probe._entry.9, section ".printk_index", align 4
@virtcrypto_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vcrypto->ctrl_lock\00", [44 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"max_queues: %u, max_cipher_key_len: %u, max_auth_key_len: %u, max_size 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry_ptr.16 = internal global ptr @virtcrypto_probe._entry.13, section ".printk_index", align 4
@virtcrypto_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to initialize vqs.\0A\00", [37 x i8] zeroinitializer }, align 32
@virtcrypto_probe._entry_ptr.19 = internal global ptr @virtcrypto_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"controlq\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dataq.%d\00", [23 x i8] zeroinitializer }, align 32
@virtcrypto_find_vqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vi->data_vq[i].lock\00", [43 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@virtcrypto_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 216, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown status bits: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"virtcrypto_update_status\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@virtcrypto_update_status._entry_ptr = internal global ptr @virtcrypto_update_status._entry, section ".printk_index", align 4
@virtcrypto_update_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to start virtio crypto device.\0A\00", [57 x i8] zeroinitializer }, align 32
@virtcrypto_update_status._entry_ptr.29 = internal global ptr @virtcrypto_update_status._entry.27, section ".printk_index", align 4
@virtcrypto_update_status._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.3, i32 235, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Accelerator device is ready\0A\00", [35 x i8] zeroinitializer }, align 32
@virtcrypto_update_status._entry_ptr.32 = internal global ptr @virtcrypto_update_status._entry.30, section ".printk_index", align 4
@virtcrypto_update_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.3, i32 238, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Accelerator is not ready\0A\00", [38 x i8] zeroinitializer }, align 32
@virtcrypto_update_status._entry_ptr.35 = internal global ptr @virtcrypto_update_status._entry.33, section ".printk_index", align 4
@virtcrypto_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 435, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Start virtcrypto_remove.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virtcrypto_remove\00", [46 x i8] zeroinitializer }, align 32
@virtcrypto_remove._entry_ptr = internal global ptr @virtcrypto_remove._entry, section ".printk_index", align 4
@virtcrypto_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.38, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"virtcrypto_restore\00", [45 x i8] zeroinitializer }, align 32
@virtcrypto_restore._entry_ptr = internal global ptr @virtcrypto_restore._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"virtio_crypto_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 510, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 511, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 505, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 501, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 306, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 317, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 355, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 362, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 379, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 388, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 451, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 77, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 83, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 94, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 215, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 230, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 235, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 238, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 435, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [46 x i8] c"../drivers/crypto/virtio/virtio_crypto_core.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 486, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_virtio_crypto_driver_exit, ptr @__initcall__kmod_virtio_crypto__231_525_virtio_crypto_driver_init6, ptr @virtcrypto_probe._entry, ptr @virtcrypto_probe._entry.13, ptr @virtcrypto_probe._entry.17, ptr @virtcrypto_probe._entry.6, ptr @virtcrypto_probe._entry.9, ptr @virtcrypto_probe._entry_ptr, ptr @virtcrypto_probe._entry_ptr.11, ptr @virtcrypto_probe._entry_ptr.16, ptr @virtcrypto_probe._entry_ptr.19, ptr @virtcrypto_probe._entry_ptr.8, ptr @virtcrypto_remove._entry, ptr @virtcrypto_remove._entry_ptr, ptr @virtcrypto_restore._entry, ptr @virtcrypto_restore._entry_ptr, ptr @virtcrypto_update_status._entry, ptr @virtcrypto_update_status._entry.27, ptr @virtcrypto_update_status._entry.30, ptr @virtcrypto_update_status._entry.33, ptr @virtcrypto_update_status._entry_ptr, ptr @virtcrypto_update_status._entry_ptr.29, ptr @virtcrypto_update_status._entry_ptr.32, ptr @virtcrypto_update_status._entry_ptr.35, ptr @virtio_crypto_driver_exit, ptr @virtio_crypto_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @virtcrypto_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @virtcrypto_find_vqs.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_find_vqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_update_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_update_status._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_update_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcrypto_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtcrypto_clear_request(ptr noundef readonly %vc_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vc_req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %req_data = getelementptr inbounds %struct.virtio_crypto_request, ptr %vc_req, i32 0, i32 1
  %0 = ptrtoint ptr %req_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_data, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #11
  %sgs = getelementptr inbounds %struct.virtio_crypto_request, ptr %vc_req, i32 0, i32 2
  %2 = ptrtoint ptr %sgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgs, align 4
  tail call void @kfree(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_crypto_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_crypto_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_crypto_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_crypto_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcrypto_probe(ptr noundef %vdev) #0 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  %virtio_cread_v36 = alloca i32, align 4
  %virtio_cread_v53 = alloca i32, align 4
  %virtio_cread_v70 = alloca i64, align 8
  %virtio_cread_v85 = alloca i32, align 4
  %virtio_cread_v102 = alloca i32, align 4
  %virtio_cread_v119 = alloca i32, align 4
  %virtio_cread_v136 = alloca i32, align 4
  %virtio_cread_v153 = alloca i32, align 4
  %virtio_cread_v170 = alloca i32, align 4
  %virtio_cread_v187 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %1, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %5, null
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  br i1 %tobool.not, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 232) #15
  %tobool16.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not, label %if.end2.cleanup_crit_edge, label %do.body19

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body19:                                        ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !91
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 327) #11
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 8
  %get28 = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %get28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get28, align 4
  call void %11(ptr noundef %vdev, i32 noundef 4, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #11
  %12 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virtio_cread_v, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v36) #11
  %14 = ptrtoint ptr %virtio_cread_v36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %virtio_cread_v36, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 332) #11
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 8
  %get49 = getelementptr inbounds %struct.virtio_config_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %get49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get49, align 4
  call void %18(ptr noundef %vdev, i32 noundef 36, ptr noundef nonnull %virtio_cread_v36, i32 noundef 4) #11
  %19 = ptrtoint ptr %virtio_cread_v36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virtio_cread_v36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v36) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v53) #11
  %21 = ptrtoint ptr %virtio_cread_v53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %virtio_cread_v53, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 334) #11
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 8
  %get66 = getelementptr inbounds %struct.virtio_config_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %get66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get66, align 4
  call void %25(ptr noundef %vdev, i32 noundef 40, ptr noundef nonnull %virtio_cread_v53, i32 noundef 4) #11
  %26 = ptrtoint ptr %virtio_cread_v53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %virtio_cread_v53, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v53) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %virtio_cread_v70) #11
  %28 = ptrtoint ptr %virtio_cread_v70 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %virtio_cread_v70, align 8, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 336) #11
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 8
  %generation.i = getelementptr inbounds %struct.virtio_config_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %generation.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %do.body19.cond.end.i_crit_edge, label %cond.true.i

do.body19.cond.end.i_crit_edge:                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %32(ptr noundef %vdev) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.body19.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ 0, %do.body19.cond.end.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 451) #11
  br label %do.body6.i

do.body6.i:                                       ; preds = %cond.end17.i.do.body6.i_crit_edge, %cond.end.i
  %gen.0.i = phi i32 [ %cond.i, %cond.end.i ], [ %cond18.i, %cond.end17.i.do.body6.i_crit_edge ]
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get.i, align 4
  call void %36(ptr noundef %vdev, i32 noundef 48, ptr noundef nonnull %virtio_cread_v70, i32 noundef 8) #11
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config, align 8
  %generation10.i = getelementptr inbounds %struct.virtio_config_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %generation10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %generation10.i, align 4
  %tobool11.not.i = icmp eq ptr %40, null
  br i1 %tobool11.not.i, label %do.body6.i.cond.end17.i_crit_edge, label %cond.true12.i

do.body6.i.cond.end17.i_crit_edge:                ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end17.i

cond.true12.i:                                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = call i32 %40(ptr noundef %vdev) #11
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.true12.i, %do.body6.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %call15.i, %cond.true12.i ], [ 0, %do.body6.i.cond.end17.i_crit_edge ]
  %cmp20.not.i = icmp eq i32 %cond18.i, %gen.0.i
  br i1 %cmp20.not.i, label %__virtio_cread_many.exit, label %cond.end17.i.do.body6.i_crit_edge

cond.end17.i.do.body6.i_crit_edge:                ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6.i

__virtio_cread_many.exit:                         ; preds = %cond.end17.i
  %41 = ptrtoint ptr %virtio_cread_v70 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %virtio_cread_v70, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %virtio_cread_v70) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v85) #11
  %43 = ptrtoint ptr %virtio_cread_v85 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %virtio_cread_v85, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 338) #11
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config, align 8
  %get98 = getelementptr inbounds %struct.virtio_config_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %get98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get98, align 4
  call void %47(ptr noundef %vdev, i32 noundef 8, ptr noundef nonnull %virtio_cread_v85, i32 noundef 4) #11
  %48 = ptrtoint ptr %virtio_cread_v85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virtio_cread_v85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v85) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v102) #11
  %50 = ptrtoint ptr %virtio_cread_v102 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %virtio_cread_v102, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 340) #11
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config, align 8
  %get115 = getelementptr inbounds %struct.virtio_config_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %get115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get115, align 4
  call void %54(ptr noundef %vdev, i32 noundef 12, ptr noundef nonnull %virtio_cread_v102, i32 noundef 4) #11
  %55 = ptrtoint ptr %virtio_cread_v102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %virtio_cread_v102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v102) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v119) #11
  %57 = ptrtoint ptr %virtio_cread_v119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %virtio_cread_v119, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 342) #11
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config, align 8
  %get132 = getelementptr inbounds %struct.virtio_config_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %get132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get132, align 4
  call void %61(ptr noundef %vdev, i32 noundef 16, ptr noundef nonnull %virtio_cread_v119, i32 noundef 4) #11
  %62 = ptrtoint ptr %virtio_cread_v119 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %virtio_cread_v119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v119) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v136) #11
  %64 = ptrtoint ptr %virtio_cread_v136 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %virtio_cread_v136, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 344) #11
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 8
  %get149 = getelementptr inbounds %struct.virtio_config_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %get149 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get149, align 4
  call void %68(ptr noundef %vdev, i32 noundef 20, ptr noundef nonnull %virtio_cread_v136, i32 noundef 4) #11
  %69 = ptrtoint ptr %virtio_cread_v136 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virtio_cread_v136, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v136) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v153) #11
  %71 = ptrtoint ptr %virtio_cread_v153 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %virtio_cread_v153, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 346) #11
  %72 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config, align 8
  %get166 = getelementptr inbounds %struct.virtio_config_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %get166 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get166, align 4
  call void %75(ptr noundef %vdev, i32 noundef 24, ptr noundef nonnull %virtio_cread_v153, i32 noundef 4) #11
  %76 = ptrtoint ptr %virtio_cread_v153 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %virtio_cread_v153, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v153) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v170) #11
  %78 = ptrtoint ptr %virtio_cread_v170 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %virtio_cread_v170, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 348) #11
  %79 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config, align 8
  %get183 = getelementptr inbounds %struct.virtio_config_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %get183 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get183, align 4
  call void %82(ptr noundef %vdev, i32 noundef 28, ptr noundef nonnull %virtio_cread_v170, i32 noundef 4) #11
  %83 = ptrtoint ptr %virtio_cread_v170 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virtio_cread_v170, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v170) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v187) #11
  %85 = ptrtoint ptr %virtio_cread_v187 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %virtio_cread_v187, align 4, !annotation !91
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 350) #11
  %86 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config, align 8
  %get200 = getelementptr inbounds %struct.virtio_config_ops, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %get200 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get200, align 4
  call void %89(ptr noundef %vdev, i32 noundef 32, ptr noundef nonnull %virtio_cread_v187, i32 noundef 4) #11
  %90 = ptrtoint ptr %virtio_cread_v187 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %virtio_cread_v187, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v187) #11
  %call203 = call i32 @virtcrypto_devmgr_add_dev(ptr noundef nonnull %call.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end210, label %do.end208

do.end208:                                        ; preds = %__virtio_cread_many.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %free

if.end210:                                        ; preds = %__virtio_cread_many.exit
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %93 = call i32 @llvm.bswap.i32(i32 %84)
  %94 = call i32 @llvm.bswap.i32(i32 %77)
  %95 = call i32 @llvm.bswap.i32(i32 %70)
  %96 = call i32 @llvm.bswap.i32(i32 %63)
  %97 = call i32 @llvm.bswap.i32(i32 %56)
  %98 = call i32 @llvm.bswap.i32(i32 %49)
  %99 = call i64 @llvm.bswap.i64(i64 %42)
  %100 = call i32 @llvm.bswap.i32(i32 %27)
  %101 = call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp31 = icmp eq i32 %13, 0
  %102 = call i32 @llvm.bswap.i32(i32 %13)
  %spec.store.select = select i1 %cmp31, i32 1, i32 %102
  %owner = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 22
  %103 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %owner, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i.i.i, ptr %priv, align 8
  %105 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %vdev, ptr %call.i.i.i, align 8
  %ctrl_lock = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtcrypto_probe.__key, i16 noundef signext 3) #11
  %curr_queue = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %curr_queue to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %curr_queue, align 4
  %max_data_queues216 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %max_data_queues216 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.store.select, ptr %max_data_queues216, align 8
  %max_cipher_key_len217 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 13
  %108 = ptrtoint ptr %max_cipher_key_len217 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %101, ptr %max_cipher_key_len217, align 4
  %max_auth_key_len218 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 14
  %109 = ptrtoint ptr %max_auth_key_len218 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %100, ptr %max_auth_key_len218, align 8
  %max_size219 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 15
  %110 = ptrtoint ptr %max_size219 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %99, ptr %max_size219, align 8
  %crypto_services220 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 6
  %111 = ptrtoint ptr %crypto_services220 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %98, ptr %crypto_services220, align 8
  %cipher_algo_l221 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 7
  %112 = ptrtoint ptr %cipher_algo_l221 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %97, ptr %cipher_algo_l221, align 4
  %cipher_algo_h222 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 8
  %113 = ptrtoint ptr %cipher_algo_h222 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %96, ptr %cipher_algo_h222, align 8
  %mac_algo_l223 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 10
  %114 = ptrtoint ptr %mac_algo_l223 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %94, ptr %mac_algo_l223, align 8
  %mac_algo_h224 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 11
  %115 = ptrtoint ptr %mac_algo_h224 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %93, ptr %mac_algo_h224, align 4
  %hash_algo225 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 9
  %116 = ptrtoint ptr %hash_algo225 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %95, ptr %hash_algo225, align 4
  %aead_algo226 = getelementptr inbounds %struct.virtio_crypto, ptr %call.i.i.i, i32 0, i32 12
  %117 = ptrtoint ptr %aead_algo226 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %92, ptr %aead_algo226, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %spec.store.select, i32 noundef %101, i32 noundef %100, i64 noundef %99) #14
  %call235 = call fastcc i32 @virtcrypto_init_vqs(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end242, label %do.end240

do.end240:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %free_dev

if.end242:                                        ; preds = %if.end210
  %call243 = call fastcc i32 @virtcrypto_start_crypto_engines(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end246, label %if.end242.free_vqs_crit_edge

if.end242.free_vqs_crit_edge:                     ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vqs

if.end246:                                        ; preds = %if.end242
  call fastcc void @virtio_device_ready(ptr noundef %vdev)
  %call247 = call fastcc i32 @virtcrypto_update_status(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end246.cleanup_crit_edge, label %free_engines

if.end246.cleanup_crit_edge:                      ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free_engines:                                     ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @virtcrypto_clear_crypto_engines(ptr noundef nonnull %call.i.i.i)
  br label %free_vqs

free_vqs:                                         ; preds = %free_engines, %if.end242.free_vqs_crit_edge
  %err.0 = phi i32 [ %call243, %if.end242.free_vqs_crit_edge ], [ -1, %free_engines ]
  call void @virtio_reset_device(ptr noundef %vdev) #11
  call fastcc void @virtcrypto_del_vqs(ptr noundef nonnull %call.i.i.i)
  br label %free_dev

free_dev:                                         ; preds = %free_vqs, %do.end240
  %err.1 = phi i32 [ %call235, %do.end240 ], [ %err.0, %free_vqs ]
  call void @virtcrypto_devmgr_rm_dev(ptr noundef nonnull %call.i.i.i) #11
  br label %free

free:                                             ; preds = %free_dev, %do.end208
  %err.2 = phi i32 [ %call203, %do.end208 ], [ %err.1, %free_dev ]
  call void @kfree(ptr noundef nonnull %call.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end246.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %free ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ 0, %if.end246.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtcrypto_remove(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  %call = tail call i32 @virtcrypto_dev_started(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @virtcrypto_dev_stop(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @virtio_reset_device(ptr noundef %vdev) #11
  %max_data_queues.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %if.end.virtcrypto_clear_crypto_engines.exit_crit_edge, label %for.body.lr.ph.i

if.end.virtcrypto_clear_crypto_engines.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clear_crypto_engines.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %data_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_vq.i, align 8
  %arrayidx.i = getelementptr %struct.data_queue, ptr %5, i32 %i.011.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #11
  %cmp2.not8.i = icmp eq ptr %call7.i, null
  br i1 %cmp2.not8.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %call9.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call7.i, %for.body.i.while.body.i_crit_edge ]
  %req_data.i = getelementptr inbounds %struct.virtio_crypto_request, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %req_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_data.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %sgs.i = getelementptr inbounds %struct.virtio_crypto_request, ptr %call9.i, i32 0, i32 2
  %10 = ptrtoint ptr %sgs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgs.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %call.i = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #11
  %cmp2.not.i = icmp eq ptr %call.i, null
  br i1 %cmp2.not.i, label %while.body.i.for.inc.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %12 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %virtcrypto_free_unused_reqs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

virtcrypto_free_unused_reqs.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.not.i = icmp eq i32 %13, 0
  br i1 %cmp9.not.i, label %virtcrypto_free_unused_reqs.exit.virtcrypto_clear_crypto_engines.exit_crit_edge, label %virtcrypto_free_unused_reqs.exit.for.body.i12_crit_edge

virtcrypto_free_unused_reqs.exit.for.body.i12_crit_edge: ; preds = %virtcrypto_free_unused_reqs.exit
  br label %for.body.i12

virtcrypto_free_unused_reqs.exit.virtcrypto_clear_crypto_engines.exit_crit_edge: ; preds = %virtcrypto_free_unused_reqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clear_crypto_engines.exit

for.body.i12:                                     ; preds = %for.inc.i16.for.body.i12_crit_edge, %virtcrypto_free_unused_reqs.exit.for.body.i12_crit_edge
  %i.010.i = phi i32 [ %inc.i14, %for.inc.i16.for.body.i12_crit_edge ], [ 0, %virtcrypto_free_unused_reqs.exit.for.body.i12_crit_edge ]
  %14 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_vq.i, align 8
  %engine.i = getelementptr %struct.data_queue, ptr %15, i32 %i.010.i, i32 3
  %16 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %engine.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i12.for.inc.i16_crit_edge, label %if.then.i

for.body.i12.for.inc.i16_crit_edge:               ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i16

if.then.i:                                        ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #13
  %call.i13 = tail call i32 @crypto_engine_exit(ptr noundef nonnull %17) #11
  br label %for.inc.i16

for.inc.i16:                                      ; preds = %if.then.i, %for.body.i12.for.inc.i16_crit_edge
  %inc.i14 = add nuw i32 %i.010.i, 1
  %18 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i15 = icmp ult i32 %inc.i14, %19
  br i1 %cmp.i15, label %for.inc.i16.for.body.i12_crit_edge, label %for.inc.i16.virtcrypto_clear_crypto_engines.exit_crit_edge

for.inc.i16.virtcrypto_clear_crypto_engines.exit_crit_edge: ; preds = %for.inc.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clear_crypto_engines.exit

for.inc.i16.for.body.i12_crit_edge:               ; preds = %for.inc.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i12

virtcrypto_clear_crypto_engines.exit:             ; preds = %for.inc.i16.virtcrypto_clear_crypto_engines.exit_crit_edge, %virtcrypto_free_unused_reqs.exit.virtcrypto_clear_crypto_engines.exit_crit_edge, %if.end.virtcrypto_clear_crypto_engines.exit_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %affinity_hint_set.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %affinity_hint_set.i.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge, label %for.cond.preheader.i.i

virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge: ; preds = %virtcrypto_clear_crypto_engines.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_del_vqs.exit

for.cond.preheader.i.i:                           ; preds = %virtcrypto_clear_crypto_engines.exit
  %24 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.not.i.i = icmp eq i32 %25, 0
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %data_vq.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %data_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_vq.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.data_queue, ptr %27, i32 %i.02.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %vdev1.i.i.i = getelementptr inbounds %struct.virtqueue, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %vdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdev1.i.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i.i.i, align 8
  %set_vq_affinity.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %set_vq_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_vq_affinity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 %35(ptr noundef %29, ptr noundef null) #11
  br label %virtqueue_set_affinity.exit.i.i

virtqueue_set_affinity.exit.i.i:                  ; preds = %if.then.i.i.i, %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %36 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %37
  br i1 %cmp.i.i, label %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, label %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge

virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %38 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %affinity_hint_set.i.i, align 1
  br label %virtcrypto_del_vqs.exit

virtcrypto_del_vqs.exit:                          ; preds = %for.end.i.i, %virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %21, i32 0, i32 8
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %del_vqs.i, align 4
  tail call void %42(ptr noundef %21) #11
  %data_vq.i5.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %data_vq.i5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data_vq.i5.i, align 8
  tail call void @kfree(ptr noundef %44) #11
  tail call void @virtcrypto_devmgr_rm_dev(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtcrypto_config_changed(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @virtcrypto_update_status(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcrypto_freeze(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @virtio_reset_device(ptr noundef %vdev) #11
  %max_data_queues.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.virtcrypto_free_unused_reqs.exit_crit_edge, label %for.body.lr.ph.i

entry.virtcrypto_free_unused_reqs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_free_unused_reqs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_vq.i, align 8
  %arrayidx.i = getelementptr %struct.data_queue, ptr %5, i32 %i.011.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #11
  %cmp2.not8.i = icmp eq ptr %call7.i, null
  br i1 %cmp2.not8.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %call9.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call7.i, %for.body.i.while.body.i_crit_edge ]
  %req_data.i = getelementptr inbounds %struct.virtio_crypto_request, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %req_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_data.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %sgs.i = getelementptr inbounds %struct.virtio_crypto_request, ptr %call9.i, i32 0, i32 2
  %10 = ptrtoint ptr %sgs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgs.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %call.i = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #11
  %cmp2.not.i = icmp eq ptr %call.i, null
  br i1 %cmp2.not.i, label %while.body.i.for.inc.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %12 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.virtcrypto_free_unused_reqs.exit_crit_edge

for.inc.i.virtcrypto_free_unused_reqs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_free_unused_reqs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

virtcrypto_free_unused_reqs.exit:                 ; preds = %for.inc.i.virtcrypto_free_unused_reqs.exit_crit_edge, %entry.virtcrypto_free_unused_reqs.exit_crit_edge
  %call = tail call i32 @virtcrypto_dev_started(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %virtcrypto_free_unused_reqs.exit.if.end_crit_edge, label %if.then

virtcrypto_free_unused_reqs.exit.if.end_crit_edge: ; preds = %virtcrypto_free_unused_reqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %virtcrypto_free_unused_reqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @virtcrypto_dev_stop(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %virtcrypto_free_unused_reqs.exit.if.end_crit_edge
  %14 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i, label %if.end.virtcrypto_clear_crypto_engines.exit_crit_edge, label %for.body.lr.ph.i8

if.end.virtcrypto_clear_crypto_engines.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clear_crypto_engines.exit

for.body.lr.ph.i8:                                ; preds = %if.end
  %data_vq.i7 = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i9

for.body.i9:                                      ; preds = %for.inc.i13.for.body.i9_crit_edge, %for.body.lr.ph.i8
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i8 ], [ %inc.i11, %for.inc.i13.for.body.i9_crit_edge ]
  %16 = ptrtoint ptr %data_vq.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_vq.i7, align 8
  %engine.i = getelementptr %struct.data_queue, ptr %17, i32 %i.010.i, i32 3
  %18 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %engine.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i9.for.inc.i13_crit_edge, label %if.then.i

for.body.i9.for.inc.i13_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i13

if.then.i:                                        ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #13
  %call.i10 = tail call i32 @crypto_engine_exit(ptr noundef nonnull %19) #11
  br label %for.inc.i13

for.inc.i13:                                      ; preds = %if.then.i, %for.body.i9.for.inc.i13_crit_edge
  %inc.i11 = add nuw i32 %i.010.i, 1
  %20 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i12 = icmp ult i32 %inc.i11, %21
  br i1 %cmp.i12, label %for.inc.i13.for.body.i9_crit_edge, label %for.inc.i13.virtcrypto_clear_crypto_engines.exit_crit_edge

for.inc.i13.virtcrypto_clear_crypto_engines.exit_crit_edge: ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clear_crypto_engines.exit

for.inc.i13.for.body.i9_crit_edge:                ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i9

virtcrypto_clear_crypto_engines.exit:             ; preds = %for.inc.i13.virtcrypto_clear_crypto_engines.exit_crit_edge, %if.end.virtcrypto_clear_crypto_engines.exit_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %affinity_hint_set.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %affinity_hint_set.i.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge, label %for.cond.preheader.i.i

virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge: ; preds = %virtcrypto_clear_crypto_engines.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_del_vqs.exit

for.cond.preheader.i.i:                           ; preds = %virtcrypto_clear_crypto_engines.exit
  %26 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %data_vq.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %data_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_vq.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.data_queue, ptr %29, i32 %i.02.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %vdev1.i.i.i = getelementptr inbounds %struct.virtqueue, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %vdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev1.i.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i.i.i, align 8
  %set_vq_affinity.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %set_vq_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_vq_affinity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 %37(ptr noundef %31, ptr noundef null) #11
  br label %virtqueue_set_affinity.exit.i.i

virtqueue_set_affinity.exit.i.i:                  ; preds = %if.then.i.i.i, %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %38 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %39
  br i1 %cmp.i.i, label %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, label %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge

virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %40 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %affinity_hint_set.i.i, align 1
  br label %virtcrypto_del_vqs.exit

virtcrypto_del_vqs.exit:                          ; preds = %for.end.i.i, %virtcrypto_clear_crypto_engines.exit.virtcrypto_del_vqs.exit_crit_edge
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %23, i32 0, i32 8
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %del_vqs.i, align 4
  tail call void %44(ptr noundef %23) #11
  %data_vq.i5.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %data_vq.i5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_vq.i5.i, align 8
  tail call void @kfree(ptr noundef %46) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcrypto_restore(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @virtcrypto_init_vqs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_queues.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33.not.i = icmp eq i32 %3, 0
  br i1 %cmp33.not.i, label %if.end.if.end4_crit_edge, label %for.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end
  %data_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_vq.i, align 8
  %engine.i = getelementptr %struct.data_queue, ptr %5, i32 %i.034.i, i32 3
  %6 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then.i.for.inc.i_crit_edge, label %while.cond.preheader.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %if.then.i
  %dec36.i = add i32 %i.034.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec36.i)
  %cmp737.i = icmp sgt i32 %dec36.i, -1
  br i1 %cmp737.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.free_vqs_crit_edge

while.cond.preheader.i.free_vqs_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vqs

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.034.i, 1
  %8 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec38.i = phi i32 [ %dec.i, %if.end17.i.while.body.i_crit_edge ], [ %dec36.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_vq.i, align 8
  %engine10.i = getelementptr %struct.data_queue, ptr %11, i32 %dec38.i, i32 3
  %12 = ptrtoint ptr %engine10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %engine10.i, align 4
  %tobool11.not.i = icmp eq ptr %13, null
  br i1 %tobool11.not.i, label %while.body.i.if.end17.i_crit_edge, label %if.then12.i

while.body.i.if.end17.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then12.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call i32 @crypto_engine_exit(ptr noundef nonnull %13) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %while.body.i.if.end17.i_crit_edge
  %dec.i = add i32 %dec38.i, -1
  %cmp7.i = icmp sgt i32 %dec.i, -1
  br i1 %cmp7.i, label %if.end17.i.while.body.i_crit_edge, label %if.end17.i.free_vqs_crit_edge

if.end17.i.free_vqs_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vqs

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_status.i, align 4
  %call.i21 = tail call zeroext i8 %17(ptr noundef %vdev) #11
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i22, label %if.end4.do.body.i_crit_edge, label %if.then.i23

if.end4.do.body.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then.i23:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %21(ptr noundef %vdev) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i23, %if.end4.do.body.i_crit_edge
  %22 = and i8 %call.i21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool4.not.i24 = icmp eq i8 %22, 0
  br i1 %tobool4.not.i24, label %virtio_device_ready.exit, label %do.body8.i, !prof !93

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #11, !srcloc !94
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i21, 4
  tail call void %26(ptr noundef %vdev, i8 noundef zeroext %or.i) #11
  %call5 = tail call i32 @virtcrypto_dev_start(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %virtio_device_ready.exit.cleanup_crit_edge, label %do.end

virtio_device_ready.exit.cleanup_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #14
  tail call fastcc void @virtcrypto_clear_crypto_engines(ptr noundef %1)
  br label %free_vqs

free_vqs:                                         ; preds = %do.end, %if.end17.i.free_vqs_crit_edge, %while.cond.preheader.i.free_vqs_crit_edge
  %err.0 = phi i32 [ %call5, %do.end ], [ %call.i, %while.cond.preheader.i.free_vqs_crit_edge ], [ %call.i, %if.end17.i.free_vqs_crit_edge ]
  tail call void @virtio_reset_device(ptr noundef %vdev) #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %affinity_hint_set.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %affinity_hint_set.i.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %free_vqs.virtcrypto_del_vqs.exit_crit_edge, label %for.cond.preheader.i.i

free_vqs.virtcrypto_del_vqs.exit_crit_edge:       ; preds = %free_vqs
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_del_vqs.exit

for.cond.preheader.i.i:                           ; preds = %free_vqs
  %31 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %data_vq.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge ]
  %33 = ptrtoint ptr %data_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_vq.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.data_queue, ptr %34, i32 %i.02.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %vdev1.i.i.i = getelementptr inbounds %struct.virtqueue, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %vdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdev1.i.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i.i.i, align 8
  %set_vq_affinity.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %set_vq_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_vq_affinity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 %42(ptr noundef %36, ptr noundef null) #11
  br label %virtqueue_set_affinity.exit.i.i

virtqueue_set_affinity.exit.i.i:                  ; preds = %if.then.i.i.i, %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %43 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %44
  br i1 %cmp.i.i, label %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, label %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge

virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %45 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %affinity_hint_set.i.i, align 1
  br label %virtcrypto_del_vqs.exit

virtcrypto_del_vqs.exit:                          ; preds = %for.end.i.i, %free_vqs.virtcrypto_del_vqs.exit_crit_edge
  %config.i25 = getelementptr inbounds %struct.virtio_device, ptr %28, i32 0, i32 8
  %46 = ptrtoint ptr %config.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i25, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %del_vqs.i, align 4
  tail call void %49(ptr noundef %28) #11
  %data_vq.i5.i = getelementptr inbounds %struct.virtio_crypto, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %data_vq.i5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_vq.i5.i, align 8
  tail call void @kfree(ptr noundef %51) #11
  br label %cleanup

cleanup:                                          ; preds = %virtcrypto_del_vqs.exit, %virtio_device_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %virtcrypto_del_vqs.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %virtio_device_ready.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtcrypto_devmgr_add_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtcrypto_init_vqs(ptr nocapture noundef %vi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_data_queues.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 4
  %0 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_data_queues.i, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 84) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %virtcrypto_alloc_queues.exit.thread60, label %if.end7.i.i.i, !prof !95

virtcrypto_alloc_queues.exit.thread60:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_vq.i62 = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 2
  %4 = ptrtoint ptr %data_vq.i62 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data_vq.i62, align 8
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %data_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 2
  %6 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i.i, ptr %data_vq.i, align 8
  %tobool.not.i.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.not, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i.i
  %7 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vi, align 8
  %dev1.i = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_data_queues.i, align 8
  %add.i = add i32 %10, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #11
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  br i1 %12, label %if.end.err_free_crit_edge, label %kcalloc.exit.thread.i, !prof !95

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

kcalloc.exit.thread.i:                            ; preds = %if.end
  %call8.i.i.i42 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #16
  %tobool.not192.i = icmp eq ptr %call8.i.i.i42, null
  br i1 %tobool.not192.i, label %kcalloc.exit.thread.i.err_free_crit_edge, label %kcalloc.exit134.thread.i

kcalloc.exit.thread.i.err_free_crit_edge:         ; preds = %kcalloc.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

kcalloc.exit134.thread.i:                         ; preds = %kcalloc.exit.thread.i
  %call8.i.i131.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #16
  %tobool3.not209.i = icmp eq ptr %call8.i.i131.i, null
  br i1 %tobool3.not209.i, label %virtcrypto_find_vqs.exit.thread104, label %if.end7.i.i165.i

if.end7.i.i165.i:                                 ; preds = %kcalloc.exit134.thread.i
  %call8.i.i164.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #16
  %tobool7.not.i = icmp eq ptr %call8.i.i164.i, null
  br i1 %tobool7.not.i, label %if.end7.i.i165.i.virtcrypto_find_vqs.exit_crit_edge, label %if.end9.i

if.end7.i.i165.i.virtcrypto_find_vqs.exit_crit_edge: ; preds = %if.end7.i.i165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_find_vqs.exit

if.end9.i:                                        ; preds = %if.end7.i.i165.i
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i131.i, i32 %10
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr ptr, ptr %call8.i.i164.i, i32 %10
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.21, ptr %arrayidx11.i, align 4
  %16 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp181.not.i = icmp eq i32 %17, 0
  br i1 %cmp181.not.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %i.0182.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx13.i = getelementptr ptr, ptr %call8.i.i131.i, i32 %i.0182.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @virtcrypto_dataq_callback, ptr %arrayidx13.i, align 4
  %19 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_vq.i, align 8
  %name.i = getelementptr %struct.data_queue, ptr %20, i32 %i.0182.i, i32 2
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %i.0182.i) #11
  %21 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_vq.i, align 8
  %name18.i = getelementptr %struct.data_queue, ptr %22, i32 %i.0182.i, i32 2
  %arrayidx20.i = getelementptr ptr, ptr %call8.i.i164.i, i32 %i.0182.i
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name18.i, ptr %arrayidx20.i, align 4
  %inc.i = add nuw i32 %i.0182.i, 1
  %24 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vi, align 8
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %27, i32 noundef %add.i, ptr noundef nonnull %call8.i.i.i42, ptr noundef nonnull %call8.i.i131.i, ptr noundef nonnull %call8.i.i164.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool23.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %for.end.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

for.end.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split.sink.split.i

if.end25.i:                                       ; preds = %for.end.i
  %arrayidx27.i = getelementptr ptr, ptr %call8.i.i.i42, i32 %10
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx27.i, align 4
  %ctrl_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 1
  %34 = ptrtoint ptr %ctrl_vq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %ctrl_vq.i, align 4
  %35 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp30183.not.i = icmp eq i32 %36, 0
  br i1 %cmp30183.not.i, label %if.end25.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, label %if.end25.i.do.body.i_crit_edge

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  br label %do.body.i

if.end25.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split.sink.split.i

for.cond28.i:                                     ; preds = %do.body.i
  %inc48.i = add nuw i32 %i.1184.i, 1
  %37 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_data_queues.i, align 8
  %cmp30.i = icmp ult i32 %inc48.i, %38
  br i1 %cmp30.i, label %for.cond28.i.do.body.i_crit_edge, label %for.cond28.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

for.cond28.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split.sink.split.i

for.cond28.i.do.body.i_crit_edge:                 ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond28.i.do.body.i_crit_edge, %if.end25.i.do.body.i_crit_edge
  %i.1184.i = phi i32 [ %inc48.i, %for.cond28.i.do.body.i_crit_edge ], [ 0, %if.end25.i.do.body.i_crit_edge ]
  %39 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data_vq.i, align 8
  %lock.i = getelementptr %struct.data_queue, ptr %40, i32 %i.1184.i, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @virtcrypto_find_vqs.__key, i16 noundef signext 3) #11
  %arrayidx35.i = getelementptr ptr, ptr %call8.i.i.i42, i32 %i.1184.i
  %41 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx35.i, align 4
  %43 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data_vq.i, align 8
  %arrayidx37.i = getelementptr %struct.data_queue, ptr %44, i32 %i.1184.i
  %45 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %arrayidx37.i, align 4
  %call38.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1.i, i1 noundef zeroext true) #11
  %46 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data_vq.i, align 8
  %engine.i = getelementptr %struct.data_queue, ptr %47, i32 %i.1184.i, i32 3
  %48 = ptrtoint ptr %engine.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call38.i, ptr %engine.i, align 4
  %49 = load ptr, ptr %data_vq.i, align 8
  %engine43.i = getelementptr %struct.data_queue, ptr %49, i32 %i.1184.i, i32 3
  %50 = ptrtoint ptr %engine43.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %engine43.i, align 4
  %tobool44.not.i = icmp eq ptr %51, null
  br i1 %tobool44.not.i, label %do.body.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, label %for.cond28.i

do.body.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split.sink.split.i

cleanup.sink.split.sink.split.sink.split.i:       ; preds = %do.body.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %for.cond28.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %if.end25.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %for.end.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge
  %retval.0.ph.ph.ph.i = phi i32 [ 0, %if.end25.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge ], [ %call.i.i, %for.end.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge ], [ -12, %do.body.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge ], [ 0, %for.cond28.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i164.i) #11
  br label %virtcrypto_find_vqs.exit

virtcrypto_find_vqs.exit.thread104:               ; preds = %kcalloc.exit134.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i42) #11
  br label %err_free

virtcrypto_find_vqs.exit:                         ; preds = %cleanup.sink.split.sink.split.sink.split.i, %if.end7.i.i165.i.virtcrypto_find_vqs.exit_crit_edge
  %retval.0.ph.ph.i = phi i32 [ -12, %if.end7.i.i165.i.virtcrypto_find_vqs.exit_crit_edge ], [ %retval.0.ph.ph.ph.i, %cleanup.sink.split.sink.split.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i131.i) #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.ph.i)
  %tobool2.not = icmp eq i32 %retval.0.ph.ph.i, 0
  br i1 %tobool2.not, label %if.end4, label %virtcrypto_find_vqs.exit.err_free_crit_edge

virtcrypto_find_vqs.exit.err_free_crit_edge:      ; preds = %virtcrypto_find_vqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end4:                                          ; preds = %virtcrypto_find_vqs.exit
  tail call void @cpus_read_lock() #11
  %curr_queue.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 5
  %52 = ptrtoint ptr %curr_queue.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %curr_queue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i44 = icmp eq i32 %53, 1
  br i1 %cmp.i44, label %if.end4.if.then.i_crit_edge, label %lor.lhs.false.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end4
  %54 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp1.i = icmp eq i32 %55, 1
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.cond.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %affinity_hint_set.i.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 24
  %56 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %affinity_hint_set.i.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %if.then.i.virtcrypto_set_affinity.exit_crit_edge, label %for.cond.preheader.i.i

if.then.i.virtcrypto_set_affinity.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_set_affinity.exit

for.cond.preheader.i.i:                           ; preds = %if.then.i
  %58 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %60 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_vq.i, align 8
  %arrayidx.i.i = getelementptr %struct.data_queue, ptr %61, i32 %i.02.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %vdev1.i.i.i = getelementptr inbounds %struct.virtqueue, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %vdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vdev1.i.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i.i, align 8
  %set_vq_affinity.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %set_vq_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_vq_affinity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 %69(ptr noundef %63, ptr noundef null) #11
  br label %virtqueue_set_affinity.exit.i.i

virtqueue_set_affinity.exit.i.i:                  ; preds = %if.then.i.i.i, %for.body.i.i.virtqueue_set_affinity.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %70 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %71
  br i1 %cmp.i.i, label %virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge, label %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge

virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

virtqueue_set_affinity.exit.i.i.for.body.i.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %virtqueue_set_affinity.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %72 = ptrtoint ptr %affinity_hint_set.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %affinity_hint_set.i.i, align 1
  br label %virtcrypto_set_affinity.exit

for.cond.i:                                       ; preds = %virtqueue_set_affinity.exit.i.for.cond.i_crit_edge, %lor.lhs.false.i.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %inc.i51, %virtqueue_set_affinity.exit.i.for.cond.i_crit_edge ], [ 0, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %cpu.0.i = phi i32 [ %call.i, %virtqueue_set_affinity.exit.i.for.cond.i_crit_edge ], [ -1, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %call.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %73)
  %cmp2.i = icmp ult i32 %call.i, %73
  br i1 %cmp2.i, label %for.body.i49, label %for.cond.i.for.end.i52_crit_edge

for.cond.i.for.end.i52_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i52

for.body.i49:                                     ; preds = %for.cond.i
  %74 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_vq.i, align 8
  %arrayidx.i47 = getelementptr %struct.data_queue, ptr %75, i32 %i.0.i
  %76 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i47, align 4
  %vdev1.i.i = getelementptr inbounds %struct.virtqueue, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vdev1.i.i, align 4
  %config.i.i48 = getelementptr inbounds %struct.virtio_device, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %config.i.i48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.i.i48, align 8
  %set_vq_affinity.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %set_vq_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_vq_affinity.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %83, null
  br i1 %tobool.not.i19.i, label %for.body.i49.virtqueue_set_affinity.exit.i_crit_edge, label %if.then.i.i

for.body.i49.virtqueue_set_affinity.exit.i_crit_edge: ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i

if.then.i.i:                                      ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i = and i32 %call.i, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i18.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %call.i, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i18.i, i32 %idx.neg.i.i
  %call.i.i50 = tail call i32 %83(ptr noundef %77, ptr noundef %add.ptr.i.i) #11
  br label %virtqueue_set_affinity.exit.i

virtqueue_set_affinity.exit.i:                    ; preds = %if.then.i.i, %for.body.i49.virtqueue_set_affinity.exit.i_crit_edge
  %inc.i51 = add nuw i32 %i.0.i, 1
  %84 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_data_queues.i, align 8
  %cmp6.not.i = icmp ult i32 %inc.i51, %85
  br i1 %cmp6.not.i, label %virtqueue_set_affinity.exit.i.for.cond.i_crit_edge, label %virtqueue_set_affinity.exit.i.for.end.i52_crit_edge

virtqueue_set_affinity.exit.i.for.end.i52_crit_edge: ; preds = %virtqueue_set_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i52

virtqueue_set_affinity.exit.i.for.cond.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i52:                                      ; preds = %virtqueue_set_affinity.exit.i.for.end.i52_crit_edge, %for.cond.i.for.end.i52_crit_edge
  %affinity_hint_set.i = getelementptr inbounds %struct.virtio_crypto, ptr %vi, i32 0, i32 24
  %86 = ptrtoint ptr %affinity_hint_set.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %affinity_hint_set.i, align 1
  br label %virtcrypto_set_affinity.exit

virtcrypto_set_affinity.exit:                     ; preds = %for.end.i52, %for.end.i.i, %if.then.i.virtcrypto_set_affinity.exit_crit_edge
  tail call void @cpus_read_unlock() #11
  br label %cleanup

err_free:                                         ; preds = %virtcrypto_find_vqs.exit.err_free_crit_edge, %virtcrypto_find_vqs.exit.thread104, %kcalloc.exit.thread.i.err_free_crit_edge, %if.end.err_free_crit_edge
  %retval.0.i102 = phi i32 [ %retval.0.ph.ph.i, %virtcrypto_find_vqs.exit.err_free_crit_edge ], [ -12, %virtcrypto_find_vqs.exit.thread104 ], [ -12, %if.end.err_free_crit_edge ], [ -12, %kcalloc.exit.thread.i.err_free_crit_edge ]
  %87 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data_vq.i, align 8
  tail call void @kfree(ptr noundef %88) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free, %virtcrypto_set_affinity.exit, %if.end7.i.i.i.cleanup_crit_edge, %virtcrypto_alloc_queues.exit.thread60
  %retval.0 = phi i32 [ 0, %virtcrypto_set_affinity.exit ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ %retval.0.i102, %err_free ], [ -12, %virtcrypto_alloc_queues.exit.thread60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtcrypto_start_crypto_engines(ptr nocapture noundef readonly %vcrypto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_data_queues = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 4
  %0 = ptrtoint ptr %max_data_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_data_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data_vq = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_vq, align 8
  %engine = getelementptr %struct.data_queue, ptr %3, i32 %i.034, i32 3
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call i32 @crypto_engine_start(ptr noundef nonnull %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.for.inc_crit_edge, label %while.cond.preheader

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.cond.preheader:                             ; preds = %if.then
  %dec36 = add i32 %i.034, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec36)
  %cmp737 = icmp sgt i32 %dec36, -1
  br i1 %cmp737, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.034, 1
  %6 = ptrtoint ptr %max_data_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_data_queues, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec38 = phi i32 [ %dec, %if.end17.while.body_crit_edge ], [ %dec36, %while.cond.preheader.while.body_crit_edge ]
  %8 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_vq, align 8
  %engine10 = getelementptr %struct.data_queue, ptr %9, i32 %dec38, i32 3
  %10 = ptrtoint ptr %engine10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine10, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %while.body.if.end17_crit_edge, label %if.then12

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @crypto_engine_exit(ptr noundef nonnull %11) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %while.body.if.end17_crit_edge
  %dec = add i32 %dec38, -1
  %cmp7 = icmp sgt i32 %dec, -1
  br i1 %cmp7, label %if.end17.while.body_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end17.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %dev) unnamed_addr #6 align 64 {
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
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !93

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #11, !srcloc !94
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtcrypto_update_status(ptr noundef %vcrypto) unnamed_addr #0 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  %0 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !91
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 208) #11
  %1 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vcrypto, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #11
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %tobool.not = icmp ult i32 %9, 2
  br i1 %tobool.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcrypto, align 8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %9) #14
  %12 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcrypto, align 8
  call void @virtio_break_device(ptr noundef %13) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status13 = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 19
  %14 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp14 = icmp eq i32 %15, %9
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool21.not = icmp eq i32 %8, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  %call = call i32 @virtcrypto_dev_start(ptr noundef %vcrypto) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  %17 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vcrypto, align 8
  %dev35 = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 6
  br i1 %tobool23.not, label %do.end33, label %do.end27

do.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.28) #14
  br label %cleanup

do.end33:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtcrypto_dev_stop(ptr noundef %vcrypto) #11
  %19 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vcrypto, align 8
  %dev40 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev40, ptr noundef nonnull @.str.34) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end33, %do.end27, %if.end.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ -1, %do.end10 ], [ -1, %do.end27 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtcrypto_clear_crypto_engines(ptr nocapture noundef readonly %vcrypto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_data_queues = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 4
  %0 = ptrtoint ptr %max_data_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_data_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data_vq = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_vq, align 8
  %engine = getelementptr %struct.data_queue, ptr %3, i32 %i.010, i32 3
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @crypto_engine_exit(ptr noundef nonnull %5) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %6 = ptrtoint ptr %max_data_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_data_queues, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtcrypto_del_vqs(ptr nocapture noundef %vcrypto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcrypto, align 8
  %affinity_hint_set.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 24
  %2 = ptrtoint ptr %affinity_hint_set.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %affinity_hint_set.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.virtcrypto_clean_affinity.exit_crit_edge, label %for.cond.preheader.i

entry.virtcrypto_clean_affinity.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtcrypto_clean_affinity.exit

for.cond.preheader.i:                             ; preds = %entry
  %max_data_queues.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 4
  %4 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_data_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 0
  br i1 %cmp1.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data_vq.i = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %virtqueue_set_affinity.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %virtqueue_set_affinity.exit.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %data_vq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_vq.i, align 8
  %arrayidx.i = getelementptr %struct.data_queue, ptr %7, i32 %i.02.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %vdev1.i.i = getelementptr inbounds %struct.virtqueue, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev1.i.i, align 4
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 8
  %set_vq_affinity.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %set_vq_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_vq_affinity.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body.i.virtqueue_set_affinity.exit.i_crit_edge, label %if.then.i.i

for.body.i.virtqueue_set_affinity.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtqueue_set_affinity.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %15(ptr noundef %9, ptr noundef null) #11
  br label %virtqueue_set_affinity.exit.i

virtqueue_set_affinity.exit.i:                    ; preds = %if.then.i.i, %for.body.i.virtqueue_set_affinity.exit.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %16 = ptrtoint ptr %max_data_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_data_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %virtqueue_set_affinity.exit.i.for.body.i_crit_edge, label %virtqueue_set_affinity.exit.i.for.end.i_crit_edge

virtqueue_set_affinity.exit.i.for.end.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

virtqueue_set_affinity.exit.i.for.body.i_crit_edge: ; preds = %virtqueue_set_affinity.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %virtqueue_set_affinity.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %affinity_hint_set.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %affinity_hint_set.i, align 1
  br label %virtcrypto_clean_affinity.exit

virtcrypto_clean_affinity.exit:                   ; preds = %for.end.i, %entry.virtcrypto_clean_affinity.exit_crit_edge
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %del_vqs, align 4
  tail call void %22(ptr noundef %1) #11
  %data_vq.i5 = getelementptr inbounds %struct.virtio_crypto, ptr %vcrypto, i32 0, i32 2
  %23 = ptrtoint ptr %data_vq.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_vq.i5, align 8
  tail call void @kfree(ptr noundef %24) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtcrypto_devmgr_rm_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtcrypto_dataq_callback(ptr noundef %vq) #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !91
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %data_vq = getelementptr inbounds %struct.virtio_crypto, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_vq, align 8
  %lock = getelementptr %struct.data_queue, ptr %8, i32 %6, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  br label %do.body5

do.body5:                                         ; preds = %do.cond29.do.body5_crit_edge, %entry
  %flags.0 = phi i32 [ %call2, %entry ], [ %flags.1.lcssa, %do.cond29.do.body5_crit_edge ]
  call void @virtqueue_disable_cb(ptr noundef %vq) #11
  %call648 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #11
  %cmp7.not49 = icmp eq ptr %call648, null
  br i1 %cmp7.not49, label %do.body5.do.cond29_crit_edge, label %do.body5.while.body_crit_edge

do.body5.while.body_crit_edge:                    ; preds = %do.body5
  br label %while.body

do.body5.do.cond29_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond29

while.body:                                       ; preds = %do.body14.while.body_crit_edge, %do.body5.while.body_crit_edge
  %call651 = phi ptr [ %call6, %do.body14.while.body_crit_edge ], [ %call648, %do.body5.while.body_crit_edge ]
  %flags.150 = phi i32 [ %call24, %do.body14.while.body_crit_edge ], [ %flags.0, %do.body5.while.body_crit_edge ]
  %9 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_vq, align 8
  %lock11 = getelementptr %struct.data_queue, ptr %10, i32 %6, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %flags.150) #11
  %alg_cb = getelementptr inbounds %struct.virtio_crypto_request, ptr %call651, i32 0, i32 4
  %11 = ptrtoint ptr %alg_cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alg_cb, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.body.do.body14_crit_edge, label %if.then

while.body.do.body14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void %12(ptr noundef nonnull %call651, i32 noundef %14) #11
  br label %do.body14

do.body14:                                        ; preds = %if.then, %while.body.do.body14_crit_edge
  %15 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_vq, align 8
  %lock22 = getelementptr %struct.data_queue, ptr %16, i32 %6, i32 1
  %call24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock22) #11
  %call6 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #11
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %do.body14.do.cond29_crit_edge, label %do.body14.while.body_crit_edge

do.body14.while.body_crit_edge:                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.body14.do.cond29_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond29

do.cond29:                                        ; preds = %do.body14.do.cond29_crit_edge, %do.body5.do.cond29_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0, %do.body5.do.cond29_crit_edge ], [ %call24, %do.body14.do.cond29_crit_edge ]
  %call30 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vq) #11
  br i1 %call30, label %do.end31, label %do.cond29.do.body5_crit_edge

do.cond29.do.body5_crit_edge:                     ; preds = %do.cond29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

do.end31:                                         ; preds = %do.cond29
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_vq, align 8
  %lock34 = getelementptr %struct.data_queue, ptr %18, i32 %6, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock34, i32 noundef %flags.1.lcssa) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_break_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtcrypto_dev_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtcrypto_dev_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtcrypto_dev_started(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_virtio_crypto__231_525_virtio_crypto_driver_init6, !1, !"__initcall__kmod_virtio_crypto__231_525_virtio_crypto_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_virtio_crypto_driver_exit, !1, !"__exitcall_virtio_crypto_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description232, !4, !"__UNIQUE_ID_description232", i1 false, i1 false}
!4 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_file233, !6, !"__UNIQUE_ID_file233", i1 false, i1 false}
!6 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 529, i32 1}
!7 = !{ptr @__UNIQUE_ID_license234, !6, !"__UNIQUE_ID_license234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author235, !9, !"__UNIQUE_ID_author235", i1 false, i1 false}
!9 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 530, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 511, i32 25}
!12 = !{ptr @virtio_crypto_driver, !13, !"virtio_crypto_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 510, i32 29}
!14 = !{ptr @id_table, !15, !"id_table", i1 false, i1 false}
!15 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 505, i32 38}
!16 = !{ptr @features, !17, !"features", i1 false, i1 false}
!17 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 501, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 306, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @virtcrypto_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @virtcrypto_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 317, i32 3}
!28 = !{ptr @virtcrypto_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @virtcrypto_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 355, i32 3}
!32 = !{ptr @virtcrypto_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @virtcrypto_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @virtcrypto_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 362, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 379, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @virtcrypto_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @virtcrypto_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 388, i32 3}
!44 = !{ptr @virtcrypto_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @virtcrypto_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 77, i32 25}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 83, i32 5}
!52 = !{ptr @virtcrypto_find_vqs.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 94, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 215, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @virtcrypto_update_status._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @virtcrypto_update_status._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 230, i32 4}
!63 = !{ptr @virtcrypto_update_status._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @virtcrypto_update_status._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 235, i32 3}
!67 = !{ptr @virtcrypto_update_status._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @virtcrypto_update_status._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 238, i32 3}
!71 = !{ptr @virtcrypto_update_status._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @virtcrypto_update_status._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 435, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @virtcrypto_remove._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @virtcrypto_remove._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/virtio/virtio_crypto_core.c", i32 486, i32 3}
!80 = !{ptr @virtcrypto_restore._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @virtcrypto_restore._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i8 0, i8 2}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2153849838, i64 2153850332, i64 2153849875, i64 2153849931, i64 2153849965, i64 2153849989, i64 2153850030, i64 2153850051, i64 2153850079, i64 2153850113}
!95 = !{!"branch_weights", i32 1, i32 2000}
