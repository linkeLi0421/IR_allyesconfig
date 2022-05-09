; ModuleID = '/llk/IR_all_yes/drivers/memory/stm32-fmc2-ebi.c_pt.bc'
source_filename = "../drivers/memory/stm32-fmc2-ebi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_fmc2_prop = type { ptr, i8, i8, i32, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_fmc2_ebi = type { ptr, ptr, ptr, i8, [4 x i32], [4 x i32], [4 x i32], i32 }

@__initcall__kmod_stm32_fmc2_ebi__460_1205_stm32_fmc2_ebi_driver_init6 = internal global ptr @stm32_fmc2_ebi_driver_init, section ".initcall6.init", align 4
@stm32_fmc2_ebi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_fmc2_ebi_probe, ptr @stm32_fmc2_ebi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_fmc2_ebi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_fmc2_ebi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_fmc2_ebi_driver_exit = internal global ptr @stm32_fmc2_ebi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias461 = internal constant [45 x i8] c"stm32_fmc2_ebi.alias=platform:stm32_fmc2_ebi\00", section ".modinfo", align 1
@__UNIQUE_ID_author462 = internal constant [69 x i8] c"stm32_fmc2_ebi.author=Christophe Kerello <christophe.kerello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description463 = internal constant [68 x i8] c"stm32_fmc2_ebi.description=STMicroelectronics STM32 FMC2 ebi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file464 = internal constant [50 x i8] c"stm32_fmc2_ebi.file=drivers/memory/stm32-fmc2-ebi\00", section ".modinfo", align 1
@__UNIQUE_ID_license465 = internal constant [30 x i8] c"stm32_fmc2_ebi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_fmc2_ebi\00", [17 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-fmc2-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr @stm32_fmc2_ebi_suspend, ptr @stm32_fmc2_ebi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1050, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_fmc2_ebi_parse_dt\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/memory/stm32-fmc2-ebi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr = internal global ptr @stm32_fmc2_ebi_parse_dt._entry, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_dt._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1056, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid reg value: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr.9 = internal global ptr @stm32_fmc2_ebi_parse_dt._entry.7, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_dt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1062, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bank already assigned: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr.12 = internal global ptr @stm32_fmc2_ebi_parse_dt._entry.10, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1071, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setup chip select %d failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr.15 = internal global ptr @stm32_fmc2_ebi_parse_dt._entry.13, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1082, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no subnodes found, disable the driver.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr.19 = internal global ptr @stm32_fmc2_ebi_parse_dt._entry.16, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1087, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NWAIT signal connected to EBI and NAND controllers\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_dt._entry_ptr.22 = internal global ptr @stm32_fmc2_ebi_parse_dt._entry.20, section ".printk_index", align 4
@stm32_fmc2_child_props = internal constant { [23 x %struct.stm32_fmc2_prop], [160 x i8] } { [23 x %struct.stm32_fmc2_prop] [%struct.stm32_fmc2_prop { ptr @.str.25, i8 0, i8 1, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_trans_type }, %struct.stm32_fmc2_prop { ptr @.str.26, i8 1, i8 0, i32 1, i32 1048576, i32 0, ptr @stm32_fmc2_ebi_check_cclk, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.27, i8 1, i8 0, i32 1, i32 2, i32 0, ptr @stm32_fmc2_ebi_check_mux, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.28, i8 0, i8 0, i32 0, i32 0, i32 16, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_buswidth }, %struct.stm32_fmc2_prop { ptr @.str.29, i8 1, i8 0, i32 1, i32 512, i32 0, ptr null, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.30, i8 1, i8 0, i32 1, i32 2048, i32 0, ptr @stm32_fmc2_ebi_check_waitcfg, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.31, i8 1, i8 0, i32 1, i32 8192, i32 0, ptr @stm32_fmc2_ebi_check_sync_trans, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.32, i8 1, i8 0, i32 1, i32 32768, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr null, ptr @stm32_fmc2_ebi_set_bit_field }, %struct.stm32_fmc2_prop { ptr @.str.33, i8 0, i8 0, i32 0, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_cpsize, ptr null, ptr @stm32_fmc2_ebi_set_cpsize }, %struct.stm32_fmc2_prop { ptr @.str.34, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bl_setup }, %struct.stm32_fmc2_prop { ptr @.str.35, i8 0, i8 0, i32 2, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_setup }, %struct.stm32_fmc2_prop { ptr @.str.36, i8 0, i8 0, i32 2, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_address_hold, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_hold }, %struct.stm32_fmc2_prop { ptr @.str.37, i8 0, i8 0, i32 2, i32 0, i32 255, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_setup }, %struct.stm32_fmc2_prop { ptr @.str.38, i8 0, i8 0, i32 2, i32 0, i32 16, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bus_turnaround }, %struct.stm32_fmc2_prop { ptr @.str.39, i8 0, i8 0, i32 2, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_hold }, %struct.stm32_fmc2_prop { ptr @.str.40, i8 0, i8 0, i32 0, i32 0, i32 16, ptr @stm32_fmc2_ebi_check_clk_period, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_clk_period }, %struct.stm32_fmc2_prop { ptr @.str.41, i8 0, i8 0, i32 0, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_sync_trans, ptr @stm32_fmc2_ebi_ns_to_clk_period, ptr @stm32_fmc2_ebi_set_data_latency }, %struct.stm32_fmc2_prop { ptr @.str.42, i8 0, i8 0, i32 3, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_setup }, %struct.stm32_fmc2_prop { ptr @.str.43, i8 0, i8 0, i32 3, i32 0, i32 15, ptr @stm32_fmc2_ebi_check_address_hold, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_address_hold }, %struct.stm32_fmc2_prop { ptr @.str.44, i8 0, i8 0, i32 3, i32 0, i32 255, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_setup }, %struct.stm32_fmc2_prop { ptr @.str.45, i8 0, i8 0, i32 3, i32 0, i32 16, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_bus_turnaround }, %struct.stm32_fmc2_prop { ptr @.str.46, i8 0, i8 0, i32 3, i32 0, i32 0, ptr @stm32_fmc2_ebi_check_async_trans, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_data_hold }, %struct.stm32_fmc2_prop { ptr @.str.47, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @stm32_fmc2_ebi_ns_to_clock_cycles, ptr @stm32_fmc2_ebi_set_max_low_pulse }], [160 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_setup_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1028, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"property %s could not be set: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_fmc2_ebi_setup_cs\00", [40 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_setup_cs._entry_ptr = internal global ptr @stm32_fmc2_ebi_setup_cs._entry, section ".printk_index", align 4
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"st,fmc2-ebi-cs-transaction-type\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,fmc2-ebi-cs-cclk-enable\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st,fmc2-ebi-cs-mux-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,fmc2-ebi-cs-buswidth\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st,fmc2-ebi-cs-waitpol-high\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,fmc2-ebi-cs-waitcfg-enable\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,fmc2-ebi-cs-wait-enable\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"st,fmc2-ebi-cs-asyncwait-enable\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,fmc2-ebi-cs-cpsize\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st,fmc2-ebi-cs-byte-lane-setup-ns\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"st,fmc2-ebi-cs-address-setup-ns\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"st,fmc2-ebi-cs-address-hold-ns\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"st,fmc2-ebi-cs-data-setup-ns\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"st,fmc2-ebi-cs-bus-turnaround-ns\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st,fmc2-ebi-cs-data-hold-ns\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"st,fmc2-ebi-cs-clk-period-ns\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"st,fmc2-ebi-cs-data-latency-ns\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"st,fmc2-ebi-cs-write-address-setup-ns\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"st,fmc2-ebi-cs-write-address-hold-ns\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"st,fmc2-ebi-cs-write-data-setup-ns\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"st,fmc2-ebi-cs-write-bus-turnaround-ns\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st,fmc2-ebi-cs-write-data-hold-ns\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"st,fmc2-ebi-cs-max-low-pulse-ns\00", [32 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"property %s is not well defined\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_fmc2_ebi_parse_prop\00", [38 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_prop._entry_ptr = internal global ptr @stm32_fmc2_ebi_parse_prop._entry, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_prop._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 906, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mandatory property %s not defined in the device tree\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_prop._entry_ptr.52 = internal global ptr @stm32_fmc2_ebi_parse_prop._entry.50, section ".printk_index", align 4
@stm32_fmc2_ebi_parse_prop._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 919, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@stm32_fmc2_ebi_parse_prop._entry_ptr.54 = internal global ptr @stm32_fmc2_ebi_parse_prop._entry.53, section ".printk_index", align 4
@switch.table.stm32_fmc2_ebi_set_cpsize = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 65536, i32 131072, i32 0, i32 196608, i32 0, i32 0, i32 0, i32 262144], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"stm32_fmc2_ebi_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1196, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1200, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"stm32_fmc2_ebi_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1190, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"stm32_fmc2_ebi_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1187, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1047, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1049, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1056, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1062, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1070, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1082, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1087, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"stm32_fmc2_child_props\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 718, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1027, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 721, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 726, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 734, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 742, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 747, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 754, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 762, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 770, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 778, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 783, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 788, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 796, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 804, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 812, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 819, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 826, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 833, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 839, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 847, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 855, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 863, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 870, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 877, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 892, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 905, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private constant [35 x i8] c"../drivers/memory/stm32-fmc2-ebi.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 918, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [39 x i8] c"switch.table.stm32_fmc2_ebi_set_cpsize\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_description463, ptr @__UNIQUE_ID_file464, ptr @__UNIQUE_ID_license465, ptr @__exitcall_stm32_fmc2_ebi_driver_exit, ptr @__initcall__kmod_stm32_fmc2_ebi__460_1205_stm32_fmc2_ebi_driver_init6, ptr @stm32_fmc2_ebi_driver_exit, ptr @stm32_fmc2_ebi_parse_dt._entry, ptr @stm32_fmc2_ebi_parse_dt._entry.10, ptr @stm32_fmc2_ebi_parse_dt._entry.13, ptr @stm32_fmc2_ebi_parse_dt._entry.16, ptr @stm32_fmc2_ebi_parse_dt._entry.20, ptr @stm32_fmc2_ebi_parse_dt._entry.7, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.12, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.15, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.19, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.22, ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.9, ptr @stm32_fmc2_ebi_parse_prop._entry, ptr @stm32_fmc2_ebi_parse_prop._entry.50, ptr @stm32_fmc2_ebi_parse_prop._entry.53, ptr @stm32_fmc2_ebi_parse_prop._entry_ptr, ptr @stm32_fmc2_ebi_parse_prop._entry_ptr.52, ptr @stm32_fmc2_ebi_parse_prop._entry_ptr.54, ptr @stm32_fmc2_ebi_setup_cs._entry, ptr @stm32_fmc2_ebi_setup_cs._entry_ptr, ptr @stm32_fmc2_ebi_driver, ptr @.str, ptr @stm32_fmc2_ebi_match, ptr @stm32_fmc2_ebi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @stm32_fmc2_child_props, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @switch.table.stm32_fmc2_ebi_set_cpsize], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_child_props to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_setup_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_prop._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_ebi_parse_prop._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_fmc2_ebi_set_cpsize to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_fmc2_ebi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_fmc2_ebi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_fmc2_ebi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bcr.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %bank.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @device_node_to_regmap(ptr noundef %2) #6
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clk, align 4
  %cmp.i65 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end.i
  %cmp.i67 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #6
  %call30 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank.i) #6
  %11 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %bank.i, align 4, !annotation !125
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i68 = tail call ptr @of_get_next_available_child(ptr noundef %13, ptr noundef null) #6
  %cmp.not119.i = icmp eq ptr %call.i68, null
  br i1 %cmp.not119.i, label %do.end36.critedge.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end31
  %bank_assigned.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %call.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0120.i = phi ptr [ %call.i68, %for.body.lr.ph.i ], [ %call31.i, %if.end25.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0120.i, ptr noundef nonnull @.str.1, ptr noundef nonnull %bank.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i69 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i69, label %if.end.i70, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef %call.i.i.i) #9
  call void @of_node_put(ptr noundef nonnull %child.0120.i) #6
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

if.end.i70:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp3.i = icmp ugt i32 %15, 4
  br i1 %cmp3.i, label %do.end7.i, label %if.end8.i

do.end7.i:                                        ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %15) #9
  call void @of_node_put(ptr noundef nonnull %child.0120.i) #6
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.end.i70
  %16 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bank_assigned.i, align 4
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 1, %15
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %15) #9
  call void @of_node_put(ptr noundef nonnull %child.0120.i) #6
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp15.i = icmp ult i32 %15, 4
  br i1 %cmp15.i, label %if.then17.i, label %if.end14.i.if.end25.i_crit_edge

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.end14.i
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %mul.i.i.i = shl nuw nsw i32 %15, 3
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %mul.i.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then17.i
  %i.038.i.i = phi i32 [ 0, %if.then17.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %i.038.i.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %set.i.i.i = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %i.038.i.i, i32 8
  %22 = ptrtoint ptr %set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set.i.i.i, align 4
  %24 = lshr i32 5251609, %i.038.i.i
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool2.not.i.not.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.if.end6.i.i.i_crit_edge

for.body.i.i.if.end6.i.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %check.i.i.i = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %i.038.i.i, i32 6
  %26 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %check.i.i.i, align 4
  %call.i.i76.i = call i32 %27(ptr noundef nonnull %call.i, ptr noundef %arrayidx.i.i, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i76.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.if.end6.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i.i.if.end6.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end6.i.i.i_crit_edge, %for.body.i.i.if.end6.i.i.i_crit_edge
  %28 = lshr i32 8388361, %i.038.i.i
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool7.not.i.not.i.i, label %if.then8.i.i.i, label %if.else.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i13.i.i = call ptr @of_find_property(ptr noundef nonnull %child.0120.i, ptr noundef %31, ptr noundef null) #6
  %tobool.i.i.i.i = icmp ne ptr %call.i.i13.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038.i.i)
  %tobool12.not.i.i.i = icmp ne i32 %i.038.i.i, 0
  %brmerge.i.i.i = select i1 %tobool12.not.i.i.i, i1 true, i1 %tobool.i.i.i.i
  br i1 %brmerge.i.i.i, label %cleanup.thread.i.i.i, label %cleanup.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i.i.i = zext i1 %tobool.i.i.i.i to i32
  br label %stm32_fmc2_ebi_parse_prop.exit.i.i

cleanup.i.i.i:                                    ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.51, ptr noundef %31) #9
  br label %do.end23.i

if.else.i.i.i:                                    ; preds = %if.end6.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %32 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !125
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0120.i, ptr noundef %34, ptr noundef nonnull %val.i.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038.i.i)
  %tobool27.not.i.i.i = icmp ne i32 %i.038.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool29.not.i.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  %or.cond.i.i.i = select i1 %tobool27.not.i.i.i, i1 true, i1 %tobool29.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end35.i.i.i, label %cleanup46.i.i.i

if.end35.i.i.i:                                   ; preds = %if.else.i.i.i
  br i1 %tobool29.not.i.i.i, label %if.else38.i.i.i, label %if.then37.i.i.i

if.then37.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %reset_val.i.i.i = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %i.038.i.i, i32 5
  %35 = ptrtoint ptr %reset_val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reset_val.i.i.i, align 4
  br label %cleanup46.thread.i.i.i

if.else38.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.038.i.i)
  %tobool39.not.i.i.i = icmp ult i32 %i.038.i.i, 9
  %37 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i.i.i, align 4
  br i1 %tobool39.not.i.i.i, label %if.else38.i.i.i.cleanup46.thread.i.i.i_crit_edge, label %if.then40.i.i.i

if.else38.i.i.i.cleanup46.thread.i.i.i_crit_edge: ; preds = %if.else38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46.thread.i.i.i

if.then40.i.i.i:                                  ; preds = %if.else38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %calculate.i.i.i = getelementptr [23 x %struct.stm32_fmc2_prop], ptr @stm32_fmc2_child_props, i32 0, i32 %i.038.i.i, i32 7
  %39 = ptrtoint ptr %calculate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %calculate.i.i.i, align 4
  %call42.i.i.i = call i32 %40(ptr noundef nonnull %call.i, i32 noundef %15, i32 noundef %38) #6
  br label %cleanup46.thread.i.i.i

cleanup46.thread.i.i.i:                           ; preds = %if.then40.i.i.i, %if.else38.i.i.i.cleanup46.thread.i.i.i_crit_edge, %if.then37.i.i.i
  %setup.3.ph.i.i.i = phi i32 [ %call42.i.i.i, %if.then40.i.i.i ], [ %36, %if.then37.i.i.i ], [ %38, %if.else38.i.i.i.cleanup46.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  br label %stm32_fmc2_ebi_parse_prop.exit.i.i

cleanup46.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.51, ptr noundef %34) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  br label %do.end23.i

stm32_fmc2_ebi_parse_prop.exit.i.i:               ; preds = %cleanup46.thread.i.i.i, %cleanup.thread.i.i.i
  %setup.4.i.i.i = phi i32 [ %spec.select.i.i.i, %cleanup.thread.i.i.i ], [ %setup.3.ph.i.i.i, %cleanup46.thread.i.i.i ]
  %call52.i.i.i = call i32 %23(ptr noundef nonnull %call.i, ptr noundef %arrayidx.i.i, i32 noundef %15, i32 noundef %setup.4.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call52.i.i.i, 0
  br i1 %tobool.not.i.i, label %stm32_fmc2_ebi_parse_prop.exit.i.i.for.inc.i.i_crit_edge, label %stm32_fmc2_ebi_parse_prop.exit.i.i.do.end23.i_crit_edge

stm32_fmc2_ebi_parse_prop.exit.i.i.do.end23.i_crit_edge: ; preds = %stm32_fmc2_ebi_parse_prop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

stm32_fmc2_ebi_parse_prop.exit.i.i.for.inc.i.i_crit_edge: ; preds = %stm32_fmc2_ebi_parse_prop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %stm32_fmc2_ebi_parse_prop.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 23
  br i1 %exitcond.not.i.i, label %stm32_fmc2_ebi_setup_cs.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

stm32_fmc2_ebi_setup_cs.exit.i:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call.i.i16.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %mul.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end25.i

do.end23.i:                                       ; preds = %stm32_fmc2_ebi_parse_prop.exit.i.i.do.end23.i_crit_edge, %cleanup46.i.i.i, %cleanup.i.i.i
  %retval.2.i.ph.i.sink.i = phi i32 [ %call.i.i.i.i.i, %cleanup46.i.i.i ], [ -22, %cleanup.i.i.i ], [ %call52.i.i.i, %stm32_fmc2_ebi_parse_prop.exit.i.i.do.end23.i_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.23, ptr noundef %46, i32 noundef %retval.2.i.ph.i.sink.i) #9
  %47 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bank.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %48, i32 noundef %retval.2.i.ph.i.sink.i) #9
  call void @of_node_put(ptr noundef nonnull %child.0120.i) #6
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

if.end25.i:                                       ; preds = %stm32_fmc2_ebi_setup_cs.exit.i, %if.end14.i.if.end25.i_crit_edge
  %49 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bank.i, align 4
  %shl26.i = shl nuw i32 1, %50
  %51 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bank_assigned.i, align 4
  %53 = trunc i32 %shl26.i to i8
  %conv29.i = or i8 %52, %53
  store i8 %conv29.i, ptr %bank_assigned.i, align 4
  %54 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node.i, align 8
  %call31.i = call ptr @of_get_next_available_child(ptr noundef %55, ptr noundef nonnull %child.0120.i) #6
  %cmp.not.i = icmp eq ptr %call31.i, null
  br i1 %cmp.not.i, label %if.end37.i, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end36.critedge.i:                              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.17) #9
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

if.end37.i:                                       ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr.i.i) #6
  %56 = ptrtoint ptr %bcr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %bcr.i.i, align 4, !annotation !125
  %57 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bank_assigned.i, align 4
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i77.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i77.i, label %if.end37.i.for.inc.i78.i_crit_edge, label %if.end.i.i

if.end37.i.for.inc.i78.i_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i78.i

if.end.i.i:                                       ; preds = %if.end37.i
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i.i71 = call i32 @regmap_read(ptr noundef %61, i32 noundef 0, ptr noundef nonnull %bcr.i.i) #6
  %62 = ptrtoint ptr %bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bcr.i.i, align 4
  %64 = and i32 %63, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %if.end.i.i.for.inc.i78.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.for.inc.i78.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i78.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %66 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bank_assigned.i, align 4
  %68 = and i8 %67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool8.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.for.inc.i78.i_crit_edge, label %land.lhs.true.i.i.do.end42.i_crit_edge

land.lhs.true.i.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true.i.i.for.inc.i78.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i78.i

for.inc.i78.i:                                    ; preds = %land.lhs.true.i.i.for.inc.i78.i_crit_edge, %if.end.i.i.for.inc.i78.i_crit_edge, %if.end37.i.for.inc.i78.i_crit_edge
  %69 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bank_assigned.i, align 4
  %71 = and i8 %70, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.1.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i78.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i78.i.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i78.i
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.1.i.i = call i32 @regmap_read(ptr noundef %73, i32 noundef 8, ptr noundef nonnull %bcr.i.i) #6
  %74 = ptrtoint ptr %bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bcr.i.i, align 4
  %76 = and i32 %75, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.end.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end.1.i.i
  %78 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bank_assigned.i, align 4
  %80 = and i8 %79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool8.not.1.i.i = icmp eq i8 %80, 0
  br i1 %tobool8.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i.do.end42.i_crit_edge

land.lhs.true.1.i.i.do.end42.i_crit_edge:         ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %if.end.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i78.i.for.inc.1.i.i_crit_edge
  %81 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bank_assigned.i, align 4
  %83 = and i8 %82, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.2.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.2.i.i = call i32 @regmap_read(ptr noundef %85, i32 noundef 16, ptr noundef nonnull %bcr.i.i) #6
  %86 = ptrtoint ptr %bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bcr.i.i, align 4
  %88 = and i32 %87, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %if.end.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

if.end.2.i.i.for.inc.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %if.end.2.i.i
  %90 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bank_assigned.i, align 4
  %92 = and i8 %91, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool8.not.2.i.i = icmp eq i8 %92, 0
  br i1 %tobool8.not.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i.do.end42.i_crit_edge

land.lhs.true.2.i.i.do.end42.i_crit_edge:         ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %if.end.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %93 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bank_assigned.i, align 4
  %95 = and i8 %94, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.3.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_fmc2_ebi_parse_dt.exit

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call.3.i.i = call i32 @regmap_read(ptr noundef %97, i32 noundef 24, ptr noundef nonnull %bcr.i.i) #6
  %98 = ptrtoint ptr %bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bcr.i.i, align 4
  %100 = and i32 %99, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %if.end.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge, label %land.lhs.true.3.i.i

if.end.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_fmc2_ebi_parse_dt.exit

land.lhs.true.3.i.i:                              ; preds = %if.end.3.i.i
  %102 = ptrtoint ptr %bank_assigned.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bank_assigned.i, align 4
  %104 = and i8 %103, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool8.not.3.i.i = icmp eq i8 %104, 0
  br i1 %tobool8.not.3.i.i, label %land.lhs.true.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge, label %land.lhs.true.3.i.i.do.end42.i_crit_edge

land.lhs.true.3.i.i.do.end42.i_crit_edge:         ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.lhs.true.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_fmc2_ebi_parse_dt.exit

do.end42.i:                                       ; preds = %land.lhs.true.3.i.i.do.end42.i_crit_edge, %land.lhs.true.2.i.i.do.end42.i_crit_edge, %land.lhs.true.1.i.i.do.end42.i_crit_edge, %land.lhs.true.i.i.do.end42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21) #9
  br label %stm32_fmc2_ebi_parse_dt.exit.thread

stm32_fmc2_ebi_parse_dt.exit.thread:              ; preds = %do.end42.i, %do.end36.critedge.i, %do.end23.i, %do.end13.i, %do.end7.i, %do.end.i
  %retval.0.i72.ph = phi i32 [ -19, %do.end36.critedge.i ], [ -22, %do.end42.i ], [ %retval.2.i.ph.i.sink.i, %do.end23.i ], [ -22, %do.end13.i ], [ -22, %do.end7.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i) #6
  br label %err_release

stm32_fmc2_ebi_parse_dt.exit:                     ; preds = %land.lhs.true.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge, %if.end.3.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge, %for.inc.2.i.i.stm32_fmc2_ebi_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr.i.i) #6
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call.i.i81.i = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %107 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %of_node.i, align 8
  %call45.i = call i32 @of_platform_populate(ptr noundef %108, ptr noundef null, ptr noundef null, ptr noundef %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool33.not = icmp eq i32 %call45.i, 0
  br i1 %tobool33.not, label %if.end35, label %stm32_fmc2_ebi_parse_dt.exit.err_release_crit_edge

stm32_fmc2_ebi_parse_dt.exit.err_release_crit_edge: ; preds = %stm32_fmc2_ebi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release

if.end35:                                         ; preds = %stm32_fmc2_ebi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stm32_fmc2_ebi_save_setup(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_release:                                      ; preds = %stm32_fmc2_ebi_parse_dt.exit.err_release_crit_edge, %stm32_fmc2_ebi_parse_dt.exit.thread
  %retval.0.i7278 = phi i32 [ %retval.0.i72.ph, %stm32_fmc2_ebi_parse_dt.exit.thread ], [ %call45.i, %stm32_fmc2_ebi_parse_dt.exit.err_release_crit_edge ]
  call fastcc void @stm32_fmc2_ebi_disable_banks(ptr noundef nonnull %call.i)
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call.i.i73 = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %112 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %113) #6
  call void @clk_unprepare(ptr noundef %113) #6
  br label %cleanup

cleanup:                                          ; preds = %err_release, %if.end35, %if.then3.i, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %6, %if.then14 ], [ %retval.0.i7278, %err_release ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end17.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i66, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #6
  tail call fastcc void @stm32_fmc2_ebi_disable_banks(ptr noundef %1)
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_ebi_save_setup(ptr noundef %ebi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 4, i32 0
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 0, ptr noundef %arrayidx) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %arrayidx4 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 5, i32 0
  %call5 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 4, ptr noundef %arrayidx4) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %arrayidx9 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 6, i32 0
  %call10 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 260, ptr noundef %arrayidx9) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %arrayidx.1 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 4, i32 1
  %call.1 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef %arrayidx.1) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %arrayidx4.1 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 5, i32 1
  %call5.1 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 12, ptr noundef %arrayidx4.1) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %arrayidx9.1 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 6, i32 1
  %call10.1 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef 268, ptr noundef %arrayidx9.1) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %arrayidx.2 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 4, i32 2
  %call.2 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef 16, ptr noundef %arrayidx.2) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %arrayidx4.2 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 5, i32 2
  %call5.2 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 20, ptr noundef %arrayidx4.2) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %arrayidx9.2 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 6, i32 2
  %call10.2 = tail call i32 @regmap_read(ptr noundef %17, i32 noundef 276, ptr noundef %arrayidx9.2) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %arrayidx.3 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 4, i32 3
  %call.3 = tail call i32 @regmap_read(ptr noundef %19, i32 noundef 24, ptr noundef %arrayidx.3) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %arrayidx4.3 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 5, i32 3
  %call5.3 = tail call i32 @regmap_read(ptr noundef %21, i32 noundef 28, ptr noundef %arrayidx4.3) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %arrayidx9.3 = getelementptr %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 6, i32 3
  %call10.3 = tail call i32 @regmap_read(ptr noundef %23, i32 noundef 284, ptr noundef %arrayidx9.3) #6
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %pcscntr = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 7
  %call12 = tail call i32 @regmap_read(ptr noundef %25, i32 noundef 32, ptr noundef %pcscntr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_ebi_disable_banks(ptr nocapture noundef readonly %ebi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bank_assigned = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 3
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %0 = ptrtoint ptr %bank_assigned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bank_assigned, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %5 = ptrtoint ptr %bank_assigned to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bank_assigned, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %10 = ptrtoint ptr %bank_assigned to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank_assigned, align 4
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.2 = icmp eq i8 %12, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %15 = ptrtoint ptr %bank_assigned to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bank_assigned, align 4
  %17 = and i8 %16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.3 = icmp eq i8 %17, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_trans_type(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %setup to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %setup, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %do.end28
    i32 2, label %entry.if.then_crit_edge
    i32 3, label %do.end99
    i32 4, label %do.end152
    i32 5, label %do.end171
    i32 6, label %do.end224
    i32 7, label %do.end277
    i32 8, label %do.end330
    i32 9, label %do.end349
    i32 10, label %do.end368
    i32 11, label %do.end387
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end99:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end152:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end171:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end224:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end277:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end330:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end349:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end368:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end387:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.end277, %do.end224, %do.end171, %do.end99, %entry.if.then_crit_edge
  %btr.0 = phi i32 [ 805306368, %do.end277 ], [ 536870912, %do.end224 ], [ 268435456, %do.end171 ], [ 0, %do.end99 ], [ 0, %entry.if.then_crit_edge ]
  %bcr.0 = phi i32 [ 20552, %do.end277 ], [ 20552, %do.end224 ], [ 20552, %do.end171 ], [ 20484, %do.end99 ], [ 20480, %entry.if.then_crit_edge ]
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %add = add i32 %mul, 260
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 805306368, i32 noundef %btr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end387, %do.end368, %do.end349, %do.end330, %do.end152, %do.end28, %entry.if.end_crit_edge
  %bcr.0448 = phi i32 [ %bcr.0, %if.then ], [ 4096, %entry.if.end_crit_edge ], [ 4100, %do.end28 ], [ 4168, %do.end152 ], [ 528644, %do.end330 ], [ 4356, %do.end349 ], [ 528712, %do.end368 ], [ 4424, %do.end387 ]
  %btr.0447 = phi i32 [ %btr.0, %if.then ], [ %setup, %entry.if.end_crit_edge ], [ 0, %do.end28 ], [ 0, %do.end152 ], [ 0, %do.end330 ], [ 0, %do.end349 ], [ 0, %do.end368 ], [ 0, %do.end387 ]
  %regmap391 = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %3 = ptrtoint ptr %regmap391 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap391, align 4
  %mul392 = shl i32 %cs, 3
  %add393 = or i32 %mul392, 4
  %call.i441 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add393, i32 noundef 805306368, i32 noundef %btr.0447, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %regmap391 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap391, align 4
  %call.i442 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %mul392, i32 noundef 553294, i32 noundef %bcr.0448, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_cclk(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs)
  %tobool.not = icmp eq i32 %cs, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr.i) #6
  %0 = ptrtoint ptr %bcr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr.i, align 4, !annotation !125
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %bcr.i) #6
  %3 = ptrtoint ptr %bcr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr.i, align 4
  %and.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr.i) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %..i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bit_field(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  br label %if.end

if.end:                                           ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.if.end_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %sw.bb.i ], [ %add3.i, %sw.bb1.i ], [ %add6.i, %sw.bb4.i ], [ 32, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %reg_mask = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 4
  %5 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setup)
  %tobool1.not = icmp eq i32 %setup, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 %6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %mul.sink.i, i32 noundef %6, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_mux(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %3 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr, align 4
  %and = and i32 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_buswidth(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %setup to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %setup, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 16, label %do.end28
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 16, %do.end28 ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %mul, i32 noundef 48, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_waitcfg(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %3 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr, align 4
  %5 = and i32 %4, 268
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %5)
  %.not = icmp eq i32 %5, 264
  %retval.0 = select i1 %.not, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_sync_trans(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %3 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_async_trans(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %3 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr, align 4
  %5 = and i32 %4, 524544
  call void @__sanitizer_cov_trace_const_cmp4(i32 524544, i32 %5)
  %.not = icmp eq i32 %5, 524544
  %retval.0 = select i1 %.not, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_cpsize(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %3 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bcr, align 4
  %5 = and i32 %4, 268
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %5)
  %.not = icmp eq i32 %5, 260
  %retval.0 = select i1 %.not, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_cpsize(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %setup, i32 %setup, i32 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %1 = icmp ult i32 %0, 9
  br i1 %1, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %0 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %2 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.lobit.not = icmp eq i16 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.stm32_fmc2_ebi_set_cpsize, i32 0, i32 %0
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %mul, i32 noundef 458752, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_ns_to_clock_cycles(ptr nocapture noundef readonly %ebi, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %div = udiv i32 %call, 1000
  %div1 = udiv i32 1000000000, %div
  %mul = mul i32 %setup, 1000
  %add = add i32 %mul, -1
  %sub = add i32 %add, %div1
  %div2 = udiv i32 %sub, %div1
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bl_setup(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
do.end14:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %setup, i32 3)
  %shl = shl nuw nsw i32 %0, 22
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %mul, i32 noundef 12582912, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_address_setup(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  %bxtr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bxtr) #6
  %1 = ptrtoint ptr %bxtr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bxtr, align 4, !annotation !125
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %2 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %entry.if.end_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl i32 %cs, 3
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  br label %if.end

if.end:                                           ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.if.end_crit_edge
  %mul.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %mul.i, %sw.bb.i ], [ %mul2.i, %sw.bb1.i ], [ %mul5.i, %sw.bb4.i ]
  %mul.sink.i = phi i32 [ 32, %entry.if.end_crit_edge ], [ %mul.i, %sw.bb.i ], [ %add3.i, %sw.bb1.i ], [ %add6.i, %sw.bb4.i ]
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %6, i32 noundef %mul.pre-phi, ptr noundef nonnull %bcr) #6
  %7 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %add22 = or i32 %mul.pre-phi, 4
  %add18 = add i32 %mul.pre-phi, 260
  %add22.sink = select i1 %cmp, i32 %add18, i32 %add22
  %call23 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add22.sink, ptr noundef nonnull %bxtr) #6
  %11 = ptrtoint ptr %bxtr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bxtr, align 4
  %and = and i32 %12, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and)
  %cmp25 = icmp eq i32 %and, 805306368
  br i1 %cmp25, label %if.end.if.then28_crit_edge, label %lor.lhs.false

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bcr, align 4
  %and26 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false.do.end65_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false.do.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end.if.then28_crit_edge
  %15 = call i32 @llvm.umax.i32(i32 %setup, i32 1)
  br label %do.end65

do.end65:                                         ; preds = %if.then28, %lor.lhs.false.do.end65_crit_edge
  %setup.sink = phi i32 [ %15, %if.then28 ], [ %setup, %lor.lhs.false.do.end65_crit_edge ]
  %16 = call i32 @llvm.umin.i32(i32 %setup.sink, i32 15)
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %mul.sink.i, i32 noundef 15, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end65 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bxtr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_address_hold(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  %bxtr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bxtr) #6
  %1 = ptrtoint ptr %bxtr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bxtr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %4 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %add19 = or i32 %mul, 4
  %add15 = add i32 %mul, 260
  %add19.sink = select i1 %cmp, i32 %add15, i32 %add19
  %call20 = call i32 @regmap_read(ptr noundef %7, i32 noundef %add19.sink, ptr noundef nonnull %bxtr) #6
  %8 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bcr, align 4
  %10 = and i32 %9, 524544
  call void @__sanitizer_cov_trace_const_cmp4(i32 524544, i32 %10)
  %.not = icmp eq i32 %10, 524544
  br i1 %.not, label %entry.if.end29_crit_edge, label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %11 = ptrtoint ptr %bxtr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bxtr, align 4
  %and23 = and i32 %12, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and23)
  %cmp24 = icmp ne i32 %and23, 805306368
  %and26 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond36 = select i1 %cmp24, i1 %tobool27.not, i1 false
  br i1 %or.cond36, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end29 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bxtr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_address_hold(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %entry.do.end23_crit_edge
  ]

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %do.end23

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %do.end23

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  br label %do.end23

do.end23:                                         ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.do.end23_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %sw.bb.i ], [ %add3.i, %sw.bb1.i ], [ %add6.i, %sw.bb4.i ], [ 32, %entry.do.end23_crit_edge ]
  %3 = tail call i32 @llvm.umax.i32(i32 %setup, i32 1)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 15)
  %shl = shl nuw nsw i32 %4, 4
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %mul.sink.i, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_setup(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %entry.do.end23_crit_edge
  ]

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %do.end23

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %do.end23

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  br label %do.end23

do.end23:                                         ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.do.end23_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %sw.bb.i ], [ %add3.i, %sw.bb1.i ], [ %add6.i, %sw.bb4.i ], [ 32, %entry.do.end23_crit_edge ]
  %3 = tail call i32 @llvm.umax.i32(i32 %setup, i32 1)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 255)
  %shl = shl nuw nsw i32 %4, 8
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %mul.sink.i, i32 noundef 65280, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_bus_turnaround(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %entry.do.end22_crit_edge
  ]

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %do.end22

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %do.end22

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  br label %do.end22

do.end22:                                         ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.do.end22_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %sw.bb.i ], [ %add3.i, %sw.bb1.i ], [ %add6.i, %sw.bb4.i ], [ 32, %entry.do.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setup)
  %tobool1.not = icmp eq i32 %setup, 0
  %sub = add i32 %setup, -1
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 15)
  %.op = shl nuw nsw i32 %3, 16
  %shl = select i1 %tobool1.not, i32 0, i32 %.op
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %mul.sink.i, i32 noundef 983040, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_hold(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readonly %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_type = getelementptr inbounds %struct.stm32_fmc2_prop, ptr %prop, i32 0, i32 3
  %0 = ptrtoint ptr %reg_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %if.then2
    i32 4, label %entry.if.else_crit_edge
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %cs, 3
  br label %if.else

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul2.i = shl i32 %cs, 3
  %add3.i = or i32 %mul2.i, 4
  br label %if.else

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul5.i = shl i32 %cs, 3
  %add6.i = add i32 %mul5.i, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setup)
  %tobool3.not = icmp eq i32 %setup, 0
  %sub = add i32 %setup, -1
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 3)
  %cond8 = select i1 %tobool3.not, i32 0, i32 %3
  br label %do.end32

if.else:                                          ; preds = %sw.bb1.i, %sw.bb.i, %entry.if.else_crit_edge
  %mul.sink.i.ph = phi i32 [ 32, %entry.if.else_crit_edge ], [ %add3.i, %sw.bb1.i ], [ %mul.i, %sw.bb.i ]
  %4 = tail call i32 @llvm.umin.i32(i32 %setup, i32 3)
  br label %do.end32

do.end32:                                         ; preds = %if.else, %if.then2
  %mul.sink.i55 = phi i32 [ %add6.i, %if.then2 ], [ %mul.sink.i.ph, %if.else ]
  %val.0 = phi i32 [ %cond8, %if.then2 ], [ %4, %if.else ]
  %shl = shl nuw i32 %val.0, 30
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %mul.sink.i55, i32 noundef -1073741824, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_check_clk_period(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  %bcr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %0 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr1) #6
  %1 = ptrtoint ptr %bcr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bcr1, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %bcr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs)
  %tobool.not = icmp eq i32 %cs, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bcr, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.thread:                                    ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %bcr1) #6
  %8 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bcr, align 4
  %and13 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool3.not14 = icmp eq i32 %and13, 0
  br i1 %tobool3.not14, label %if.end.thread.if.end8_crit_edge, label %lor.lhs.false

if.end.thread.if.end8_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

lor.lhs.false:                                    ; preds = %if.end.thread
  %10 = ptrtoint ptr %bcr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bcr1, align 4
  %and5 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %if.end.thread.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_clk_period(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setup)
  %tobool.not = icmp eq i32 %setup, 0
  br i1 %tobool.not, label %entry.do.end25_crit_edge, label %cond.true

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %setup, -1
  %0 = tail call i32 @llvm.umax.i32(i32 %sub, i32 1)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 15)
  %phi.bo = shl nuw nsw i32 %1, 20
  br label %do.end25

do.end25:                                         ; preds = %cond.true, %entry.do.end25_crit_edge
  %cond10 = phi i32 [ %phi.bo, %cond.true ], [ 1048576, %entry.do.end25_crit_edge ]
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %add = or i32 %mul, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 15728640, i32 noundef %cond10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_ns_to_clk_period(ptr nocapture noundef readonly %ebi, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  %bcr = alloca i32, align 4
  %btr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #6
  %2 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bcr, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %btr) #6
  %3 = ptrtoint ptr %btr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %btr, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %bcr) #6
  %6 = ptrtoint ptr %bcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bcr, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs)
  %tobool2.not = icmp eq i32 %cs, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %add = or i32 %mul, 4
  %.sink = select i1 %or.cond, i32 4, i32 %add
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef %.sink, ptr noundef nonnull %btr) #6
  %mul.i = mul i32 %setup, 1000
  %add.i = add i32 %mul.i, -1
  %div.i = udiv i32 %call.i, 1000
  %div1.i = udiv i32 1000000000, %div.i
  %sub.i = add i32 %add.i, %div1.i
  %div2.i = udiv i32 %sub.i, %div1.i
  %10 = ptrtoint ptr %btr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %btr, align 4
  %and19 = lshr i32 %11, 20
  %shr = and i32 %and19, 15
  %add20 = add nuw nsw i32 %shr, 1
  %sub = add nuw nsw i32 %shr, %div2.i
  %div = udiv i32 %sub, %add20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %btr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #6
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_data_latency(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
do.end19:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %setup)
  %cmp = icmp ugt i32 %setup, 1
  %sub = add i32 %setup, -2
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 15)
  %.op = shl nuw nsw i32 %0, 24
  %and21 = select i1 %cmp, i32 %.op, i32 0
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %cs, 3
  %add = or i32 %mul, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 251658240, i32 noundef %and21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_set_max_low_pulse(ptr nocapture noundef readonly %ebi, ptr nocapture noundef readnone %prop, i32 noundef %cs, i32 noundef %setup) #2 align 64 {
entry:
  %pcscntr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcscntr) #6
  %0 = ptrtoint ptr %pcscntr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pcscntr, align 4, !annotation !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setup)
  %cmp = icmp eq i32 %setup, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %ebi, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %pcscntr) #6
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %add = add i32 %cs, 16
  %shl = shl nuw i32 1, %add
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 32, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %sub = add i32 %setup, -1
  %5 = call i32 @llvm.umin.i32(i32 %sub, i32 255)
  %6 = ptrtoint ptr %pcscntr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcscntr, align 4
  %and = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp19 = icmp ugt i32 %5, %and
  %or.cond = and i1 %tobool.not, %cmp19
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.end42

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i62 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 32, i32 noundef 65535, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcscntr) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_ebi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #6
  %clk = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %7) #6
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %arrayidx4.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef %11) #6
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %arrayidx9.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 6, i32 0
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 260, i32 noundef %15) #6
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %arrayidx.1.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i, align 4
  %call.1.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 8, i32 noundef %19) #6
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %arrayidx4.1.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.1.i, align 4
  %call5.1.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 12, i32 noundef %23) #6
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %arrayidx9.1.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9.1.i, align 4
  %call10.1.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 268, i32 noundef %27) #6
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %arrayidx.2.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i, align 4
  %call.2.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 16, i32 noundef %31) #6
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %arrayidx4.2.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.2.i, align 4
  %call5.2.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 20, i32 noundef %35) #6
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %arrayidx9.2.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.2.i, align 4
  %call10.2.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 276, i32 noundef %39) #6
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %arrayidx.3.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.3.i, align 4
  %call.3.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 24, i32 noundef %43) #6
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %arrayidx4.3.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.3.i, align 4
  %call5.3.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 28, i32 noundef %47) #6
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %arrayidx9.3.i = getelementptr %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx9.3.i, align 4
  %call10.3.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 284, i32 noundef %51) #6
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %pcscntr.i = getelementptr inbounds %struct.stm32_fmc2_ebi, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %pcscntr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcscntr.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 32, i32 noundef %55) #6
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_stm32_fmc2_ebi__460_1205_stm32_fmc2_ebi_driver_init6, !1, !"__initcall__kmod_stm32_fmc2_ebi__460_1205_stm32_fmc2_ebi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1205, i32 1}
!2 = !{ptr @__exitcall_stm32_fmc2_ebi_driver_exit, !1, !"__exitcall_stm32_fmc2_ebi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias461, !4, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!4 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1207, i32 1}
!5 = !{ptr @__UNIQUE_ID_author462, !6, !"__UNIQUE_ID_author462", i1 false, i1 false}
!6 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1208, i32 1}
!7 = !{ptr @__UNIQUE_ID_description463, !8, !"__UNIQUE_ID_description463", i1 false, i1 false}
!8 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1209, i32 1}
!9 = !{ptr @__UNIQUE_ID_file464, !10, !"__UNIQUE_ID_file464", i1 false, i1 false}
!10 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1210, i32 1}
!11 = !{ptr @__UNIQUE_ID_license465, !10, !"__UNIQUE_ID_license465", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1200, i32 11}
!14 = !{ptr @stm32_fmc2_ebi_driver, !15, !"stm32_fmc2_ebi_driver", i1 false, i1 false}
!15 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1196, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1047, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1049, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_fmc2_ebi_parse_dt._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1056, i32 4}
!28 = !{ptr @stm32_fmc2_ebi_parse_dt._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1062, i32 4}
!32 = !{ptr @stm32_fmc2_ebi_parse_dt._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1070, i32 5}
!36 = !{ptr @stm32_fmc2_ebi_parse_dt._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1082, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stm32_fmc2_ebi_parse_dt._entry.16, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1087, i32 3}
!45 = !{ptr @stm32_fmc2_ebi_parse_dt._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_fmc2_ebi_parse_dt._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1027, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @stm32_fmc2_ebi_setup_cs._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @stm32_fmc2_ebi_setup_cs._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 721, i32 11}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 726, i32 11}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 734, i32 11}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 742, i32 11}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 747, i32 11}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 754, i32 11}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 762, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 770, i32 11}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 778, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 783, i32 11}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 788, i32 11}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 796, i32 11}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 804, i32 11}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 812, i32 11}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 819, i32 11}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 826, i32 11}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 833, i32 11}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 839, i32 11}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 847, i32 11}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 855, i32 11}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 863, i32 11}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 870, i32 11}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 877, i32 11}
!98 = !{ptr @stm32_fmc2_child_props, !99, !"stm32_fmc2_child_props", i1 false, i1 false}
!99 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 718, i32 37}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 892, i32 3}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @stm32_fmc2_ebi_parse_prop._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @stm32_fmc2_ebi_parse_prop._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 905, i32 4}
!107 = !{ptr @stm32_fmc2_ebi_parse_prop._entry.50, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stm32_fmc2_ebi_parse_prop._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @stm32_fmc2_ebi_parse_prop._entry.53, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 918, i32 4}
!111 = !{ptr @stm32_fmc2_ebi_parse_prop._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @stm32_fmc2_ebi_match, !113, !"stm32_fmc2_ebi_match", i1 false, i1 false}
!113 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1190, i32 34}
!114 = !{ptr @stm32_fmc2_ebi_pm_ops, !115, !"stm32_fmc2_ebi_pm_ops", i1 false, i1 false}
!115 = !{!"../drivers/memory/stm32-fmc2-ebi.c", i32 1187, i32 8}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
