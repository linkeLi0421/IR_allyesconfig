; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/sdio.c_pt.bc'
source_filename = "../drivers/staging/greybus/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gbphy_device_id = type { i8 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_sdio_get_caps_response = type { i32, i32, i32, i32, i16, i16 }
%struct.gbphy_device = type { i32, ptr, ptr, %struct.list_head, %struct.device }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gb_sdio_host = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.spinlock, i8, ptr, %struct.work_struct, i8, i8, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.gb_sdio_transfer_request = type <{ i8, i16, i16, [0 x i8] }>
%struct.gb_sdio_transfer_response = type { i16, i16, [0 x i8] }
%struct.gb_sdio_set_ios_request = type <{ i32, i32, i8, i8, i8, i8, i8, i8 }>
%struct.gb_sdio_command_request = type <{ i8, i8, i8, i32, i16, i16 }>
%struct.gb_sdio_command_response = type { [4 x i32] }

@__initcall__kmod_gb_sdio__276_883_sdio_driver_init6 = internal global ptr @sdio_driver_init, section ".initcall6.init", align 4
@sdio_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.1, ptr @gb_sdio_probe, ptr @gb_sdio_remove, ptr @gb_sdio_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sdio_driver_exit = internal global ptr @sdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file277 = internal constant [45 x i8] c"gb_sdio.file=drivers/staging/greybus/gb-sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [23 x i8] c"gb_sdio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gb_sdio\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@gb_sdio_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 7 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@gb_sdio_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @gb_mmc_request, ptr null, ptr @gb_mmc_set_ios, ptr @gb_mmc_get_ro, ptr @gb_mmc_get_cd, ptr null, ptr null, ptr null, ptr @gb_mmc_switch_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gb_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@gb_sdio_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->xfer\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmc-%s\00", [25 x i8] zeroinitializer }, align 32
@gb_sdio_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&host->mrqwork)\00", [62 x i8] zeroinitializer }, align 32
@gb_sdio_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 214, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported unsolicited event: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_sdio_request_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/greybus/sdio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_sdio_request_handler._entry_ptr = internal global ptr @gb_sdio_request_handler._entry, section ".printk_index", align 4
@gb_sdio_request_handler._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 222, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wrong event size received (%zu < %zu)\0A\00", [57 x i8] zeroinitializer }, align 32
@gb_sdio_request_handler._entry_ptr.15 = internal global ptr @gb_sdio_request_handler._entry.13, section ".printk_index", align 4
@gbphy_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 76, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbphy_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/gbphy.h\00", [32 x i8] zeroinitializer }, align 32
@gbphy_runtime_get_sync._entry_ptr = internal global ptr @gbphy_runtime_get_sync._entry, section ".printk_index", align 4
@gb_sdio_mrq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.10, i32 513, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc request is NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_sdio_mrq_work\00", [47 x i8] zeroinitializer }, align 32
@gb_sdio_mrq_work._entry_ptr = internal global ptr @gb_sdio_mrq_work._entry, section ".printk_index", align 4
@gb_sdio_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.10, i32 436, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd flag invalid 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_sdio_command\00", [16 x i8] zeroinitializer }, align 32
@gb_sdio_command._entry_ptr = internal global ptr @gb_sdio_command._entry, section ".printk_index", align 4
@gb_sdio_command._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.10, i32 456, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd type invalid 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@gb_sdio_command._entry_ptr.25 = internal global ptr @gb_sdio_command._entry.23, section ".printk_index", align 4
@_gb_sdio_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.10, i32 344, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"recv: size received: %d != %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_gb_sdio_recv\00", [18 x i8] zeroinitializer }, align 32
@_gb_sdio_recv._entry_ptr = internal global ptr @_gb_sdio_recv._entry, section ".printk_index", align 4
@_gb_sdio_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.10, i32 298, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"send: size received: %zu != %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_gb_sdio_send\00", [18 x i8] zeroinitializer }, align 32
@_gb_sdio_send._entry_ptr = internal global ptr @_gb_sdio_send._entry, section ".printk_index", align 4
@_gb_sdio_process_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.10, i32 196, ptr @.str.32, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"card %s now event\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_gb_sdio_process_events\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_gb_sdio_process_events._entry_ptr = internal global ptr @_gb_sdio_process_events._entry, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inserted\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 24]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"sdio_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 876, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 883, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 877, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"gb_sdio_id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 870, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"gb_sdio_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 754, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 807, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 808, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 809, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 815, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 213, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 221, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [35 x i8] c"../drivers/staging/greybus/gbphy.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 76, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 513, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 435, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 455, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 343, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 297, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [34 x i8] c"../drivers/staging/greybus/sdio.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 195, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_sdio_driver_exit, ptr @__initcall__kmod_gb_sdio__276_883_sdio_driver_init6, ptr @_gb_sdio_process_events._entry, ptr @_gb_sdio_process_events._entry_ptr, ptr @_gb_sdio_recv._entry, ptr @_gb_sdio_recv._entry_ptr, ptr @_gb_sdio_send._entry, ptr @_gb_sdio_send._entry_ptr, ptr @gb_sdio_command._entry, ptr @gb_sdio_command._entry.23, ptr @gb_sdio_command._entry_ptr, ptr @gb_sdio_command._entry_ptr.25, ptr @gb_sdio_mrq_work._entry, ptr @gb_sdio_mrq_work._entry_ptr, ptr @gb_sdio_request_handler._entry, ptr @gb_sdio_request_handler._entry.13, ptr @gb_sdio_request_handler._entry_ptr, ptr @gb_sdio_request_handler._entry_ptr.15, ptr @gbphy_runtime_get_sync._entry, ptr @gbphy_runtime_get_sync._entry_ptr, ptr @sdio_driver_exit, ptr @sdio_driver, ptr @.str, ptr @.str.1, ptr @gb_sdio_id_table, ptr @gb_sdio_ops, ptr @gb_sdio_probe.__key, ptr @.str.2, ptr @gb_sdio_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @gb_sdio_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_request_handler._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbphy_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_mrq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_sdio_command._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_sdio_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_sdio_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_sdio_process_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @sdio_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @sdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_sdio_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %response.i = alloca %struct.gb_sdio_get_caps_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call = tail call ptr @mmc_alloc_host(i32 noundef 212, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %0 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %2 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %call2 = tail call ptr @gb_connection_create(ptr noundef %1, i16 noundef zeroext %6, ptr noundef nonnull @gb_sdio_request_handler) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call2 to i32
  br label %exit_mmc_free

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %mmc8 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %8 = ptrtoint ptr %mmc8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %mmc8, align 4
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 11
  %9 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %removed, align 1
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %private.i, align 4
  %private.i106 = getelementptr inbounds %struct.gb_connection, ptr %call2, i32 0, i32 17
  %11 = ptrtoint ptr %private.i106 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %private.i, ptr %private.i106, align 4
  %gbphy_dev10 = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 1
  %12 = ptrtoint ptr %gbphy_dev10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %gbphy_dev, ptr %gbphy_dev10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call11 = tail call i32 @gb_connection_enable_tx(ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.exit_connection_destroy_crit_edge

if.end6.exit_connection_destroy_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_connection_destroy

if.end14:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %response.i) #8
  %14 = getelementptr inbounds %struct.gb_sdio_get_caps_response, ptr %response.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.gb_sdio_get_caps_response, ptr %response.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.gb_sdio_get_caps_response, ptr %response.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.gb_sdio_get_caps_response, ptr %response.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.gb_sdio_get_caps_response, ptr %response.i, i32 0, i32 5
  %19 = call ptr @memset(ptr %response.i, i32 255, i32 20)
  %20 = ptrtoint ptr %mmc8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc8, align 4
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %23, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i, i32 noundef 20, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i107 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i107, label %gb_sdio_get_caps.exit.thread, label %if.end.i

gb_sdio_get_caps.exit.thread:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %response.i) #8
  br label %exit_connection_disable

if.end.i:                                         ; preds = %if.end14
  %24 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %response.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  %and.i.i = shl i32 %26, 8
  %27 = and i32 %and.i.i, 256
  %and1.i.i = lshr i32 %26, 1
  %and1.lobit.i.i = and i32 %and1.i.i, 1
  %or.i.i = or i32 %27, %and1.lobit.i.i
  %and4.i.i = shl i32 %26, 4
  %28 = and i32 %and4.i.i, 64
  %or7.i.i = or i32 %or.i.i, %28
  %and8.i.i = lshr i32 %26, 2
  %29 = and i32 %and8.i.i, 2
  %or11.i.i = or i32 %or7.i.i, %29
  %30 = and i32 %and8.i.i, 4
  %or15.i.i = or i32 %or11.i.i, %30
  %and16.i.i = shl i32 %26, 7
  %31 = and i32 %and16.i.i, 8192
  %or19.i.i = or i32 %or15.i.i, %31
  %and20.i.i = shl i32 %26, 5
  %32 = and i32 %and20.i.i, 4096
  %or23.i.i = or i32 %or19.i.i, %32
  %and24.i.i = shl i32 %26, 6
  %33 = and i32 %and24.i.i, 16384
  %or27.i.i = or i32 %or23.i.i, %33
  %34 = and i32 %and16.i.i, 65536
  %or31.i.i = or i32 %or27.i.i, %34
  %35 = and i32 %and16.i.i, 131072
  %or35.i.i = or i32 %or31.i.i, %35
  %36 = and i32 %and16.i.i, 262144
  %or39.i.i = or i32 %or35.i.i, %36
  %37 = and i32 %and16.i.i, 524288
  %or43.i.i = or i32 %or39.i.i, %37
  %38 = and i32 %and16.i.i, 1048576
  %or47.i.i = or i32 %or43.i.i, %38
  %and48.i.i = shl i32 %26, 9
  %39 = and i32 %and48.i.i, 8388608
  %or51.i.i = or i32 %or47.i.i, %39
  %40 = and i32 %and48.i.i, 16777216
  %or55.i.i = or i32 %or51.i.i, %40
  %41 = and i32 %and48.i.i, 33554432
  %or59.i.i = or i32 %or55.i.i, %41
  %and60.i.i = lshr i32 %26, 11
  %42 = and i32 %and60.i.i, 64
  %and63.i.i = lshr i32 %26, 3
  %43 = and i32 %and63.i.i, 65536
  %or66.i.i = or i32 %42, %43
  %and67.i.i = lshr i32 %26, 5
  %44 = and i32 %and67.i.i, 32768
  %or70.i.i = or i32 %or66.i.i, %44
  %and71.i.i = lshr i32 %26, 13
  %45 = and i32 %and71.i.i, 32
  %or74.i.i = or i32 %or70.i.i, %45
  %46 = ptrtoint ptr %mmc8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc8, align 4
  %caps75.i.i = getelementptr inbounds %struct.mmc_host, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %caps75.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or59.i.i, ptr %caps75.i.i, align 32
  %49 = load ptr, ptr %mmc8, align 4
  %caps278.i.i = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %caps278.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or74.i.i, ptr %caps278.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool80.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool80.not.i.i, label %if.end.i._gb_sdio_set_host_caps.exit.i_crit_edge, label %if.then.i.i

if.end.i._gb_sdio_set_host_caps.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_sdio_set_host_caps.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %card_present.i.i = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 12
  %51 = ptrtoint ptr %card_present.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %card_present.i.i, align 2
  br label %_gb_sdio_set_host_caps.exit.i

_gb_sdio_set_host_caps.exit.i:                    ; preds = %if.then.i.i, %if.end.i._gb_sdio_set_host_caps.exit.i_crit_edge
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private.i, align 4
  %call3.i = call i32 @gb_operation_get_payload_size_max(ptr noundef %53) #8
  %conv4.i = and i32 %call3.i, 65535
  %sub.i = add nsw i32 %conv4.i, -5
  %sub6.i = add nsw i32 %conv4.i, -4
  %54 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub6.i) #8
  %conv12.i = and i32 %54, 65535
  %55 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %18, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #8
  %conv11.i = zext i16 %57 to i32
  %58 = call i32 @llvm.umin.i32(i32 %conv12.i, i32 %conv11.i) #8
  %59 = call i32 @llvm.umax.i32(i32 %58, i32 512) #8
  %60 = call i32 @llvm.ctlz.i32(i32 %59, i1 false) #8, !range !85
  %shl.i.i = lshr i32 -2147483648, %60
  %max_blk_size46.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 24
  %61 = ptrtoint ptr %max_blk_size46.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shl.i.i, ptr %max_blk_size46.i, align 4
  %62 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %17, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #8
  %conv47.i = zext i16 %64 to i32
  %max_blk_count48.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 25
  %65 = ptrtoint ptr %max_blk_count48.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv47.i, ptr %max_blk_count48.i, align 128
  %data_max50.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %66 = ptrtoint ptr %data_max50.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv12.i, ptr %data_max50.i, align 4
  %67 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %14, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #8
  %and.i94.i = shl i32 %69, 7
  %or63.i.i = and i32 %and.i94.i, 16777088
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 8
  %70 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or63.i.i, ptr %ocr_avail.i, align 64
  %ocr_avail_sdio.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 9
  %71 = ptrtoint ptr %ocr_avail_sdio.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or63.i.i, ptr %ocr_avail_sdio.i, align 4
  %ocr_avail_sd.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 10
  %72 = ptrtoint ptr %ocr_avail_sd.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or63.i.i, ptr %ocr_avail_sd.i, align 8
  %ocr_avail_mmc.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 11
  %73 = ptrtoint ptr %ocr_avail_mmc.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or63.i.i, ptr %ocr_avail_mmc.i, align 4
  %74 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %15, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  %f_min56.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 5
  %77 = ptrtoint ptr %f_min56.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %f_min56.i, align 4
  %78 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %16, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #8
  %f_max57.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 6
  %81 = ptrtoint ptr %f_max57.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %f_max57.i, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %response.i) #8
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @gb_sdio_ops, ptr %ops, align 4
  %83 = ptrtoint ptr %mmc8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmc8, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %84, i32 0, i32 25
  %85 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_blk_count, align 128
  %conv = trunc i32 %86 to i16
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %87 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %88 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_blk_size, align 4
  %max_blk_count19 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %90 = ptrtoint ptr %max_blk_count19 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_blk_count19, align 128
  %mul = mul i32 %91, %89
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %92 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mul, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %93 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul, ptr %max_seg_size, align 16
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @gb_sdio_probe.__key) #8
  %xfer = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  call void @__raw_spin_lock_init(ptr noundef %xfer, ptr noundef nonnull @.str.4, ptr noundef nonnull @gb_sdio_probe.__key.3, i16 noundef signext 3) #8
  %init_name.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %95, null
  br i1 %tobool.not.i, label %if.end.i108, label %_gb_sdio_set_host_caps.exit.i.dev_name.exit_crit_edge

_gb_sdio_set_host_caps.exit.i.dev_name.exit_crit_edge: ; preds = %_gb_sdio_set_host_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i108:                                      ; preds = %_gb_sdio_set_host_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i108, %_gb_sdio_set_host_caps.exit.i.dev_name.exit_crit_edge
  %retval.0.i109 = phi ptr [ %97, %if.end.i108 ], [ %95, %_gb_sdio_set_host_caps.exit.i.dev_name.exit_crit_edge ]
  %call27 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1, ptr noundef %retval.0.i109) #8
  %mrq_workqueue = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 5
  %98 = ptrtoint ptr %mrq_workqueue to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call27, ptr %mrq_workqueue, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %dev_name.exit.exit_connection_disable_crit_edge, label %do.body32

dev_name.exit.exit_connection_disable_crit_edge:  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_connection_disable

do.body32:                                        ; preds = %dev_name.exit
  %mrqwork = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 6
  call void @__init_work(ptr noundef %mrqwork, i32 noundef 0) #8
  %99 = ptrtoint ptr %mrqwork to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %mrqwork, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @gb_sdio_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry36 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 7
  %100 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 8
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9
  %102 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @gb_sdio_mrq_work, ptr %func, align 4
  %call40 = call i32 @gb_connection_enable(ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.body32.exit_wq_destroy_crit_edge

do.body32.exit_wq_destroy_crit_edge:              ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_wq_destroy

if.end43:                                         ; preds = %do.body32
  %call44 = call i32 @mmc_add_host(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.exit_wq_destroy_crit_edge, label %if.end48

if.end43.exit_wq_destroy_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_wq_destroy

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %removed, align 1
  %queued_events = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 2
  %104 = ptrtoint ptr %queued_events to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %queued_events, align 4
  call fastcc void @_gb_sdio_process_events(ptr noundef %private.i, i8 noundef zeroext %105)
  %106 = ptrtoint ptr %queued_events to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %queued_events, align 4
  %call.i.i110 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 22
  %107 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store volatile i64 %call.i.i110, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  br label %cleanup

exit_wq_destroy:                                  ; preds = %if.end43.exit_wq_destroy_crit_edge, %do.body32.exit_wq_destroy_crit_edge
  %ret.0 = phi i32 [ %call40, %do.body32.exit_wq_destroy_crit_edge ], [ %call44, %if.end43.exit_wq_destroy_crit_edge ]
  %108 = ptrtoint ptr %mrq_workqueue to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mrq_workqueue, align 4
  call void @destroy_workqueue(ptr noundef %109) #8
  br label %exit_connection_disable

exit_connection_disable:                          ; preds = %exit_wq_destroy, %dev_name.exit.exit_connection_disable_crit_edge, %gb_sdio_get_caps.exit.thread
  %ret.1 = phi i32 [ %ret.0, %exit_wq_destroy ], [ -12, %dev_name.exit.exit_connection_disable_crit_edge ], [ %call.i.i, %gb_sdio_get_caps.exit.thread ]
  call void @gb_connection_disable(ptr noundef %call2) #8
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %exit_connection_disable, %if.end6.exit_connection_destroy_crit_edge
  %ret.2 = phi i32 [ %call11, %if.end6.exit_connection_destroy_crit_edge ], [ %ret.1, %exit_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call2) #8
  br label %exit_mmc_free

exit_mmc_free:                                    ; preds = %exit_connection_destroy, %if.then4
  %ret.3 = phi i32 [ %7, %if.then4 ], [ %ret.2, %exit_connection_destroy ]
  call void @mmc_free_host(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_mmc_free, %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit_mmc_free ], [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_sdio_remove(ptr noundef %gbphy_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #11
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.gb_sdio_host, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %removed, align 1
  %mmc3 = getelementptr inbounds %struct.gb_sdio_host, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mmc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc3, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %mrq_workqueue = getelementptr inbounds %struct.gb_sdio_host, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %mrq_workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %11) #8
  %12 = ptrtoint ptr %mrq_workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrq_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #8
  tail call void @gb_connection_disable_rx(ptr noundef %3) #8
  tail call void @mmc_remove_host(ptr noundef %8) #8
  tail call void @gb_connection_disable(ptr noundef %3) #8
  tail call void @gb_connection_destroy(ptr noundef %3) #8
  tail call void @mmc_free_host(ptr noundef %8) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_sdio_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %type1 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp.not = icmp eq i8 %5, 6
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %5 to i32
  %mmc = getelementptr inbounds %struct.gb_sdio_host, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %request4 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %10 = ptrtoint ptr %request4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request4, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5 = icmp eq i32 %13, 0
  br i1 %cmp5, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mmc11 = getelementptr inbounds %struct.gb_sdio_host, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %mmc11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 1) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %payload15 = getelementptr inbounds %struct.gb_message, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %payload15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %payload15, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %removed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %conv.i = zext i8 %21 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then17.if.end12.sink.split.i_crit_edge

if.then17.if.end12.sink.split.i_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.then17
  %and5.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i._gb_queue_event.exit_crit_edge, label %if.else.i.if.end12.sink.split.i_crit_edge

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.sink.split.i

if.else.i._gb_queue_event.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_queue_event.exit

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %if.then17.if.end12.sink.split.i_crit_edge
  %.sink23.i = phi i8 [ -3, %if.then17.if.end12.sink.split.i_crit_edge ], [ -2, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %queued_events.i = getelementptr inbounds %struct.gb_sdio_host, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %queued_events.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %queued_events.i, align 4
  %26 = and i8 %25, %.sink23.i
  store i8 %26, ptr %queued_events.i, align 4
  br label %_gb_queue_event.exit

_gb_queue_event.exit:                             ; preds = %if.end12.sink.split.i, %if.else.i._gb_queue_event.exit_crit_edge
  %queued_events14.i = getelementptr inbounds %struct.gb_sdio_host, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %queued_events14.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %queued_events14.i, align 4
  %or21.i = or i8 %28, %21
  store i8 %or21.i, ptr %queued_events14.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_gb_sdio_process_events(ptr noundef %3, i8 noundef zeroext %21)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %_gb_queue_event.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.else ], [ 0, %_gb_queue_event.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_sdio_mrq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  %gbphy_dev = getelementptr i8, ptr %work, i32 -160
  %0 = ptrtoint ptr %gbphy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbphy_dev, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #11
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %mrq1 = getelementptr i8, ptr %work, i32 -152
  %3 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrq1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %5 = ptrtoint ptr %gbphy_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gbphy_dev, align 4
  %dev1.i73 = getelementptr inbounds %struct.gbphy_device, ptr %6, i32 0, i32 4
  %call.i.i74 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %6, i32 0, i32 4, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i74, ptr %last_busy.i.i, align 8
  %call.i3.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i73, i32 noundef 13) #8
  %mmc = getelementptr i8, ptr %work, i32 -156
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %removed = getelementptr i8, ptr %work, i32 45
  %12 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %removed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -108, ptr %error, align 4
  br label %done

if.end9:                                          ; preds = %if.end6
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %call13 = tail call fastcc i32 @gb_sdio_command(ptr noundef %add.ptr, ptr noundef nonnull %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then11.done_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11.done_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %cmd17 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %cmd17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd17, align 4
  %call18 = tail call fastcc i32 @gb_sdio_command(ptr noundef %add.ptr, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.done_crit_edge, label %if.end21

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end21:                                         ; preds = %if.end16
  %data = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.end21.if.end29_crit_edge, label %if.then23

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %if.end21
  %mrq.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mrq.i, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then23.if.end.i_crit_edge [
    i32 24, label %if.then23.land.lhs.true.i_crit_edge
    i32 17, label %if.then23.land.lhs.true.i_crit_edge139
  ]

if.then23.land.lhs.true.i_crit_edge139:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then23.land.lhs.true.i_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then23.land.lhs.true.i_crit_edge, %if.then23.land.lhs.true.i_crit_edge139
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 3
  %30 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i75 = icmp ugt i32 %31, 1
  br i1 %cmp.i75, label %land.lhs.true.i.gb_sdio_transfer.exit.thread_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.gb_sdio_transfer.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_sdio_transfer.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then23.if.end.i_crit_edge
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 2
  %32 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blksz.i, align 4
  %blocks1.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 3
  %34 = ptrtoint ptr %blocks1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blocks1.i, align 4
  %mul.i = mul i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not112.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not112.i, label %if.end.i.gb_sdio_transfer.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.gb_sdio_transfer.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_sdio_transfer.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %xfer.i = getelementptr i8, ptr %work, i32 -52
  %xfer_stop.i = getelementptr i8, ptr %work, i32 -8
  %data_max.i = getelementptr i8, ptr %work, i32 -56
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 6
  %sg1.i.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 12
  %sg_len2.i.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 10
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %left.0115.i = phi i32 [ %mul.i, %while.body.lr.ph.i ], [ %sub.i, %if.end25.i.while.body.i_crit_edge ]
  %skip.0113.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add26.i, %if.end25.i.while.body.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %xfer.i) #8
  %36 = ptrtoint ptr %xfer_stop.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xfer_stop.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not.i = icmp eq i8 %37, 0
  br i1 %tobool2.not.i, label %if.end6.i, label %if.then3.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %xfer_stop.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %xfer_stop.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %xfer.i) #8
  br label %gb_sdio_transfer.exit.thread

if.end6.i:                                        ; preds = %while.body.i
  tail call void @_raw_spin_unlock(ptr noundef %xfer.i) #8
  %39 = ptrtoint ptr %data_max.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_max.i, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %left.0115.i, i32 %40) #8
  %42 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blksz.i, align 4
  %div.i = udiv i32 %41, %43
  %conv.i = trunc i32 %div.i to i16
  %conv10.i = and i32 %div.i, 65535
  %mul12.i = mul i32 %conv10.i, %43
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  %46 = ptrtoint ptr %sg1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg1.i.i, align 4
  %48 = ptrtoint ptr %sg_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_len2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul12.i)
  %cmp.i65.i = icmp ult i32 %40, %mul12.i
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end6.i
  br i1 %cmp.i65.i, label %do.end.i.i, label %if.then14.i.if.end.i.i_crit_edge, !prof !91

if.then14.i.if.end.i.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 321, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then14.i.if.end.i.i_crit_edge
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %add.i.i = add i32 %mul12.i, 4
  %call.i.i.i = tail call ptr @gb_operation_create_flags(ptr noundef %51, i8 noundef zeroext 5, i32 noundef 5, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 3264) #8
  %tobool21.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i.i, label %if.end.i.i.gb_sdio_transfer.exit.thread_crit_edge, label %if.end23.i.i

if.end.i.i.gb_sdio_transfer.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_sdio_transfer.exit.thread

if.end23.i.i:                                     ; preds = %if.end.i.i
  %request24.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %request24.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %request24.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.gb_message, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %payload.i.i, align 4
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %57, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i.i, ptr %55, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %data_blocks.i.i = getelementptr inbounds %struct.gb_sdio_transfer_request, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %data_blocks.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %data_blocks.i.i, align 1
  %61 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blksz.i, align 4
  %conv25.i.i = trunc i32 %62 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv25.i.i) #8
  %data_blksz.i.i = getelementptr inbounds %struct.gb_sdio_transfer_request, ptr %55, i32 0, i32 2
  %64 = ptrtoint ptr %data_blksz.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %data_blksz.i.i, align 1
  %call.i83.i.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i.i)
  %cmp27.i.i = icmp slt i32 %call.i83.i.i, 0
  br i1 %cmp27.i.i, label %if.end23.i.i._gb_sdio_recv.exit.thread89.i_crit_edge, label %if.end30.i.i

if.end23.i.i._gb_sdio_recv.exit.thread89.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_sdio_recv.exit.thread89.i

if.end30.i.i:                                     ; preds = %if.end23.i.i
  %response31.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %response31.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %response31.i.i, align 4
  %payload32.i.i = getelementptr inbounds %struct.gb_message, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %payload32.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %payload32.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %68, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #8
  %data_blksz34.i.i = getelementptr inbounds %struct.gb_sdio_transfer_response, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %data_blksz34.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %data_blksz34.i.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #8
  %conv35.i.i = zext i16 %74 to i32
  %conv36.i.i = zext i16 %71 to i32
  %mul.i.i = mul nuw i32 %conv35.i.i, %conv36.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul12.i)
  %cmp37.not.i.i = icmp eq i32 %mul.i.i, %mul12.i
  br i1 %cmp37.not.i.i, label %if.end46.i.i, label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mmc.i.i = getelementptr i8, ptr %work, i32 -156
  %75 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmc.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.26, i32 noundef %mul.i.i, i32 noundef %mul12.i) #11
  br label %_gb_sdio_recv.exit.thread89.i

if.end46.i.i:                                     ; preds = %if.end30.i.i
  %data47.i.i = getelementptr inbounds %struct.gb_sdio_transfer_response, ptr %68, i32 0, i32 2
  %call48.i.i = tail call i32 @sg_pcopy_from_buffer(ptr noundef %47, i32 noundef %49, ptr noundef %data47.i.i, i32 noundef %mul12.i, i32 noundef %skip.0113.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call48.i.i, i32 %mul12.i)
  %cmp49.not.i.i = icmp eq i32 %call48.i.i, %mul12.i
  br i1 %cmp49.not.i.i, label %if.end46.i.i.if.end25.i_crit_edge, label %if.end46.i.i._gb_sdio_recv.exit.thread89.i_crit_edge

if.end46.i.i._gb_sdio_recv.exit.thread89.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_sdio_recv.exit.thread89.i

if.end46.i.i.if.end25.i_crit_edge:                ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

_gb_sdio_recv.exit.thread89.i:                    ; preds = %if.end46.i.i._gb_sdio_recv.exit.thread89.i_crit_edge, %do.end42.i.i, %if.end23.i.i._gb_sdio_recv.exit.thread89.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ -22, %do.end42.i.i ], [ -22, %if.end46.i.i._gb_sdio_recv.exit.thread89.i_crit_edge ], [ %call.i83.i.i, %if.end23.i.i._gb_sdio_recv.exit.thread89.i_crit_edge ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i.i) #8
  br label %gb_sdio_transfer.exit.thread

if.else.i:                                        ; preds = %if.end6.i
  br i1 %cmp.i65.i, label %do.end.i66.i, label %if.else.i.if.end.i70.i_crit_edge, !prof !91

if.else.i.if.end.i70.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

do.end.i66.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 267, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i70.i

if.end.i70.i:                                     ; preds = %do.end.i66.i, %if.else.i.if.end.i70.i_crit_edge
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  %add.i67.i = add i32 %mul12.i, 5
  %call.i.i68.i = tail call ptr @gb_operation_create_flags(ptr noundef %80, i8 noundef zeroext 5, i32 noundef %add.i67.i, i32 noundef 4, i32 noundef 0, i32 noundef 3264) #8
  %tobool21.not.i69.i = icmp eq ptr %call.i.i68.i, null
  br i1 %tobool21.not.i69.i, label %if.end.i70.i.gb_sdio_transfer.exit.thread_crit_edge, label %if.end23.i80.i

if.end.i70.i.gb_sdio_transfer.exit.thread_crit_edge: ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_sdio_transfer.exit.thread

if.end23.i80.i:                                   ; preds = %if.end.i70.i
  %request24.i71.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i68.i, i32 0, i32 1
  %81 = ptrtoint ptr %request24.i71.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %request24.i71.i, align 4
  %payload.i72.i = getelementptr inbounds %struct.gb_message, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %payload.i72.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %payload.i72.i, align 4
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %shr.i74.i = lshr i32 %86, 8
  %conv.i75.i = trunc i32 %shr.i74.i to i8
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.i75.i, ptr %84, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %data_blocks.i76.i = getelementptr inbounds %struct.gb_sdio_transfer_request, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %data_blocks.i76.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %data_blocks.i76.i, align 1
  %90 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blksz.i, align 4
  %conv25.i78.i = trunc i32 %91 to i16
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv25.i78.i) #8
  %data_blksz.i79.i = getelementptr inbounds %struct.gb_sdio_transfer_request, ptr %84, i32 0, i32 2
  %93 = ptrtoint ptr %data_blksz.i79.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %data_blksz.i79.i, align 1
  %data26.i.i = getelementptr inbounds %struct.gb_sdio_transfer_request, ptr %84, i32 0, i32 3
  %call27.i.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %47, i32 noundef %49, ptr noundef %data26.i.i, i32 noundef %mul12.i, i32 noundef %skip.0113.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i.i, i32 %mul12.i)
  %cmp28.not.i.i = icmp eq i32 %call27.i.i, %mul12.i
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %if.end23.i80.i._gb_sdio_send.exit.thread94.i_crit_edge

if.end23.i80.i._gb_sdio_send.exit.thread94.i_crit_edge: ; preds = %if.end23.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_sdio_send.exit.thread94.i

if.end31.i.i:                                     ; preds = %if.end23.i80.i
  %call.i83.i81.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i68.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i81.i)
  %cmp33.i.i = icmp slt i32 %call.i83.i81.i, 0
  br i1 %cmp33.i.i, label %if.end31.i.i._gb_sdio_send.exit.thread94.i_crit_edge, label %if.end36.i.i

if.end31.i.i._gb_sdio_send.exit.thread94.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_gb_sdio_send.exit.thread94.i

if.end36.i.i:                                     ; preds = %if.end31.i.i
  %response37.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i68.i, i32 0, i32 2
  %94 = ptrtoint ptr %response37.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %response37.i.i, align 4
  %payload38.i.i = getelementptr inbounds %struct.gb_message, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %payload38.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %payload38.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %97, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #8
  %data_blksz40.i.i = getelementptr inbounds %struct.gb_sdio_transfer_response, ptr %97, i32 0, i32 1
  %101 = ptrtoint ptr %data_blksz40.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %data_blksz40.i.i, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #8
  %conv41.i.i = zext i16 %103 to i32
  %conv42.i.i = zext i16 %100 to i32
  %mul.i82.i = mul nuw i32 %conv41.i.i, %conv42.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i82.i, i32 %mul12.i)
  %cmp43.not.i.i = icmp eq i32 %mul.i82.i, %mul12.i
  br i1 %cmp43.not.i.i, label %if.end36.i.i.if.end25.i_crit_edge, label %do.end48.i.i

if.end36.i.i.if.end25.i_crit_edge:                ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

do.end48.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mmc.i83.i = getelementptr i8, ptr %work, i32 -156
  %104 = ptrtoint ptr %mmc.i83.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmc.i83.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.28, i32 noundef %mul12.i, i32 noundef %mul.i82.i) #11
  br label %_gb_sdio_send.exit.thread94.i

_gb_sdio_send.exit.thread94.i:                    ; preds = %do.end48.i.i, %if.end31.i.i._gb_sdio_send.exit.thread94.i_crit_edge, %if.end23.i80.i._gb_sdio_send.exit.thread94.i_crit_edge
  %ret.0.i84.ph.i = phi i32 [ -22, %do.end48.i.i ], [ -22, %if.end23.i80.i._gb_sdio_send.exit.thread94.i_crit_edge ], [ %call.i83.i81.i, %if.end31.i.i._gb_sdio_send.exit.thread94.i_crit_edge ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i68.i) #8
  br label %gb_sdio_transfer.exit.thread

if.end25.i:                                       ; preds = %if.end36.i.i.if.end25.i_crit_edge, %if.end46.i.i.if.end25.i_crit_edge
  %call.i.i68.sink.i = phi ptr [ %call.i.i.i, %if.end46.i.i.if.end25.i_crit_edge ], [ %call.i.i68.i, %if.end36.i.i.if.end25.i_crit_edge ]
  %ret.1.i = phi i32 [ %call.i83.i.i, %if.end46.i.i.if.end25.i_crit_edge ], [ %call.i83.i81.i, %if.end36.i.i.if.end25.i_crit_edge ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i68.sink.i) #8
  %108 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bytes_xfered.i, align 4
  %add.i = add i32 %109, %mul12.i
  store i32 %add.i, ptr %bytes_xfered.i, align 4
  %sub.i = sub i32 %left.0115.i, %mul12.i
  %add26.i = add i32 %mul12.i, %skip.0113.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end25.i.gb_sdio_transfer.exit_crit_edge, label %if.end25.i.while.body.i_crit_edge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end25.i.gb_sdio_transfer.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_sdio_transfer.exit

gb_sdio_transfer.exit.thread:                     ; preds = %_gb_sdio_send.exit.thread94.i, %if.end.i70.i.gb_sdio_transfer.exit.thread_crit_edge, %_gb_sdio_recv.exit.thread89.i, %if.end.i.i.gb_sdio_transfer.exit.thread_crit_edge, %if.then3.i, %land.lhs.true.i.gb_sdio_transfer.exit.thread_crit_edge
  %ret.2.i.ph = phi i32 [ %ret.0.i84.ph.i, %_gb_sdio_send.exit.thread94.i ], [ %ret.0.i.ph.i, %_gb_sdio_recv.exit.thread89.i ], [ -110, %land.lhs.true.i.gb_sdio_transfer.exit.thread_crit_edge ], [ -4, %if.then3.i ], [ -12, %if.end.i70.i.gb_sdio_transfer.exit.thread_crit_edge ], [ -12, %if.end.i.i.gb_sdio_transfer.exit.thread_crit_edge ]
  %error.i83 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 5
  %110 = ptrtoint ptr %error.i83 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %ret.2.i.ph, ptr %error.i83, align 4
  br label %done

gb_sdio_transfer.exit:                            ; preds = %if.end25.i.gb_sdio_transfer.exit_crit_edge, %if.end.i.gb_sdio_transfer.exit_crit_edge
  %ret.2.i = phi i32 [ 0, %if.end.i.gb_sdio_transfer.exit_crit_edge ], [ %ret.1.i, %if.end25.i.gb_sdio_transfer.exit_crit_edge ]
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 5
  %111 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %ret.2.i, ptr %error.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %gb_sdio_transfer.exit, %if.end21.if.end29_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 3
  %112 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %stop, align 4
  %tobool30.not = icmp eq ptr %113, null
  br i1 %tobool30.not, label %if.end29.done_crit_edge, label %if.then31

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call fastcc i32 @gb_sdio_command(ptr noundef %add.ptr, ptr noundef nonnull %113)
  br label %done

done:                                             ; preds = %if.then31, %if.end29.done_crit_edge, %gb_sdio_transfer.exit.thread, %if.end16.done_crit_edge, %if.then11.done_crit_edge, %if.then8
  %114 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %mrq1, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %mmc40 = getelementptr i8, ptr %work, i32 -156
  %115 = ptrtoint ptr %mmc40 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmc40, align 4
  tail call void @mmc_request_done(ptr noundef %116, ptr noundef nonnull %4) #8
  %117 = ptrtoint ptr %gbphy_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %gbphy_dev, align 4
  %dev1.i76 = getelementptr inbounds %struct.gbphy_device, ptr %118, i32 0, i32 4
  %call.i.i77 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i78 = getelementptr inbounds %struct.gbphy_device, ptr %118, i32 0, i32 4, i32 12, i32 22
  %119 = ptrtoint ptr %last_busy.i.i78 to i32
  call void @__asan_store8_noabort(i32 %119)
  store volatile i64 %call.i.i77, ptr %last_busy.i.i78, align 8
  %call.i3.i79 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i76, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then3, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_gb_sdio_process_events(ptr nocapture noundef %host, i8 noundef zeroext %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %event to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 32
  %and1 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %card_present = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 12
  %4 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %card_present, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %card_present, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %state_changed.0 = phi i8 [ 1, %if.end6 ], [ 0, %entry.if.end8_crit_edge ]
  %and10 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end24_crit_edge, label %if.then12

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then12:                                        ; preds = %if.end8
  %mmc13 = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 2
  %7 = ptrtoint ptr %mmc13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc13, align 4
  %caps14 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %caps14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps14, align 32
  %and15 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  %card_present19 = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 12
  %11 = ptrtoint ptr %card_present19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %card_present19, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %card_present19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %card_present19, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end8.if.end24_crit_edge
  %state_changed.1 = phi i8 [ 1, %if.end22 ], [ %state_changed.0, %if.end8.if.end24_crit_edge ]
  %and26 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %read_only = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 13
  %14 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %read_only, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state_changed.1)
  %tobool30.not = icmp eq i8 %state_changed.1, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %do.end

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mmc32 = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 2
  %15 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc32, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %card_present33 = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 12
  %19 = ptrtoint ptr %card_present33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %card_present33, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool34.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool34.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #11
  %21 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc32, align 4
  tail call void @mmc_detect_change(ptr noundef %22, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_get_payload_size_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %xfer = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %xfer) #8
  %xfer_stop = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %xfer_stop to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %xfer_stop, align 4
  tail call void @_raw_spin_unlock(ptr noundef %xfer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %mrq3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %mrq3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !92

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 565, i32 noundef 9, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %7 = ptrtoint ptr %mrq3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mrq, ptr %mrq3, align 4
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 11
  %8 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %removed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool26.not = icmp eq i8 %9, 0
  br i1 %tobool26.not, label %if.end29, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end18
  %card_present = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 12
  %10 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %card_present, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool30.not = icmp eq i8 %11, 0
  br i1 %tobool30.not, label %if.end29.out_crit_edge, label %if.end34

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mrq_workqueue = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %mrq_workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrq_workqueue, align 4
  %mrqwork = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %mrqwork) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

out:                                              ; preds = %if.end29.out_crit_edge, %if.end18.out_crit_edge
  %.sink = phi i32 [ -108, %if.end18.out_crit_edge ], [ -123, %if.end29.out_crit_edge ]
  %14 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd1, align 4
  %error33 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %error33, align 4
  %17 = ptrtoint ptr %mrq3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mrq3, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_mmc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  %request = alloca %struct.gb_sdio_set_ios_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %request) #8
  %0 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 4
  %4 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 5
  %5 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 6
  %6 = getelementptr inbounds %struct.gb_sdio_set_ios_request, ptr %request, i32 0, i32 7
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ios, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %request, align 4
  %vdd2 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %11 = ptrtoint ptr %vdd2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdd2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  %conv = zext i16 %12 to i32
  %sub = add nsw i32 %conv, -8
  %shl = shl nuw i32 1, %sub
  %vdd.0 = select i1 %tobool.not, i32 0, i32 %shl
  %13 = tail call i32 @llvm.bswap.i32(i32 %vdd.0)
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %0, align 4
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %15 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp ne i8 %16, 1
  %conv7 = zext i1 %cmp to i8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %1, align 4
  %power_mode9 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %18 = ptrtoint ptr %power_mode9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %power_mode9, align 2
  %switch.tableidx = add i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %20 = icmp ult i8 %switch.tableidx, 3
  %spec.select = select i1 %20, i8 %19, i8 0
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %2, align 1
  %bus_width15 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %22 = ptrtoint ptr %bus_width15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bus_width15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %switch.selectcmp = icmp eq i8 %23, 3
  %switch.select = select i1 %switch.selectcmp, i8 3, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.selectcmp75 = icmp eq i8 %23, 0
  %switch.select76 = select i1 %switch.selectcmp75, i8 0, i8 %switch.select
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %switch.select76, ptr %3, align 2
  %timing23 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %25 = ptrtoint ptr %timing23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %timing23, align 4
  %switch.tableidx86 = add i8 %26, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %switch.tableidx86)
  %27 = icmp ult i8 %switch.tableidx86, 10
  %spec.select88 = select i1 %27, i8 %26, i8 0
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %spec.select88, ptr %4, align 1
  %signal_voltage39 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %29 = ptrtoint ptr %signal_voltage39 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %signal_voltage39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %switch.selectcmp77 = icmp eq i8 %30, 2
  %switch.select78 = select i1 %switch.selectcmp77, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.selectcmp79 = icmp eq i8 %30, 0
  %switch.select80 = select i1 %switch.selectcmp79, i8 0, i8 %switch.select78
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %switch.select80, ptr %5, align 4
  %drv_type47 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 9
  %32 = ptrtoint ptr %drv_type47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drv_type47, align 2
  %switch.tableidx83 = add i8 %33, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx83)
  %34 = icmp ult i8 %switch.tableidx83, 3
  %drv_type.0 = select i1 %34, i8 %33, i8 0
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %drv_type.0, ptr %6, align 1
  %gbphy_dev.i = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 1
  %36 = ptrtoint ptr %gbphy_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gbphy_dev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.gbphy_device, ptr %37, i32 0, i32 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %gb_sdio_set_ios.exit

do.end.i.i:                                       ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.i) #11
  %usage_count.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %37, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.out_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.out_crit_edge:                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  br label %out

gb_sdio_set_ios.exit:                             ; preds = %entry
  %39 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %40, i32 noundef 3, ptr noundef nonnull %request, i32 noundef 14, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %41 = ptrtoint ptr %gbphy_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gbphy_dev.i, align 4
  %dev1.i7.i = getelementptr inbounds %struct.gbphy_device, ptr %42, i32 0, i32 4
  %call.i.i8.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %42, i32 0, i32 4, i32 12, i32 22
  %43 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store volatile i64 %call.i.i8.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1.i7.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp57 = icmp slt i32 %call.i.i, 0
  br i1 %cmp57, label %gb_sdio_set_ios.exit.out_crit_edge, label %if.end60

gb_sdio_set_ios.exit.out_crit_edge:               ; preds = %gb_sdio_set_ios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end60:                                         ; preds = %gb_sdio_set_ios.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ios61 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28
  %44 = call ptr @memcpy(ptr %ios61, ptr %ios, i32 20)
  br label %out

out:                                              ; preds = %if.end60, %gb_sdio_set_ios.exit.out_crit_edge, %do.end11.i.i.i.i.i.i, %do.end.i.i.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %request) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_mmc_get_ro(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 11
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %removed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_only = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 13
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_only, align 1, !range !90
  %4 = zext i8 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_mmc_get_cd(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %removed = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 11
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %removed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %card_present = getelementptr inbounds %struct.gb_sdio_host, ptr %private.i, i32 0, i32 12
  %2 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %card_present, align 2, !range !90
  %4 = zext i8 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_mmc_switch_voltage(ptr nocapture noundef readnone %mmc, ptr nocapture noundef readnone %ios) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_sdio_command(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %request = alloca %struct.gb_sdio_command_request, align 1
  %response = alloca %struct.gb_sdio_command_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %request) #8
  %0 = getelementptr inbounds i8, ptr %request, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %response) #8
  %2 = getelementptr inbounds [4 x i32], ptr %response, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %response, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %response, i32 0, i32 3
  %mrq = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 3
  %5 = call ptr @memset(ptr %response, i32 255, i32 16)
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data1, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 31
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 21, label %sw.bb2
    i32 29, label %sw.bb3
    i32 7, label %sw.bb4
    i32 1, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmc = getelementptr inbounds %struct.gb_sdio_host, ptr %host, i32 0, i32 2
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %and) #11
  br label %out

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %cmp34 = phi i1 [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ true, %entry.sw.epilog_crit_edge ]
  %cmd_flags.0 = phi i8 [ 1, %sw.bb5 ], [ 7, %sw.bb4 ], [ 29, %sw.bb3 ], [ 21, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %17 = trunc i32 %11 to i8
  %18 = lshr i8 %17, 5
  %switch.idx.cast = and i8 %18, 3
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %20 to i8
  %21 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %request, align 1
  %cmd_flags24 = getelementptr inbounds %struct.gb_sdio_command_request, ptr %request, i32 0, i32 1
  %22 = ptrtoint ptr %cmd_flags24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %cmd_flags.0, ptr %cmd_flags24, align 1
  %cmd_type25 = getelementptr inbounds %struct.gb_sdio_command_request, ptr %request, i32 0, i32 2
  %23 = ptrtoint ptr %cmd_type25 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %switch.idx.cast, ptr %cmd_type25, align 1
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %cmd_arg = getelementptr inbounds %struct.gb_sdio_command_request, ptr %request, i32 0, i32 3
  %27 = ptrtoint ptr %cmd_arg to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %cmd_arg, align 1
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %conv26 = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv26)
  %data_blocks = getelementptr inbounds %struct.gb_sdio_command_request, ptr %request, i32 0, i32 4
  %31 = ptrtoint ptr %data_blocks to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %data_blocks, align 1
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %32 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blksz, align 4
  %conv27 = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %data_blksz = getelementptr inbounds %struct.gb_sdio_command_request, ptr %request, i32 0, i32 5
  %35 = ptrtoint ptr %data_blksz to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %data_blksz, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %36 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not = icmp eq i32 %37, 0
  %spec.select = select i1 %tobool28.not, i32 1000, i32 %37
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host, align 4
  %call = call i32 @gb_operation_sync_timeout(ptr noundef %39, i32 noundef 4, ptr noundef nonnull %request, i32 noundef 11, ptr noundef nonnull %response, i32 noundef 16, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %brmerge = or i1 %cmp34, %cmp
  br i1 %brmerge, label %if.end.out_crit_edge, label %if.end37

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end37:                                         ; preds = %if.end
  %40 = and i8 %cmd_flags.0, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool40.not = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %response, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  br i1 %tobool40.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx45 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 0
  %44 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx45, align 4
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %2, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %arrayidx45.1 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx45.1, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %arrayidx45.2 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx45.2, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %arrayidx45.3 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx45.3, align 4
  br label %out

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %resp48 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %57 = ptrtoint ptr %resp48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %43, ptr %resp48, align 4
  br label %out

out:                                              ; preds = %if.else, %for.body.preheader, %if.end.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call, %if.end.out_crit_edge ], [ %call, %if.else ], [ %call, %for.body.preheader ]
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %58 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %ret.0, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %response) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %request) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_gb_sdio__276_883_sdio_driver_init6, !1, !"__initcall__kmod_gb_sdio__276_883_sdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/sdio.c", i32 883, i32 1}
!2 = !{ptr @__exitcall_sdio_driver_exit, !1, !"__exitcall_sdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file277, !4, !"__UNIQUE_ID_file277", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/sdio.c", i32 884, i32 1}
!5 = !{ptr @__UNIQUE_ID_license278, !4, !"__UNIQUE_ID_license278", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/sdio.c", i32 877, i32 11}
!9 = !{ptr @sdio_driver, !10, !"sdio_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/sdio.c", i32 876, i32 28}
!11 = !{ptr @gb_sdio_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/sdio.c", i32 807, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gb_sdio_probe.__key.3, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/sdio.c", i32 808, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/sdio.c", i32 809, i32 40}
!19 = !{ptr @gb_sdio_probe.__key.6, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/sdio.c", i32 815, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/greybus/sdio.c", i32 213, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gb_sdio_request_handler._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @gb_sdio_request_handler._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/sdio.c", i32 221, i32 3}
!32 = !{ptr @gb_sdio_request_handler._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gb_sdio_request_handler._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @gb_sdio_ops, !35, !"gb_sdio_ops", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/sdio.c", i32 754, i32 34}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/gbphy.h", i32 76, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @gbphy_runtime_get_sync._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @gbphy_runtime_get_sync._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/greybus/sdio.c", i32 513, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gb_sdio_mrq_work._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @gb_sdio_mrq_work._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/sdio.c", i32 435, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gb_sdio_command._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @gb_sdio_command._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/sdio.c", i32 455, i32 3}
!54 = !{ptr @gb_sdio_command._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gb_sdio_command._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/greybus/sdio.c", i32 343, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @_gb_sdio_recv._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @_gb_sdio_recv._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/sdio.c", i32 297, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @_gb_sdio_send._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @_gb_sdio_send._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/greybus/sdio.c", i32 195, i32 3}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @_gb_sdio_process_events._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @_gb_sdio_process_events._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @gb_sdio_id_table, !75, !"gb_sdio_id_table", i1 false, i1 false}
!75 = !{!"../drivers/staging/greybus/sdio.c", i32 870, i32 37}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i32 0, i32 33}
!86 = !{i64 2148228629}
!87 = !{i64 713452, i64 713477, i64 713499, i64 713515, i64 713527, i64 713547, i64 713571, i64 713587, i64 713599}
!88 = !{i64 2148228817}
!89 = !{i64 2148229210, i64 2148229236, i64 2148229265, i64 2148229299, i64 2148229330, i64 2148229353}
!90 = !{i8 0, i8 2}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{!"branch_weights", i32 2000, i32 1}
