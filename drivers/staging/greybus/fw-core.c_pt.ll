; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/fw-core.c_pt.bc'
source_filename = "../drivers/staging/greybus/fw-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.gb_fw_core = type { ptr, ptr, ptr, ptr }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }

@__initcall__kmod_gb_firmware__229_298_fw_core_init6 = internal global ptr @fw_core_init, section ".initcall6.init", align 4
@gb_fw_core_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.7, ptr @gb_fw_core_probe, ptr @gb_fw_core_disconnect, ptr @gb_fw_core_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_fw_core_exit = internal global ptr @fw_core_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias230 = internal constant [35 x i8] c"gb_firmware.alias=greybus:firmware\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"gb_firmware.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [55 x i8] c"gb_firmware.description=Greybus Firmware Bundle Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [53 x i8] c"gb_firmware.file=drivers/staging/greybus/gb-firmware\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"gb_firmware.license=GPL v2\00", section ".modinfo", align 1
@fw_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gb_firmware: Failed to initialize fw-mgmt core (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_core_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/greybus/fw-core.c\00", [62 x i8] zeroinitializer }, align 32
@fw_core_init._entry_ptr = internal global ptr @fw_core_init._entry, section ".printk_index", align 4
@fw_core_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013gb_firmware: Failed to initialize component authentication core (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@fw_core_init._entry_ptr.5 = internal global ptr @fw_core_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_firmware\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb-firmware\00", [20 x i8] zeroinitializer }, align 32
@gb_fw_core_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 22, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 86, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"multiple management CPorts found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_fw_core_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr = internal global ptr @gb_fw_core_probe._entry, section ".printk_index", align 4
@gb_fw_core_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 97, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to create management connection (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.14 = internal global ptr @gb_fw_core_probe._entry.12, section ".printk_index", align 4
@gb_fw_core_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 107, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"multiple download CPorts found\0A\00", [32 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.17 = internal global ptr @gb_fw_core_probe._entry.15, section ".printk_index", align 4
@gb_fw_core_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 116, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to create download connection (%ld)\0A\00", [52 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.20 = internal global ptr @gb_fw_core_probe._entry.18, section ".printk_index", align 4
@gb_fw_core_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 126, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"multiple SPI CPorts found\0A\00", [37 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.23 = internal global ptr @gb_fw_core_probe._entry.21, section ".printk_index", align 4
@gb_fw_core_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.2, i32 135, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to create SPI connection (%ld)\0A\00", [57 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.26 = internal global ptr @gb_fw_core_probe._entry.24, section ".printk_index", align 4
@gb_fw_core_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.2, i32 144, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"multiple Authentication CPorts found\0A\00", [58 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.29 = internal global ptr @gb_fw_core_probe._entry.27, section ".printk_index", align 4
@gb_fw_core_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.9, ptr @.str.2, i32 153, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to create Authentication connection (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.32 = internal global ptr @gb_fw_core_probe._entry.30, section ".printk_index", align 4
@gb_fw_core_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.2, i32 161, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid protocol id (0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.35 = internal global ptr @gb_fw_core_probe._entry.33, section ".printk_index", align 4
@gb_fw_core_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.9, ptr @.str.2, i32 169, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing management connection\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.38 = internal global ptr @gb_fw_core_probe._entry.36, section ".printk_index", align 4
@gb_fw_core_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.2, i32 178, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to initialize firmware download connection, disable it (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.41 = internal global ptr @gb_fw_core_probe._entry.39, section ".printk_index", align 4
@gb_fw_core_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.9, ptr @.str.2, i32 187, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to initialize SPI connection, disable it (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.44 = internal global ptr @gb_fw_core_probe._entry.42, section ".printk_index", align 4
@gb_fw_core_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.9, ptr @.str.2, i32 196, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to initialize CAP connection, disable it (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.47 = internal global ptr @gb_fw_core_probe._entry.45, section ".printk_index", align 4
@gb_fw_core_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.9, ptr @.str.2, i32 205, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"failed to initialize firmware management connection, disable it (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@gb_fw_core_probe._entry_ptr.50 = internal global ptr @gb_fw_core_probe._entry.48, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.53, i32 54, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 11, i64 23, i64 24, i64 25]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"gb_fw_core_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 261, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 274, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 280, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 285, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 262, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"gb_fw_core_id_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 256, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 85, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 95, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 106, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 115, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 125, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 134, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 144, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 152, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 160, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 169, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 177, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 186, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 195, i32 3 }
@___asan_gen_.175 = private constant [37 x i8] c"../drivers/staging/greybus/fw-core.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 204, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 53, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_fw_core_exit, ptr @__initcall__kmod_gb_firmware__229_298_fw_core_init6, ptr @fw_core_exit, ptr @fw_core_init._entry, ptr @fw_core_init._entry.3, ptr @fw_core_init._entry_ptr, ptr @fw_core_init._entry_ptr.5, ptr @gb_fw_core_probe._entry, ptr @gb_fw_core_probe._entry.12, ptr @gb_fw_core_probe._entry.15, ptr @gb_fw_core_probe._entry.18, ptr @gb_fw_core_probe._entry.21, ptr @gb_fw_core_probe._entry.24, ptr @gb_fw_core_probe._entry.27, ptr @gb_fw_core_probe._entry.30, ptr @gb_fw_core_probe._entry.33, ptr @gb_fw_core_probe._entry.36, ptr @gb_fw_core_probe._entry.39, ptr @gb_fw_core_probe._entry.42, ptr @gb_fw_core_probe._entry.45, ptr @gb_fw_core_probe._entry.48, ptr @gb_fw_core_probe._entry_ptr, ptr @gb_fw_core_probe._entry_ptr.14, ptr @gb_fw_core_probe._entry_ptr.17, ptr @gb_fw_core_probe._entry_ptr.20, ptr @gb_fw_core_probe._entry_ptr.23, ptr @gb_fw_core_probe._entry_ptr.26, ptr @gb_fw_core_probe._entry_ptr.29, ptr @gb_fw_core_probe._entry_ptr.32, ptr @gb_fw_core_probe._entry_ptr.35, ptr @gb_fw_core_probe._entry_ptr.38, ptr @gb_fw_core_probe._entry_ptr.41, ptr @gb_fw_core_probe._entry_ptr.44, ptr @gb_fw_core_probe._entry_ptr.47, ptr @gb_fw_core_probe._entry_ptr.50, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_fw_core_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @gb_fw_core_id_table, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_core_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_core_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @to_fw_mgmt_connection(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mgmt_connection = getelementptr inbounds %struct.gb_fw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgmt_connection, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_core_init() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_mgmt_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @cap_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #11
  br label %fw_mgmt_exit

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_fw_core_driver, ptr noundef null, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %cap_exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cap_exit:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cap_exit() #8
  br label %fw_mgmt_exit

fw_mgmt_exit:                                     ; preds = %cap_exit, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %call11, %cap_exit ]
  tail call void @fw_mgmt_exit() #8
  br label %cleanup

cleanup:                                          ; preds = %fw_mgmt_exit, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %fw_mgmt_exit ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fw_core_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_fw_core_driver) #8
  tail call void @cap_exit() #8
  tail call void @fw_mgmt_exit() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cap_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_mgmt_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_mgmt_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_fw_core_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %1 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp234.not = icmp eq i32 %2, 0
  br i1 %cmp234.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cport_desc1 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %cap_connection = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 3
  %spi_connection = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 2
  %mgmt_connection = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %cport_desc1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cport_desc1, align 4
  %arrayidx = getelementptr %struct.greybus_descriptor_cport, ptr %4, i32 %i.0235
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %protocol_id3 = getelementptr %struct.greybus_descriptor_cport, ptr %4, i32 %i.0235, i32 2
  %8 = ptrtoint ptr %protocol_id3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol_id3, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end75 [
    i8 24, label %sw.bb
    i8 23, label %sw.bb17
    i8 11, label %sw.bb35
    i8 25, label %sw.bb54
  ]

sw.bb:                                            ; preds = %for.body
  %11 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgmt_connection, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.8) #11
  br label %err_destroy_connections

if.end6:                                          ; preds = %sw.bb
  %call7 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %7, ptr noundef nonnull @gb_fw_mgmt_request_handler) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.13, i32 noundef %13) #11
  br label %err_destroy_connections

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %mgmt_connection, align 4
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.16) #11
  br label %err_destroy_connections

if.end24:                                         ; preds = %sw.bb17
  %call25 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %7, ptr noundef nonnull @gb_fw_download_request_handler) #8
  %cmp.i222 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %do.end30, label %if.else

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.19, i32 noundef %17) #11
  br label %for.inc

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call25, ptr %call7.i.i, align 8
  br label %for.inc

sw.bb35:                                          ; preds = %for.body
  %19 = ptrtoint ptr %spi_connection to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi_connection, align 8
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.22) #11
  br label %err_destroy_connections

if.end42:                                         ; preds = %sw.bb35
  %call43 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %7, ptr noundef null) #8
  %cmp.i223 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end48, label %if.else51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.25, i32 noundef %21) #11
  br label %for.inc

if.else51:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %spi_connection to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call43, ptr %spi_connection, align 8
  br label %for.inc

sw.bb54:                                          ; preds = %for.body
  %23 = ptrtoint ptr %cap_connection to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cap_connection, align 4
  %tobool55.not = icmp eq ptr %24, null
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.28) #11
  br label %err_destroy_connections

if.end61:                                         ; preds = %sw.bb54
  %call62 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %7, ptr noundef null) #8
  %cmp.i224 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %do.end67, label %if.else70

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.31, i32 noundef %25) #11
  br label %for.inc

if.else70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %cap_connection to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call62, ptr %cap_connection, align 4
  br label %for.inc

do.end75:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.34, i32 noundef %conv) #11
  br label %err_destroy_connections

for.inc:                                          ; preds = %if.else70, %do.end67, %if.else51, %do.end48, %if.else, %do.end30, %if.end15
  %inc = add nuw i32 %i.0235, 1
  %27 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cports, align 8
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mgmt_connection78 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %mgmt_connection78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mgmt_connection78, align 4
  %tobool79.not = icmp eq ptr %30, null
  br i1 %tobool79.not, label %do.end83, label %if.end85

do.end83:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.37) #11
  br label %err_destroy_connections

if.end85:                                         ; preds = %for.end
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %call87 = tail call i32 @gb_fw_download_connection_init(ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.if.end96_crit_edge, label %do.end92

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.40, i32 noundef %call87) #11
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  tail call void @gb_connection_destroy(ptr noundef %34) #8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.end96

if.end96:                                         ; preds = %do.end92, %if.end85.if.end96_crit_edge
  %spi_connection97 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %spi_connection97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi_connection97, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end96.if.end107_crit_edge, label %if.end.i

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.end.i:                                         ; preds = %if.end96
  %call.i = tail call i32 @gb_connection_enable(ptr noundef nonnull %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.do.end103_crit_edge

if.end.i.do.end103_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

if.end3.i:                                        ; preds = %if.end.i
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bundle.i, align 4
  %call4.i = tail call i32 @gb_spilib_master_init(ptr noundef nonnull %37, ptr noundef %39, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end107_crit_edge, label %if.then6.i

if.end3.i.if.end107_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gb_connection_disable(ptr noundef nonnull %37) #8
  br label %do.end103

do.end103:                                        ; preds = %if.then6.i, %if.end.i.do.end103_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then6.i ], [ %call.i, %if.end.i.do.end103_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i) #11
  %40 = ptrtoint ptr %spi_connection97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi_connection97, align 8
  tail call void @gb_connection_destroy(ptr noundef %41) #8
  %42 = ptrtoint ptr %spi_connection97 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %spi_connection97, align 8
  br label %if.end107

if.end107:                                        ; preds = %do.end103, %if.end3.i.if.end107_crit_edge, %if.end96.if.end107_crit_edge
  %cap_connection108 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cap_connection108 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cap_connection108, align 4
  %call109 = tail call i32 @gb_cap_connection_init(ptr noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end107.if.end118_crit_edge, label %do.end114

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.46, i32 noundef %call109) #11
  %45 = ptrtoint ptr %cap_connection108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cap_connection108, align 4
  tail call void @gb_connection_destroy(ptr noundef %46) #8
  %47 = ptrtoint ptr %cap_connection108 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %cap_connection108, align 4
  br label %if.end118

if.end118:                                        ; preds = %do.end114, %if.end107.if.end118_crit_edge
  %48 = ptrtoint ptr %mgmt_connection78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mgmt_connection78, align 4
  %call120 = tail call i32 @gb_fw_mgmt_connection_init(ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end127, label %do.end125

do.end125:                                        ; preds = %if.end118
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.49, i32 noundef %call120) #11
  %50 = ptrtoint ptr %cap_connection108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cap_connection108, align 4
  tail call void @gb_cap_connection_exit(ptr noundef %51) #8
  %52 = ptrtoint ptr %spi_connection97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi_connection97, align 8
  %tobool.not.i225 = icmp eq ptr %53, null
  br i1 %tobool.not.i225, label %do.end125.gb_fw_spi_connection_exit.exit_crit_edge, label %if.end.i226

do.end125.gb_fw_spi_connection_exit.exit_crit_edge: ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_fw_spi_connection_exit.exit

if.end.i226:                                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gb_spilib_master_exit(ptr noundef nonnull %53) #8
  tail call void @gb_connection_disable(ptr noundef nonnull %53) #8
  br label %gb_fw_spi_connection_exit.exit

gb_fw_spi_connection_exit.exit:                   ; preds = %if.end.i226, %do.end125.gb_fw_spi_connection_exit.exit_crit_edge
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  tail call void @gb_fw_download_connection_exit(ptr noundef %55) #8
  br label %err_destroy_connections

if.end127:                                        ; preds = %if.end118
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 1
  %57 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf, align 8
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks, align 8
  %and = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool128.not = icmp eq i32 %and, 0
  br i1 %tobool128.not, label %if.then129, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %61 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #8
  br label %cleanup

err_destroy_connections:                          ; preds = %gb_fw_spi_connection_exit.exit, %do.end83, %do.end75, %do.end59, %do.end40, %do.end22, %if.then9, %do.end
  %ret.0 = phi i32 [ -22, %do.end75 ], [ -22, %do.end59 ], [ -22, %do.end40 ], [ -22, %do.end22 ], [ -22, %do.end ], [ %13, %if.then9 ], [ %call120, %gb_fw_spi_connection_exit.exit ], [ -19, %do.end83 ]
  %mgmt_connection135 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %mgmt_connection135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mgmt_connection135, align 4
  tail call void @gb_connection_destroy(ptr noundef %63) #8
  %cap_connection136 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %cap_connection136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cap_connection136, align 4
  tail call void @gb_connection_destroy(ptr noundef %65) #8
  %spi_connection137 = getelementptr inbounds %struct.gb_fw_core, ptr %call7.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %spi_connection137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi_connection137, align 8
  tail call void @gb_connection_destroy(ptr noundef %67) #8
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  tail call void @gb_connection_destroy(ptr noundef %69) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_connections, %if.then129, %if.end127.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_destroy_connections ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then129 ], [ 0, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_fw_core_disconnect(ptr noundef %bundle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end.i:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.51, i32 noundef %call.i.i) #11
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !108
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then3_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then3_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !109
  br label %if.then3

if.then3:                                         ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then3_crit_edge
  %call.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !110
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mgmt_connection = getelementptr inbounds %struct.gb_fw_core, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgmt_connection, align 4
  tail call void @gb_fw_mgmt_connection_exit(ptr noundef %9) #8
  %cap_connection = getelementptr inbounds %struct.gb_fw_core, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cap_connection to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cap_connection, align 4
  tail call void @gb_cap_connection_exit(ptr noundef %11) #8
  %spi_connection = getelementptr inbounds %struct.gb_fw_core, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %spi_connection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_connection, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end4.gb_fw_spi_connection_exit.exit_crit_edge, label %if.end.i

if.end4.gb_fw_spi_connection_exit.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_fw_spi_connection_exit.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gb_spilib_master_exit(ptr noundef nonnull %13) #8
  tail call void @gb_connection_disable(ptr noundef nonnull %13) #8
  br label %gb_fw_spi_connection_exit.exit

gb_fw_spi_connection_exit.exit:                   ; preds = %if.end.i, %if.end4.gb_fw_spi_connection_exit.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @gb_fw_download_connection_exit(ptr noundef %15) #8
  %16 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgmt_connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %17) #8
  %18 = ptrtoint ptr %cap_connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cap_connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %19) #8
  %20 = ptrtoint ptr %spi_connection to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi_connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %21) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @gb_connection_destroy(ptr noundef %23) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_fw_mgmt_request_handler(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_fw_download_request_handler(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_fw_download_connection_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_cap_connection_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_fw_mgmt_connection_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_cap_connection_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_fw_download_connection_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_spilib_master_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_spilib_master_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_fw_mgmt_connection_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_gb_firmware__229_298_fw_core_init6, !1, !"__initcall__kmod_gb_firmware__229_298_fw_core_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/fw-core.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_fw_core_exit, !3, !"__exitcall_fw_core_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/fw-core.c", i32 306, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias230, !5, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!5 = !{!"../drivers/staging/greybus/fw-core.c", i32 308, i32 1}
!6 = !{ptr @__UNIQUE_ID_author231, !7, !"__UNIQUE_ID_author231", i1 false, i1 false}
!7 = !{!"../drivers/staging/greybus/fw-core.c", i32 309, i32 1}
!8 = !{ptr @__UNIQUE_ID_description232, !9, !"__UNIQUE_ID_description232", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/fw-core.c", i32 310, i32 1}
!10 = !{ptr @__UNIQUE_ID_file233, !11, !"__UNIQUE_ID_file233", i1 false, i1 false}
!11 = !{!"../drivers/staging/greybus/fw-core.c", i32 311, i32 1}
!12 = !{ptr @__UNIQUE_ID_license234, !11, !"__UNIQUE_ID_license234", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/fw-core.c", i32 274, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fw_core_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @fw_core_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/fw-core.c", i32 280, i32 3}
!21 = !{ptr @fw_core_init._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @fw_core_init._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/fw-core.c", i32 285, i32 8}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/greybus/fw-core.c", i32 262, i32 11}
!27 = !{ptr @gb_fw_core_driver, !28, !"gb_fw_core_driver", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/fw-core.c", i32 261, i32 30}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/fw-core.c", i32 85, i32 5}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gb_fw_core_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @gb_fw_core_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/fw-core.c", i32 95, i32 5}
!38 = !{ptr @gb_fw_core_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gb_fw_core_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/fw-core.c", i32 106, i32 5}
!42 = !{ptr @gb_fw_core_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gb_fw_core_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/greybus/fw-core.c", i32 115, i32 5}
!46 = !{ptr @gb_fw_core_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gb_fw_core_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/fw-core.c", i32 125, i32 5}
!50 = !{ptr @gb_fw_core_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gb_fw_core_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/fw-core.c", i32 134, i32 5}
!54 = !{ptr @gb_fw_core_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gb_fw_core_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/greybus/fw-core.c", i32 144, i32 5}
!58 = !{ptr @gb_fw_core_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gb_fw_core_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/greybus/fw-core.c", i32 152, i32 5}
!62 = !{ptr @gb_fw_core_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @gb_fw_core_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/fw-core.c", i32 160, i32 4}
!66 = !{ptr @gb_fw_core_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @gb_fw_core_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/greybus/fw-core.c", i32 169, i32 3}
!70 = !{ptr @gb_fw_core_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gb_fw_core_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/greybus/fw-core.c", i32 177, i32 3}
!74 = !{ptr @gb_fw_core_probe._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @gb_fw_core_probe._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/greybus/fw-core.c", i32 186, i32 3}
!78 = !{ptr @gb_fw_core_probe._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @gb_fw_core_probe._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/greybus/fw-core.c", i32 195, i32 3}
!82 = !{ptr @gb_fw_core_probe._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @gb_fw_core_probe._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/greybus/fw-core.c", i32 204, i32 3}
!86 = !{ptr @gb_fw_core_probe._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @gb_fw_core_probe._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"spilib_ops", i1 false, i1 false}
!89 = !{!"../drivers/staging/greybus/fw-core.c", i32 22, i32 27}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @gb_pm_runtime_get_sync._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @gb_fw_core_id_table, !97, !"gb_fw_core_id_table", i1 false, i1 false}
!97 = !{!"../drivers/staging/greybus/fw-core.c", i32 256, i32 39}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148565134}
!108 = !{i64 1051734, i64 1051759, i64 1051781, i64 1051797, i64 1051809, i64 1051829, i64 1051853, i64 1051869, i64 1051881}
!109 = !{i64 2148565322}
!110 = !{i64 2148565715, i64 2148565741, i64 2148565770, i64 2148565804, i64 2148565835, i64 2148565858}
