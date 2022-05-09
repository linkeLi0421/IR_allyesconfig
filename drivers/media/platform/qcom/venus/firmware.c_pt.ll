; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/firmware.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@venus_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to load video firmware\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venus_boot\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/qcom/venus/firmware.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venus_boot._entry_ptr = internal global ptr @venus_boot._entry, section ".printk_index", align 4
@venus_boot._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set virtual address ranges fail (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@venus_boot._entry_ptr.8 = internal global ptr @venus_boot._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video-firmware\00", [17 x i8] zeroinitializer }, align 32
@venus_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma configure fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"venus_firmware_init\00", [44 x i8] zeroinitializer }, align 32
@venus_firmware_init._entry_ptr = internal global ptr @venus_firmware_init._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@venus_firmware_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate iommu domain\0A\00", [63 x i8] zeroinitializer }, align 32
@venus_firmware_init._entry_ptr.14 = internal global ptr @venus_firmware_init._entry.12, section ".printk_index", align 4
@venus_firmware_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach device\0A\00", [39 x i8] zeroinitializer }, align 32
@venus_firmware_init._entry_ptr.17 = internal global ptr @venus_firmware_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@venus_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory-region specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"venus_load_fw\00", [18 x i8] zeroinitializer }, align 32
@venus_load_fw._entry_ptr = internal global ptr @venus_load_fw._entry, section ".printk_index", align 4
@venus_load_fw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map memory region: %pR\0A\00", [62 x i8] zeroinitializer }, align 32
@venus_load_fw._entry_ptr.23 = internal global ptr @venus_load_fw._entry.21, section ".printk_index", align 4
@venus_boot_no_tz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not map video firmware region\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"venus_boot_no_tz\00", [47 x i8] zeroinitializer }, align 32
@venus_boot_no_tz._entry_ptr = internal global ptr @venus_boot_no_tz._entry, section ".printk_index", align 4
@venus_shutdown_no_tz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to unmap firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"venus_shutdown_no_tz\00", [43 x i8] zeroinitializer }, align 32
@venus_shutdown_no_tz._entry_ptr = internal global ptr @venus_shutdown_no_tz._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 221, i32 52 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 228, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 250, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 279, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 301, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 309, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 316, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 94, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 96, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 124, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 161, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [48 x i8] c"../drivers/media/platform/qcom/venus/firmware.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 200, i32 4 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @venus_boot._entry, ptr @venus_boot._entry.6, ptr @venus_boot._entry_ptr, ptr @venus_boot._entry_ptr.8, ptr @venus_boot_no_tz._entry, ptr @venus_boot_no_tz._entry_ptr, ptr @venus_firmware_init._entry, ptr @venus_firmware_init._entry.12, ptr @venus_firmware_init._entry.15, ptr @venus_firmware_init._entry_ptr, ptr @venus_firmware_init._entry_ptr.14, ptr @venus_firmware_init._entry_ptr.17, ptr @venus_load_fw._entry, ptr @venus_load_fw._entry.21, ptr @venus_load_fw._entry_ptr, ptr @venus_load_fw._entry_ptr.23, ptr @venus_shutdown_no_tz._entry, ptr @venus_shutdown_no_tz._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_boot._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_firmware_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_firmware_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_load_fw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_boot_no_tz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_shutdown_no_tz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_set_hw_state(ptr nocapture noundef readonly %core, i1 noundef zeroext %resume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %use_tz = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 26
  %0 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i1 %resume to i32
  %call = tail call i32 @qcom_scm_set_remote_state(i32 noundef %conv, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp = icmp eq i32 %call, -22
  %2 = select i1 %resume, i1 %cmp, i1 false
  %ret.0 = select i1 %2, i32 0, i32 %call
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %resume, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @venus_reset_cpu(ptr noundef %core)
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp9 = icmp eq i32 %6, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp9, label %do.body, label %do.body13

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wrapper_tz_base = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 6
  %7 = ptrtoint ptr %wrapper_tz_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wrapper_tz_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !59
  br label %cleanup

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wrapper_base = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 5
  %9 = ptrtoint ptr %wrapper_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wrapper_base, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #5, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.body, %if.then8, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.then ], [ 0, %do.body ], [ 0, %do.body13 ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_remote_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venus_reset_cpu(ptr nocapture noundef readonly %core) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mapped_mem_size = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %mapped_mem_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapped_mem_size, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %wrapper_tz_base = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 6
  %wrapper_base1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 5
  %wrapper_base.0.in = select i1 %cmp, ptr %wrapper_tz_base, ptr %wrapper_base1
  %6 = ptrtoint ptr %wrapper_base.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %wrapper_base.0 = load ptr, ptr %wrapper_base.0.in, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %wrapper_base.0, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr5 = getelementptr i8, ptr %wrapper_base.0, i32 4140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %add.ptr9 = getelementptr i8, ptr %wrapper_base.0, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %add.ptr13 = getelementptr i8, ptr %wrapper_base.0, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %add.ptr17 = getelementptr i8, ptr %wrapper_base.0, i32 4144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %add.ptr21 = getelementptr i8, ptr %wrapper_base.0, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %7) #5, !srcloc !59
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res, align 4
  %hfi_version23 = getelementptr inbounds %struct.venus_resources, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %hfi_version23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfi_version23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp24 = icmp eq i32 %11, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp24, label %do.body26, label %do.body31

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr29 = getelementptr i8, ptr %wrapper_base.0, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #5, !srcloc !59
  br label %if.end43

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr34 = getelementptr i8, ptr %wrapper_base.0, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %add.ptr38 = getelementptr i8, ptr %wrapper_base.0, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %add.ptr42 = getelementptr i8, ptr %wrapper_base.0, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #5, !srcloc !59
  br label %if.end43

if.end43:                                         ; preds = %do.body31, %do.body26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_boot(ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %mdt.i = alloca ptr, align 4
  %r.i = alloca %struct.resource, align 4
  %fwpath = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %res2 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwpath) #5
  %4 = ptrtoint ptr %fwpath to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fwpath, align 4
  %use_tz = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 26
  %5 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @qcom_scm_is_available() #5
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull %fwpath, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool4.not = icmp sgt i32 %call.i, -1
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res2, align 4
  %fwname = getelementptr inbounds %struct.venus_resources, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %fwname to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwname, align 4
  %13 = ptrtoint ptr %fwpath to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fwpath, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %fwpath to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fwpath, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdt.i) #5
  %16 = ptrtoint ptr %mdt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %mdt.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #5
  %17 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %18 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %23 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %venus_load_fw.exit.thread

of_parse_phandle.exit.i:                          ; preds = %if.end7
  %24 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.venus_load_fw.exit.thread_crit_edge, label %if.end.i

of_parse_phandle.exit.i.venus_load_fw.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %venus_load_fw.exit.thread

venus_load_fw.exit.thread:                        ; preds = %of_parse_phandle.exit.i.venus_load_fw.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.19) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #5
  br label %do.end

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %25, i32 noundef 0, ptr noundef nonnull %r.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.venus_load_fw.exit.thread78_crit_edge

if.end.i.venus_load_fw.exit.thread78_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %venus_load_fw.exit.thread78

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @request_firmware(ptr noundef nonnull %mdt.i, ptr noundef %15, ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.venus_load_fw.exit.thread78_crit_edge, label %if.end8.i

if.end5.i.venus_load_fw.exit.thread78_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %venus_load_fw.exit.thread78

if.end8.i:                                        ; preds = %if.end5.i
  %26 = ptrtoint ptr %mdt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdt.i, align 4
  %call9.i = call i32 @qcom_mdt_get_size(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.venus_load_fw.exit_crit_edge, label %if.end12.i

if.end8.i.venus_load_fw.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %venus_load_fw.exit

if.end12.i:                                       ; preds = %if.end8.i
  %28 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r.i, align 4
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %17, align 4
  %sub.i.i = sub i32 1, %29
  %add.i.i = add i32 %sub.i.i, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %call9.i)
  %cmp14.i = icmp ult i32 %add.i.i, %call9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %call9.i)
  %cmp15.i = icmp ugt i32 %call9.i, 6291456
  %or.cond.i = or i1 %cmp15.i, %cmp14.i
  br i1 %or.cond.i, label %if.end12.i.venus_load_fw.exit_crit_edge, label %if.end17.i

if.end12.i.venus_load_fw.exit_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %venus_load_fw.exit

if.end17.i:                                       ; preds = %if.end12.i
  %call19.i = call ptr @memremap(i32 noundef %29, i32 noundef %add.i.i, i32 noundef 4) #5
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end25.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.22, ptr noundef nonnull %r.i) #8
  br label %venus_load_fw.exit

if.end25.i:                                       ; preds = %if.end17.i
  %32 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not.i = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %mdt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdt.i, align 4
  br i1 %tobool26.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i = call i32 @qcom_mdt_load(ptr noundef %20, ptr noundef %35, ptr noundef %15, i32 noundef 9, ptr noundef nonnull %call19.i, i32 noundef %29, i32 noundef %add.i.i, ptr noundef null) #5
  br label %if.end30.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = call i32 @qcom_mdt_load_no_init(ptr noundef %20, ptr noundef %35, ptr noundef %15, i32 noundef 9, ptr noundef nonnull %call19.i, i32 noundef %29, i32 noundef %add.i.i, ptr noundef null) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then27.i
  %ret.0.i = phi i32 [ %call28.i, %if.then27.i ], [ %call29.i, %if.else.i ]
  call void @memunmap(ptr noundef nonnull %call19.i) #5
  br label %venus_load_fw.exit

venus_load_fw.exit.thread78:                      ; preds = %if.end5.i.venus_load_fw.exit.thread78_crit_edge, %if.end.i.venus_load_fw.exit.thread78_crit_edge
  call void @of_node_put(ptr noundef nonnull %25) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #5
  br label %do.end

venus_load_fw.exit:                               ; preds = %if.end30.i, %do.end24.i, %if.end12.i.venus_load_fw.exit_crit_edge, %if.end8.i.venus_load_fw.exit_crit_edge
  %mem_phys.0 = phi i32 [ 0, %if.end8.i.venus_load_fw.exit_crit_edge ], [ %29, %if.end12.i.venus_load_fw.exit_crit_edge ], [ %29, %do.end24.i ], [ %29, %if.end30.i ]
  %mem_size.0 = phi i32 [ 0, %if.end8.i.venus_load_fw.exit_crit_edge ], [ %add.i.i, %if.end12.i.venus_load_fw.exit_crit_edge ], [ %add.i.i, %do.end24.i ], [ %add.i.i, %if.end30.i ]
  %ret.1.i = phi i32 [ %call9.i, %if.end8.i.venus_load_fw.exit_crit_edge ], [ -12, %if.end12.i.venus_load_fw.exit_crit_edge ], [ -12, %do.end24.i ], [ %ret.0.i, %if.end30.i ]
  %36 = ptrtoint ptr %mdt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdt.i, align 4
  call void @release_firmware(ptr noundef %37) #5
  call void @of_node_put(ptr noundef nonnull %25) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdt.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool9.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool9.not, label %if.end11, label %venus_load_fw.exit.do.end_crit_edge

venus_load_fw.exit.do.end_crit_edge:              ; preds = %venus_load_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %venus_load_fw.exit.do.end_crit_edge, %venus_load_fw.exit.thread78, %venus_load_fw.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end11:                                         ; preds = %venus_load_fw.exit
  %mem_size12 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 4
  %38 = ptrtoint ptr %mem_size12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mem_size.0, ptr %mem_size12, align 4
  %mem_phys14 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 3
  %39 = ptrtoint ptr %mem_phys14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mem_phys.0, ptr %mem_phys14, align 4
  %40 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool16.not = icmp eq i32 %41, 0
  br i1 %tobool16.not, label %if.else, label %if.end20

if.else:                                          ; preds = %if.end11
  %fw.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27
  %42 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw.i, align 4
  %tobool.not.i65 = icmp eq ptr %43, null
  br i1 %tobool.not.i65, label %if.else.cleanup_crit_edge, label %if.end.i67

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i67:                                       ; preds = %if.else
  %iommu_domain.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 1
  %44 = ptrtoint ptr %iommu_domain.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iommu_domain.i, align 4
  %mapped_mem_size.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 2
  %46 = ptrtoint ptr %mapped_mem_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mem_size.0, ptr %mapped_mem_size.i, align 4
  %call.i66 = call i32 @iommu_map(ptr noundef %45, i32 noundef 0, i32 noundef %mem_phys.0, i32 noundef %mem_size.0, i32 noundef 35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool4.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool4.not.i, label %if.end20.thread85, label %do.end.i68

do.end.i68:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %43, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end20.thread85:                                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @venus_reset_cpu(ptr noundef %core) #5
  br label %if.end23

if.end20:                                         ; preds = %if.end11
  %call18 = call i32 @qcom_scm_pas_auth_and_reset(i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool21.not = icmp eq i32 %call18, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %if.end20.thread85
  %47 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool25.not = icmp eq i32 %48, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end23
  %cp_size = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 27
  %49 = ptrtoint ptr %cp_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cp_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool27.not = icmp eq i32 %50, 0
  br i1 %tobool27.not, label %land.lhs.true26.cleanup_crit_edge, label %if.then28

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true26
  %cp_start = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 26
  %51 = ptrtoint ptr %cp_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cp_start, align 4
  %cp_nonpixel_start = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 28
  %53 = ptrtoint ptr %cp_nonpixel_start to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cp_nonpixel_start, align 4
  %cp_nonpixel_size = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 29
  %55 = ptrtoint ptr %cp_nonpixel_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cp_nonpixel_size, align 8
  %call30 = call i32 @qcom_scm_mem_protect_video_var(i32 noundef %52, i32 noundef %50, i32 noundef %54, i32 noundef %56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.cleanup_crit_edge, label %if.then32

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 @qcom_scm_pas_shutdown(i32 noundef 9) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then28.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end.i68, %if.else.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call30, %if.then32 ], [ -517, %land.lhs.true.cleanup_crit_edge ], [ %call18, %if.end20.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %land.lhs.true26.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ %call.i66, %do.end.i68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwpath) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_mem_protect_video_var(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_shutdown(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_shutdown(ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %use_tz = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 26
  %0 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @qcom_scm_pas_shutdown(i32 noundef 9) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %fw.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27
  %mapped_mem_size.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 2
  %2 = ptrtoint ptr %mapped_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapped_mem_size.i, align 4
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i, align 4
  %res.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hfi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wrapper_tz_base4.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 6
  %10 = ptrtoint ptr %wrapper_tz_base4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrapper_tz_base4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4096
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !69
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !59
  br label %do.body.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wrapper_base3.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 5
  %14 = ptrtoint ptr %wrapper_base3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wrapper_base3.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 12288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !69
  %17 = or i32 %16, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %17) #5, !srcloc !59
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %iommu_domain.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 1
  %18 = ptrtoint ptr %iommu_domain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iommu_domain.i, align 4
  %20 = ptrtoint ptr %mapped_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapped_mem_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %tobool15.not.i = icmp eq ptr %19, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i, label %do.body.i.if.end_crit_edge, label %if.then16.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then16.i:                                      ; preds = %do.body.i
  %call17.i = tail call i32 @iommu_unmap(ptr noundef nonnull %19, i32 noundef 0, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i, i32 %3)
  %cmp18.not.i = icmp eq i32 %call17.i, %3
  br i1 %cmp18.not.i, label %if.else23.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26) #8
  br label %if.end

if.else23.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %mapped_mem_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mapped_mem_size.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else23.i, %do.end22.i, %do.body.i.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %do.body.i.if.end_crit_edge ], [ 0, %do.end22.i ], [ 0, %if.else23.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_firmware_init(ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #5
  %dev = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.9) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %use_tz = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 26
  %4 = ptrtoint ptr %use_tz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %use_tz, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %info, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 48)
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %fwnode1 = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %fwnode1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fwnode, ptr %fwnode1, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %info, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %name3 = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name3, align 4
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 9
  %14 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 4294967295, ptr %dma_mask, align 8
  %call4 = call ptr @platform_device_register_full(ptr noundef nonnull %info) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %call) #5
  %15 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3
  %of_node10 = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %of_node10, align 8
  %call.i = call i32 @of_dma_configure_id(ptr noundef %dev9, ptr noundef nonnull %call, i1 noundef zeroext true, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10) #8
  br label %err_unregister

if.end16:                                         ; preds = %if.end8
  %fw = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev9, ptr %fw, align 4
  %call19 = call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #5
  %tobool20.not = icmp eq ptr %call19, null
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13) #8
  br label %err_unregister

if.end27:                                         ; preds = %if.end16
  %call30 = call i32 @iommu_attach_device(ptr noundef nonnull %call19, ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16) #8
  call void @iommu_domain_free(ptr noundef nonnull %call19) #5
  br label %err_unregister

if.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %iommu_domain = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 1
  %24 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call19, ptr %iommu_domain, align 4
  call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

err_unregister:                                   ; preds = %do.end35, %do.end24, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call30, %do.end35 ], [ -12, %do.end24 ]
  call void @platform_device_unregister(ptr noundef %call4) #5
  call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.end38, %if.then6, %if.then
  %retval.0 = phi i32 [ %15, %if.then6 ], [ %ret.0, %err_unregister ], [ 0, %if.end38 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @venus_firmware_deinit(ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %iommu_domain = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu_domain, align 4
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu_domain, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iommu_domain_free(ptr noundef %3) #5
  %6 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %iommu_domain, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load_no_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 221, i32 52}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 228, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @venus_boot._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @venus_boot._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 250, i32 4}
!12 = !{ptr @venus_boot._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @venus_boot._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 279, i32 48}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 301, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @venus_firmware_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @venus_firmware_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 309, i32 3}
!23 = !{ptr @venus_firmware_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @venus_firmware_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 316, i32 3}
!27 = !{ptr @venus_firmware_init._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @venus_firmware_init._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 94, i32 40}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 96, i32 3}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @venus_load_fw._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @venus_load_fw._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 124, i32 3}
!38 = !{ptr @venus_load_fw._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @venus_load_fw._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 161, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @venus_boot_no_tz._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @venus_boot_no_tz._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/qcom/venus/firmware.c", i32 200, i32 4}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @venus_shutdown_no_tz._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @venus_shutdown_no_tz._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 6239746}
!60 = !{i64 2156534472}
!61 = !{i64 2156534874}
!62 = !{i64 2156535288}
!63 = !{i64 2156535690}
!64 = !{i64 2156536110}
!65 = !{i64 2156536530}
!66 = !{i64 2156537797}
!67 = !{i64 2156538199}
!68 = !{!"auto-init"}
!69 = !{i64 6240164}
!70 = !{i64 2156545807}
