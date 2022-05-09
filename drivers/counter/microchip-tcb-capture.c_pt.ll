; ModuleID = '/llk/IR_all_yes/drivers/counter/microchip-tcb-capture.c_pt.bc'
source_filename = "../drivers/counter/microchip-tcb-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.atmel_tcb_config = type { i32, i8, i8 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mchp_tc_data = type { ptr, ptr, i32, i32, [2 x i32], i8 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.73, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.73 = type { %union.anon.74, [0 x %struct.counter_event] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_microchip_tcb_capture__228_392_mchp_tc_driver_init6 = internal global ptr @mchp_tc_driver_init, section ".initcall6.init", align 4
@mchp_tc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_tc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_tc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mchp_tc_driver_exit = internal global ptr @mchp_tc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [71 x i8] c"microchip_tcb_capture.author=Kamel Bouhara <kamel.bouhara@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [63 x i8] c"microchip_tcb_capture.description=Microchip TCB Capture driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [65 x i8] c"microchip_tcb_capture.file=drivers/counter/microchip-tcb-capture\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [37 x i8] c"microchip_tcb_capture.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip-tcb-capture\00", [42 x i8] zeroinitializer }, align 32
@mchp_tc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,tcb-capture\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_tc_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d2_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d3_config }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mchp_tc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No matching parent node found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mchp_tc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/counter/microchip-tcb-capture.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_tc_probe._entry_ptr = internal global ptr @mchp_tc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mchp_tc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid or missing channel\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_tc_probe._entry_ptr.9 = internal global ptr @mchp_tc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"t%d_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t0_clk\00", [25 x i8] zeroinitializer }, align 32
@mchp_tc_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip_tcb_capture\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialized capture mode on channel %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mchp_tc_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr @mchp_tc_count_signal_read, ptr @mchp_tc_count_read, ptr null, ptr @mchp_tc_count_function_read, ptr @mchp_tc_count_function_write, ptr @mchp_tc_count_action_read, ptr @mchp_tc_count_action_write, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mchp_tc_counts = internal global { [1 x %struct.counter_count], [32 x i8] } { [1 x %struct.counter_count] [%struct.counter_count { i32 0, ptr @.str.17, ptr @mchp_tc_count_functions, i32 2, ptr @mchp_tc_count_synapses, i32 2, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mchp_tc_count_signals = internal global { [2 x %struct.counter_signal], [32 x i8] } { [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.18, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.19, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add counter\0A\00", [41 x i8] zeroinitializer }, align 32
@tcb_rm9200_config = internal constant { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 16, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sam9x5_config = internal constant { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sama5d2_config = internal constant { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@tcb_sama5d3_config = internal constant { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@mchp_tc_count_function_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Invalid channels number or id for quadrature mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mchp_tc_count_function_write\00", [35 x i8] zeroinitializer }, align 32
@mchp_tc_count_function_write._entry_ptr = internal global ptr @mchp_tc_count_function_write._entry, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Timer Counter\00", [18 x i8] zeroinitializer }, align 32
@mchp_tc_count_functions = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 7], [24 x i8] zeroinitializer }, align 32
@mchp_tc_count_synapses = internal global { [2 x %struct.counter_synapse], [40 x i8] } { [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @mchp_tc_synapse_actions, i32 4, ptr @mchp_tc_count_signals }, %struct.counter_synapse { ptr @mchp_tc_synapse_actions, i32 4, ptr getelementptr (i8, ptr @mchp_tc_count_signals, i64 16) }], [40 x i8] zeroinitializer }, align 32
@mchp_tc_synapse_actions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel A\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel B\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"mchp_tc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 385, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 388, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"mchp_tc_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 379, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"atmel_tc_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 280, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 314, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 323, i32 55 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 325, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 337, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 342, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 357, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mchp_tc_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 252, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"mchp_tc_counts\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 241, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"mchp_tc_count_signals\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 46, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 374, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"tcb_rm9200_config\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 261, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"tcb_sam9x5_config\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 265, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"tcb_sama5d2_config\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 269, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"tcb_sama5d3_config\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 275, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 116, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 244, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"mchp_tc_count_functions\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 34, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"mchp_tc_count_synapses\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 57, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"mchp_tc_synapse_actions\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 39, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 49, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [43 x i8] c"../drivers/counter/microchip-tcb-capture.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 53, i32 11 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_mchp_tc_driver_exit, ptr @__initcall__kmod_microchip_tcb_capture__228_392_mchp_tc_driver_init6, ptr @mchp_tc_count_function_write._entry, ptr @mchp_tc_count_function_write._entry_ptr, ptr @mchp_tc_driver_exit, ptr @mchp_tc_probe._entry, ptr @mchp_tc_probe._entry.7, ptr @mchp_tc_probe._entry_ptr, ptr @mchp_tc_probe._entry_ptr.9, ptr @mchp_tc_driver, ptr @.str, ptr @mchp_tc_dt_ids, ptr @atmel_tc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mchp_tc_ops, ptr @mchp_tc_counts, ptr @mchp_tc_count_signals, ptr @.str.14, ptr @tcb_rm9200_config, ptr @tcb_sam9x5_config, ptr @tcb_sama5d2_config, ptr @tcb_sama5d3_config, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mchp_tc_count_functions, ptr @mchp_tc_count_synapses, ptr @mchp_tc_synapse_actions, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tc_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_count_signals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_rm9200_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sam9x5_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sama5d2_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sama5d3_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_count_function_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_count_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_count_synapses to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_tc_synapse_actions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_tc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp_tc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mchp_tc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [7 x i8], align 1
  %clk = alloca [3 x ptr], align 4
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %clk_name) #6
  %2 = call ptr @memset(ptr %clk_name, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clk) #6
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk, align 4, !annotation !82
  %4 = getelementptr inbounds [3 x ptr], ptr %clk, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !82
  %6 = getelementptr inbounds [3 x ptr], ptr %clk, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #6
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %channel, align 4, !annotation !82
  %call = tail call ptr @devm_counter_alloc(ptr noundef %dev, i32 noundef 28) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @counter_priv(ptr noundef nonnull %call) #6
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %call3 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_tc_of_match, ptr noundef %10) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %call9 = tail call ptr @syscon_node_to_regmap(ptr noundef %14) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 4) #6
  %num_channels = getelementptr inbounds %struct.mchp_tc_data, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp23154 = icmp sgt i32 %18, 0
  br i1 %cmp23154, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call24 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %i.0155, ptr noundef nonnull %channel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp26 = icmp sgt i32 %20, 2
  br i1 %cmp26, label %lor.lhs.false.cleanup_crit_edge, label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.mchp_tc_data, ptr %call2, i32 0, i32 4, i32 %i.0155
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 7, ptr noundef nonnull @.str.10, i32 noundef %23)
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 4
  %call33 = call ptr @of_clk_get_by_name(ptr noundef %25, ptr noundef nonnull %clk_name) #6
  %arrayidx34 = getelementptr [3 x ptr], ptr %clk, i32 0, i32 %i.0155
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call33, ptr %arrayidx34, align 4
  %cmp.i139 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then37, label %if.end28.if.end47_crit_edge

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then37:                                        ; preds = %if.end28
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 4
  %call39 = call ptr @of_clk_get_by_name(ptr noundef %28, ptr noundef nonnull @.str.11) #6
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call39, ptr %arrayidx34, align 4
  %cmp.i140 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then43, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.then37.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx34, align 4
  %call.i141 = call i32 @clk_prepare(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end47
  %call1.i = call i32 @clk_enable(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end52, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %32) #6
  br label %cleanup

if.end52:                                         ; preds = %if.end.i
  %call.i143 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @mchp_tc_clk_remove, ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %do.body59, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %32) #6
  call void @clk_unprepare(ptr noundef %32) #6
  br label %cleanup

do.body59:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_tc_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_tc_probe, %if.then64)) #6
          to label %for.inc [label %if.then64], !srcloc !83

if.then64:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_tc_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %34) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %do.body59
  %inc = add nuw nsw i32 %i.0155, 1
  %35 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_channels, align 4
  %cmp23 = icmp slt i32 %inc, %36
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %37 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %12, ptr %call2, align 4
  %regmap69 = getelementptr inbounds %struct.mchp_tc_data, ptr %call2, i32 0, i32 1
  %38 = ptrtoint ptr %regmap69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9, ptr %regmap69, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i146 = icmp eq ptr %40, null
  br i1 %tobool.not.i146, label %if.end.i147, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i147:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i147, %for.end.dev_name.exit_crit_edge
  %retval.0.i148 = phi ptr [ %42, %if.end.i147 ], [ %40, %for.end.dev_name.exit_crit_edge ]
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i148, ptr %call, align 8
  %parent73 = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %parent73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %parent73, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mchp_tc_ops, ptr %ops, align 8
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 6
  %46 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %num_counts, align 8
  %counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 5
  %47 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mchp_tc_counts, ptr %counts, align 4
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 4
  %48 = ptrtoint ptr %num_signals to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %num_signals, align 8
  %signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 3
  %49 = ptrtoint ptr %signals to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mchp_tc_count_signals, ptr %signals, align 4
  %call75 = call i32 @devm_counter_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then77:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call75, ptr noundef nonnull @.str.14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %dev_name.exit.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then3.i, %if.end47.cleanup_crit_edge, %if.then43, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end19, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then11 ], [ -22, %do.end19 ], [ %30, %if.then43 ], [ %call79, %if.then77 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i143, %devm_add_action_or_reset.exit ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i141, %if.end47.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clk) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %clk_name) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_tc_clk_remove(ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %ptr) #6
  tail call void @clk_unprepare(ptr noundef %ptr) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_counter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_signal_read(ptr noundef %counter, ptr nocapture noundef readnone %signal, ptr nocapture noundef writeonly %lvl) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #6
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !82
  %regmap = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %mul = shl i32 %4, 6
  %add = or i32 %mul, 32
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %sr) #6
  %trig_inverted = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %trig_inverted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %trig_inverted, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sr, align 4
  %. = select i1 %tobool.not, i32 131072, i32 262144
  %9 = and i32 %8, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %sigstatus.0.off0.not = icmp ne i32 %9, 0
  %cond = zext i1 %sigstatus.0.off0.not to i32
  %10 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %lvl, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #6
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cnt, align 4, !annotation !82
  %regmap = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %mul = shl i32 %4, 6
  %add = or i32 %mul, 16
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %cnt) #6
  %5 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnt, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_function_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %qdec_mode = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %qdec_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qdec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 0, i32 7
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %function, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_function_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i32 noundef %function) #2 align 64 {
entry:
  %bmr = alloca i32, align 4
  %cmr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmr) #6
  %0 = ptrtoint ptr %bmr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bmr, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmr) #6
  %1 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmr, align 4, !annotation !82
  %regmap = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 196, ptr noundef nonnull %bmr) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %mul = shl i32 %7, 6
  %add = or i32 %mul, 4
  %call3 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %cmr) #6
  %8 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmr, align 4
  %and = and i32 %9, -32769
  store i32 %and, ptr %cmr, align 4
  %10 = zext i32 %function to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %function, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %qdec_mode = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %qdec_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qdec_mode, align 4
  %12 = ptrtoint ptr %bmr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bmr, align 4
  %and4 = and i32 %13, -769
  store i32 %and4, ptr %bmr, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %has_gclk = getelementptr inbounds %struct.atmel_tcb_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %has_gclk to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_gclk, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 1
  %18 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %cmr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %19 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmr, align 4
  %or6 = and i32 %20, -591302
  %and7 = or i32 %or6, 590272
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %has_qdec = getelementptr inbounds %struct.atmel_tcb_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %has_qdec to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_qdec, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %num_channels = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp slt i32 %26, 2
  br i1 %cmp, label %if.end12.do.end_crit_edge, label %lor.lhs.false

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end12
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp15.not = icmp eq i32 %28, 0
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %arrayidx18 = getelementptr %struct.mchp_tc_data, ptr %call, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp19.not = icmp eq i32 %30, 1
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false16.do.end_crit_edge

lor.lhs.false16.do.end_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false16.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end12.do.end_crit_edge
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  %qdec_mode23 = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %qdec_mode23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %qdec_mode23, align 4
  %32 = ptrtoint ptr %bmr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bmr, align 4
  %or24 = or i32 %33, 768
  store i32 %or24, ptr %bmr, align 4
  %or25 = or i32 %and, 1285
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22, %if.end
  %storemerge = phi i32 [ %or25, %if.end22 ], [ %and7, %if.end ]
  %34 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %cmr, align 4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %bmr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bmr, align 4
  %call27 = call i32 @regmap_write(ptr noundef %36, i32 noundef 196, i32 noundef %38) #6
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel, align 4
  %mul31 = shl i32 %42, 6
  %add32 = or i32 %mul31, 4
  %43 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmr, align 4
  %call33 = call i32 @regmap_write(ptr noundef %40, i32 noundef %add32, i32 noundef %44) #6
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %47 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel, align 4
  %mul37 = shl i32 %48, 6
  %call39 = call i32 @regmap_write(ptr noundef %46, i32 noundef %mul37, i32 noundef 5) #6
  %qdec_mode40 = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 2
  %49 = ptrtoint ptr %qdec_mode40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qdec_mode40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool41.not = icmp eq i32 %50, 0
  br i1 %tobool41.not, label %sw.epilog.cleanup_crit_edge, label %if.then42

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %arrayidx45 = getelementptr %struct.mchp_tc_data, ptr %call, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx45, align 4
  %mul46 = shl i32 %54, 6
  %add47 = or i32 %mul46, 4
  %55 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmr, align 4
  %call48 = call i32 @regmap_write(ptr noundef %52, i32 noundef %add47, i32 noundef %56) #6
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %59 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx45, align 4
  %mul52 = shl i32 %60, 6
  %call54 = call i32 @regmap_write(ptr noundef %58, i32 noundef %mul52, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %sw.epilog.cleanup_crit_edge, %do.end, %sw.bb8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_action_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef readnone %synapse, ptr nocapture noundef writeonly %action) #2 align 64 {
entry:
  %cmr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmr) #6
  %0 = ptrtoint ptr %cmr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmr, align 4, !annotation !82
  %regmap = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %mul = shl i32 %4, 6
  %add = or i32 %mul, 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %cmr) #6
  %5 = ptrtoint ptr %cmr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmr, align 4
  %and = and i32 %6, 768
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 256, label %sw.bb
    i32 512, label %sw.bb2
    i32 768, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %action, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmr) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_tc_count_action_write(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef readnone %synapse, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %qdec_mode = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %qdec_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qdec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action)
  %2 = icmp ult i32 %action, 4
  %or.cond = and i1 %tobool.not, %2
  br i1 %or.cond, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = shl i32 %action, 8
  %regmap = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %channel = getelementptr inbounds %struct.mchp_tc_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %mul = shl i32 %6, 6
  %add = or i32 %mul, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add, i32 noundef 768, i32 noundef %switch.idx.mult, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_microchip_tcb_capture__228_392_mchp_tc_driver_init6, !1, !"__initcall__kmod_microchip_tcb_capture__228_392_mchp_tc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_mchp_tc_driver_exit, !1, !"__exitcall_mchp_tc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 394, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 395, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 396, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 388, i32 11}
!12 = !{ptr @mchp_tc_driver, !13, !"mchp_tc_driver", i1 false, i1 false}
!13 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 385, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 314, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mchp_tc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mchp_tc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 323, i32 55}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 325, i32 3}
!26 = !{ptr @mchp_tc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mchp_tc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 337, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 342, i32 44}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 357, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mchp_tc_probe.__UNIQUE_ID_ddebug227, !33, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 374, i32 41}
!38 = !{ptr @atmel_tc_of_match, !39, !"atmel_tc_of_match", i1 false, i1 false}
!39 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 280, i32 34}
!40 = !{ptr @tcb_rm9200_config, !41, !"tcb_rm9200_config", i1 false, i1 false}
!41 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 261, i32 38}
!42 = !{ptr @tcb_sam9x5_config, !43, !"tcb_sam9x5_config", i1 false, i1 false}
!43 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 265, i32 38}
!44 = !{ptr @tcb_sama5d2_config, !45, !"tcb_sama5d2_config", i1 false, i1 false}
!45 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 269, i32 38}
!46 = !{ptr @tcb_sama5d3_config, !47, !"tcb_sama5d3_config", i1 false, i1 false}
!47 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 275, i32 38}
!48 = !{ptr @mchp_tc_ops, !49, !"mchp_tc_ops", i1 false, i1 false}
!49 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 252, i32 33}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 116, i32 4}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mchp_tc_count_function_write._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mchp_tc_count_function_write._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 244, i32 11}
!57 = !{ptr @mchp_tc_counts, !58, !"mchp_tc_counts", i1 false, i1 false}
!58 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 241, i32 29}
!59 = !{ptr @mchp_tc_count_functions, !60, !"mchp_tc_count_functions", i1 false, i1 false}
!60 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 34, i32 36}
!61 = !{ptr @mchp_tc_count_synapses, !62, !"mchp_tc_count_synapses", i1 false, i1 false}
!62 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 57, i32 31}
!63 = !{ptr @mchp_tc_synapse_actions, !64, !"mchp_tc_synapse_actions", i1 false, i1 false}
!64 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 39, i32 42}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 49, i32 11}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 53, i32 11}
!69 = !{ptr @mchp_tc_count_signals, !70, !"mchp_tc_count_signals", i1 false, i1 false}
!70 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 46, i32 30}
!71 = !{ptr @mchp_tc_dt_ids, !72, !"mchp_tc_dt_ids", i1 false, i1 false}
!72 = !{!"../drivers/counter/microchip-tcb-capture.c", i32 379, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i64 2148730355, i64 2148730360, i64 2148730373, i64 2148730417, i64 2148730451, i64 2148730472}
!84 = !{i8 0, i8 2}
