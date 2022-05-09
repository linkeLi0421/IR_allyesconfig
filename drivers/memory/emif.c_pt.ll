; ModuleID = '/llk/IR_all_yes/drivers/memory/emif.c_pt.bc'
source_filename = "../drivers/memory/emif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lpddr2_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_addressing = type { i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.emif_data = type { i8, i8, i8, %struct.list_head, i32, ptr, ptr, [6 x ptr], ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.emif_platform_data = type { i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct.ddr_device_info = type { i32, i32, i32, i32, i32, [10 x i8] }
%struct.emif_custom_configs = type { i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.emif_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.64, %union.anon.65, i32, i32, i32, i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i32 }

@__initcall__kmod_emif__229_1205_emif_driver_init6 = internal global ptr @emif_driver_init, section ".initcall6.init", align 4
@emif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr @emif_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.92, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @emif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_emif_driver_exit = internal global ptr @emif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"emif.description=TI EMIF SDRAM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [30 x i8] c"emif.file=drivers/memory/emif\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [17 x i8] c"emif.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [25 x i8] c"emif.alias=platform:emif\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [34 x i8] c"emif.author=Texas Instruments Inc\00", section ".modinfo", align 1
@emif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: error getting device data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emif_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/memory/emif.c\00", [42 x i8] zeroinitializer }, align 32
@emif_probe._entry_ptr = internal global ptr @emif_probe._entry, section ".printk_index", align 4
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@emif1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@emif_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: device configured with addr = %p and IRQ%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emif_probe._entry_ptr.7 = internal global ptr @emif_probe._entry.3, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-handle\00", [18 x i8] zeroinitializer }, align 32
@of_get_memory_device_details._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 939, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Out of memory!!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_get_memory_device_details\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@of_get_memory_device_details._entry_ptr = internal global ptr @of_get_memory_device_details._entry, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,emif-4d\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,emif-4d5\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-type\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw-caps-ll-interface\00", [43 x i8] zeroinitializer }, align 32
@of_get_memory_device_details._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 963, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid device data!!\0A\00", [37 x i8] zeroinitializer }, align 32
@of_get_memory_device_details._entry_ptr.18 = internal global ptr @of_get_memory_device_details._entry.16, section ".printk_index", align 4
@of_get_memory_device_details._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 977, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Non-symmetric DDR geometry\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_get_memory_device_details._entry_ptr.22 = internal global ptr @of_get_memory_device_details._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs1-used\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cal-resistor-per-cs\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jedec,lpddr2-s4\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jedec,lpddr2-s2\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"density\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io-width\00", [23 x i8] zeroinitializer }, align 32
@is_dev_data_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 813, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid DDR details\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"is_dev_data_valid\00", [46 x i8] zeroinitializer }, align 32
@is_dev_data_valid._entry_ptr = internal global ptr @is_dev_data_valid._entry, section ".printk_index", align 4
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"low-power-mode\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"temp-alert-poll-interval\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"low-power-mode-timeout-performance\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"low-power-mode-timeout-power\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"low-power-mode-freq-threshold\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"extended-temp-part\00", [45 x i8] zeroinitializer }, align 32
@is_custom_config_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 832, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid custom configs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"is_custom_config_valid\00", [41 x i8] zeroinitializer }, align 32
@is_custom_config_valid._entry_ptr = internal global ptr @is_custom_config_valid._entry, section ".printk_index", align 4
@get_device_details._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1020, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid device data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_device_details\00", [45 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr = internal global ptr @get_device_details._entry, section ".printk_index", align 4
@get_device_details._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1029, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d: allocation error\0A\00", [39 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr.43 = internal global ptr @get_device_details._entry.41, section ".printk_index", align 4
@get_device_details._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.40, ptr @.str.2, i32 1058, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr.45 = internal global ptr @get_device_details._entry.44, section ".printk_index", align 4
@get_device_details._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1072, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr.47 = internal global ptr @get_device_details._entry.46, section ".printk_index", align 4
@get_device_details._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1088, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr.49 = internal global ptr @get_device_details._entry.48, section ".printk_index", align 4
@get_device_details._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1102, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@get_device_details._entry_ptr.51 = internal global ptr @get_device_details._entry.50, section ".printk_index", align 4
@lpddr2_jedec_min_tck = external dso_local constant %struct.lpddr2_min_tck, align 4
@lpddr2_jedec_timings = external dso_local constant [4 x %struct.lpddr2_timings], align 4
@get_default_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 785, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: using default timings\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_default_timings\00", [44 x i8] zeroinitializer }, align 32
@get_default_timings._entry_ptr = internal global ptr @get_default_timings._entry, section ".printk_index", align 4
@emif_onetime_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 741, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SDRAM temperature exceeds operating limit.. Needs shut down!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emif_onetime_settings\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@emif_onetime_settings._entry_ptr = internal global ptr @emif_onetime_settings._entry, section ".printk_index", align 4
@lpddr2_jedec_addressing_table = external dso_local local_unnamed_addr constant [11 x %struct.lpddr2_addressing], align 4
@get_pwr_mgmt_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013TIMEOUT Overflow - lpmode=%d perf=%d pwr=%d freq=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_pwr_mgmt_ctrl\00", [46 x i8] zeroinitializer }, align 32
@get_pwr_mgmt_ctrl._entry_ptr = internal global ptr @get_pwr_mgmt_ctrl._entry, section ".printk_index", align 4
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"timeout=0x%02x greater than 0x%02x. Using max\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regcache_dump\00", [18 x i8] zeroinitializer }, align 32
@emif_regdump_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @emif_regdump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mr4\00", [28 x i8] zeroinitializer }, align 32
@emif_mr4_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @emif_mr4_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EMIF register cache dump for %dMHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ref_ctrl_shdw\09: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdram_tim1_shdw\09: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdram_tim2_shdw\09: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdram_tim3_shdw\09: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"read_idle_ctrl_shdw_normal\09: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"read_idle_ctrl_shdw_volt_ramp\09: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dll_calib_ctrl_shdw_normal\09: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dll_calib_ctrl_shdw_volt_ramp\09: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ref_ctrl_shdw_derated\09: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sdram_tim1_shdw_derated\09: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sdram_tim3_shdw_derated\09: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MR4=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@emif_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 610, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Access error from SYS port - %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"emif_interrupt_handler\00", [41 x i8] zeroinitializer }, align 32
@emif_interrupt_handler._entry_ptr = internal global ptr @emif_interrupt_handler._entry, section ".printk_index", align 4
@emif_interrupt_handler._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 619, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Access error from LL port - %x\0A\00", [32 x i8] zeroinitializer }, align 32
@emif_interrupt_handler._entry_ptr.79 = internal global ptr @emif_interrupt_handler._entry.77, section ".printk_index", align 4
@emif_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@irq_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@handle_temp_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 544, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"temperature alert before registers are calculated, not de-rating timings\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_temp_alert\00", [46 x i8] zeroinitializer }, align 32
@handle_temp_alert._entry_ptr = internal global ptr @handle_temp_alert._entry, section ".printk_index", align 4
@handle_temp_alert._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 559, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s:NOT Extended temperature capable memory. Converting MR4=0x%02x as shutdown event\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_temp_alert._entry_ptr.84 = internal global ptr @handle_temp_alert._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emif_lock\00", [22 x i8] zeroinitializer }, align 32
@emif_threaded_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.87, ptr @.str.2, i32 630, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emif_threaded_isr\00", [46 x i8] zeroinitializer }, align 32
@emif_threaded_isr._entry_ptr = internal global ptr @emif_threaded_isr._entry, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FIXME: NO pm_power_off!!! trying restart\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SDRAM Over-temp Emergency restart\00", [62 x i8] zeroinitializer }, align 32
@emif_threaded_isr._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.87, ptr @.str.2, i32 648, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@emif_threaded_isr._entry_ptr.91 = internal global ptr @emif_threaded_isr._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emif\00", [27 x i8] zeroinitializer }, align 32
@emif_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-4d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-4d5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"emif_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1196, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1128, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 73, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"emif1\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 70, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1163, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 930, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 938, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 949, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 951, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 954, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 956, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 963, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 976, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 894, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 897, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 900, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 902, i32 43 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 905, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 906, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 813, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 845, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 846, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 859, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 862, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 865, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 876, i32 32 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 832, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1020, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1029, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1057, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1071, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1087, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1101, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 785, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 741, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 430, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 435, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 146, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant [18 x i8] c"emif_regdump_fops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 131, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 148, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant [14 x i8] c"emif_mr4_fops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 141, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 82, i32 16 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 85, i32 16 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 86, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 87, i32 16 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 88, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 91, i32 17 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 93, i32 17 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 96, i32 17 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 98, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 103, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 105, i32 17 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 107, i32 17 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 137, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 610, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 618, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant [10 x i8] c"emif_lock\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [10 x i8] c"irq_state\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 72, i32 22 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 544, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 557, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 71, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 630, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 636, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 637, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 648, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1200, i32 11 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"emif_of_match\00", align 1
@___asan_gen_.396 = private constant [25 x i8] c"../drivers/memory/emif.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1188, i32 34 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_emif_driver_exit, ptr @__initcall__kmod_emif__229_1205_emif_driver_init6, ptr @emif_debugfs_exit, ptr @emif_driver_exit, ptr @emif_interrupt_handler._entry, ptr @emif_interrupt_handler._entry.77, ptr @emif_interrupt_handler._entry_ptr, ptr @emif_interrupt_handler._entry_ptr.79, ptr @emif_onetime_settings._entry, ptr @emif_onetime_settings._entry_ptr, ptr @emif_probe._entry, ptr @emif_probe._entry.3, ptr @emif_probe._entry_ptr, ptr @emif_probe._entry_ptr.7, ptr @emif_remove, ptr @emif_threaded_isr._entry, ptr @emif_threaded_isr._entry.90, ptr @emif_threaded_isr._entry_ptr, ptr @emif_threaded_isr._entry_ptr.91, ptr @get_default_timings._entry, ptr @get_default_timings._entry_ptr, ptr @get_device_details._entry, ptr @get_device_details._entry.41, ptr @get_device_details._entry.44, ptr @get_device_details._entry.46, ptr @get_device_details._entry.48, ptr @get_device_details._entry.50, ptr @get_device_details._entry_ptr, ptr @get_device_details._entry_ptr.43, ptr @get_device_details._entry_ptr.45, ptr @get_device_details._entry_ptr.47, ptr @get_device_details._entry_ptr.49, ptr @get_device_details._entry_ptr.51, ptr @get_pwr_mgmt_ctrl._entry, ptr @get_pwr_mgmt_ctrl._entry_ptr, ptr @handle_temp_alert._entry, ptr @handle_temp_alert._entry.82, ptr @handle_temp_alert._entry_ptr, ptr @handle_temp_alert._entry_ptr.84, ptr @is_custom_config_valid._entry, ptr @is_custom_config_valid._entry_ptr, ptr @is_dev_data_valid._entry, ptr @is_dev_data_valid._entry_ptr, ptr @of_get_memory_device_details._entry, ptr @of_get_memory_device_details._entry.16, ptr @of_get_memory_device_details._entry.19, ptr @of_get_memory_device_details._entry_ptr, ptr @of_get_memory_device_details._entry_ptr.18, ptr @of_get_memory_device_details._entry_ptr.22, ptr @emif_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @device_list, ptr @emif1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @emif_regdump_fops, ptr @.str.61, ptr @emif_mr4_fops, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @emif_lock, ptr @irq_state, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.92, ptr @emif_of_match], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_memory_device_details._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_memory_device_details._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_memory_device_details._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_dev_data_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_custom_config_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_device_details._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_default_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_onetime_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pwr_mgmt_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_regdump_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_mr4_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_interrupt_handler._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_temp_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_temp_alert._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_threaded_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_threaded_isr._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emif_debugfs_exit(ptr nocapture noundef %emif) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %debugfs_root = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 10
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.emif_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %4 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %debugfs_root.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @emif_driver, ptr noundef nonnull @emif_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @emif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %len.i119.i = alloca i32, align 4
  %density.i.i = alloca i32, align 4
  %io_width.i.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len.i, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %3 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %if.end.thread151

of_parse_phandle.exit.i:                          ; preds = %if.then
  %4 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.if.end.thread151_crit_edge, label %if.end.i

of_parse_phandle.exit.i.if.end.thread151_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread151

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call.i112.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #7
  %call.i113.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %call.i114.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool4.not.i = icmp eq ptr %call.i112.i, null
  %tobool5.not.i = icmp eq ptr %call.i113.i, null
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  %tobool7.not.i = icmp eq ptr %call.i114.i, null
  %or.cond111.i = select i1 %or.cond.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond111.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10
  br label %if.end.thread151

if.end9.i:                                        ; preds = %if.end.i
  %plat_data.i = getelementptr inbounds %struct.emif_data, ptr %call.i112.i, i32 0, i32 9
  %6 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i113.i, ptr %plat_data.i, align 4
  %device_info.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i113.i, i32 0, i32 1
  %7 = ptrtoint ptr %device_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i114.i, ptr %device_info.i, align 4
  %dev10.i = getelementptr inbounds %struct.emif_data, ptr %call.i112.i, i32 0, i32 6
  %8 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev10.i, align 4
  %np_ddr11.i = getelementptr inbounds %struct.emif_data, ptr %call.i112.i, i32 0, i32 11
  %9 = ptrtoint ptr %np_ddr11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %np_ddr11.i, align 4
  %temperature_level.i = getelementptr inbounds %struct.emif_data, ptr %call.i112.i, i32 0, i32 1
  %10 = ptrtoint ptr %temperature_level.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %temperature_level.i, align 1
  %call12.i = call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else.i, label %if.end9.i.if.end22.sink.split.i_crit_edge

if.end9.i.if.end22.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.else.i:                                        ; preds = %if.end9.i
  %call16.i = call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else.i.if.end22.i_crit_edge, label %if.else.i.if.end22.sink.split.i_crit_edge

if.else.i.if.end22.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end22.sink.split.i:                            ; preds = %if.else.i.if.end22.sink.split.i_crit_edge, %if.end9.i.if.end22.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end9.i.if.end22.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end22.sink.split.i_crit_edge ]
  %ip_rev20.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i113.i, i32 0, i32 6
  %11 = ptrtoint ptr %ip_rev20.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %ip_rev20.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.else.i.if.end22.i_crit_edge
  %phy_type.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i113.i, i32 0, i32 7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef %phy_type.i, i32 noundef 1, i32 noundef 0) #7
  %call24.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %len.i) #7
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then26.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i113.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i113.i, align 4
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %call.i113.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end27.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %density.i.i) #7
  %14 = ptrtoint ptr %density.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %density.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_width.i.i) #7
  %15 = ptrtoint ptr %io_width.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %io_width.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #7
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %len.i.i, align 4, !annotation !212
  %call.i115.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %len.i.i) #7
  %tobool.not.i116.i = icmp eq ptr %call.i115.i, null
  br i1 %tobool.not.i116.i, label %if.end27.i.if.end.i117.i_crit_edge, label %if.then.i.i

if.end27.i.if.end.i117.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i117.i

if.then.i.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %cs1_used.i.i = getelementptr inbounds %struct.ddr_device_info, ptr %call.i114.i, i32 0, i32 3
  %17 = ptrtoint ptr %cs1_used.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %cs1_used.i.i, align 4
  br label %if.end.i117.i

if.end.i117.i:                                    ; preds = %if.then.i.i, %if.end27.i.if.end.i117.i_crit_edge
  %call1.i.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %len.i.i) #7
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i117.i.if.end4.i.i_crit_edge, label %if.then3.i.i

if.end.i117.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  %cal_resistors_per_cs.i.i = getelementptr inbounds %struct.ddr_device_info, ptr %call.i114.i, i32 0, i32 4
  %18 = ptrtoint ptr %cal_resistors_per_cs.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %cal_resistors_per_cs.i.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i117.i.if.end4.i.i_crit_edge
  %call5.i.i = call i32 @of_device_is_compatible(ptr noundef nonnull %5, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %if.end4.i.i.if.end13.sink.split.i.i_crit_edge

if.end4.i.i.if.end13.sink.split.i.i_crit_edge:    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  %call8.i.i = call i32 @of_device_is_compatible(ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i.of_get_ddr_info.exit.i_crit_edge, label %if.else.i.i.if.end13.sink.split.i.i_crit_edge

if.else.i.i.if.end13.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.i

if.else.i.i.of_get_ddr_info.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_ddr_info.exit.i

if.end13.sink.split.i.i:                          ; preds = %if.else.i.i.if.end13.sink.split.i.i_crit_edge, %if.end4.i.i.if.end13.sink.split.i.i_crit_edge
  %.sink48.i.i = phi i32 [ 3, %if.end4.i.i.if.end13.sink.split.i.i_crit_edge ], [ 4, %if.else.i.i.if.end13.sink.split.i.i_crit_edge ]
  %19 = ptrtoint ptr %call.i114.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink48.i.i, ptr %call.i114.i, align 4
  br label %of_get_ddr_info.exit.i

of_get_ddr_info.exit.i:                           ; preds = %if.end13.sink.split.i.i, %if.else.i.i.of_get_ddr_info.exit.i_crit_edge
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.27, ptr noundef nonnull %density.i.i, i32 noundef 1, i32 noundef 0) #7
  %call.i.i46.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.28, ptr noundef nonnull %io_width.i.i, i32 noundef 1, i32 noundef 0) #7
  %20 = ptrtoint ptr %density.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %density.i.i, align 4
  %22 = call i32 @llvm.ctpop.i32(i32 %21) #7, !range !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %tobool16.not.i.i = icmp ult i32 %22, 2
  %23 = call i32 @llvm.ctlz.i32(i32 %21, i1 false) #7, !range !213
  %sub21.i.i = sub nsw i32 26, %23
  %.sink.i.i = select i1 %tobool16.not.i.i, i32 %sub21.i.i, i32 0
  %24 = getelementptr inbounds %struct.ddr_device_info, ptr %call.i114.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i.i, ptr %24, align 4
  %26 = ptrtoint ptr %io_width.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_width.i.i, align 4
  %28 = call i32 @llvm.ctpop.i32(i32 %27) #7, !range !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool26.not.i.i = icmp ult i32 %28, 2
  %29 = call i32 @llvm.ctlz.i32(i32 %27, i1 false) #7, !range !213
  %sub31.i.i = sub nsw i32 30, %29
  %.sink47.i.i = select i1 %tobool26.not.i.i, i32 %sub31.i.i, i32 0
  %30 = getelementptr inbounds %struct.ddr_device_info, ptr %call.i114.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink47.i.i, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_width.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %density.i.i) #7
  %32 = ptrtoint ptr %device_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_info.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_type.i, align 4
  %ip_rev32.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i113.i, i32 0, i32 6
  %38 = ptrtoint ptr %ip_rev32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ip_rev32.i, align 4
  %40 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev10.i, align 4
  %type.off.i.i = add i32 %35, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i.i)
  %switch.i.i = icmp ult i32 %type.off.i.i, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i, label %of_get_ddr_info.exit.i.land.end8.i.i_crit_edge

of_get_ddr_info.exit.i.land.end8.i.i_crit_edge:   ; preds = %of_get_ddr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end8.i.i

land.lhs.true.i.i:                                ; preds = %of_get_ddr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_width.i = getelementptr inbounds %struct.ddr_device_info, ptr %33, i32 0, i32 2
  %42 = ptrtoint ptr %io_width.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_width.i, align 4
  %density.i = getelementptr inbounds %struct.ddr_device_info, ptr %33, i32 0, i32 1
  %44 = ptrtoint ptr %density.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %density.i, align 4
  %46 = add i32 %45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %47 = icmp ult i32 %46, 8
  %48 = add i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %49 = icmp ult i32 %48, 3
  %50 = and i1 %49, %47
  br label %land.end8.i.i

land.end8.i.i:                                    ; preds = %land.lhs.true.i.i, %of_get_ddr_info.exit.i.land.end8.i.i_crit_edge
  %51 = phi i1 [ false, %of_get_ddr_info.exit.i.land.end8.i.i_crit_edge ], [ %50, %land.lhs.true.i.i ]
  %52 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %land.end8.i.i.do.end39.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb13.i.i
  ]

land.end8.i.i.do.end39.i_crit_edge:               ; preds = %land.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

sw.bb.i.i:                                        ; preds = %land.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp10.i.i = icmp eq i32 %37, 1
  br i1 %51, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %sw.bb.i.i.do.end39.i_crit_edge

sw.bb.i.i.do.end39.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %land.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp16.i.i = icmp eq i32 %37, 2
  br i1 %51, label %sw.bb13.i.i.sw.epilog.i.i_crit_edge, label %sw.bb13.i.i.do.end39.i_crit_edge

sw.bb13.i.i.do.end39.i_crit_edge:                 ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

sw.bb13.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb13.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %valid.0.in.i.i = phi i1 [ %cmp16.i.i, %sw.bb13.i.i.sw.epilog.i.i_crit_edge ], [ %cmp10.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  br i1 %valid.0.in.i.i, label %if.end40.i, label %sw.epilog.i.i.do.end39.i_crit_edge

sw.epilog.i.i.do.end39.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end39.i:                                       ; preds = %sw.epilog.i.i.do.end39.i_crit_edge, %sw.bb13.i.i.do.end39.i_crit_edge, %sw.bb.i.i.do.end39.i_crit_edge, %land.end8.i.i.do.end39.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10) #10
  br label %if.end.thread151

if.end40.i:                                       ; preds = %sw.epilog.i.i
  %53 = load ptr, ptr @emif1, align 4
  %tobool41.not.i = icmp eq ptr %53, null
  br i1 %tobool41.not.i, label %if.end40.i.if.end52.i_crit_edge, label %land.lhs.true.i

if.end40.i.if.end52.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

land.lhs.true.i:                                  ; preds = %if.end40.i
  %np_ddr42.i = getelementptr inbounds %struct.emif_data, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %np_ddr42.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %np_ddr42.i, align 4
  %cmp.i = icmp eq ptr %55, %5
  br i1 %cmp.i, label %if.then43.i, label %do.end49.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call.i112.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %call.i112.i, align 4
  br label %if.end

do.end49.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end49.i, %if.end40.i.if.end52.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i119.i) #7
  %57 = ptrtoint ptr %len.i119.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %len.i119.i, align 4, !annotation !212
  %call.i120.i = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %len.i119.i) #7
  %call1.i121.i = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %len.i119.i) #7
  %tobool.not.i122.i = icmp eq ptr %call.i120.i, null
  %tobool2.not.i123.i = icmp eq ptr %call1.i121.i, null
  %or.cond.i.i = select i1 %tobool.not.i122.i, i1 %tobool2.not.i123.i, i1 false
  br i1 %or.cond.i.i, label %if.end52.i.of_get_custom_configs.exit.i_crit_edge, label %if.end.i125.i

if.end52.i.of_get_custom_configs.exit.i_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_custom_configs.exit.i

if.end.i125.i:                                    ; preds = %if.end52.i
  %call.i.i124.i = call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 24, i32 noundef 3520) #7
  %tobool4.not.i.i = icmp eq ptr %call.i.i124.i, null
  br i1 %tobool4.not.i.i, label %if.end.i125.i.of_get_custom_configs.exit.i_crit_edge, label %if.end6.i.i

if.end.i125.i.of_get_custom_configs.exit.i_crit_edge: ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_custom_configs.exit.i

if.end6.i.i:                                      ; preds = %if.end.i125.i
  br i1 %tobool.not.i122.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %call.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call.i.i124.i, align 4
  %or.i.i = or i32 %59, 1
  store i32 %or.i.i, ptr %call.i.i124.i, align 4
  %60 = ptrtoint ptr %call.i120.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i120.i, align 4
  %lpmode10.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 1
  %62 = ptrtoint ptr %lpmode10.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %lpmode10.i.i, align 4
  %lpmode_timeout_performance.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 2
  %call.i.i.i126.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %lpmode_timeout_performance.i.i, i32 noundef 1, i32 noundef 0) #7
  %lpmode_timeout_power.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 3
  %call.i.i59.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, ptr noundef %lpmode_timeout_power.i.i, i32 noundef 1, i32 noundef 0) #7
  %lpmode_freq_threshold.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 4
  %call.i.i60.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.35, ptr noundef %lpmode_freq_threshold.i.i, i32 noundef 1, i32 noundef 0) #7
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end14.i.i_crit_edge
  br i1 %tobool2.not.i123.i, label %if.end14.i.i.if.end20.i.i_crit_edge, label %if.then16.i.i

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i.i124.i, align 4
  %or18.i.i = or i32 %64, 2
  store i32 %or18.i.i, ptr %call.i.i124.i, align 4
  %65 = ptrtoint ptr %call1.i121.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call1.i121.i, align 4
  %temp_alert_poll_interval_ms.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 5
  %67 = ptrtoint ptr %temp_alert_poll_interval_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %temp_alert_poll_interval_ms.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end20.i.i_crit_edge
  %call21.i.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %len.i119.i) #7
  %tobool22.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end26.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i.i124.i, align 4
  %or25.i.i = or i32 %69, 4
  store i32 %or25.i.i, ptr %call.i.i124.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %if.end20.i.i.if.end26.i.i_crit_edge
  %70 = ptrtoint ptr %call.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call.i.i124.i, align 4
  %and.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end26.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end26.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end26.i.i
  %lpmode.i.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 1
  %72 = ptrtoint ptr %lpmode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lpmode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.not.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %lpmode_freq_threshold.i.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 4
  %74 = ptrtoint ptr %lpmode_freq_threshold.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lpmode_freq_threshold.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true2.i.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true2.i.i.i:                             ; preds = %if.then.i.i.i
  %lpmode_timeout_performance.i.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 2
  %76 = ptrtoint ptr %lpmode_timeout_performance.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lpmode_timeout_performance.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool3.not.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true2.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

land.lhs.true2.i.i.i.if.end.i.i.i_crit_edge:      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lpmode_timeout_power.i.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 3
  %78 = ptrtoint ptr %lpmode_timeout_power.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lpmode_timeout_power.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool4.i.i.i = icmp ne i32 %79, 0
  %phi.cast26.i.i.i = zext i1 %tobool4.i.i.i to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.rhs.i.i.i, %land.lhs.true2.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end26.i.i.if.end.i.i.i_crit_edge
  %valid.0.i.i.i = phi i32 [ 1, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ], [ 1, %if.end26.i.i.if.end.i.i.i_crit_edge ], [ 0, %land.lhs.true2.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %if.then.i.i.i.if.end.i.i.i_crit_edge ], [ %phi.cast26.i.i.i, %land.rhs.i.i.i ]
  %and6.i.i.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge, label %if.then8.i.i.i

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.0.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %valid.0.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then8.i.i.i.if.then30.i.i_crit_edge, label %land.rhs10.i.i.i

if.then8.i.i.i.if.then30.i.i_crit_edge:           ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i

land.rhs10.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_alert_poll_interval_ms.i.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %call.i.i124.i, i32 0, i32 5
  %80 = ptrtoint ptr %temp_alert_poll_interval_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %temp_alert_poll_interval_ms.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool11.i.i.i = icmp ne i32 %81, 0
  %phi.cast.i.i.i = zext i1 %tobool11.i.i.i to i32
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %land.rhs10.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %valid.1.i.i.i = phi i32 [ %valid.0.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge ], [ %phi.cast.i.i.i, %land.rhs10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.1.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %valid.1.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end14.i.i.i.if.then30.i.i_crit_edge, label %if.end32.i.i

if.end14.i.i.i.if.then30.i.i_crit_edge:           ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end14.i.i.i.if.then30.i.i_crit_edge, %if.then8.i.i.i.if.then30.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #10
  call void @devm_kfree(ptr noundef %41, ptr noundef nonnull %call.i.i124.i) #7
  br label %of_get_custom_configs.exit.i

if.end32.i.i:                                     ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %plat_data.i, align 4
  %custom_configs.i.i = getelementptr inbounds %struct.emif_platform_data, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %custom_configs.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i124.i, ptr %custom_configs.i.i, align 4
  br label %of_get_custom_configs.exit.i

of_get_custom_configs.exit.i:                     ; preds = %if.end32.i.i, %if.then30.i.i, %if.end.i125.i.of_get_custom_configs.exit.i_crit_edge, %if.end52.i.of_get_custom_configs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i119.i) #7
  %85 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %plat_data.i, align 4
  %device_info55.i = getelementptr inbounds %struct.emif_platform_data, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %device_info55.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device_info55.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %timings_arr_size.i = getelementptr inbounds %struct.emif_platform_data, ptr %86, i32 0, i32 3
  %call58.i = call ptr @of_get_ddr_timings(ptr noundef nonnull %5, ptr noundef %41, i32 noundef %90, ptr noundef %timings_arr_size.i) #7
  %timings.i = getelementptr inbounds %struct.emif_platform_data, ptr %86, i32 0, i32 2
  %91 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call58.i, ptr %timings.i, align 4
  %call61.i = call ptr @of_get_min_tck(ptr noundef nonnull %5, ptr noundef %41) #7
  %min_tck.i = getelementptr inbounds %struct.emif_platform_data, ptr %86, i32 0, i32 4
  %92 = ptrtoint ptr %min_tck.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call61.i, ptr %min_tck.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %93 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i55 = icmp eq ptr %94, null
  br i1 %tobool.not.i55, label %if.else.do.end.i71_crit_edge, label %land.lhs.true.i57

if.else.do.end.i71_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i71

land.lhs.true.i57:                                ; preds = %if.else
  %device_info.i56 = getelementptr inbounds %struct.emif_platform_data, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %device_info.i56 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device_info.i56, align 4
  %tobool3.not.i = icmp eq ptr %96, null
  br i1 %tobool3.not.i, label %land.lhs.true.i57.do.end.i71_crit_edge, label %land.lhs.true4.i

land.lhs.true.i57.do.end.i71_crit_edge:           ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i71

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i57
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %phy_type.i58 = getelementptr inbounds %struct.emif_platform_data, ptr %94, i32 0, i32 7
  %99 = ptrtoint ptr %phy_type.i58 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %phy_type.i58, align 4
  %ip_rev.i = getelementptr inbounds %struct.emif_platform_data, ptr %94, i32 0, i32 6
  %101 = ptrtoint ptr %ip_rev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ip_rev.i, align 4
  %type.off.i.i59 = add i32 %98, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i.i59)
  %switch.i.i60 = icmp ult i32 %type.off.i.i59, 2
  br i1 %switch.i.i60, label %land.lhs.true.i.i63, label %land.lhs.true4.i.land.end8.i.i64_crit_edge

land.lhs.true4.i.land.end8.i.i64_crit_edge:       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end8.i.i64

land.lhs.true.i.i63:                              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_width.i61 = getelementptr inbounds %struct.ddr_device_info, ptr %96, i32 0, i32 2
  %103 = ptrtoint ptr %io_width.i61 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_width.i61, align 4
  %density.i62 = getelementptr inbounds %struct.ddr_device_info, ptr %96, i32 0, i32 1
  %105 = ptrtoint ptr %density.i62 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %density.i62, align 4
  %107 = add i32 %106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %107)
  %108 = icmp ult i32 %107, 8
  %109 = add i32 %104, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %110 = icmp ult i32 %109, 3
  %111 = and i1 %110, %108
  br label %land.end8.i.i64

land.end8.i.i64:                                  ; preds = %land.lhs.true.i.i63, %land.lhs.true4.i.land.end8.i.i64_crit_edge
  %112 = phi i1 [ false, %land.lhs.true4.i.land.end8.i.i64_crit_edge ], [ %111, %land.lhs.true.i.i63 ]
  %113 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %102, label %land.end8.i.i64.is_dev_data_valid.exit.thread.i_crit_edge [
    i32 1, label %sw.bb.i.i66
    i32 2, label %sw.bb13.i.i68
  ]

land.end8.i.i64.is_dev_data_valid.exit.thread.i_crit_edge: ; preds = %land.end8.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_dev_data_valid.exit.thread.i

sw.bb.i.i66:                                      ; preds = %land.end8.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp10.i.i65 = icmp eq i32 %100, 1
  br i1 %112, label %sw.bb.i.i66.sw.epilog.i.i70_crit_edge, label %sw.bb.i.i66.is_dev_data_valid.exit.thread.i_crit_edge

sw.bb.i.i66.is_dev_data_valid.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_dev_data_valid.exit.thread.i

sw.bb.i.i66.sw.epilog.i.i70_crit_edge:            ; preds = %sw.bb.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i70

sw.bb13.i.i68:                                    ; preds = %land.end8.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp16.i.i67 = icmp eq i32 %100, 2
  br i1 %112, label %sw.bb13.i.i68.sw.epilog.i.i70_crit_edge, label %sw.bb13.i.i68.is_dev_data_valid.exit.thread.i_crit_edge

sw.bb13.i.i68.is_dev_data_valid.exit.thread.i_crit_edge: ; preds = %sw.bb13.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_dev_data_valid.exit.thread.i

sw.bb13.i.i68.sw.epilog.i.i70_crit_edge:          ; preds = %sw.bb13.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i70

sw.epilog.i.i70:                                  ; preds = %sw.bb13.i.i68.sw.epilog.i.i70_crit_edge, %sw.bb.i.i66.sw.epilog.i.i70_crit_edge
  %valid.0.in.i.i69 = phi i1 [ %cmp16.i.i67, %sw.bb13.i.i68.sw.epilog.i.i70_crit_edge ], [ %cmp10.i.i65, %sw.bb.i.i66.sw.epilog.i.i70_crit_edge ]
  br i1 %valid.0.in.i.i69, label %if.end.i74, label %sw.epilog.i.i70.is_dev_data_valid.exit.thread.i_crit_edge

sw.epilog.i.i70.is_dev_data_valid.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_dev_data_valid.exit.thread.i

is_dev_data_valid.exit.thread.i:                  ; preds = %sw.epilog.i.i70.is_dev_data_valid.exit.thread.i_crit_edge, %sw.bb13.i.i68.is_dev_data_valid.exit.thread.i_crit_edge, %sw.bb.i.i66.is_dev_data_valid.exit.thread.i_crit_edge, %land.end8.i.i64.is_dev_data_valid.exit.thread.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #10
  br label %do.end.i71

do.end.i71:                                       ; preds = %is_dev_data_valid.exit.thread.i, %land.lhs.true.i57.do.end.i71_crit_edge, %if.else.do.end.i71_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  br label %do.end

if.end.i74:                                       ; preds = %sw.epilog.i.i70
  %call.i.i72 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #7
  %call.i158.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %call.i159.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool12.not.i = icmp eq ptr %call.i.i72, null
  %tobool15.not.i = icmp eq ptr %call.i159.i, null
  %or.cond.i73 = select i1 %tobool12.not.i, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i73, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1029) #10
  br label %do.end

if.end20.i:                                       ; preds = %if.end.i74
  %114 = call ptr @memcpy(ptr %call.i158.i, ptr %94, i32 32)
  %device_info21.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 1
  %115 = ptrtoint ptr %device_info21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device_info21.i, align 4
  %117 = call ptr @memcpy(ptr %call.i159.i, ptr %116, i32 32)
  store ptr %call.i159.i, ptr %device_info21.i, align 4
  %plat_data.i75 = getelementptr inbounds %struct.emif_data, ptr %call.i.i72, i32 0, i32 9
  %118 = ptrtoint ptr %plat_data.i75 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i158.i, ptr %plat_data.i75, align 4
  %dev23.i = getelementptr inbounds %struct.emif_data, ptr %call.i.i72, i32 0, i32 6
  %119 = ptrtoint ptr %dev23.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %dev, ptr %dev23.i, align 4
  %temperature_level.i76 = getelementptr inbounds %struct.emif_data, ptr %call.i.i72, i32 0, i32 1
  %120 = ptrtoint ptr %temperature_level.i76 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %temperature_level.i76, align 1
  %121 = load ptr, ptr @emif1, align 4
  %tobool24.not.i = icmp eq ptr %121, null
  br i1 %tobool24.not.i, label %if.else.thread.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end20.i
  %plat_data25.i = getelementptr inbounds %struct.emif_data, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %plat_data25.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %plat_data25.i, align 4
  %device_info26.i = getelementptr inbounds %struct.emif_platform_data, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %device_info26.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_info26.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %call.i159.i, ptr noundef dereferenceable(32) %125, i32 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i77 = icmp eq i32 %bcmp.i, 0
  %conv.i = zext i1 %cmp.i77 to i8
  %126 = ptrtoint ptr %call.i.i72 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.i, ptr %call.i.i72, align 4
  br i1 %cmp.i77, label %if.then30.i, label %do.end35.i

if.then30.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %timings.i78 = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 2
  %127 = ptrtoint ptr %timings.i78 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %timings.i78, align 4
  %min_tck.i79 = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 4
  %128 = ptrtoint ptr %min_tck.i79 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %min_tck.i79, align 4
  br label %if.end8

if.else.thread.i:                                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %call.i.i72 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %call.i.i72, align 4
  br label %if.end38.i

do.end35.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.40) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end35.i, %if.else.thread.i
  %custom_configs.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 5
  %130 = ptrtoint ptr %custom_configs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %custom_configs.i, align 4
  %tobool39.not.i = icmp eq ptr %131, null
  br i1 %tobool39.not.i, label %if.end38.i.if.end53.i_crit_edge, label %land.lhs.true40.i

if.end38.i.if.end53.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

land.lhs.true40.i:                                ; preds = %if.end38.i
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %and.i.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i80, label %land.lhs.true40.i.if.end.i.i_crit_edge, label %land.lhs.true.i160.i

land.lhs.true40.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i160.i:                             ; preds = %land.lhs.true40.i
  %lpmode.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %131, i32 0, i32 1
  %134 = ptrtoint ptr %lpmode.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %lpmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.not.i.i = icmp eq i32 %135, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i160.i.if.end.i.i_crit_edge, label %if.then.i.i82

land.lhs.true.i160.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i82:                                    ; preds = %land.lhs.true.i160.i
  %lpmode_freq_threshold.i.i81 = getelementptr inbounds %struct.emif_custom_configs, ptr %131, i32 0, i32 4
  %136 = ptrtoint ptr %lpmode_freq_threshold.i.i81 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %lpmode_freq_threshold.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool1.not.i.i = icmp eq i32 %137, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i82.if.end.i.i_crit_edge, label %land.lhs.true2.i.i

if.then.i.i82.if.end.i.i_crit_edge:               ; preds = %if.then.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true2.i.i:                               ; preds = %if.then.i.i82
  %lpmode_timeout_performance.i.i83 = getelementptr inbounds %struct.emif_custom_configs, ptr %131, i32 0, i32 2
  %138 = ptrtoint ptr %lpmode_timeout_performance.i.i83 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %lpmode_timeout_performance.i.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool3.not.i.i = icmp eq i32 %139, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.if.end.i.i_crit_edge, label %land.rhs.i.i

land.lhs.true2.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lpmode_timeout_power.i.i84 = getelementptr inbounds %struct.emif_custom_configs, ptr %131, i32 0, i32 3
  %140 = ptrtoint ptr %lpmode_timeout_power.i.i84 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %lpmode_timeout_power.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool4.i.i = icmp ne i32 %141, 0
  %phi.cast26.i.i = zext i1 %tobool4.i.i to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i, %land.lhs.true2.i.i.if.end.i.i_crit_edge, %if.then.i.i82.if.end.i.i_crit_edge, %land.lhs.true.i160.i.if.end.i.i_crit_edge, %land.lhs.true40.i.if.end.i.i_crit_edge
  %valid.0.i.i = phi i32 [ 1, %land.lhs.true.i160.i.if.end.i.i_crit_edge ], [ 1, %land.lhs.true40.i.if.end.i.i_crit_edge ], [ 0, %land.lhs.true2.i.i.if.end.i.i_crit_edge ], [ 0, %if.then.i.i82.if.end.i.i_crit_edge ], [ %phi.cast26.i.i, %land.rhs.i.i ]
  %and6.i.i = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end14.i.i88_crit_edge, label %if.then8.i.i86

if.end.i.i.if.end14.i.i88_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i88

if.then8.i.i86:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.0.i.i)
  %tobool9.not.i.i85 = icmp eq i32 %valid.0.i.i, 0
  br i1 %tobool9.not.i.i85, label %if.then8.i.i86.is_custom_config_valid.exit.thread.i_crit_edge, label %land.rhs10.i.i

if.then8.i.i86.is_custom_config_valid.exit.thread.i_crit_edge: ; preds = %if.then8.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_custom_config_valid.exit.thread.i

land.rhs10.i.i:                                   ; preds = %if.then8.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  %temp_alert_poll_interval_ms.i.i87 = getelementptr inbounds %struct.emif_custom_configs, ptr %131, i32 0, i32 5
  %142 = ptrtoint ptr %temp_alert_poll_interval_ms.i.i87 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %temp_alert_poll_interval_ms.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool11.i.i = icmp ne i32 %143, 0
  %phi.cast.i.i = zext i1 %tobool11.i.i to i32
  br label %if.end14.i.i88

if.end14.i.i88:                                   ; preds = %land.rhs10.i.i, %if.end.i.i.if.end14.i.i88_crit_edge
  %valid.1.i.i = phi i32 [ %valid.0.i.i, %if.end.i.i.if.end14.i.i88_crit_edge ], [ %phi.cast.i.i, %land.rhs10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.1.i.i)
  %tobool15.not.i.i = icmp eq i32 %valid.1.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i88.is_custom_config_valid.exit.thread.i_crit_edge, label %if.then43.i89

if.end14.i.i88.is_custom_config_valid.exit.thread.i_crit_edge: ; preds = %if.end14.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_custom_config_valid.exit.thread.i

is_custom_config_valid.exit.thread.i:             ; preds = %if.end14.i.i88.is_custom_config_valid.exit.thread.i_crit_edge, %if.then8.i.i86.is_custom_config_valid.exit.thread.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #10
  br label %if.end53.i

if.then43.i89:                                    ; preds = %if.end14.i.i88
  %call.i162.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %tobool45.not.i = icmp eq ptr %call.i162.i, null
  br i1 %tobool45.not.i, label %do.end50.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.then43.i89
  call void @__sanitizer_cov_trace_pc() #9
  %144 = call ptr @memcpy(ptr %call.i162.i, ptr %131, i32 24)
  br label %if.end51.i

do.end50.i:                                       ; preds = %if.then43.i89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1072) #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end50.i, %if.then46.i
  %145 = ptrtoint ptr %custom_configs.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i162.i, ptr %custom_configs.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end51.i, %is_custom_config_valid.exit.thread.i, %if.end38.i.if.end53.i_crit_edge
  %timings_arr_size.i90 = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 3
  %146 = ptrtoint ptr %timings_arr_size.i90 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %timings_arr_size.i90, align 4
  %mul.i = mul i32 %147, 72
  %timings54.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 2
  %148 = ptrtoint ptr %timings54.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %timings54.i, align 4
  %tobool55.not.i = icmp eq ptr %149, null
  br i1 %tobool55.not.i, label %if.else67.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end53.i
  %call.i163.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #7
  %tobool58.not.i = icmp eq ptr %call.i163.i, null
  br i1 %tobool58.not.i, label %do.end65.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %timings54.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %timings54.i, align 4
  %152 = call ptr @memcpy(ptr %call.i163.i, ptr %151, i32 %mul.i)
  store ptr %call.i163.i, ptr %timings54.i, align 4
  br label %if.end68.i

do.end65.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1088) #10
  %153 = ptrtoint ptr %plat_data.i75 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %plat_data.i75, align 4
  %timings.i.i = getelementptr inbounds %struct.emif_platform_data, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @lpddr2_jedec_timings, ptr %timings.i.i, align 4
  %timings_arr_size.i.i = getelementptr inbounds %struct.emif_platform_data, ptr %154, i32 0, i32 3
  %156 = ptrtoint ptr %timings_arr_size.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %timings_arr_size.i.i, align 4
  %157 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #10
  br label %if.end68.i

if.else67.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %plat_data.i75 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %plat_data.i75, align 4
  %timings.i165.i = getelementptr inbounds %struct.emif_platform_data, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %timings.i165.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @lpddr2_jedec_timings, ptr %timings.i165.i, align 4
  %timings_arr_size.i166.i = getelementptr inbounds %struct.emif_platform_data, ptr %160, i32 0, i32 3
  %162 = ptrtoint ptr %timings_arr_size.i166.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 4, ptr %timings_arr_size.i166.i, align 4
  %163 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #10
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else67.i, %do.end65.i, %if.then59.i
  %min_tck69.i = getelementptr inbounds %struct.emif_platform_data, ptr %call.i158.i, i32 0, i32 4
  %165 = ptrtoint ptr %min_tck69.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %min_tck69.i, align 4
  %tobool70.not.i = icmp eq ptr %166, null
  br i1 %tobool70.not.i, label %if.else83.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end68.i
  %call.i168.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %tobool73.not.i = icmp eq ptr %call.i168.i, null
  br i1 %tobool73.not.i, label %do.end80.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %min_tck69.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %min_tck69.i, align 4
  %169 = call ptr @memcpy(ptr %call.i168.i, ptr %168, i32 44)
  store ptr %call.i168.i, ptr %min_tck69.i, align 4
  br label %if.end8

do.end80.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1102) #10
  %170 = ptrtoint ptr %min_tck69.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @lpddr2_jedec_min_tck, ptr %min_tck69.i, align 4
  br label %if.end8

if.else83.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %min_tck69.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @lpddr2_jedec_min_tck, ptr %min_tck69.i, align 4
  br label %if.end8

if.end.thread151:                                 ; preds = %do.end39.i, %do.end.i, %of_parse_phandle.exit.i.if.end.thread151_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br label %do.end

if.end:                                           ; preds = %of_get_custom_configs.exit.i, %if.then43.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br label %if.end8

do.end:                                           ; preds = %if.end.thread151, %do.end19.i, %do.end.i71
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end, %if.else83.i, %do.end80.i, %if.then74.i, %if.then30.i
  %emif.0145 = phi ptr [ %call.i112.i, %if.end ], [ %call.i.i72, %if.else83.i ], [ %call.i.i72, %do.end80.i ], [ %call.i.i72, %if.then74.i ], [ %call.i.i72, %if.then30.i ]
  %node = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 3
  %172 = load ptr, ptr @device_list, align 4
  %call.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @device_list, ptr noundef %172) #7
  br i1 %call.i.i92, label %if.end.i.i93, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i93:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %node, ptr %prev1.i.i, align 4
  %174 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %172, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 3, i32 1
  %175 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @device_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i93, %if.end8.list_add.exit_crit_edge
  %dev10 = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 6
  %176 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %dev, ptr %dev10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %177 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %emif.0145, ptr %driver_data.i.i, align 4
  %call11 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %178 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev10, align 4
  %call13 = call ptr @devm_ioremap_resource(ptr noundef %179, ptr noundef %call11) #7
  %base = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 5
  %180 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call13, ptr %base, align 4
  %cmp.i94 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %list_add.exit.cleanup_crit_edge, label %if.end17

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %list_add.exit
  %call18 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %plat_data.i95 = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 9
  %183 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %plat_data.i95, align 4
  %device_info2.i = getelementptr inbounds %struct.emif_platform_data, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %device_info2.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device_info2.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %density2.i.i = getelementptr inbounds %struct.ddr_device_info, ptr %186, i32 0, i32 1
  %189 = ptrtoint ptr %density2.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %density2.i.i, align 4
  %191 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %188, label %if.end20.get_addressing_table.exit.i_crit_edge [
    i32 3, label %if.end20.sw.epilog7.i.i_crit_edge
    i32 4, label %sw.bb3.i.i
  ]

if.end20.sw.epilog7.i.i_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog7.i.i

if.end20.get_addressing_table.exit.i_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_addressing_table.exit.i

sw.bb3.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %.off.i.i = add i32 %190, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i96 = icmp ult i32 %.off.i.i, 2
  %..i.i = select i1 %switch.i.i96, i32 3, i32 -1
  br label %sw.epilog7.i.i

sw.epilog7.i.i:                                   ; preds = %sw.bb3.i.i, %if.end20.sw.epilog7.i.i_crit_edge
  %.sink.i.i97 = phi i32 [ -1, %if.end20.sw.epilog7.i.i_crit_edge ], [ %..i.i, %sw.bb3.i.i ]
  %add.i.i = add i32 %.sink.i.i97, %190
  %arrayidx.i.i = getelementptr [11 x %struct.lpddr2_addressing], ptr @lpddr2_jedec_addressing_table, i32 0, i32 %add.i.i
  br label %get_addressing_table.exit.i

get_addressing_table.exit.i:                      ; preds = %sw.epilog7.i.i, %if.end20.get_addressing_table.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %sw.epilog7.i.i ], [ null, %if.end20.get_addressing_table.exit.i_crit_edge ]
  %ip_rev.i98 = getelementptr inbounds %struct.emif_platform_data, ptr %184, i32 0, i32 6
  %192 = ptrtoint ptr %ip_rev.i98 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ip_rev.i98, align 4
  %custom_configs.i.i99 = getelementptr inbounds %struct.emif_platform_data, ptr %184, i32 0, i32 5
  %194 = ptrtoint ptr %custom_configs.i.i99 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %custom_configs.i.i99, align 4
  %tobool.not.i.i100 = icmp eq ptr %195, null
  br i1 %tobool.not.i.i100, label %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge, label %land.lhs.true.i.i103

get_addressing_table.exit.i.if.end.thread.i.i_crit_edge: ; preds = %get_addressing_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

land.lhs.true.i.i103:                             ; preds = %get_addressing_table.exit.i
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  %and.i.i101 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool2.not.i.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool2.not.i.i102, label %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge, label %if.end.i.i107

land.lhs.true.i.i103.if.end.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.end.i.i107:                                    ; preds = %land.lhs.true.i.i103
  %lpmode3.i.i = getelementptr inbounds %struct.emif_custom_configs, ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %lpmode3.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %lpmode3.i.i, align 4
  %lpmode_timeout_performance.i.i104 = getelementptr inbounds %struct.emif_custom_configs, ptr %195, i32 0, i32 2
  %200 = ptrtoint ptr %lpmode_timeout_performance.i.i104 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %lpmode_timeout_performance.i.i104, align 4
  %lpmode_timeout_power.i.i105 = getelementptr inbounds %struct.emif_custom_configs, ptr %195, i32 0, i32 3
  %202 = ptrtoint ptr %lpmode_timeout_power.i.i105 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %lpmode_timeout_power.i.i105, align 4
  %lpmode_freq_threshold.i.i106 = getelementptr inbounds %struct.emif_custom_configs, ptr %195, i32 0, i32 4
  %204 = ptrtoint ptr %lpmode_freq_threshold.i.i106 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lpmode_freq_threshold.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000001, i32 %205)
  %cmp.i.i = icmp ult i32 %205, 1000000001
  br i1 %cmp.i.i, label %if.end.i.i107.if.end.thread.i.i_crit_edge, label %if.end.i.i107._crit_edge

if.end.i.i107._crit_edge:                         ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %206

if.end.i.i107.if.end.thread.i.i_crit_edge:        ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %if.end.i.i107.if.end.thread.i.i_crit_edge, %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge, %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge
  %freq_threshold.014.i.i = phi i32 [ %205, %if.end.i.i107.if.end.thread.i.i_crit_edge ], [ 400000000, %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge ], [ 400000000, %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge ]
  %timeout_pwr.012.i.i = phi i32 [ %203, %if.end.i.i107.if.end.thread.i.i_crit_edge ], [ 512, %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge ], [ 512, %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge ]
  %timeout_perf.010.i.i = phi i32 [ %201, %if.end.i.i107.if.end.thread.i.i_crit_edge ], [ 2048, %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge ], [ 2048, %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge ]
  %lpmode.08.i.i = phi i32 [ %199, %if.end.i.i107.if.end.thread.i.i_crit_edge ], [ 2, %land.lhs.true.i.i103.if.end.thread.i.i_crit_edge ], [ 2, %get_addressing_table.exit.i.if.end.thread.i.i_crit_edge ]
  br label %206

206:                                              ; preds = %if.end.thread.i.i, %if.end.i.i107._crit_edge
  %freq_threshold.013.i.i = phi i32 [ %freq_threshold.014.i.i, %if.end.thread.i.i ], [ %205, %if.end.i.i107._crit_edge ]
  %timeout_pwr.011.i.i = phi i32 [ %timeout_pwr.012.i.i, %if.end.thread.i.i ], [ %203, %if.end.i.i107._crit_edge ]
  %timeout_perf.09.i.i = phi i32 [ %timeout_perf.010.i.i, %if.end.thread.i.i ], [ %201, %if.end.i.i107._crit_edge ]
  %lpmode.07.i.i = phi i32 [ %lpmode.08.i.i, %if.end.thread.i.i ], [ %199, %if.end.i.i107._crit_edge ]
  %207 = phi i32 [ %timeout_perf.010.i.i, %if.end.thread.i.i ], [ %203, %if.end.i.i107._crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %207)
  %cmp4.i.i = icmp ult i32 %207, 16
  br i1 %cmp4.i.i, label %.if.end11.i.i_crit_edge, label %if.else.i.i109

.if.end11.i.i_crit_edge:                          ; preds = %206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.else.i.i109:                                   ; preds = %206
  call void @__sanitizer_cov_trace_pc() #9
  %208 = call i32 @llvm.ctpop.i32(i32 %207) #7, !range !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %208)
  %tobool7.not.i.i108 = icmp ugt i32 %208, 1
  %shl.i.i = zext i1 %tobool7.not.i.i108 to i32
  %spec.select.i.i = shl i32 %207, %shl.i.i
  %209 = call i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false) #7, !range !213
  %sub10.i.i = sub nsw i32 28, %209
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i109, %.if.end11.i.i_crit_edge
  %timeout.1.i.i = phi i32 [ %sub10.i.i, %if.else.i.i109 ], [ 0, %.if.end11.i.i_crit_edge ]
  %210 = zext i32 %lpmode.07.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %lpmode.07.i.i, label %land.lhs.true19.fold.split.i.i [
    i32 1, label %if.end11.i.i.land.lhs.true19.i.i_crit_edge
    i32 2, label %sw.bb12.i.i
    i32 4, label %sw.bb16.i.i
    i32 0, label %if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge
  ]

if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_pwr_mgmt_ctrl.exit.i

if.end11.i.i.land.lhs.true19.i.i_crit_edge:       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19.i.i

sw.bb12.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %211 = call i32 @llvm.umax.i32(i32 %timeout.1.i.i, i32 6) #7
  br label %land.lhs.true19.i.i

sw.bb16.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19.i.i

land.lhs.true19.fold.split.i.i:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true19.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true19.fold.split.i.i, %sw.bb16.i.i, %sw.bb12.i.i, %if.end11.i.i.land.lhs.true19.i.i_crit_edge
  %timeout.223.i.i = phi i32 [ %timeout.1.i.i, %if.end11.i.i.land.lhs.true19.i.i_crit_edge ], [ %211, %sw.bb12.i.i ], [ %timeout.1.i.i, %sw.bb16.i.i ], [ %timeout.1.i.i, %land.lhs.true19.fold.split.i.i ]
  %shift.021.i.i = phi i32 [ 0, %if.end11.i.i.land.lhs.true19.i.i_crit_edge ], [ 4, %sw.bb12.i.i ], [ 12, %sw.bb16.i.i ], [ 0, %land.lhs.true19.fold.split.i.i ]
  %mask.019.i.i = phi i32 [ 15, %if.end11.i.i.land.lhs.true19.i.i_crit_edge ], [ 240, %sw.bb12.i.i ], [ 61440, %sw.bb16.i.i ], [ 0, %land.lhs.true19.fold.split.i.i ]
  %shr.i.i = lshr i32 %mask.019.i.i, %shift.021.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %timeout.223.i.i, i32 %shr.i.i)
  %cmp20.i.i = icmp ugt i32 %timeout.223.i.i, %shr.i.i
  br i1 %cmp20.i.i, label %do.end.i.i, label %land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge

land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge: ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_pwr_mgmt_ctrl.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %lpmode.07.i.i, i32 noundef %timeout_perf.09.i.i, i32 noundef %timeout_pwr.011.i.i, i32 noundef %freq_threshold.013.i.i) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 436, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %timeout.223.i.i, i32 noundef %shr.i.i) #7
  br label %get_pwr_mgmt_ctrl.exit.i

get_pwr_mgmt_ctrl.exit.i:                         ; preds = %do.end.i.i, %land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge, %if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge
  %shift.022.i.i = phi i32 [ %shift.021.i.i, %do.end.i.i ], [ %shift.021.i.i, %land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ], [ %lpmode.07.i.i, %if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ]
  %mask.020.i.i = phi i32 [ %mask.019.i.i, %do.end.i.i ], [ %mask.019.i.i, %land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ], [ %lpmode.07.i.i, %if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ]
  %timeout.3.i.i = phi i32 [ %shr.i.i, %do.end.i.i ], [ %timeout.223.i.i, %land.lhs.true19.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ], [ %timeout.1.i.i, %if.end11.i.i.get_pwr_mgmt_ctrl.exit.i_crit_edge ]
  %shl51.i.i = shl i32 %timeout.3.i.i, %shift.022.i.i
  %and52.i.i = and i32 %shl51.i.i, %mask.020.i.i
  %and53.i.i = xor i32 %mask.020.i.i, 61695
  %or.i.i110 = or i32 %and52.i.i, %and53.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp54.i.i = icmp eq i32 %193, 2
  %and57.i.i = and i32 %or.i.i110, 61680
  %spec.select1.i.i = select i1 %cmp54.i.i, i32 %and57.i.i, i32 %or.i.i110
  %shl59.i.i = shl i32 %lpmode.07.i.i, 8
  %or60.i.i = or i32 %spec.select1.i.i, %shl59.i.i
  %and.i = lshr i32 %or60.i.i, 8
  %212 = trunc i32 %and.i to i8
  %conv.i111 = and i8 %212, 7
  %lpmode.i = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 2
  %213 = ptrtoint ptr %lpmode.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv.i111, ptr %lpmode.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  call void @arm_heavy_mb() #7
  %214 = call i32 @llvm.bswap.i32(i32 %or60.i.i) #7
  %add.ptr.i = getelementptr i8, ptr %182, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %214) #7, !srcloc !215
  %cs1_used.i = getelementptr inbounds %struct.ddr_device_info, ptr %186, i32 0, i32 3
  %215 = ptrtoint ptr %cs1_used.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cs1_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.not.i112 = icmp eq i32 %216, 0
  %cal_resistors_per_cs.i = getelementptr inbounds %struct.ddr_device_info, ptr %186, i32 0, i32 4
  %217 = ptrtoint ptr %cal_resistors_per_cs.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cal_resistors_per_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool5.not.i113 = icmp eq i32 %218, 0
  %tREFI_ns.i.i = getelementptr inbounds %struct.lpddr2_addressing, ptr %retval.0.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %tREFI_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %tREFI_ns.i.i, align 4
  %div.i.i = udiv i32 50000000, %220
  %zq.0.v.i.i = select i1 %tobool5.not.i113, i32 269156352, i32 806027264
  %zq.0.i.i = select i1 %tobool.not.i112, i32 1073741824, i32 -1073741824
  %or9.i.i = or i32 %zq.0.v.i.i, %zq.0.i.i
  %or12.i.i = or i32 %or9.i.i, %div.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  call void @arm_heavy_mb() #7
  %221 = call i32 @llvm.bswap.i32(i32 %or12.i.i) #7
  %add.ptr10.i = getelementptr i8, ptr %182, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %221) #7, !srcloc !215
  %222 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %223, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #7, !srcloc !215
  %add.ptr2.i.i = getelementptr i8, ptr %223, i32 64
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !218
  %225 = lshr i32 %224, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %and.i158.i = and i32 %225, 7
  %226 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %plat_data.i95, align 4
  %device_info.i.i = getelementptr inbounds %struct.emif_platform_data, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %device_info.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %device_info.i.i, align 4
  %cs1_used.i.i114 = getelementptr inbounds %struct.ddr_device_info, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %cs1_used.i.i114 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cs1_used.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not.i160.i = icmp eq i32 %231, 0
  br i1 %tobool.not.i160.i, label %get_pwr_mgmt_ctrl.exit.i.if.end.i161.i_crit_edge, label %do.body4.i.i

get_pwr_mgmt_ctrl.exit.i.if.end.i161.i_crit_edge: ; preds = %get_pwr_mgmt_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i161.i

do.body4.i.i:                                     ; preds = %get_pwr_mgmt_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108992) #7, !srcloc !215
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !218
  %233 = lshr i32 %232, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  %and14.i.i = and i32 %233, 7
  %234 = call i32 @llvm.umax.i32(i32 %and14.i.i, i32 %and.i158.i) #7
  br label %if.end.i161.i

if.end.i161.i:                                    ; preds = %do.body4.i.i, %get_pwr_mgmt_ctrl.exit.i.if.end.i161.i_crit_edge
  %temperature_level.0.i.i = phi i32 [ %234, %do.body4.i.i ], [ %and.i158.i, %get_pwr_mgmt_ctrl.exit.i.if.end.i161.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %temperature_level.0.i.i)
  %cmp17.i.i = icmp ult i32 %temperature_level.0.i.i, 3
  br i1 %cmp17.i.i, label %if.end.i161.i.if.then29.i.i_crit_edge, label %if.end21.i.i, !prof !222

if.end.i161.i.if.then29.i.i_crit_edge:            ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.end21.i.i:                                     ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %temperature_level.0.i.i)
  %cmp22.not.i.i = icmp eq i32 %temperature_level.0.i.i, 4
  br i1 %cmp22.not.i.i, label %if.end21.i.i.get_temperature_level.exit.i_crit_edge, label %if.end21.i.i.if.then29.i.i_crit_edge, !prof !222

if.end21.i.i.if.then29.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.end21.i.i.get_temperature_level.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temperature_level.exit.i

if.then29.i.i:                                    ; preds = %if.end21.i.i.if.then29.i.i_crit_edge, %if.end.i161.i.if.then29.i.i_crit_edge
  %temperature_level.146.i.i = phi i32 [ %temperature_level.0.i.i, %if.end21.i.i.if.then29.i.i_crit_edge ], [ 3, %if.end.i161.i.if.then29.i.i_crit_edge ]
  %conv.i.i = trunc i32 %temperature_level.146.i.i to i8
  %temperature_level30.i.i = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 1
  %235 = ptrtoint ptr %temperature_level30.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv.i.i, ptr %temperature_level30.i.i, align 1
  br label %get_temperature_level.exit.i

get_temperature_level.exit.i:                     ; preds = %if.then29.i.i, %if.end21.i.i.get_temperature_level.exit.i_crit_edge
  %temperature_level.i115 = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 1
  %236 = ptrtoint ptr %temperature_level.i115 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %temperature_level.i115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %237)
  %cmp.i116 = icmp eq i8 %237, 7
  br i1 %cmp.i116, label %do.end15.i, label %get_temperature_level.exit.i.if.end.i119_crit_edge

get_temperature_level.exit.i.if.end.i119_crit_edge: ; preds = %get_temperature_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i119

do.end15.i:                                       ; preds = %get_temperature_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %238 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %239, ptr noundef nonnull @.str.54) #10
  br label %if.end.i119

if.end.i119:                                      ; preds = %do.end15.i, %get_temperature_level.exit.i.if.end.i119_crit_edge
  %240 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %plat_data.i95, align 4
  %custom_configs.i117 = getelementptr inbounds %struct.emif_platform_data, ptr %241, i32 0, i32 5
  %242 = ptrtoint ptr %custom_configs.i117 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %custom_configs.i117, align 4
  %244 = ptrtoint ptr %cs1_used.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %cs1_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool18.not.i = icmp eq i32 %245, 0
  %io_width.i118 = getelementptr inbounds %struct.ddr_device_info, ptr %186, i32 0, i32 2
  %246 = ptrtoint ptr %io_width.i118 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %io_width.i118, align 4
  %248 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %base, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %249, i32 8
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163.i) #7, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  %251 = and i32 %250, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp.i164.i = icmp eq i32 %251, 0
  %tobool.not.i165.i = icmp eq ptr %243, null
  br i1 %tobool.not.i165.i, label %if.end.i119.get_temp_alert_config.exit.i_crit_edge, label %land.lhs.true.i167.i

if.end.i119.get_temp_alert_config.exit.i_crit_edge: ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temp_alert_config.exit.i

land.lhs.true.i167.i:                             ; preds = %if.end.i119
  %252 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %243, align 4
  %and.i166.i = and i32 %253, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166.i)
  %tobool1.not.i.i120 = icmp eq i32 %and.i166.i, 0
  br i1 %tobool1.not.i.i120, label %land.lhs.true.i167.i.get_temp_alert_config.exit.i_crit_edge, label %if.then.i.i122

land.lhs.true.i167.i.get_temp_alert_config.exit.i_crit_edge: ; preds = %land.lhs.true.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temp_alert_config.exit.i

if.then.i.i122:                                   ; preds = %land.lhs.true.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_alert_poll_interval_ms.i.i121 = getelementptr inbounds %struct.emif_custom_configs, ptr %243, i32 0, i32 5
  %254 = ptrtoint ptr %temp_alert_poll_interval_ms.i.i121 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %temp_alert_poll_interval_ms.i.i121, align 4
  %phi.bo.i.i = mul i32 %255, 1000000
  br label %get_temp_alert_config.exit.i

get_temp_alert_config.exit.i:                     ; preds = %if.then.i.i122, %land.lhs.true.i167.i.get_temp_alert_config.exit.i_crit_edge, %if.end.i119.get_temp_alert_config.exit.i_crit_edge
  %interval.0.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i122 ], [ 360000000, %land.lhs.true.i167.i.get_temp_alert_config.exit.i_crit_edge ], [ 360000000, %if.end.i119.get_temp_alert_config.exit.i_crit_edge ]
  %256 = ptrtoint ptr %tREFI_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tREFI_ns.i.i, align 4
  %div.i169.i = udiv i32 %interval.0.i.i, %257
  %.neg.i = select i1 %cmp.i164.i, i32 230, i32 229
  %.neg173.i = sub i32 %.neg.i, %247
  %.neg.i.i = shl i32 %.neg173.i, 24
  %shl3.i.i = add i32 %.neg.i.i, 503316480
  %sub5.i.i = shl i32 %247, 26
  %shl6.i.i = add i32 %sub5.i.i, -134217728
  %or4.i.i = select i1 %tobool18.not.i, i32 1342177280, i32 -805306368
  %or7.i.i = or i32 %shl6.i.i, %or4.i.i
  %or9.i170.i = or i32 %or7.i.i, %shl3.i.i
  %or12.i171.i = or i32 %or9.i170.i, %div.i169.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  call void @arm_heavy_mb() #7
  %258 = call i32 @llvm.bswap.i32(i32 %or12.i171.i) #7
  %add.ptr24.i = getelementptr i8, ptr %182, i32 204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %258) #7, !srcloc !215
  %259 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %plat_data.i95, align 4
  %phy_type.i123 = getelementptr inbounds %struct.emif_platform_data, ptr %260, i32 0, i32 7
  %261 = ptrtoint ptr %phy_type.i123 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %phy_type.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %262)
  %cmp26.not.i = icmp eq i32 %262, 2
  br i1 %cmp26.not.i, label %do.body30.i, label %get_temp_alert_config.exit.i.emif_onetime_settings.exit_crit_edge

get_temp_alert_config.exit.i.emif_onetime_settings.exit_crit_edge: ; preds = %get_temp_alert_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emif_onetime_settings.exit

do.body30.i:                                      ; preds = %get_temp_alert_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  call void @arm_heavy_mb() #7
  %add.ptr33.i = getelementptr i8, ptr %182, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 -2147483132) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  call void @arm_heavy_mb() #7
  %add.ptr37.i = getelementptr i8, ptr %182, i32 548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 1073742084) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  call void @arm_heavy_mb() #7
  %add.ptr41.i = getelementptr i8, ptr %182, i32 556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 272629761) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %add.ptr45.i = getelementptr i8, ptr %182, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 68157440) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  %add.ptr49.i = getelementptr i8, ptr %182, i32 572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 1073742084) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  call void @arm_heavy_mb() #7
  %add.ptr53.i = getelementptr i8, ptr %182, i32 580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 272629761) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  call void @arm_heavy_mb() #7
  %add.ptr57.i = getelementptr i8, ptr %182, i32 588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 68157440) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  call void @arm_heavy_mb() #7
  %add.ptr61.i = getelementptr i8, ptr %182, i32 596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @arm_heavy_mb() #7
  %add.ptr65.i = getelementptr i8, ptr %182, i32 604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  call void @arm_heavy_mb() #7
  %add.ptr69.i = getelementptr i8, ptr %182, i32 612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  call void @arm_heavy_mb() #7
  %add.ptr73.i = getelementptr i8, ptr %182, i32 620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 -2147481472) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  call void @arm_heavy_mb() #7
  %add.ptr77.i = getelementptr i8, ptr %182, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 557056) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  call void @arm_heavy_mb() #7
  %add.ptr81.i = getelementptr i8, ptr %182, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 1075843080) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  call void @arm_heavy_mb() #7
  %add.ptr85.i = getelementptr i8, ptr %182, i32 644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 16777216) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  call void @arm_heavy_mb() #7
  %add.ptr89.i = getelementptr i8, ptr %182, i32 652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 1350634068) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  call void @arm_heavy_mb() #7
  %add.ptr93.i = getelementptr i8, ptr %182, i32 660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 -1610476120) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  call void @arm_heavy_mb() #7
  %add.ptr97.i = getelementptr i8, ptr %182, i32 668
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 1074080256) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  call void @arm_heavy_mb() #7
  %add.ptr101.i = getelementptr i8, ptr %182, i32 676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  call void @arm_heavy_mb() #7
  %add.ptr105.i = getelementptr i8, ptr %182, i32 684
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @arm_heavy_mb() #7
  %add.ptr109.i = getelementptr i8, ptr %182, i32 692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 0) #7, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %add.ptr113.i = getelementptr i8, ptr %182, i32 700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 1996488704) #7, !srcloc !215
  br label %emif_onetime_settings.exit

emif_onetime_settings.exit:                       ; preds = %do.body30.i, %get_temp_alert_config.exit.i.emif_onetime_settings.exit_crit_edge
  %263 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev10, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %264, i32 0, i32 3
  %265 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i125 = icmp eq ptr %266, null
  br i1 %tobool.not.i.i125, label %if.end.i.i126, label %emif_onetime_settings.exit.emif_debugfs_init.exit_crit_edge

emif_onetime_settings.exit.emif_debugfs_init.exit_crit_edge: ; preds = %emif_onetime_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %emif_debugfs_init.exit

if.end.i.i126:                                    ; preds = %emif_onetime_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  %267 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %264, align 4
  br label %emif_debugfs_init.exit

emif_debugfs_init.exit:                           ; preds = %if.end.i.i126, %emif_onetime_settings.exit.emif_debugfs_init.exit_crit_edge
  %retval.0.i.i127 = phi ptr [ %268, %if.end.i.i126 ], [ %266, %emif_onetime_settings.exit.emif_debugfs_init.exit_crit_edge ]
  %call1.i = call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i127, ptr noundef null) #7
  %debugfs_root.i = getelementptr inbounds %struct.emif_data, ptr %emif.0145, i32 0, i32 10
  %269 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call1.i, ptr %debugfs_root.i, align 4
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef nonnull %emif.0145, ptr noundef nonnull @emif_regdump_fops) #7
  %270 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %debugfs_root.i, align 4
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext 292, ptr noundef %271, ptr noundef nonnull %emif.0145, ptr noundef nonnull @emif_mr4_fops) #7
  call fastcc void @disable_and_clear_all_interrupts(ptr noundef nonnull %emif.0145)
  %272 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base, align 4
  %274 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %plat_data.i95, align 4
  %device_info.i130 = getelementptr inbounds %struct.emif_platform_data, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %device_info.i130 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %device_info.i130, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  call void @arm_heavy_mb() #7
  %add.ptr.i.i131 = getelementptr i8, ptr %273, i32 172
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i131) #7, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131, i32 %280) #7, !srcloc !215
  %281 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %plat_data.i95, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %282, align 4
  %and.i.i132 = and i32 %284, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i133 = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i133, label %emif_debugfs_init.exit.clear_all_interrupts.exit.i_crit_edge, label %do.body4.i.i134

emif_debugfs_init.exit.clear_all_interrupts.exit.i_crit_edge: ; preds = %emif_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_all_interrupts.exit.i

do.body4.i.i134:                                  ; preds = %emif_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  call void @arm_heavy_mb() #7
  %add.ptr9.i.i = getelementptr i8, ptr %273, i32 176
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %285) #7, !srcloc !215
  br label %clear_all_interrupts.exit.i

clear_all_interrupts.exit.i:                      ; preds = %do.body4.i.i134, %emif_debugfs_init.exit.clear_all_interrupts.exit.i_crit_edge
  %.off.i = add i32 %279, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select.i = select i1 %switch.i, i32 50331648, i32 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  call void @arm_heavy_mb() #7
  %add.ptr.i135 = getelementptr i8, ptr %273, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %spec.select.i) #7, !srcloc !215
  %286 = ptrtoint ptr %plat_data.i95 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %plat_data.i95, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %and.i136 = and i32 %289, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %clear_all_interrupts.exit.i.if.end10.i_crit_edge, label %if.then5.i

clear_all_interrupts.exit.i.if.end10.i_crit_edge: ; preds = %clear_all_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then5.i:                                       ; preds = %clear_all_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  call void @arm_heavy_mb() #7
  %add.ptr9.i = getelementptr i8, ptr %273, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 16777216) #7, !srcloc !215
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %clear_all_interrupts.exit.i.if.end10.i_crit_edge
  %290 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev10, align 4
  %init_name.i.i139 = getelementptr inbounds %struct.device, ptr %291, i32 0, i32 3
  %292 = ptrtoint ptr %init_name.i.i139 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %init_name.i.i139, align 8
  %tobool.not.i1.i = icmp eq ptr %293, null
  br i1 %tobool.not.i1.i, label %if.end.i.i140, label %if.end10.i.setup_interrupts.exit_crit_edge

if.end10.i.setup_interrupts.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_interrupts.exit

if.end.i.i140:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %294 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %291, align 4
  br label %setup_interrupts.exit

setup_interrupts.exit:                            ; preds = %if.end.i.i140, %if.end10.i.setup_interrupts.exit_crit_edge
  %retval.0.i.i141 = phi ptr [ %295, %if.end.i.i140 ], [ %293, %if.end10.i.setup_interrupts.exit_crit_edge ]
  %call12.i142 = call i32 @devm_request_threaded_irq(ptr noundef %291, i32 noundef %call18, ptr noundef nonnull @emif_interrupt_handler, ptr noundef nonnull @emif_threaded_isr, i32 noundef 0, ptr noundef %retval.0.i.i141, ptr noundef nonnull %emif.0145) #7
  %296 = load ptr, ptr @emif1, align 4
  %tobool23.not = icmp eq ptr %296, null
  br i1 %tobool23.not, label %if.then24, label %setup_interrupts.exit.do.end28_crit_edge

setup_interrupts.exit.do.end28_crit_edge:         ; preds = %setup_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.then24:                                        ; preds = %setup_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %emif.0145, ptr @emif1, align 4
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %setup_interrupts.exit.do.end28_crit_edge
  %297 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %298, i32 noundef %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end17.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -19, %if.end17.cleanup_crit_edge ], [ -19, %list_add.exit.cleanup_crit_edge ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_and_clear_all_interrupts(ptr nocapture noundef readonly %emif) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 5
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  %add.ptr3 = getelementptr i8, ptr %1, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !215
  %plat_data = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 9
  %3 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %add.ptr9 = getelementptr i8, ptr %1, i32 184
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  %add.ptr13 = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #7, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 172
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !215
  %11 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.clear_all_interrupts.exit_crit_edge, label %do.body4.i

if.end.clear_all_interrupts.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_all_interrupts.exit

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  tail call void @arm_heavy_mb() #7
  %add.ptr9.i = getelementptr i8, ptr %9, i32 176
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %15) #7, !srcloc !215
  br label %clear_all_interrupts.exit

clear_all_interrupts.exit:                        ; preds = %do.body4.i, %if.end.clear_all_interrupts.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_ddr_timings(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_min_tck(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_regdump_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @emif_regdump_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_regdump_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @emif1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.pn = phi ptr [ %4, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %regs_cache.0 = getelementptr inbounds %struct.emif_data, ptr %.pn, i32 0, i32 7
  %plat_data.i = getelementptr inbounds %struct.emif_data, ptr %1, i32 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %do_emif_regdump_show.exit.land.rhs_crit_edge, %if.end
  %i.014 = phi i32 [ 0, %if.end ], [ %inc, %do_emif_regdump_show.exit.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %regs_cache.0, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %7 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plat_data.i, align 4
  %device_info.i = getelementptr inbounds %struct.emif_platform_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %device_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_info.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %ip_rev3.i = getelementptr inbounds %struct.emif_platform_data, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %ip_rev3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip_rev3.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  %div.i = udiv i32 %16, 1000000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i32 noundef %div.i) #7
  %ref_ctrl_shdw.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %ref_ctrl_shdw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_ctrl_shdw.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %18) #7
  %sdram_tim1_shdw.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %sdram_tim1_shdw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdram_tim1_shdw.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i32 noundef %20) #7
  %sdram_tim2_shdw.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 5
  %21 = ptrtoint ptr %sdram_tim2_shdw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdram_tim2_shdw.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %22) #7
  %sdram_tim3_shdw.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %sdram_tim3_shdw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sdram_tim3_shdw.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %24) #7
  %25 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %14, label %for.body.if.end6.i_crit_edge [
    i32 1, label %for.body.if.end6.sink.split.i_crit_edge
    i32 2, label %if.then5.i
  ]

for.body.if.end6.sink.split.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split.i

for.body.if.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then5.i, %for.body.if.end6.sink.split.i_crit_edge
  %.str.69.sink.i = phi ptr [ @.str.69, %if.then5.i ], [ @.str.67, %for.body.if.end6.sink.split.i_crit_edge ]
  %.str.70.sink.i = phi ptr [ @.str.70, %if.then5.i ], [ @.str.68, %for.body.if.end6.sink.split.i_crit_edge ]
  %26 = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.69.sink.i, i32 noundef %28) #7
  %29 = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.70.sink.i, i32 noundef %31) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %for.body.if.end6.i_crit_edge
  %.off.i = add i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then9.i, label %if.end6.i.do_emif_regdump_show.exit_crit_edge

if.end6.i.do_emif_regdump_show.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_emif_regdump_show.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %ref_ctrl_shdw_derated.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %ref_ctrl_shdw_derated.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_ctrl_shdw_derated.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %33) #7
  %sdram_tim1_shdw_derated.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 4
  %34 = ptrtoint ptr %sdram_tim1_shdw_derated.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sdram_tim1_shdw_derated.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %35) #7
  %sdram_tim3_shdw_derated.i = getelementptr inbounds %struct.emif_regs, ptr %6, i32 0, i32 7
  %36 = ptrtoint ptr %sdram_tim3_shdw_derated.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdram_tim3_shdw_derated.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %37) #7
  br label %do_emif_regdump_show.exit

do_emif_regdump_show.exit:                        ; preds = %if.then9.i, %if.end6.i.do_emif_regdump_show.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #7
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do_emif_regdump_show.exit.for.end_crit_edge, label %do_emif_regdump_show.exit.land.rhs_crit_edge

do_emif_regdump_show.exit.land.rhs_crit_edge:     ; preds = %do_emif_regdump_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do_emif_regdump_show.exit.for.end_crit_edge:      ; preds = %do_emif_regdump_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do_emif_regdump_show.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_mr4_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @emif_mr4_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_mr4_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %temperature_level = getelementptr inbounds %struct.emif_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %temperature_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temperature_level, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %conv) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_interrupt_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %dev2 = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !218
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !215
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @emif_lock) #7
  store i32 %call2.i, ptr @irq_state, align 4
  %temperature_level.i = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %temperature_level.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temperature_level.i, align 1
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #7, !srcloc !215
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !218
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %and.i.i = and i32 %11, 7
  %plat_data.i.i = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 9
  %12 = ptrtoint ptr %plat_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat_data.i.i, align 4
  %device_info.i.i = getelementptr inbounds %struct.emif_platform_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_info.i.i, align 4
  %cs1_used.i.i = getelementptr inbounds %struct.ddr_device_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cs1_used.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cs1_used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %do.body4.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108992) #7, !srcloc !215
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !218
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  %and14.i.i = and i32 %19, 7
  %20 = tail call i32 @llvm.umax.i32(i32 %and14.i.i, i32 %and.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body4.i.i, %if.then.if.end.i.i_crit_edge
  %temperature_level.0.i.i = phi i32 [ %20, %do.body4.i.i ], [ %and.i.i, %if.then.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %temperature_level.0.i.i)
  %cmp17.i.i = icmp ult i32 %temperature_level.0.i.i, 3
  br i1 %cmp17.i.i, label %if.end.i.i.if.then29.i.i_crit_edge, label %if.end21.i.i, !prof !222

if.end.i.i.if.then29.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.end21.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %temperature_level.0.i.i)
  %cmp22.not.i.i = icmp eq i32 %temperature_level.0.i.i, 4
  br i1 %cmp22.not.i.i, label %if.end21.i.i.get_temperature_level.exit.i_crit_edge, label %if.end21.i.i.if.then29.i.i_crit_edge, !prof !222

if.end21.i.i.if.then29.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.end21.i.i.get_temperature_level.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_temperature_level.exit.i

if.then29.i.i:                                    ; preds = %if.end21.i.i.if.then29.i.i_crit_edge, %if.end.i.i.if.then29.i.i_crit_edge
  %temperature_level.146.i.i = phi i32 [ %temperature_level.0.i.i, %if.end21.i.i.if.then29.i.i_crit_edge ], [ 3, %if.end.i.i.if.then29.i.i_crit_edge ]
  %conv.i.i = trunc i32 %temperature_level.146.i.i to i8
  %21 = ptrtoint ptr %temperature_level.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i.i, ptr %temperature_level.i, align 1
  br label %get_temperature_level.exit.i

get_temperature_level.exit.i:                     ; preds = %if.then29.i.i, %if.end21.i.i.get_temperature_level.exit.i_crit_edge
  %22 = ptrtoint ptr %temperature_level.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %temperature_level.i, align 1
  %conv7.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %7)
  %cmp8.i = icmp eq i8 %23, %7
  br i1 %cmp8.i, label %get_temperature_level.exit.i.handle_temp_alert.exit_crit_edge, label %if.else.i, !prof !222

get_temperature_level.exit.i.handle_temp_alert.exit_crit_edge: ; preds = %get_temperature_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_temp_alert.exit

if.else.i:                                        ; preds = %get_temperature_level.exit.i
  %curr_regs.i = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 8
  %24 = ptrtoint ptr %curr_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %curr_regs.i, align 4
  %tobool11.not.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end16.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.80) #10
  br label %handle_temp_alert.exit

if.end16.i:                                       ; preds = %if.else.i
  %28 = ptrtoint ptr %plat_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_data.i.i, align 4
  %custom_configs17.i = getelementptr inbounds %struct.emif_platform_data, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %custom_configs17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %custom_configs17.i, align 4
  %tobool18.not.i = icmp eq ptr %31, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end34.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %and.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp23.i = icmp ugt i8 %23, 4
  %or.cond.i = select i1 %tobool19.not.i, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %do.end28.i, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end28.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %conv7.i) #10
  %36 = ptrtoint ptr %temperature_level.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %temperature_level.i, align 1
  br label %handle_temp_alert.exit

if.end34.i:                                       ; preds = %land.lhs.true.i.if.end34.i_crit_edge, %if.end16.i.if.end34.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %7)
  %cmp37.i = icmp ult i8 %23, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp41.i = icmp eq i8 %23, 7
  %or.cond1.i = or i1 %cmp37.i, %cmp41.i
  br i1 %or.cond1.i, label %if.end34.i.handle_temp_alert.exit_crit_edge, label %if.else44.i

if.end34.i.handle_temp_alert.exit_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_temp_alert.exit

if.else44.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @setup_temperature_sensitive_regs(ptr noundef %dev_id, ptr noundef nonnull %25) #7
  tail call fastcc void @do_freq_update() #7
  br label %handle_temp_alert.exit

handle_temp_alert.exit:                           ; preds = %if.else44.i, %if.end34.i.handle_temp_alert.exit_crit_edge, %do.end28.i, %do.end15.i, %get_temperature_level.exit.i.handle_temp_alert.exit_crit_edge
  %ret.0.i = phi i32 [ 1, %get_temperature_level.exit.i.handle_temp_alert.exit_crit_edge ], [ 1, %if.else44.i ], [ 2, %do.end28.i ], [ 1, %do.end15.i ], [ 2, %if.end34.i.handle_temp_alert.exit_crit_edge ]
  %37 = load i32, ptr @irq_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emif_lock, i32 noundef %37) #7
  br label %if.end

if.end:                                           ; preds = %handle_temp_alert.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %handle_temp_alert.exit ], [ 1, %entry.if.end_crit_edge ]
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %do.end11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, i32 noundef %5) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end.if.end12_crit_edge
  %plat_data = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 9
  %38 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %plat_data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and13 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end33_crit_edge, label %if.then15

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then15:                                        ; preds = %if.end12
  %add.ptr18 = getelementptr i8, ptr %1, i32 176
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !218
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %42) #7, !srcloc !215
  %and26 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then15.if.end33_crit_edge, label %do.end31

if.then15.if.end33_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end31:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78, i32 noundef %43) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.then15.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_threaded_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %temperature_level = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %temperature_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temperature_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  br i1 %cmp, label %do.end, label %do.body25

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %3, ptr noundef nonnull @.str.54) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %4 = load ptr, ptr @pm_power_off, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end10, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kernel_power_off() #7
  br label %cleanup

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 636, i32 noundef 9, ptr noundef nonnull @.str.88) #7
  tail call void @kernel_restart(ptr noundef nonnull @.str.89) #7
  br label %cleanup

do.body25:                                        ; preds = %entry
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @emif_lock) #7
  store i32 %call29, ptr @irq_state, align 4
  %curr_regs = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 8
  %5 = ptrtoint ptr %curr_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %curr_regs, align 4
  %tobool34.not = icmp eq ptr %6, null
  br i1 %tobool34.not, label %do.end40, label %if.then35

if.then35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @setup_temperature_sensitive_regs(ptr noundef %dev_id, ptr noundef nonnull %6)
  tail call fastcc void @do_freq_update()
  br label %if.end42

do.end40:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.emif_data, ptr %dev_id, i32 0, i32 6
  %7 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.80) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then35
  %9 = load i32, ptr @irq_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emif_lock, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end10, %if.then2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_temperature_sensitive_regs(ptr nocapture noundef readonly %emif, ptr nocapture noundef readonly %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 5
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %plat_data = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 9
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  %device_info = getelementptr inbounds %struct.emif_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_info, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %sdram_tim1_shdw = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 3
  %8 = ptrtoint ptr %sdram_tim1_shdw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdram_tim1_shdw, align 4
  %sdram_tim3_shdw = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 6
  %10 = ptrtoint ptr %sdram_tim3_shdw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdram_tim3_shdw, align 4
  %ref_ctrl_shdw = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 1
  %12 = ptrtoint ptr %ref_ctrl_shdw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_ctrl_shdw, align 4
  %.off = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %temperature_level = getelementptr inbounds %struct.emif_data, ptr %emif, i32 0, i32 1
  %14 = ptrtoint ptr %temperature_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %temperature_level, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %15, label %if.end.do.body_crit_edge [
    i8 5, label %if.end.do.body.sink.split_crit_edge
    i8 6, label %if.then9
  ]

if.end.do.body.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sdram_tim1_shdw_derated = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 4
  %17 = ptrtoint ptr %sdram_tim1_shdw_derated to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdram_tim1_shdw_derated, align 4
  %sdram_tim3_shdw_derated = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 7
  %19 = ptrtoint ptr %sdram_tim3_shdw_derated to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdram_tim3_shdw_derated, align 4
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then9, %if.end.do.body.sink.split_crit_edge
  %tim1.0.ph = phi i32 [ %18, %if.then9 ], [ %9, %if.end.do.body.sink.split_crit_edge ]
  %tim3.0.ph = phi i32 [ %20, %if.then9 ], [ %11, %if.end.do.body.sink.split_crit_edge ]
  %ref_ctrl_shdw_derated10 = getelementptr inbounds %struct.emif_regs, ptr %regs, i32 0, i32 2
  %21 = ptrtoint ptr %ref_ctrl_shdw_derated10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ref_ctrl_shdw_derated10, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %tim1.0 = phi i32 [ %9, %entry.do.body_crit_edge ], [ %9, %if.end.do.body_crit_edge ], [ %tim1.0.ph, %do.body.sink.split ]
  %tim3.0 = phi i32 [ %11, %entry.do.body_crit_edge ], [ %11, %if.end.do.body_crit_edge ], [ %tim3.0.ph, %do.body.sink.split ]
  %ref_ctrl.0 = phi i32 [ %13, %entry.do.body_crit_edge ], [ %13, %if.end.do.body_crit_edge ], [ %22, %do.body.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %tim1.0)
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %tim3.0)
  %add.ptr16 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %24) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %ref_ctrl.0)
  %add.ptr20 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #7, !srcloc !215
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_freq_update() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn39 = load ptr, ptr @device_list, align 4
  %cmp.not40 = icmp eq ptr %.pn39, @device_list
  br i1 %cmp.not40, label %entry.for.end28_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.cond10.preheader:                             ; preds = %for.inc
  %.pn3642.pr = load ptr, ptr @device_list, align 4
  %cmp12.not43 = icmp eq ptr %.pn3642.pr, @device_list
  br i1 %cmp12.not43, label %for.cond10.preheader.for.end28_crit_edge, label %for.cond10.preheader.for.body15_crit_edge

for.cond10.preheader.for.body15_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body15

for.cond10.preheader.for.end28_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %entry.for.body_crit_edge ]
  %lpmode = getelementptr i8, ptr %.pn41, i32 -2
  %0 = ptrtoint ptr %lpmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lpmode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1 = icmp eq i8 %1, 2
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %base1.i = getelementptr i8, ptr %.pn41, i32 12
  %2 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %5 = and i32 %4, -458753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !215
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.cond10.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body15:                                       ; preds = %for.inc22.for.body15_crit_edge, %for.cond10.preheader.for.body15_crit_edge
  %.pn3644 = phi ptr [ %.pn36, %for.inc22.for.body15_crit_edge ], [ %.pn3642.pr, %for.cond10.preheader.for.body15_crit_edge ]
  %lpmode16 = getelementptr i8, ptr %.pn3644, i32 -2
  %7 = ptrtoint ptr %lpmode16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lpmode16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp18 = icmp eq i8 %8, 2
  br i1 %cmp18, label %if.then20, label %for.body15.for.inc22_crit_edge

for.body15.for.inc22_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

if.then20:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %base1.i37 = getelementptr i8, ptr %.pn3644, i32 12
  %9 = ptrtoint ptr %base1.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base1.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %12 = and i32 %11, -458753
  %13 = or i32 %12, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %13) #7, !srcloc !215
  br label %for.inc22

for.inc22:                                        ; preds = %if.then20, %for.body15.for.inc22_crit_edge
  %14 = ptrtoint ptr %.pn3644 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn36 = load ptr, ptr %.pn3644, align 4
  %cmp12.not = icmp eq ptr %.pn36, @device_list
  br i1 %cmp12.not, label %for.inc22.for.end28_crit_edge, label %for.inc22.for.body15_crit_edge

for.inc22.for.body15_crit_edge:                   ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.inc22.for.end28_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.end28:                                        ; preds = %for.inc22.for.end28_crit_edge, %for.cond10.preheader.for.end28_crit_edge, %entry.for.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emif_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @disable_and_clear_all_interrupts(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !183, !184, !186, !187, !188, !190, !192, !194, !195, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__initcall__kmod_emif__229_1205_emif_driver_init6, !1, !"__initcall__kmod_emif__229_1205_emif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/emif.c", i32 1205, i32 1}
!2 = !{ptr @__exitcall_emif_driver_exit, !1, !"__exitcall_emif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/memory/emif.c", i32 1207, i32 1}
!5 = !{ptr @__UNIQUE_ID_file231, !6, !"__UNIQUE_ID_file231", i1 false, i1 false}
!6 = !{!"../drivers/memory/emif.c", i32 1208, i32 1}
!7 = !{ptr @__UNIQUE_ID_license232, !6, !"__UNIQUE_ID_license232", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias233, !9, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!9 = !{!"../drivers/memory/emif.c", i32 1209, i32 1}
!10 = !{ptr @__UNIQUE_ID_author234, !11, !"__UNIQUE_ID_author234", i1 false, i1 false}
!11 = !{!"../drivers/memory/emif.c", i32 1210, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/emif.c", i32 1128, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @emif_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @emif_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/emif.c", i32 1163, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @emif_probe._entry.3, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @emif_probe._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/emif.c", i32 930, i32 37}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/emif.c", i32 938, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @of_get_memory_device_details._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @of_get_memory_device_details._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/emif.c", i32 949, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/emif.c", i32 951, i32 44}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/emif.c", i32 954, i32 32}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/emif.c", i32 956, i32 32}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/emif.c", i32 963, i32 3}
!42 = !{ptr @of_get_memory_device_details._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @of_get_memory_device_details._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/emif.c", i32 976, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @of_get_memory_device_details._entry.19, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_get_memory_device_details._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/emif.c", i32 894, i32 32}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/emif.c", i32 897, i32 32}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/emif.c", i32 900, i32 38}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/emif.c", i32 902, i32 43}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/emif.c", i32 905, i32 31}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/memory/emif.c", i32 906, i32 31}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/emif.c", i32 813, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @is_dev_data_valid._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @is_dev_data_valid._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/emif.c", i32 845, i32 36}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/emif.c", i32 846, i32 40}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/emif.c", i32 859, i32 5}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/emif.c", i32 862, i32 5}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/emif.c", i32 865, i32 5}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/emif.c", i32 876, i32 32}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/emif.c", i32 832, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @is_custom_config_valid._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @is_custom_config_valid._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memory/emif.c", i32 1020, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @get_device_details._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @get_device_details._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/emif.c", i32 1029, i32 3}
!90 = !{ptr @get_device_details._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @get_device_details._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @get_device_details._entry.44, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/memory/emif.c", i32 1057, i32 3}
!94 = !{ptr @get_device_details._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @get_device_details._entry.46, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/memory/emif.c", i32 1071, i32 4}
!97 = !{ptr @get_device_details._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @get_device_details._entry.48, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/memory/emif.c", i32 1087, i32 4}
!100 = !{ptr @get_device_details._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @get_device_details._entry.50, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/memory/emif.c", i32 1101, i32 4}
!103 = !{ptr @get_device_details._entry_ptr.51, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memory/emif.c", i32 785, i32 2}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @get_default_timings._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @get_default_timings._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @device_list, !110, !"device_list", i1 false, i1 false}
!110 = !{!"../drivers/memory/emif.c", i32 73, i32 8}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/emif.c", i32 741, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @emif_onetime_settings._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @emif_onetime_settings._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/memory/emif.c", i32 430, i32 3}
!119 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @get_pwr_mgmt_ctrl._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @get_pwr_mgmt_ctrl._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/emif.c", i32 435, i32 3}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/emif.c", i32 146, i32 22}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memory/emif.c", i32 148, i32 22}
!128 = !{ptr @emif_regdump_fops, !129, !"emif_regdump_fops", i1 false, i1 false}
!129 = !{!"../drivers/memory/emif.c", i32 131, i32 1}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memory/emif.c", i32 82, i32 16}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/memory/emif.c", i32 85, i32 16}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memory/emif.c", i32 86, i32 16}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/memory/emif.c", i32 87, i32 16}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/memory/emif.c", i32 88, i32 16}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memory/emif.c", i32 91, i32 17}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/memory/emif.c", i32 93, i32 17}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memory/emif.c", i32 96, i32 17}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memory/emif.c", i32 98, i32 17}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/memory/emif.c", i32 103, i32 17}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/memory/emif.c", i32 105, i32 17}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memory/emif.c", i32 107, i32 17}
!154 = !{ptr @emif_mr4_fops, !155, !"emif_mr4_fops", i1 false, i1 false}
!155 = !{!"../drivers/memory/emif.c", i32 141, i32 1}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/memory/emif.c", i32 137, i32 16}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/emif.c", i32 610, i32 3}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @emif_interrupt_handler._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @emif_interrupt_handler._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/memory/emif.c", i32 618, i32 4}
!165 = !{ptr @emif_interrupt_handler._entry.77, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @emif_interrupt_handler._entry_ptr.79, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/memory/emif.c", i32 544, i32 3}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @handle_temp_alert._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @handle_temp_alert._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/memory/emif.c", i32 557, i32 4}
!174 = !{ptr @handle_temp_alert._entry.82, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @handle_temp_alert._entry_ptr.84, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/memory/emif.c", i32 71, i32 8}
!178 = !{ptr @emif_lock, !177, !"emif_lock", i1 false, i1 false}
!179 = !{ptr @irq_state, !180, !"irq_state", i1 false, i1 false}
!180 = !{!"../drivers/memory/emif.c", i32 72, i32 22}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/memory/emif.c", i32 220, i32 3}
!183 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/memory/emif.c", i32 630, i32 3}
!186 = !{ptr @emif_threaded_isr._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @emif_threaded_isr._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/memory/emif.c", i32 636, i32 4}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memory/emif.c", i32 637, i32 19}
!192 = !{ptr @emif_threaded_isr._entry.90, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/memory/emif.c", i32 648, i32 3}
!194 = !{ptr @emif_threaded_isr._entry_ptr.91, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @emif1, !196, !"emif1", i1 false, i1 false}
!196 = !{!"../drivers/memory/emif.c", i32 70, i32 26}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/memory/emif.c", i32 1200, i32 11}
!199 = !{ptr @emif_driver, !200, !"emif_driver", i1 false, i1 false}
!200 = !{!"../drivers/memory/emif.c", i32 1196, i32 31}
!201 = !{ptr @emif_of_match, !202, !"emif_of_match", i1 false, i1 false}
!202 = !{!"../drivers/memory/emif.c", i32 1188, i32 34}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{i32 0, i32 33}
!214 = !{i64 2153951427}
!215 = !{i64 2039362}
!216 = !{i64 2153951844}
!217 = !{i64 2153923881}
!218 = !{i64 2039780}
!219 = !{i64 2153924523}
!220 = !{i64 2153924766}
!221 = !{i64 2153925444}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i64 2153912008}
!224 = !{i64 2153954197}
!225 = !{i64 2153954638}
!226 = !{i64 2153955065}
!227 = !{i64 2153955492}
!228 = !{i64 2153955919}
!229 = !{i64 2153956346}
!230 = !{i64 2153956773}
!231 = !{i64 2153957200}
!232 = !{i64 2153957627}
!233 = !{i64 2153958054}
!234 = !{i64 2153958481}
!235 = !{i64 2153958908}
!236 = !{i64 2153959335}
!237 = !{i64 2153959762}
!238 = !{i64 2153960189}
!239 = !{i64 2153960616}
!240 = !{i64 2153961043}
!241 = !{i64 2153961470}
!242 = !{i64 2153961897}
!243 = !{i64 2153962324}
!244 = !{i64 2153962751}
!245 = !{i64 2153963178}
!246 = !{i64 2153943925}
!247 = !{i64 2153944804}
!248 = !{i64 2153945761}
!249 = !{i64 2153946640}
!250 = !{i64 2153950559}
!251 = !{i64 2153950995}
!252 = !{i64 2153947586}
!253 = !{i64 2153948465}
!254 = !{i64 2153949422}
!255 = !{i64 2153950301}
!256 = !{i64 2153933394}
!257 = !{i64 2153933618}
!258 = !{i64 2153935994}
!259 = !{i64 2153936218}
!260 = !{i64 2153927242}
!261 = !{i64 2153927634}
!262 = !{i64 2153928030}
!263 = !{i64 2153913846}
!264 = !{i64 2153914077}
