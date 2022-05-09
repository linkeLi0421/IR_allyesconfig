; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/bootrom.c_pt.bc'
source_filename = "../drivers/staging/greybus/bootrom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_bootrom = type { ptr, ptr, i8, i8, i32, %struct.delayed_work, %struct.mutex }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_bootrom_version_request = type { i8, i8 }
%struct.gb_bootrom_version_response = type { i8, i8 }
%struct.gb_bootrom_get_vid_pid_response = type { i32, i32 }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_bootrom_get_firmware_request = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_gb_bootrom__236_525_gb_bootrom_driver_init6 = internal global ptr @gb_bootrom_driver_init, section ".initcall6.init", align 4
@gb_bootrom_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_bootrom_probe, ptr @gb_bootrom_disconnect, ptr @gb_bootrom_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gb_bootrom_driver_exit = internal global ptr @gb_bootrom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [51 x i8] c"gb_bootrom.file=drivers/staging/greybus/gb-bootrom\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"gb_bootrom.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gb_bootrom\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bootrom\00", [24 x i8] zeroinitializer }, align 32
@gb_bootrom_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 21, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_bootrom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bootrom->mutex\00", [16 x i8] zeroinitializer }, align 32
@gb_bootrom_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&bootrom->dwork)->work)\00", [52 x i8] zeroinitializer }, align 32
@gb_bootrom_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&bootrom->dwork)->timer\00", [38 x i8] zeroinitializer }, align 32
@gb_bootrom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 470, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send AP READY: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_bootrom_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/greybus/bootrom.c\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_bootrom_probe._entry_ptr = internal global ptr @gb_bootrom_probe._entry, section ".printk_index", align 4
@gb_bootrom_probe.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.12, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AP_READY sent\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_bootrom_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 370, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported request: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_bootrom_request_handler\00", [37 x i8] zeroinitializer }, align 32
@gb_bootrom_request_handler._entry_ptr = internal global ptr @gb_bootrom_request_handler._entry, section ".printk_index", align 4
@gb_bootrom_firmware_size_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 203, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: illegal size of firmware size request (%zu != %zu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gb_bootrom_firmware_size_request\00", [63 x i8] zeroinitializer }, align 32
@gb_bootrom_firmware_size_request._entry_ptr = internal global ptr @gb_bootrom_firmware_size_request._entry, section ".printk_index", align 4
@gb_bootrom_firmware_size_request._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.9, i32 216, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error allocating response\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_bootrom_firmware_size_request._entry_ptr.19 = internal global ptr @gb_bootrom_firmware_size_request._entry.17, section ".printk_index", align 4
@gb_bootrom_firmware_size_request.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.9, ptr @.str.20, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: firmware size %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@find_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 157, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid boot stage: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_firmware\00", [18 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr = internal global ptr @find_firmware._entry, section ".printk_index", align 4
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gmp_%08x_%08x_%08x_%08x_s2l.tftf\00", [63 x i8] zeroinitializer }, align 32
@find_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.9, i32 176, ptr @.str.26, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware file '%s' requested\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr.27 = internal global ptr @find_firmware._entry.24, section ".printk_index", align 4
@find_firmware._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.9, i32 182, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to find %s firmware (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr.30 = internal global ptr @find_firmware._entry.28, section ".printk_index", align 4
@gb_bootrom_get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.9, i32 258, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Illegal size of get firmware request (%zu %zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_bootrom_get_firmware\00", [40 x i8] zeroinitializer }, align 32
@gb_bootrom_get_firmware._entry_ptr = internal global ptr @gb_bootrom_get_firmware._entry, section ".printk_index", align 4
@gb_bootrom_get_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.9, i32 267, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: firmware not available\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_bootrom_get_firmware._entry_ptr.35 = internal global ptr @gb_bootrom_get_firmware._entry.33, section ".printk_index", align 4
@gb_bootrom_get_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.9, i32 278, ptr @.str.38, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad firmware request (offs = %u, size = %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_bootrom_get_firmware._entry_ptr.39 = internal global ptr @gb_bootrom_get_firmware._entry.36, section ".printk_index", align 4
@gb_bootrom_get_firmware._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.32, ptr @.str.9, i32 285, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@gb_bootrom_get_firmware._entry_ptr.41 = internal global ptr @gb_bootrom_get_firmware._entry.40, section ".printk_index", align 4
@gb_bootrom_get_firmware.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.9, ptr @.str.42, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"responding with firmware (offs = %u, size = %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@gb_bootrom_ready_to_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 326, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Illegal size of ready to boot request (%zu %zu)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gb_bootrom_ready_to_boot\00", [39 x i8] zeroinitializer }, align 32
@gb_bootrom_ready_to_boot._entry_ptr = internal global ptr @gb_bootrom_ready_to_boot._entry, section ".printk_index", align 4
@gb_bootrom_ready_to_boot.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.9, ptr @.str.45, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ready to boot: 0x%x, 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware Size Request\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Get Firmware Request\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ready to Boot Request\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Interface Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@gb_bootrom_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.9, i32 75, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid next-request: %u\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gb_bootrom_timedout\00", [44 x i8] zeroinitializer }, align 32
@gb_bootrom_timedout._entry_ptr = internal global ptr @gb_bootrom_timedout._entry, section ".printk_index", align 4
@gb_bootrom_timedout._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.9, i32 79, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Timed out waiting for %s from the Module\0A\00", [54 x i8] zeroinitializer }, align 32
@gb_bootrom_timedout._entry_ptr.54 = internal global ptr @gb_bootrom_timedout._entry.52, section ".printk_index", align 4
@gb_bootrom_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.9, i32 392, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get protocol version: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_bootrom_get_version\00", [41 x i8] zeroinitializer }, align 32
@gb_bootrom_get_version._entry_ptr = internal global ptr @gb_bootrom_get_version._entry, section ".printk_index", align 4
@gb_bootrom_get_version._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.9, i32 399, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unsupported major protocol version (%u > %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@gb_bootrom_get_version._entry_ptr.59 = internal global ptr @gb_bootrom_get_version._entry.57, section ".printk_index", align 4
@gb_bootrom_get_version.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.9, ptr @.str.60, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s - %u.%u\0A\00", [20 x i8] zeroinitializer }, align 32
@bootrom_es2_fixup_vid_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.9, i32 125, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bootrom get vid/pid operation failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bootrom_es2_fixup_vid_pid\00", [38 x i8] zeroinitializer }, align 32
@bootrom_es2_fixup_vid_pid._entry_ptr = internal global ptr @bootrom_es2_fixup_vid_pid._entry, section ".printk_index", align 4
@bootrom_es2_fixup_vid_pid.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.9, ptr @.str.63, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bootrom got vid (0x%x)/pid (0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gb_bootrom_disconnect.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.9, ptr @.str.65, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_bootrom_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.gb_bootrom_timedout = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"gb_bootrom_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 518, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 525, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 519, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"gb_bootrom_id_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 513, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 443, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 444, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 469, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 474, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 369, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 201, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 216, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 225, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 156, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 167, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 175, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 181, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 256, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 267, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 277, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 285, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 293, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 324, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 343, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 62, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 65, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 68, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 71, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 75, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 79, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 390, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 397, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 406, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 124, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 139, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [37 x i8] c"../drivers/staging/greybus/bootrom.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 494, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [33 x i8] c"switch.table.gb_bootrom_timedout\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_gb_bootrom_driver_exit, ptr @__initcall__kmod_gb_bootrom__236_525_gb_bootrom_driver_init6, ptr @bootrom_es2_fixup_vid_pid._entry, ptr @bootrom_es2_fixup_vid_pid._entry_ptr, ptr @find_firmware._entry, ptr @find_firmware._entry.24, ptr @find_firmware._entry.28, ptr @find_firmware._entry_ptr, ptr @find_firmware._entry_ptr.27, ptr @find_firmware._entry_ptr.30, ptr @gb_bootrom_driver_exit, ptr @gb_bootrom_firmware_size_request._entry, ptr @gb_bootrom_firmware_size_request._entry.17, ptr @gb_bootrom_firmware_size_request._entry_ptr, ptr @gb_bootrom_firmware_size_request._entry_ptr.19, ptr @gb_bootrom_get_firmware._entry, ptr @gb_bootrom_get_firmware._entry.33, ptr @gb_bootrom_get_firmware._entry.36, ptr @gb_bootrom_get_firmware._entry.40, ptr @gb_bootrom_get_firmware._entry_ptr, ptr @gb_bootrom_get_firmware._entry_ptr.35, ptr @gb_bootrom_get_firmware._entry_ptr.39, ptr @gb_bootrom_get_firmware._entry_ptr.41, ptr @gb_bootrom_get_version._entry, ptr @gb_bootrom_get_version._entry.57, ptr @gb_bootrom_get_version._entry_ptr, ptr @gb_bootrom_get_version._entry_ptr.59, ptr @gb_bootrom_probe._entry, ptr @gb_bootrom_probe._entry_ptr, ptr @gb_bootrom_ready_to_boot._entry, ptr @gb_bootrom_ready_to_boot._entry_ptr, ptr @gb_bootrom_request_handler._entry, ptr @gb_bootrom_request_handler._entry_ptr, ptr @gb_bootrom_timedout._entry, ptr @gb_bootrom_timedout._entry.52, ptr @gb_bootrom_timedout._entry_ptr, ptr @gb_bootrom_timedout._entry_ptr.54, ptr @gb_bootrom_driver, ptr @.str, ptr @.str.1, ptr @gb_bootrom_id_table, ptr @gb_bootrom_probe.__key, ptr @.str.2, ptr @gb_bootrom_probe.__key.3, ptr @.str.4, ptr @gb_bootrom_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @switch.table.gb_bootrom_timedout], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_firmware_size_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_firmware_size_request._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_firmware._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_ready_to_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_timedout._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_bootrom_get_version._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bootrom_es2_fixup_vid_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_bootrom_timedout to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_bootrom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_bootrom_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_bootrom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_bootrom_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_bootrom_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc1 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc1, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %5)
  %cmp2.not = icmp eq i8 %5, 21
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 208) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call9 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef nonnull @gb_bootrom_request_handler) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call9 to i32
  br label %err_free_bootrom

if.end13:                                         ; preds = %if.end7
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call9, i32 0, i32 17
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %private.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @gb_bootrom_probe.__key) #8
  %dwork = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #8
  %13 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %dwork, align 8
  %lockdep_map = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @gb_bootrom_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry23 = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry23, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gb_bootrom_timedout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @gb_bootrom_probe.__key.5) #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call34 = tail call i32 @gb_connection_enable_tx(ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end13.err_connection_destroy_crit_edge

if.end13.err_connection_destroy_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_connection_destroy

if.end37:                                         ; preds = %if.end13
  %call38 = tail call fastcc i32 @gb_bootrom_get_version(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_connection_disable_crit_edge

if.end37.err_connection_disable_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_connection_disable

if.end41:                                         ; preds = %if.end37
  tail call fastcc void @bootrom_es2_fixup_vid_pid(ptr noundef nonnull %call7.i.i)
  %call42 = tail call i32 @gb_connection_enable(ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_connection_disable_crit_edge

if.end41.err_connection_disable_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_connection_disable

if.end45:                                         ; preds = %if.end41
  %next_request.i = getelementptr inbounds %struct.gb_bootrom, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %next_request.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %dwork, i32 noundef 100) #8
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %call9, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %do.body54, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %bundle52 = getelementptr inbounds %struct.gb_connection, ptr %call9, i32 0, i32 2
  %20 = ptrtoint ptr %bundle52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bundle52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %call.i) #12
  %call.i102 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #8
  br label %err_connection_disable

do.body54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_probe.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_probe, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !143

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_probe.__UNIQUE_ID_ddebug234, ptr noundef %bundle, ptr noundef nonnull @.str.12) #8
  br label %cleanup

err_connection_disable:                           ; preds = %do.end51, %if.end41.err_connection_disable_crit_edge, %if.end37.err_connection_disable_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.err_connection_disable_crit_edge ], [ %call42, %if.end41.err_connection_disable_crit_edge ], [ %call.i, %do.end51 ]
  tail call void @gb_connection_disable(ptr noundef %call9) #8
  br label %err_connection_destroy

err_connection_destroy:                           ; preds = %err_connection_disable, %if.end13.err_connection_destroy_crit_edge
  %ret.1 = phi i32 [ %call34, %if.end13.err_connection_destroy_crit_edge ], [ %ret.0, %err_connection_disable ]
  tail call void @gb_connection_destroy(ptr noundef %call9) #8
  br label %err_free_bootrom

err_free_bootrom:                                 ; preds = %err_connection_destroy, %if.then11
  %ret.2 = phi i32 [ %10, %if.then11 ], [ %ret.1, %err_connection_destroy ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_bootrom, %if.then59, %do.body54, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free_bootrom ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_bootrom_disconnect(ptr noundef %bundle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_disconnect.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_disconnect.__UNIQUE_ID_ddebug235, ptr noundef %bundle, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gb_connection_disable(ptr noundef %3) #8
  %dwork.i = getelementptr inbounds %struct.gb_bootrom, ptr %1, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  %fw.i = getelementptr inbounds %struct.gb_bootrom, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.free_firmware.exit_crit_edge, label %if.end.i

do.end.free_firmware.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_firmware.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw.i, align 4
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %if.end.i, %do.end.free_firmware.exit_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @gb_connection_destroy(ptr noundef %8) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_bootrom_request_handler(ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 2, label %sw.bb
    i8 3, label %sw.bb2
    i8 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @gb_bootrom_firmware_size_request(ptr noundef %op)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @gb_bootrom_get_firmware(ptr noundef %op)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @gb_bootrom_ready_to_boot(ptr noundef %op)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %1 to i32
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_bootrom_timedout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle, align 4
  %next_request = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %next_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %5) #12
  br label %do.end8

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.gb_bootrom_timedout, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end8

do.end8:                                          ; preds = %switch.lookup, %sw.default
  %reason.0 = phi ptr [ null, %sw.default ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef %reason.0) #12
  %mutex = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %fw.i = getelementptr i8, ptr %work, i32 -12
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end8.free_firmware.exit_crit_edge, label %if.end.i

do.end8.free_firmware.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_firmware.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %9) #8
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fw.i, align 4
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %if.end.i, %do.end8.free_firmware.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_bootrom_get_version(ptr nocapture noundef %bootrom) unnamed_addr #2 align 64 {
entry:
  %request = alloca %struct.gb_bootrom_version_request, align 1
  %response = alloca %struct.gb_bootrom_version_response, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bootrom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bootrom, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #8
  %4 = getelementptr inbounds %struct.gb_bootrom_version_request, ptr %request, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #8
  %5 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %response, align 1, !annotation !144
  %6 = getelementptr inbounds %struct.gb_bootrom_version_response, ptr %response, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !144
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %request, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %4, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %request, i32 noundef 2, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response, align 1
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %request, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp ugt i8 %11, %13
  br i1 %cmp, label %do.end10, label %if.end16

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = zext i8 %13 to i32
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv5) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %protocol_major = getelementptr inbounds %struct.gb_bootrom, ptr %bootrom, i32 0, i32 2
  %14 = ptrtoint ptr %protocol_major to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %protocol_major, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %6, align 1
  %protocol_minor = getelementptr inbounds %struct.gb_bootrom, ptr %bootrom, i32 0, i32 3
  %17 = ptrtoint ptr %protocol_minor to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %protocol_minor, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_get_version.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_get_version, %if.then24)) #8
          to label %cleanup [label %if.then24], !srcloc !143

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %response, align 1
  %conv27 = zext i8 %19 to i32
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %6, align 1
  %conv29 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_get_version.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef %conv27, i32 noundef %conv29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end16, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -524, %do.end10 ], [ 0, %if.then24 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bootrom_es2_fixup_vid_pid(ptr nocapture noundef readonly %bootrom) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.gb_bootrom_get_vid_pid_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %response, align 4, !annotation !144
  %1 = getelementptr inbounds %struct.gb_bootrom_get_vid_pid_response, ptr %response, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !144
  %3 = ptrtoint ptr %bootrom to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bootrom, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bundle, align 4
  %intf2 = getelementptr inbounds %struct.gb_bundle, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf2, align 8
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response, i32 noundef 8, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bundle, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.61, i32 noundef %call.i) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %response, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %vendor_id7 = getelementptr inbounds %struct.gb_interface, ptr %8, i32 0, i32 11
  %16 = ptrtoint ptr %vendor_id7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %vendor_id7, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %product_id8 = getelementptr inbounds %struct.gb_interface, ptr %8, i32 0, i32 12
  %20 = ptrtoint ptr %product_id8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %product_id8, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bootrom_es2_fixup_vid_pid.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bootrom_es2_fixup_vid_pid, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !143

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bundle, align 4
  %23 = ptrtoint ptr %vendor_id7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vendor_id7, align 4
  %25 = ptrtoint ptr %product_id8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %product_id8, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bootrom_es2_fixup_vid_pid.__UNIQUE_ID_ddebug229, ptr noundef %22, ptr noundef nonnull @.str.63, i32 noundef %24, i32 noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end6, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_bootrom_firmware_size_request(ptr noundef %op) unnamed_addr #2 align 64 {
entry:
  %firmware_name.i = alloca [49 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bundle, align 4
  %dwork.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  %10 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %if.end, label %queue_work.thread

queue_work.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %13, i32 noundef 1) #12
  br label %if.end30

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bundle.i, align 4
  %intf2.i = getelementptr inbounds %struct.gb_bundle, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %intf2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf2.i, align 8
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %firmware_name.i) #8
  %22 = call ptr @memset(ptr %firmware_name.i, i32 255, i32 49)
  %fw.i.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.free_firmware.exit.i_crit_edge, label %if.end.i.i

if.end.free_firmware.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_firmware.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %24) #8
  %25 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fw.i.i, align 4
  br label %free_firmware.exit.i

free_firmware.exit.i:                             ; preds = %if.end.i.i, %if.end.free_firmware.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %free_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %15 to i32
  %26 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bundle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #12
  br label %find_firmware.exit.thread

if.end.i:                                         ; preds = %free_firmware.exit.i
  %ddbl1_manufacturer_id.i = getelementptr inbounds %struct.gb_interface, ptr %21, i32 0, i32 9
  %28 = ptrtoint ptr %ddbl1_manufacturer_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ddbl1_manufacturer_id.i, align 4
  %ddbl1_product_id.i = getelementptr inbounds %struct.gb_interface, ptr %21, i32 0, i32 10
  %30 = ptrtoint ptr %ddbl1_product_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ddbl1_product_id.i, align 8
  %vendor_id.i = getelementptr inbounds %struct.gb_interface, ptr %21, i32 0, i32 11
  %32 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vendor_id.i, align 4
  %product_id.i = getelementptr inbounds %struct.gb_interface, ptr %21, i32 0, i32 12
  %34 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %product_id.i, align 8
  %call.i48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %firmware_name.i, i32 noundef 49, ptr noundef nonnull @.str.23, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #8
  %36 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bundle.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.25, ptr noundef nonnull %firmware_name.i) #12
  %38 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bundle.i, align 4
  %call15.i = call i32 @request_firmware(ptr noundef %fw.i.i, ptr noundef nonnull %firmware_name.i, ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.end8, label %do.end19.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bundle.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.29, ptr noundef nonnull %firmware_name.i, i32 noundef %call15.i) #12
  br label %find_firmware.exit.thread

find_firmware.exit.thread:                        ; preds = %do.end19.i, %do.end.i
  %retval.0.i49.ph = phi i32 [ %call15.i, %do.end19.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %firmware_name.i) #8
  br label %queue_work.thread60

if.end8:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %firmware_name.i) #8
  %call9 = call zeroext i1 @gb_operation_response_alloc(ptr noundef %op, i32 noundef 4, i32 noundef 3264) #8
  br i1 %call9, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #12
  %42 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw.i.i, align 4
  %tobool.not.i50 = icmp eq ptr %43, null
  br i1 %tobool.not.i50, label %do.end13.queue_work.thread60_crit_edge, label %if.end.i51

do.end13.queue_work.thread60_crit_edge:           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_work.thread60

if.end.i51:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef nonnull %43) #8
  %44 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %fw.i.i, align 4
  br label %queue_work.thread60

if.end14:                                         ; preds = %if.end8
  %response = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 2
  %45 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %response, align 4
  %payload15 = getelementptr inbounds %struct.gb_message, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %payload15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %payload15, align 4
  %49 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %48, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_firmware_size_request.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_firmware_size_request, %if.then22)) #8
          to label %if.then29 [label %if.then22], !srcloc !143

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %48, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_firmware_size_request.__UNIQUE_ID_ddebug230, ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %56) #8
  br label %if.then29

queue_work.thread60:                              ; preds = %if.end.i51, %do.end13.queue_work.thread60_crit_edge, %find_firmware.exit.thread
  %ret.0.ph = phi i32 [ -12, %if.end.i51 ], [ -12, %do.end13.queue_work.thread60_crit_edge ], [ %retval.0.i49.ph, %find_firmware.exit.thread ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.end30

if.then29:                                        ; preds = %if.then22, %if.end14
  call void @mutex_unlock(ptr noundef %mutex) #8
  %next_request.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 4
  %57 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %next_request.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %dwork.i, i32 noundef 100) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %queue_work.thread60, %queue_work.thread
  %ret.159 = phi i32 [ -22, %queue_work.thread ], [ 0, %if.then29 ], [ %ret.0.ph, %queue_work.thread60 ]
  ret i32 %ret.159
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_bootrom_get_firmware(ptr noundef %op) unnamed_addr #2 align 64 {
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
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle, align 4
  %dwork.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  %request = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.not = icmp eq i32 %9, 8
  br i1 %cmp.not, label %if.end, label %queue_work.thread

queue_work.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %9, i32 noundef 8) #12
  br label %if.else

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %fw5 = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw5, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #12
  br label %queue_work.thread90

if.end10:                                         ; preds = %if.end
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %payload, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %size13 = getelementptr inbounds %struct.gb_bootrom_get_firmware_request, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %size13 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %size13, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp15.not = icmp ule i32 %23, %18
  %sub = sub i32 %23, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %sub)
  %cmp17 = icmp ugt i32 %21, %sub
  %or.cond = select i1 %cmp15.not, i1 true, i1 %cmp17
  br i1 %or.cond, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.37, i32 noundef %18, i32 noundef %21) #12
  br label %queue_work.thread90

if.end22:                                         ; preds = %if.end10
  %call23 = tail call zeroext i1 @gb_operation_response_alloc(ptr noundef %op, i32 noundef %21, i32 noundef 3264) #8
  br i1 %call23, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.32) #12
  br label %queue_work.thread90

if.end28:                                         ; preds = %if.end22
  %response = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 2
  %24 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %response, align 4
  %payload29 = getelementptr inbounds %struct.gb_message, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %payload29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %payload29, align 4
  %data30 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data30, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %18
  %30 = call ptr @memcpy(ptr %27, ptr %add.ptr, i32 %21)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_get_firmware.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_get_firmware, %if.then36)) #8
          to label %land.lhs.true [label %if.then36], !srcloc !143

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_get_firmware.__UNIQUE_ID_ddebug231, ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %18, i32 noundef %21) #8
  br label %land.lhs.true

queue_work.thread90:                              ; preds = %do.end27, %do.end21, %do.end9
  %ret.0.ph = phi i32 [ -22, %do.end9 ], [ -12, %do.end27 ], [ -22, %do.end21 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then36, %if.end28
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %add42 = add i32 %21, %18
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %32)
  %cmp44 = icmp eq i32 %add42, %32
  br i1 %cmp44, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %queue_work.thread90, %queue_work.thread
  %ret.189 = phi i32 [ -22, %queue_work.thread ], [ 0, %land.lhs.true.if.else_crit_edge ], [ %ret.0.ph, %queue_work.thread90 ]
  br label %if.end46

if.end46:                                         ; preds = %if.else, %land.lhs.true.if.end46_crit_edge
  %ret.188 = phi i32 [ %ret.189, %if.else ], [ 0, %land.lhs.true.if.end46_crit_edge ]
  %next_request.0 = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true.if.end46_crit_edge ]
  %next_request.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %next_request.0, ptr %next_request.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %dwork.i, i32 noundef 100) #8
  ret i32 %ret.188
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_bootrom_ready_to_boot(ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
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
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle, align 4
  %dwork.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #8
  %request = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %9, i32 noundef 1) #12
  br label %queue_work

if.end:                                           ; preds = %entry
  %payload = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp7 = icmp eq i8 %13, 0
  br i1 %cmp7, label %if.end.queue_work_crit_edge, label %do.body11

if.end.queue_work_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_work

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_bootrom_ready_to_boot.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_bootrom_ready_to_boot, %if.then15)) #8
          to label %queue_work [label %if.then15], !srcloc !143

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_bootrom_ready_to_boot.__UNIQUE_ID_ddebug232, ptr noundef %5, ptr noundef nonnull @.str.45, i32 noundef %conv) #8
  br label %queue_work

queue_work:                                       ; preds = %if.then15, %do.body11, %if.end.queue_work_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %if.then15 ], [ -22, %if.end.queue_work_crit_edge ], [ 0, %do.body11 ]
  %next_request.i = getelementptr inbounds %struct.gb_bootrom, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %next_request.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %dwork.i, i32 noundef 1000) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_operation_response_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_gb_bootrom__236_525_gb_bootrom_driver_init6, !1, !"__initcall__kmod_gb_bootrom__236_525_gb_bootrom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/bootrom.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_gb_bootrom_driver_exit, !1, !"__exitcall_gb_bootrom_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/bootrom.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/bootrom.c", i32 519, i32 11}
!9 = !{ptr @gb_bootrom_driver, !10, !"gb_bootrom_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/bootrom.c", i32 518, i32 30}
!11 = !{ptr @gb_bootrom_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/bootrom.c", i32 443, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gb_bootrom_probe.__key.3, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/bootrom.c", i32 444, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gb_bootrom_probe.__key.5, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/bootrom.c", i32 469, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gb_bootrom_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @gb_bootrom_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/bootrom.c", i32 474, i32 2}
!29 = !{ptr @gb_bootrom_probe.__UNIQUE_ID_ddebug234, !28, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/bootrom.c", i32 369, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gb_bootrom_request_handler._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @gb_bootrom_request_handler._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/bootrom.c", i32 201, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @gb_bootrom_firmware_size_request._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @gb_bootrom_firmware_size_request._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/bootrom.c", i32 216, i32 3}
!42 = !{ptr @gb_bootrom_firmware_size_request._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gb_bootrom_firmware_size_request._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/greybus/bootrom.c", i32 225, i32 2}
!46 = !{ptr @gb_bootrom_firmware_size_request.__UNIQUE_ID_ddebug230, !45, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/bootrom.c", i32 156, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @find_firmware._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @find_firmware._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/bootrom.c", i32 167, i32 4}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/greybus/bootrom.c", i32 175, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @find_firmware._entry.24, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @find_firmware._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/greybus/bootrom.c", i32 181, i32 3}
!61 = !{ptr @find_firmware._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @find_firmware._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/greybus/bootrom.c", i32 256, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @gb_bootrom_get_firmware._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @gb_bootrom_get_firmware._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/greybus/bootrom.c", i32 267, i32 3}
!70 = !{ptr @gb_bootrom_get_firmware._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gb_bootrom_get_firmware._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/greybus/bootrom.c", i32 277, i32 3}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gb_bootrom_get_firmware._entry.36, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @gb_bootrom_get_firmware._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @gb_bootrom_get_firmware._entry.40, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/bootrom.c", i32 285, i32 3}
!79 = !{ptr @gb_bootrom_get_firmware._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/greybus/bootrom.c", i32 293, i32 2}
!82 = !{ptr @gb_bootrom_get_firmware.__UNIQUE_ID_ddebug231, !81, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/greybus/bootrom.c", i32 324, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @gb_bootrom_ready_to_boot._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @gb_bootrom_ready_to_boot._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/greybus/bootrom.c", i32 343, i32 2}
!90 = !{ptr @gb_bootrom_ready_to_boot.__UNIQUE_ID_ddebug232, !89, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/greybus/bootrom.c", i32 62, i32 12}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/greybus/bootrom.c", i32 65, i32 12}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/greybus/bootrom.c", i32 68, i32 12}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/greybus/bootrom.c", i32 71, i32 12}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/greybus/bootrom.c", i32 75, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gb_bootrom_timedout._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gb_bootrom_timedout._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/greybus/bootrom.c", i32 79, i32 2}
!106 = !{ptr @gb_bootrom_timedout._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gb_bootrom_timedout._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/greybus/bootrom.c", i32 390, i32 3}
!110 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @gb_bootrom_get_version._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @gb_bootrom_get_version._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/greybus/bootrom.c", i32 397, i32 3}
!115 = !{ptr @gb_bootrom_get_version._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @gb_bootrom_get_version._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/greybus/bootrom.c", i32 406, i32 2}
!119 = !{ptr @gb_bootrom_get_version.__UNIQUE_ID_ddebug233, !118, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/bootrom.c", i32 124, i32 3}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bootrom_es2_fixup_vid_pid._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @bootrom_es2_fixup_vid_pid._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/greybus/bootrom.c", i32 139, i32 2}
!127 = !{ptr @bootrom_es2_fixup_vid_pid.__UNIQUE_ID_ddebug229, !126, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/greybus/bootrom.c", i32 494, i32 2}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @gb_bootrom_disconnect.__UNIQUE_ID_ddebug235, !129, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!132 = !{ptr @gb_bootrom_id_table, !133, !"gb_bootrom_id_table", i1 false, i1 false}
!133 = !{!"../drivers/staging/greybus/bootrom.c", i32 513, i32 39}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148192022, i64 2148192027, i64 2148192040, i64 2148192084, i64 2148192118, i64 2148192139}
!144 = !{!"auto-init"}
