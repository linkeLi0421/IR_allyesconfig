; ModuleID = '/llk/IR_all_yes/drivers/hwmon/intel-m10-bmc-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/intel-m10-bmc-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m10bmc_hwmon_board_data = type { [10 x ptr], ptr }
%struct.m10bmc_sdata = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.m10bmc_hwmon = type { ptr, %struct.hwmon_chip_info, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.intel_m10bmc = type { ptr, ptr }

@__initcall__kmod_intel_m10_bmc_hwmon__170_567_intel_m10bmc_hwmon_driver_init6 = internal global ptr @intel_m10bmc_hwmon_driver_init, section ".initcall6.init", align 4
@intel_m10bmc_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @m10bmc_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @intel_m10bmc_hwmon_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_m10bmc_hwmon_driver_exit = internal global ptr @intel_m10bmc_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [45 x i8] c"intel_m10_bmc_hwmon.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [66 x i8] c"intel_m10_bmc_hwmon.description=Intel MAX 10 BMC hardware monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [59 x i8] c"intel_m10_bmc_hwmon.file=drivers/hwmon/intel-m10-bmc-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"intel_m10_bmc_hwmon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel-m10-bmc-hwmon\00", [44 x i8] zeroinitializer }, align 32
@intel_m10bmc_hwmon_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"n3000bmc-hwmon\00\00\00\00\00\00", i32 ptrtoint (ptr @n3000bmc_hwmon_bdata to i32) }, %struct.platform_device_id { [20 x i8] c"d5005bmc-hwmon\00\00\00\00\00\00", i32 ptrtoint (ptr @d5005bmc_hwmon_bdata to i32) }, %struct.platform_device_id { [20 x i8] c"n5010bmc-hwmon\00\00\00\00\00\00", i32 ptrtoint (ptr @n5010bmc_hwmon_bdata to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@m10bmc_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @m10bmc_hwmon_is_visible, ptr @m10bmc_hwmon_read, ptr @m10bmc_hwmon_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@m10bmc_raw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to read raw reg %x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m10bmc_raw_read\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/linux/mfd/intel-m10-bmc.h\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m10bmc_raw_read._entry_ptr = internal global ptr @m10bmc_raw_read._entry, section ".printk_index", align 4
@n3000bmc_hwmon_bdata = internal constant { %struct.m10bmc_hwmon_board_data, [52 x i8] } { %struct.m10bmc_hwmon_board_data { [10 x ptr] [ptr null, ptr @n3000bmc_temp_tbl, ptr @n3000bmc_in_tbl, ptr @n3000bmc_curr_tbl, ptr @n3000bmc_power_tbl, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @n3000bmc_hinfo }, [52 x i8] zeroinitializer }, align 32
@d5005bmc_hwmon_bdata = internal constant { %struct.m10bmc_hwmon_board_data, [52 x i8] } { %struct.m10bmc_hwmon_board_data { [10 x ptr] [ptr null, ptr @d5005bmc_temp_tbl, ptr @d5005bmc_in_tbl, ptr @d5005bmc_curr_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @d5005bmc_hinfo }, [52 x i8] zeroinitializer }, align 32
@n5010bmc_hwmon_bdata = internal constant { %struct.m10bmc_hwmon_board_data, [52 x i8] } { %struct.m10bmc_hwmon_board_data { [10 x ptr] [ptr null, ptr @n5010bmc_temp_tbl, ptr @n5010bmc_in_tbl, ptr @n5010bmc_curr_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @n5010bmc_hinfo }, [52 x i8] zeroinitializer }, align 32
@n3000bmc_temp_tbl = internal constant { [8 x %struct.m10bmc_sdata], [32 x i8] } { [8 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 256, i32 260, i32 264, i32 268, i32 0, i32 500, ptr @.str.6 }, %struct.m10bmc_sdata { i32 272, i32 276, i32 280, i32 0, i32 0, i32 500, ptr @.str.7 }, %struct.m10bmc_sdata { i32 284, i32 292, i32 288, i32 0, i32 0, i32 500, ptr @.str.8 }, %struct.m10bmc_sdata { i32 300, i32 308, i32 304, i32 0, i32 0, i32 500, ptr @.str.9 }, %struct.m10bmc_sdata { i32 360, i32 0, i32 0, i32 0, i32 0, i32 500, ptr @.str.10 }, %struct.m10bmc_sdata { i32 364, i32 0, i32 0, i32 0, i32 0, i32 500, ptr @.str.11 }, %struct.m10bmc_sdata { i32 368, i32 0, i32 0, i32 0, i32 0, i32 500, ptr @.str.12 }, %struct.m10bmc_sdata { i32 372, i32 0, i32 0, i32 0, i32 0, i32 500, ptr @.str.13 }], [32 x i8] zeroinitializer }, align 32
@n3000bmc_in_tbl = internal constant { [8 x %struct.m10bmc_sdata], [32 x i8] } { [8 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 296, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.14 }, %struct.m10bmc_sdata { i32 312, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.15 }, %struct.m10bmc_sdata { i32 316, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.16 }, %struct.m10bmc_sdata { i32 324, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.17 }, %struct.m10bmc_sdata { i32 332, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.18 }, %struct.m10bmc_sdata { i32 336, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.19 }, %struct.m10bmc_sdata { i32 344, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.20 }, %struct.m10bmc_sdata { i32 348, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.21 }], [32 x i8] zeroinitializer }, align 32
@n3000bmc_curr_tbl = internal constant { [3 x %struct.m10bmc_sdata], [44 x i8] } { [3 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 320, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.22 }, %struct.m10bmc_sdata { i32 328, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.23 }, %struct.m10bmc_sdata { i32 340, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.24 }], [44 x i8] zeroinitializer }, align 32
@n3000bmc_power_tbl = internal constant { [1 x %struct.m10bmc_sdata], [36 x i8] } { [1 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 352, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.25 }], [36 x i8] zeroinitializer }, align 32
@n3000bmc_hinfo = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.26, ptr @.compoundliteral.28, ptr @.compoundliteral.30, ptr @.compoundliteral.32, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Board Temperature\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FPGA Die Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QSFP0 Temperature\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QSFP1 Temperature\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retimer A Temperature\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Retimer A SerDes Temperature\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retimer B Temperature\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Retimer B SerDes Temperature\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP0 Supply Voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP1 Supply Voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA Core Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"12V Backplane Voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.2V Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"12V AUX Voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.8V Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3.3V Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA Core Current\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"12V Backplane Current\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"12V AUX Current\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Board Power\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 2099074, i32 2097794, i32 2097794, i32 2097794, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.27 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1026, i32 1026, i32 1026, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.29 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4194816, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.31 }, [24 x i8] zeroinitializer }, align 32
@d5005bmc_temp_tbl = internal constant { [17 x %struct.m10bmc_sdata], [100 x i8] } { [17 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 256, i32 260, i32 264, i32 268, i32 0, i32 500, ptr @.str.33 }, %struct.m10bmc_sdata { i32 272, i32 276, i32 280, i32 0, i32 0, i32 500, ptr @.str.34 }, %struct.m10bmc_sdata { i32 284, i32 288, i32 292, i32 296, i32 0, i32 500, ptr @.str.35 }, %struct.m10bmc_sdata { i32 300, i32 304, i32 308, i32 0, i32 0, i32 500, ptr @.str.36 }, %struct.m10bmc_sdata { i32 312, i32 316, i32 320, i32 324, i32 0, i32 500, ptr @.str.37 }, %struct.m10bmc_sdata { i32 328, i32 332, i32 336, i32 340, i32 0, i32 500, ptr @.str.38 }, %struct.m10bmc_sdata { i32 344, i32 348, i32 352, i32 356, i32 0, i32 500, ptr @.str.39 }, %struct.m10bmc_sdata { i32 360, i32 364, i32 368, i32 372, i32 0, i32 500, ptr @.str.40 }, %struct.m10bmc_sdata { i32 376, i32 380, i32 384, i32 0, i32 0, i32 500, ptr @.str.8 }, %struct.m10bmc_sdata { i32 392, i32 396, i32 400, i32 0, i32 0, i32 500, ptr @.str.9 }, %struct.m10bmc_sdata { i32 416, i32 420, i32 424, i32 0, i32 0, i32 500, ptr @.str.41 }, %struct.m10bmc_sdata { i32 444, i32 448, i32 452, i32 0, i32 0, i32 500, ptr @.str.42 }, %struct.m10bmc_sdata { i32 472, i32 476, i32 480, i32 0, i32 0, i32 500, ptr @.str.43 }, %struct.m10bmc_sdata { i32 500, i32 504, i32 508, i32 0, i32 0, i32 500, ptr @.str.44 }, %struct.m10bmc_sdata { i32 528, i32 532, i32 536, i32 0, i32 0, i32 500, ptr @.str.45 }, %struct.m10bmc_sdata { i32 556, i32 560, i32 564, i32 0, i32 0, i32 500, ptr @.str.46 }, %struct.m10bmc_sdata { i32 584, i32 588, i32 592, i32 0, i32 0, i32 500, ptr @.str.47 }], [100 x i8] zeroinitializer }, align 32
@d5005bmc_in_tbl = internal constant { [10 x %struct.m10bmc_sdata], [72 x i8] } { [10 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 388, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.14 }, %struct.m10bmc_sdata { i32 404, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.15 }, %struct.m10bmc_sdata { i32 408, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.16 }, %struct.m10bmc_sdata { i32 428, i32 432, i32 436, i32 0, i32 0, i32 1, ptr @.str.48 }, %struct.m10bmc_sdata { i32 456, i32 460, i32 464, i32 0, i32 0, i32 1, ptr @.str.49 }, %struct.m10bmc_sdata { i32 484, i32 488, i32 492, i32 0, i32 0, i32 1, ptr @.str.50 }, %struct.m10bmc_sdata { i32 512, i32 516, i32 520, i32 0, i32 0, i32 1, ptr @.str.51 }, %struct.m10bmc_sdata { i32 540, i32 544, i32 548, i32 0, i32 0, i32 1, ptr @.str.52 }, %struct.m10bmc_sdata { i32 568, i32 0, i32 0, i32 0, i32 572, i32 1, ptr @.str.53 }, %struct.m10bmc_sdata { i32 596, i32 0, i32 0, i32 0, i32 600, i32 1, ptr @.str.54 }], [72 x i8] zeroinitializer }, align 32
@d5005bmc_curr_tbl = internal constant { [8 x %struct.m10bmc_sdata], [32 x i8] } { [8 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 412, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.22 }, %struct.m10bmc_sdata { i32 440, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.55 }, %struct.m10bmc_sdata { i32 468, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.56 }, %struct.m10bmc_sdata { i32 496, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.57 }, %struct.m10bmc_sdata { i32 524, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.58 }, %struct.m10bmc_sdata { i32 552, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.59 }, %struct.m10bmc_sdata { i32 576, i32 580, i32 0, i32 0, i32 0, i32 1, ptr @.str.60 }, %struct.m10bmc_sdata { i32 604, i32 608, i32 0, i32 0, i32 0, i32 1, ptr @.str.61 }], [32 x i8] zeroinitializer }, align 32
@d5005bmc_hinfo = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.63, ptr @.compoundliteral.65, ptr @.compoundliteral.67, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Board Inlet Air Temperature\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FPGA Core Temperature\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Board Exhaust Air Temperature\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FPGA Transceiver Temperature\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDIMM0 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDIMM1 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDIMM2 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDIMM3 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"3.3v Temperature\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VCCERAM Temperature\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VCCR Temperature\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VCCT Temperature\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1.8v Temperature\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"12v Backplane Temperature\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"12v AUX Temperature\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3.3v Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VCCERAM Voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCCR Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCCT Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.8v Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"12v Backplane Voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"12v AUX Voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3.3v Current\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VCCERAM Current\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCCR Current\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCCT Current\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.8v Current\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"12v Backplane Current\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"12v AUX Current\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 2099074, i32 2097794, i32 2099074, i32 2097794, i32 2099074, i32 2099074, i32 2099074, i32 2099074, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 2097794, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.62 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 1026, i32 1026, i32 1026, i32 1066, i32 1066, i32 1066, i32 1066, i32 1066, i32 1030, i32 1030, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.64 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1034, i32 1034, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.66 }, [24 x i8] zeroinitializer }, align 32
@n5010bmc_temp_tbl = internal constant { [17 x %struct.m10bmc_sdata], [100 x i8] } { [17 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 256, i32 0, i32 260, i32 0, i32 0, i32 1000, ptr @.str.68 }, %struct.m10bmc_sdata { i32 264, i32 0, i32 268, i32 0, i32 0, i32 1000, ptr @.str.69 }, %struct.m10bmc_sdata { i32 272, i32 0, i32 276, i32 0, i32 0, i32 1000, ptr @.str.70 }, %struct.m10bmc_sdata { i32 280, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.71 }, %struct.m10bmc_sdata { i32 284, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.72 }, %struct.m10bmc_sdata { i32 296, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.73 }, %struct.m10bmc_sdata { i32 308, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.74 }, %struct.m10bmc_sdata { i32 320, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.75 }, %struct.m10bmc_sdata { i32 332, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.76 }, %struct.m10bmc_sdata { i32 344, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.77 }, %struct.m10bmc_sdata { i32 356, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.78 }, %struct.m10bmc_sdata { i32 424, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.79 }, %struct.m10bmc_sdata { i32 428, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.80 }, %struct.m10bmc_sdata { i32 432, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.81 }, %struct.m10bmc_sdata { i32 436, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.82 }, %struct.m10bmc_sdata { i32 440, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.83 }, %struct.m10bmc_sdata { i32 444, i32 0, i32 0, i32 0, i32 0, i32 1000, ptr @.str.84 }], [100 x i8] zeroinitializer }, align 32
@n5010bmc_in_tbl = internal constant { [13 x %struct.m10bmc_sdata], [84 x i8] } { [13 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 288, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.85 }, %struct.m10bmc_sdata { i32 300, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.86 }, %struct.m10bmc_sdata { i32 312, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.87 }, %struct.m10bmc_sdata { i32 324, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.88 }, %struct.m10bmc_sdata { i32 336, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.89 }, %struct.m10bmc_sdata { i32 348, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.90 }, %struct.m10bmc_sdata { i32 364, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.91 }, %struct.m10bmc_sdata { i32 380, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.92 }, %struct.m10bmc_sdata { i32 388, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.93 }, %struct.m10bmc_sdata { i32 396, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.94 }, %struct.m10bmc_sdata { i32 404, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.95 }, %struct.m10bmc_sdata { i32 412, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.96 }, %struct.m10bmc_sdata { i32 420, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.97 }], [84 x i8] zeroinitializer }, align 32
@n5010bmc_curr_tbl = internal constant { [13 x %struct.m10bmc_sdata], [84 x i8] } { [13 x %struct.m10bmc_sdata] [%struct.m10bmc_sdata { i32 292, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.98 }, %struct.m10bmc_sdata { i32 304, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.99 }, %struct.m10bmc_sdata { i32 316, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.100 }, %struct.m10bmc_sdata { i32 328, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.101 }, %struct.m10bmc_sdata { i32 340, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.102 }, %struct.m10bmc_sdata { i32 352, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.103 }, %struct.m10bmc_sdata { i32 360, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.104 }, %struct.m10bmc_sdata { i32 376, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.105 }, %struct.m10bmc_sdata { i32 384, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.106 }, %struct.m10bmc_sdata { i32 392, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.107 }, %struct.m10bmc_sdata { i32 400, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.108 }, %struct.m10bmc_sdata { i32 408, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.109 }, %struct.m10bmc_sdata { i32 416, i32 0, i32 0, i32 0, i32 0, i32 1, ptr @.str.110 }], [84 x i8] zeroinitializer }, align 32
@n5010bmc_hinfo = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.112, ptr @.compoundliteral.114, ptr @.compoundliteral.116, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Board Local Temperature\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FPGA 1 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FPGA 2 Temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Card Top Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Card Bottom Temperature\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FPGA 1.2V Temperature\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FPGA 5V Temperature\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FPGA 0.9V Temperature\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FPGA 0.85V Temperature\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AUX 12V Temperature\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Backplane 12V Temperature\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP28-1 Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP28-2 Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP28-3 Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSFP28-4 Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CVL1 Internal Temperature\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CVL2 Internal Temperature\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 1.2V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FPGA 5V Voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 0.9V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FPGA 0.85V Voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AUX 12V Voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Backplane 12V Voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DDR4 1.2V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 1.8V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QDR 1.3V Voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CVL1 0.8V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CVL1 1.05V Voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CVL2 1.05V Voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CVL2 0.8V Voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 1.2V Current\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FPGA 5V Current\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 0.9V Current\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FPGA 0.85V Current\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AUX 12V Current\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Backplane 12V Current\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DDR4 1.2V Current\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA 1.8V Current\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QDR 1.3V Current\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CVL1 0.8V Current\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CVL1 1.05V Current\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CVL2 1.05V Current\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CVL2 0.8V Current\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 2097666, i32 2097666, i32 2097666, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.111 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.113 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.115 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 9, i64 10, i64 32, i64 42, i64 45]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"intel_m10bmc_hwmon_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 560, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 563, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"intel_m10bmc_hwmon_ids\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 544, i32 40 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"m10bmc_hwmon_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 506, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [37 x i8] c"../include/linux/mfd/intel-m10-bmc.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 145, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"n3000bmc_hwmon_bdata\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 146, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"d5005bmc_hwmon_bdata\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 221, i32 45 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"n5010bmc_hwmon_bdata\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 333, i32 45 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"n3000bmc_temp_tbl\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 38, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"n3000bmc_in_tbl\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"n3000bmc_curr_tbl\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 60, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"n3000bmc_power_tbl\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 66, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"n3000bmc_hinfo\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 70, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 39, i32 42 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 40, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 41, i32 40 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 42, i32 40 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 43, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 44, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 45, i32 36 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 46, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 50, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 51, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 52, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 53, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 54, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 55, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 56, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 57, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 61, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 62, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 63, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 67, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"d5005bmc_temp_tbl\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 102, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"d5005bmc_in_tbl\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 122, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant [18 x i8] c"d5005bmc_curr_tbl\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 135, i32 34 }
@___asan_gen_.252 = private unnamed_addr constant [15 x i8] c"d5005bmc_hinfo\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 157, i32 41 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 103, i32 42 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 104, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 105, i32 42 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 106, i32 40 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 107, i32 42 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 108, i32 42 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 109, i32 42 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 110, i32 42 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 113, i32 40 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 114, i32 40 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 115, i32 40 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 116, i32 40 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 117, i32 40 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 118, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 119, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 126, i32 38 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 127, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 128, i32 38 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 129, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 130, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 131, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 132, i32 36 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 137, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 138, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 139, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 140, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 141, i32 34 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 142, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 143, i32 36 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [18 x i8] c"n5010bmc_temp_tbl\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 231, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"n5010bmc_in_tbl\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 251, i32 34 }
@___asan_gen_.354 = private unnamed_addr constant [18 x i8] c"n5010bmc_curr_tbl\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 267, i32 34 }
@___asan_gen_.357 = private unnamed_addr constant [15 x i8] c"n5010bmc_hinfo\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 283, i32 41 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 232, i32 39 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 233, i32 39 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 234, i32 39 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 235, i32 37 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 236, i32 37 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 237, i32 37 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 238, i32 37 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 239, i32 37 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 240, i32 37 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 241, i32 37 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 242, i32 37 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 243, i32 37 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 244, i32 37 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 245, i32 37 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 246, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 247, i32 37 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 248, i32 37 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 252, i32 34 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 253, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 254, i32 34 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 255, i32 34 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 256, i32 34 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 257, i32 34 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 258, i32 34 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 259, i32 34 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 260, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 261, i32 34 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 262, i32 34 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 263, i32 34 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 264, i32 34 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 268, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 269, i32 34 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 270, i32 34 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 271, i32 34 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 272, i32 34 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 273, i32 34 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 274, i32 34 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 275, i32 34 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 276, i32 34 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 277, i32 34 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 278, i32 34 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 279, i32 34 }
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.487 = private constant [39 x i8] c"../drivers/hwmon/intel-m10-bmc-hwmon.c\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 280, i32 34 }
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_intel_m10bmc_hwmon_driver_exit, ptr @__initcall__kmod_intel_m10_bmc_hwmon__170_567_intel_m10bmc_hwmon_driver_init6, ptr @intel_m10bmc_hwmon_driver_exit, ptr @m10bmc_raw_read._entry, ptr @m10bmc_raw_read._entry_ptr, ptr @intel_m10bmc_hwmon_driver, ptr @.str, ptr @intel_m10bmc_hwmon_ids, ptr @m10bmc_hwmon_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @n3000bmc_hwmon_bdata, ptr @d5005bmc_hwmon_bdata, ptr @n5010bmc_hwmon_bdata, ptr @n3000bmc_temp_tbl, ptr @n3000bmc_in_tbl, ptr @n3000bmc_curr_tbl, ptr @n3000bmc_power_tbl, ptr @n3000bmc_hinfo, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @d5005bmc_temp_tbl, ptr @d5005bmc_in_tbl, ptr @d5005bmc_curr_tbl, ptr @d5005bmc_hinfo, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @n5010bmc_temp_tbl, ptr @n5010bmc_in_tbl, ptr @n5010bmc_curr_tbl, ptr @n5010bmc_hinfo, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_m10bmc_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_m10bmc_hwmon_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10bmc_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10bmc_raw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_hwmon_bdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5005bmc_hwmon_bdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5010bmc_hwmon_bdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_temp_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_in_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_curr_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_power_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n3000bmc_hinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5005bmc_temp_tbl to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5005bmc_in_tbl to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5005bmc_curr_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5005bmc_hinfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5010bmc_temp_tbl to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5010bmc_in_tbl to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5010bmc_curr_tbl to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n5010bmc_hinfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_m10bmc_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_m10bmc_hwmon_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_m10bmc_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @intel_m10bmc_hwmon_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10bmc_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %m10bmc5 = getelementptr inbounds %struct.m10bmc_hwmon, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %m10bmc5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %m10bmc5, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = inttoptr i32 %9 to ptr
  %bdata = getelementptr inbounds %struct.m10bmc_hwmon, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %bdata to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bdata, align 4
  %hinfo = getelementptr inbounds %struct.m10bmc_hwmon_board_data, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hinfo, align 4
  %chip = getelementptr inbounds %struct.m10bmc_hwmon, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.m10bmc_hwmon, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %info, align 4
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @m10bmc_hwmon_ops, ptr %chip, align 4
  %call8 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef %1, i32 noundef 3264) #7
  %hw_name = getelementptr inbounds %struct.m10bmc_hwmon, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %hw_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %hw_name, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %if.end.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end.for.cond_crit_edge ]
  %17 = ptrtoint ptr %hw_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_name, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %i.0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 45, label %for.cond.if.then18_crit_edge
    i8 42, label %for.cond.if.then18_crit_edge55
    i8 32, label %for.cond.if.then18_crit_edge56
    i8 9, label %for.cond.if.then18_crit_edge57
    i8 10, label %for.cond.if.then18_crit_edge58
  ]

for.cond.if.then18_crit_edge58:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.if.then18_crit_edge57:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.if.then18_crit_edge56:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.if.then18_crit_edge55:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.if.then18_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %for.cond.if.then18_crit_edge, %for.cond.if.then18_crit_edge55, %for.cond.if.then18_crit_edge56, %for.cond.if.then18_crit_edge57, %for.cond.if.then18_crit_edge58
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 95, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.cond.for.inc_crit_edge
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %18, ptr noundef nonnull %call.i, ptr noundef %chip, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %call24 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %23, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @m10bmc_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10bmc_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i85 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bdata.i = getelementptr inbounds %struct.m10bmc_hwmon, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdata.i, align 4
  %arrayidx.i = getelementptr [10 x ptr], ptr %3, i32 0, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %arrayidx1.i = getelementptr %struct.m10bmc_sdata, ptr %5, i32 %channel
  %retval.0.i = select i1 %tobool.not.i, ptr inttoptr (i32 -95 to ptr), ptr %arrayidx1.i
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb21
    i32 4, label %sw.bb30
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.sw.epilog36_crit_edge
    i32 8, label %sw.bb5
    i32 7, label %sw.bb.sw.bb7_crit_edge
    i32 10, label %sw.bb8
    i32 9, label %sw.bb.sw.bb10_crit_edge
  ]

sw.bb.sw.bb10_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb.sw.epilog36_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %reg_hyst6 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %reg_hyst6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_hyst6, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb5, %sw.bb.sw.bb7_crit_edge
  %reg_hyst.0 = phi i32 [ 0, %sw.bb.sw.bb7_crit_edge ], [ %10, %sw.bb5 ]
  %reg_max = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 1
  br label %sw.epilog36

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %reg_hyst9 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %reg_hyst9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_hyst9, align 4
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %sw.bb.sw.bb10_crit_edge
  %reg_hyst.1 = phi i32 [ 0, %sw.bb.sw.bb10_crit_edge ], [ %12, %sw.bb8 ]
  %reg_crit = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 2
  br label %sw.epilog36

sw.bb11:                                          ; preds = %if.end
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %attr, label %sw.bb11.cleanup_crit_edge [
    i32 1, label %sw.bb11.sw.epilog36_crit_edge
    i32 3, label %sw.bb14
    i32 5, label %sw.bb16
    i32 2, label %sw.bb18
  ]

sw.bb11.sw.epilog36_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %reg_max15 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 1
  br label %sw.epilog36

sw.bb16:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %reg_crit17 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 2
  br label %sw.epilog36

sw.bb18:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %reg_min = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 4
  br label %sw.epilog36

sw.bb21:                                          ; preds = %if.end
  %14 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %attr, label %sw.bb21.cleanup_crit_edge [
    i32 1, label %sw.bb21.sw.epilog36_crit_edge
    i32 3, label %sw.bb24
    i32 5, label %sw.bb26
  ]

sw.bb21.sw.epilog36_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %reg_max25 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 1
  br label %sw.epilog36

sw.bb26:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %reg_crit27 = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 2
  br label %sw.epilog36

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond = icmp eq i32 %attr, 9
  br i1 %cond, label %sw.bb30.sw.epilog36_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30.sw.epilog36_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb30.sw.epilog36_crit_edge, %sw.bb26, %sw.bb24, %sw.bb21.sw.epilog36_crit_edge, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb11.sw.epilog36_crit_edge, %sw.bb10, %sw.bb7, %sw.bb.sw.epilog36_crit_edge
  %reg.0.in = phi ptr [ %reg_crit27, %sw.bb26 ], [ %reg_max25, %sw.bb24 ], [ %reg_min, %sw.bb18 ], [ %reg_crit17, %sw.bb16 ], [ %reg_max15, %sw.bb14 ], [ %reg_crit, %sw.bb10 ], [ %reg_max, %sw.bb7 ], [ %retval.0.i, %sw.bb.sw.epilog36_crit_edge ], [ %retval.0.i, %sw.bb11.sw.epilog36_crit_edge ], [ %retval.0.i, %sw.bb21.sw.epilog36_crit_edge ], [ %retval.0.i, %sw.bb30.sw.epilog36_crit_edge ]
  %reg_hyst.2 = phi i32 [ 0, %sw.bb26 ], [ 0, %sw.bb24 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ %reg_hyst.1, %sw.bb10 ], [ %reg_hyst.0, %sw.bb7 ], [ 0, %sw.bb.sw.epilog36_crit_edge ], [ 0, %sw.bb11.sw.epilog36_crit_edge ], [ 0, %sw.bb21.sw.epilog36_crit_edge ], [ 0, %sw.bb30.sw.epilog36_crit_edge ]
  %15 = ptrtoint ptr %reg.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %reg.0 = load i32, ptr %reg.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg.0)
  %tobool.not = icmp eq i32 %reg.0, 0
  br i1 %tobool.not, label %sw.epilog36.cleanup_crit_edge, label %if.end38

sw.epilog36.cleanup_crit_edge:                    ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %16 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %regval.i, align 4, !annotation !251
  %m10bmc.i = getelementptr inbounds %struct.m10bmc_hwmon, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %m10bmc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m10bmc.i, align 4
  %add.i = add i32 %reg.0, 3147776
  %regmap.i.i = getelementptr inbounds %struct.intel_m10bmc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %add.i, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %m10bmc_raw_read.exit.i

m10bmc_raw_read.exit.i:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %add.i, i32 noundef %call.i.i) #10
  br label %do_sensor_read.exit.thread

if.end.i:                                         ; preds = %if.end38
  %23 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %24)
  %cmp.i83 = icmp eq i32 %24, -559038737
  br i1 %cmp.i83, label %if.end.i.do_sensor_read.exit.thread_crit_edge, label %if.end42

if.end.i.do_sensor_read.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_sensor_read.exit.thread

do_sensor_read.exit.thread:                       ; preds = %if.end.i.do_sensor_read.exit.thread_crit_edge, %m10bmc_raw_read.exit.i
  %retval.0.i84.ph = phi i32 [ -61, %if.end.i.do_sensor_read.exit.thread_crit_edge ], [ %call.i.i, %m10bmc_raw_read.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end.i
  %multiplier.i = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %multiplier.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %multiplier.i, align 4
  %mul.i = mul i32 %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_hyst.2)
  %tobool43.not = icmp eq i32 %reg_hyst.2, 0
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %if.then44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i85) #7
  %27 = ptrtoint ptr %regval.i85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %regval.i85, align 4, !annotation !251
  %28 = ptrtoint ptr %m10bmc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m10bmc.i, align 4
  %add.i87 = add i32 %reg_hyst.2, 3147776
  %regmap.i.i88 = getelementptr inbounds %struct.intel_m10bmc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i.i88 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i88, align 4
  %call.i.i89 = call i32 @regmap_read(ptr noundef %31, i32 noundef %add.i87, ptr noundef nonnull %regval.i85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %tobool.not.i.i90, label %if.end.i93, label %m10bmc_raw_read.exit.i91

m10bmc_raw_read.exit.i91:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef %add.i87, i32 noundef %call.i.i89) #10
  br label %do_sensor_read.exit98.thread

if.end.i93:                                       ; preds = %if.then44
  %34 = ptrtoint ptr %regval.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regval.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %35)
  %cmp.i92 = icmp eq i32 %35, -559038737
  br i1 %cmp.i92, label %if.end.i93.do_sensor_read.exit98.thread_crit_edge, label %if.end48

if.end.i93.do_sensor_read.exit98.thread_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_sensor_read.exit98.thread

do_sensor_read.exit98.thread:                     ; preds = %if.end.i93.do_sensor_read.exit98.thread_crit_edge, %m10bmc_raw_read.exit.i91
  %retval.0.i97.ph = phi i32 [ -61, %if.end.i93.do_sensor_read.exit98.thread_crit_edge ], [ %call.i.i89, %m10bmc_raw_read.exit.i91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i85) #7
  br label %cleanup

if.end48:                                         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %multiplier.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %multiplier.i, align 4
  %mul.i95 = mul i32 %37, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i85) #7
  %sub = sub i32 %mul.i, %mul.i95
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end42.if.end49_crit_edge
  %value.1 = phi i32 [ %mul.i, %if.end42.if.end49_crit_edge ], [ %sub, %if.end48 ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %value.1, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do_sensor_read.exit98.thread, %do_sensor_read.exit.thread, %sw.epilog36.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end49 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb11.cleanup_crit_edge ], [ -95, %sw.bb21.cleanup_crit_edge ], [ -95, %sw.bb30.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %sw.epilog36.cleanup_crit_edge ], [ %retval.0.i84.ph, %do_sensor_read.exit.thread ], [ %retval.0.i97.ph, %do_sensor_read.exit98.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m10bmc_hwmon_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bdata.i = getelementptr inbounds %struct.m10bmc_hwmon, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdata.i, align 4
  %arrayidx.i = getelementptr [10 x ptr], ptr %3, i32 0, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %arrayidx1.i = getelementptr %struct.m10bmc_sdata, ptr %5, i32 %channel
  %retval.0.i = select i1 %tobool.not.i, ptr inttoptr (i32 -95 to ptr), ptr %arrayidx1.i
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %label = getelementptr inbounds %struct.m10bmc_sdata, ptr %retval.0.i, i32 0, i32 6
  %7 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %label, align 4
  %9 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %str, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__initcall__kmod_intel_m10_bmc_hwmon__170_567_intel_m10bmc_hwmon_driver_init6, !1, !"__initcall__kmod_intel_m10_bmc_hwmon__170_567_intel_m10bmc_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 567, i32 1}
!2 = !{ptr @__exitcall_intel_m10bmc_hwmon_driver_exit, !1, !"__exitcall_intel_m10bmc_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 570, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 571, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 572, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 563, i32 11}
!12 = !{ptr @intel_m10bmc_hwmon_driver, !13, !"intel_m10bmc_hwmon_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 560, i32 31}
!14 = !{ptr @m10bmc_hwmon_ops, !15, !"m10bmc_hwmon_ops", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 506, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/mfd/intel-m10-bmc.h", i32 145, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @m10bmc_raw_read._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @m10bmc_raw_read._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @intel_m10bmc_hwmon_ids, !25, !"intel_m10bmc_hwmon_ids", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 544, i32 40}
!26 = !{ptr @n3000bmc_hwmon_bdata, !27, !"n3000bmc_hwmon_bdata", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 146, i32 45}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 39, i32 42}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 40, i32 40}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 41, i32 40}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 42, i32 40}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 43, i32 36}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 44, i32 36}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 45, i32 36}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 46, i32 36}
!44 = !{ptr @n3000bmc_temp_tbl, !45, !"n3000bmc_temp_tbl", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 38, i32 34}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 50, i32 34}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 51, i32 34}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 52, i32 34}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 53, i32 34}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 54, i32 34}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 55, i32 34}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 56, i32 34}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 57, i32 34}
!62 = !{ptr @n3000bmc_in_tbl, !63, !"n3000bmc_in_tbl", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 49, i32 34}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 61, i32 34}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 62, i32 34}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 63, i32 34}
!70 = !{ptr @n3000bmc_curr_tbl, !71, !"n3000bmc_curr_tbl", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 60, i32 34}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 67, i32 37}
!74 = !{ptr @n3000bmc_power_tbl, !75, !"n3000bmc_power_tbl", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 66, i32 34}
!76 = !{ptr @n3000bmc_hinfo, !77, !"n3000bmc_hinfo", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 70, i32 41}
!78 = !{ptr @d5005bmc_hwmon_bdata, !79, !"d5005bmc_hwmon_bdata", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 221, i32 45}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 103, i32 42}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 104, i32 40}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 105, i32 42}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 106, i32 40}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 107, i32 42}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 108, i32 42}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 109, i32 42}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 110, i32 42}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 113, i32 40}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 114, i32 40}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 115, i32 40}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 116, i32 40}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 117, i32 40}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 118, i32 40}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 119, i32 40}
!110 = !{ptr @d5005bmc_temp_tbl, !111, !"d5005bmc_temp_tbl", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 102, i32 34}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 126, i32 38}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 127, i32 38}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 128, i32 38}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 129, i32 38}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 130, i32 38}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 131, i32 36}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 132, i32 36}
!126 = !{ptr @d5005bmc_in_tbl, !127, !"d5005bmc_in_tbl", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 122, i32 34}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 137, i32 34}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 138, i32 34}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 139, i32 34}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 140, i32 34}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 141, i32 34}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 142, i32 36}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 143, i32 36}
!142 = !{ptr @d5005bmc_curr_tbl, !143, !"d5005bmc_curr_tbl", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 135, i32 34}
!144 = !{ptr @d5005bmc_hinfo, !145, !"d5005bmc_hinfo", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 157, i32 41}
!146 = !{ptr @n5010bmc_hwmon_bdata, !147, !"n5010bmc_hwmon_bdata", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 333, i32 45}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 232, i32 39}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 233, i32 39}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 234, i32 39}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 235, i32 37}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 236, i32 37}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 237, i32 37}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 238, i32 37}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 239, i32 37}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 240, i32 37}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 241, i32 37}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 242, i32 37}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 243, i32 37}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 244, i32 37}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 245, i32 37}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 246, i32 37}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 247, i32 37}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 248, i32 37}
!182 = !{ptr @n5010bmc_temp_tbl, !183, !"n5010bmc_temp_tbl", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 231, i32 34}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 252, i32 34}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 253, i32 34}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 254, i32 34}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 255, i32 34}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 256, i32 34}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 257, i32 34}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 258, i32 34}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 259, i32 34}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 260, i32 34}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 261, i32 34}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 262, i32 34}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 263, i32 34}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 264, i32 34}
!210 = !{ptr @n5010bmc_in_tbl, !211, !"n5010bmc_in_tbl", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 251, i32 34}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 268, i32 34}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 269, i32 34}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 270, i32 34}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 271, i32 34}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 272, i32 34}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 273, i32 34}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 274, i32 34}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 275, i32 34}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 276, i32 34}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 277, i32 34}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 278, i32 34}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 279, i32 34}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 280, i32 34}
!238 = !{ptr @n5010bmc_curr_tbl, !239, !"n5010bmc_curr_tbl", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 267, i32 34}
!240 = !{ptr @n5010bmc_hinfo, !241, !"n5010bmc_hinfo", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/intel-m10-bmc-hwmon.c", i32 283, i32 41}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{!"auto-init"}
