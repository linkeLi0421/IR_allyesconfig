; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-viperboard.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-viperboard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.vprbrd_i2c = type { %struct.i2c_adapter, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.vprbrd = type { ptr, %struct.mutex, [512 x i8], %struct.platform_device }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_bus_freq = internal constant [28 x i8] c"i2c_viperboard.i2c_bus_freq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_bus_freq = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_i2c_bus_freq = internal constant %struct.kernel_param { ptr @__param_str_i2c_bus_freq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @i2c_bus_freq } }, section "__param", align 4
@__UNIQUE_ID_i2c_bus_freqtype293 = internal constant [41 x i8] c"i2c_viperboard.parmtype=i2c_bus_freq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_bus_freq294 = internal constant [125 x i8] c"i2c_viperboard.parm=i2c_bus_freq:i2c bus frequency in khz (default is 100) valid values: 10, 100, 200, 400, 1000, 3000, 6000\00", section ".modinfo", align 1
@__initcall__kmod_i2c_viperboard__298_457_vprbrd_i2c_init4 = internal global ptr @vprbrd_i2c_init, section ".initcall4.init", align 4
@vprbrd_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vprbrd_i2c_probe, ptr @vprbrd_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vprbrd_i2c_exit = internal global ptr @vprbrd_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [59 x i8] c"i2c_viperboard.author=Lars Poeschel <poeschel@lemonage.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [77 x i8] c"i2c_viperboard.description=I2C master driver for Nano River Techs Viperboard\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [54 x i8] c"i2c_viperboard.file=drivers/i2c/busses/i2c-viperboard\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [27 x i8] c"i2c_viperboard.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [45 x i8] c"i2c_viperboard.alias=platform:viperboard-i2c\00", section ".modinfo", align 1
@i2c_bus_param = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vprbrd_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014invalid i2c_bus_freq (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vprbrd_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-viperboard.c\00", [60 x i8] zeroinitializer }, align 32
@vprbrd_i2c_init._entry_ptr = internal global ptr @vprbrd_i2c_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"viperboard-i2c\00", [17 x i8] zeroinitializer }, align 32
@vprbrd_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @vprbrd_i2c_xfer, ptr null, ptr null, ptr null, ptr @vprbrd_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vprbrd_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 0, i16 2048, i16 2048, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"viperboard at bus %03d device %03d\00", [61 x i8] zeroinitializer }, align 32
@vprbrd_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failure setting i2c_bus_freq to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vprbrd_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vprbrd_i2c_probe._entry_ptr = internal global ptr @vprbrd_i2c_probe._entry, section ".printk_index", align 4
@vprbrd_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid i2c_bus_freq setting:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@vprbrd_i2c_probe._entry_ptr.11 = internal global ptr @vprbrd_i2c_probe._entry.9, section ".printk_index", align 4
@vprbrd_i2c_xfer.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_viperboard\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vprbrd_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master xfer %d messages:\0A\00", [38 x i8] zeroinitializer }, align 32
@vprbrd_i2c_xfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  %d: %s (flags %d) %d bytes to 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@vprbrd_i2c_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 107, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failure transmitting usb\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vprbrd_i2c_addr\00", [16 x i8] zeroinitializer }, align 32
@vprbrd_i2c_addr._entry_ptr = internal global ptr @vprbrd_i2c_addr._entry, section ".printk_index", align 4
@vprbrd_i2c_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.2, i32 79, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vprbrd_i2c_receive\00", [45 x i8] zeroinitializer }, align 32
@vprbrd_i2c_receive._entry_ptr = internal global ptr @vprbrd_i2c_receive._entry, section ".printk_index", align 4
@vprbrd_i2c_receive._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 89, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failure receiving usb\0A\00", [41 x i8] zeroinitializer }, align 32
@vprbrd_i2c_receive._entry_ptr.23 = internal global ptr @vprbrd_i2c_receive._entry.21, section ".printk_index", align 4
@vprbrd_i2c_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 53, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failure in usb communication\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vprbrd_i2c_status\00", [46 x i8] zeroinitializer }, align 32
@vprbrd_i2c_status._entry_ptr = internal global ptr @vprbrd_i2c_status._entry, section ".printk_index", align 4
@vprbrd_i2c_status.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  status = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@vprbrd_i2c_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 59, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failure: i2c protocol error\0A\00", [35 x i8] zeroinitializer }, align 32
@vprbrd_i2c_status._entry_ptr.29 = internal global ptr @vprbrd_i2c_status._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 10, i64 100, i64 200, i64 400, i64 1000, i64 3000, i64 6000]
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"i2c_bus_freq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 30, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"vprbrd_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 419, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"i2c_bus_param\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 29, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 451, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 420, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"vprbrd_algorithm\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 347, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"vprbrd_quirks\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 352, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 378, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 390, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 395, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 276, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 281, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 107, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 79, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 89, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 53, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 57, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-viperboard.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 59, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_i2c_bus_freq294, ptr @__UNIQUE_ID_i2c_bus_freqtype293, ptr @__UNIQUE_ID_license302, ptr @__exitcall_vprbrd_i2c_exit, ptr @__initcall__kmod_i2c_viperboard__298_457_vprbrd_i2c_init4, ptr @__param_i2c_bus_freq, ptr @vprbrd_i2c_addr._entry, ptr @vprbrd_i2c_addr._entry_ptr, ptr @vprbrd_i2c_exit, ptr @vprbrd_i2c_init._entry, ptr @vprbrd_i2c_init._entry_ptr, ptr @vprbrd_i2c_probe._entry, ptr @vprbrd_i2c_probe._entry.9, ptr @vprbrd_i2c_probe._entry_ptr, ptr @vprbrd_i2c_probe._entry_ptr.11, ptr @vprbrd_i2c_receive._entry, ptr @vprbrd_i2c_receive._entry.21, ptr @vprbrd_i2c_receive._entry_ptr, ptr @vprbrd_i2c_receive._entry_ptr.23, ptr @vprbrd_i2c_status._entry, ptr @vprbrd_i2c_status._entry.27, ptr @vprbrd_i2c_status._entry_ptr, ptr @vprbrd_i2c_status._entry_ptr.29, ptr @i2c_bus_freq, ptr @vprbrd_i2c_driver, ptr @i2c_bus_param, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vprbrd_algorithm, ptr @vprbrd_quirks, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_param to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_receive._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_i2c_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @i2c_bus_freq, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end [
    i32 6000, label %entry.sw.epilog_crit_edge
    i32 3000, label %sw.bb1
    i32 1000, label %sw.bb2
    i32 400, label %sw.bb3
    i32 200, label %sw.bb4
    i32 100, label %sw.bb5
    i32 10, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
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

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 6, %do.end ], [ 7, %sw.bb6 ], [ 6, %sw.bb5 ], [ 5, %sw.bb4 ], [ 4, %sw.bb3 ], [ 3, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  store i8 %.sink, ptr @i2c_bus_param, align 1
  %call7 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vprbrd_i2c_driver, ptr noundef null) #8
  ret i32 %call7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vprbrd_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vprbrd_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_i2c_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1368, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vprbrd_algorithm, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vprbrd_quirks, ptr %quirks, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %algo_data, align 4
  %9 = load i8, ptr @i2c_bus_param, align 1
  %bus_freq_param = getelementptr inbounds %struct.vprbrd_i2c, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %bus_freq_param to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bus_freq_param, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %bus = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busnum, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr @i2c_bus_param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp13.not = icmp eq i8 %19, 0
  br i1 %cmp13.not, label %do.end28, label %if.then15

if.then15:                                        ; preds = %if.end
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or = or i32 %shl.i, -2147483648
  %call20 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or, i8 noundef zeroext -26, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %bus_freq_param, i16 noundef zeroext 1, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @i2c_bus_freq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %24) #11
  br label %cleanup

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load i32, ptr @i2c_bus_freq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %25) #11
  br label %cleanup

if.end30:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %parent34 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %parent34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent34, align 8
  %call36 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end30 ], [ -5, %do.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_i2c_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_i2c_xfer(ptr noundef %i2c, ptr nocapture noundef readonly %msgs, i32 noundef %num) #3 align 64 {
entry:
  %bytes_actual.i174 = alloca i32, align 4
  %bytes_actual.i159 = alloca i32, align 4
  %bytes_actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vprbrd_i2c_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %num) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp227 = icmp sgt i32 %num, 0
  br i1 %cmp227, label %for.body.lr.ph, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %dev21 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  %unknown2 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 5
  %unknown3 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 6
  %addr37 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %unknown1 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 2
  %len39 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %len1128.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 4
  %len4134.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 7
  %len5136.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 8
  %tf1.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 9
  %tf2.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.body.lr.ph
  %i.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end86.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vprbrd_i2c_xfer, %do.end29)) #8
          to label %if.then20 [label %do.end29], !srcloc !94

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool22.not, ptr @.str.17, ptr @.str.16
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv25 = zext i16 %5 to i32
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv26 = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug297, ptr noundef %dev21, ptr noundef nonnull @.str.15, i32 noundef %i.0228, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv25, i32 noundef %conv26) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then20, %for.body
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %flags30 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 1
  %8 = ptrtoint ptr %flags30 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags30, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool33.not = icmp eq i16 %10, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %do.end29
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %buf, align 1
  %12 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %unknown2, align 1
  %13 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %unknown3, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 4
  %conv36 = trunc i16 %15 to i8
  %16 = ptrtoint ptr %addr37 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv36, ptr %addr37, align 1
  %17 = ptrtoint ptr %unknown1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %unknown1, align 1
  %len38 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 2
  %18 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len38, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %len39 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %len39, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_actual.i) #8
  %24 = ptrtoint ptr %bytes_actual.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %bytes_actual.i, align 4, !annotation !95
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %26, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call1.i = call i32 @usb_bulk_msg(ptr noundef %23, i32 noundef %or.i, ptr noundef %buf, i32 noundef 7, ptr noundef nonnull %bytes_actual.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then34._crit_edge, label %lor.lhs.false.i

if.then34._crit_edge:                             ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

lor.lhs.false.i:                                  ; preds = %if.then34
  %27 = ptrtoint ptr %bytes_actual.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes_actual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %28)
  %cmp2.not.i = icmp eq i32 %28, 7
  br i1 %cmp2.not.i, label %vprbrd_i2c_addr.exit, label %lor.lhs.false.i._crit_edge

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

vprbrd_i2c_addr.exit:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual.i) #8
  br label %30

29:                                               ; preds = %lor.lhs.false.i._crit_edge, %if.then34._crit_edge
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual.i) #8
  br label %30

30:                                               ; preds = %29, %vprbrd_i2c_addr.exit
  %31 = phi i32 [ -121, %29 ], [ 0, %vprbrd_i2c_addr.exit ]
  %32 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len38, align 4
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.not264.i = icmp eq i16 %33, 0
  br i1 %cmp.not264.i, label %.vprbrd_i2c_read.exit_crit_edge, label %while.body.lr.ph.i

.vprbrd_i2c_read.exit_crit_edge:                  ; preds = %30
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_read.exit

while.body.lr.ph.i:                               ; preds = %30
  %buf155.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end174.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.0266.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %start.1.i, %if.end174.i.while.body.i_crit_edge ]
  %remain_len.0265.i = phi i16 [ %33, %while.body.lr.ph.i ], [ %remain_len.1.i, %if.end174.i.while.body.i_crit_edge ]
  %conv267.i = zext i16 %remain_len.0265.i to i32
  %add.i = add i16 %start.0266.i, 16384
  %35 = call i16 @llvm.bswap.i16(i16 %add.i) #8
  %36 = ptrtoint ptr %addr37 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %addr37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %remain_len.0265.i)
  %cmp6.i = icmp ult i16 %remain_len.0265.i, 256
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i = trunc i16 %remain_len.0265.i to i8
  %37 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv8.i, ptr %len39, align 1
  %38 = call ptr @memset(ptr %len1128.i, i32 0, i32 5)
  br label %if.end147.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %remain_len.0265.i)
  %cmp18.i = icmp ult i16 %remain_len.0265.i, 511
  br i1 %cmp18.i, label %if.then20.i, label %if.else35.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = trunc i16 %remain_len.0265.i to i8
  %conv22.i = add nuw i8 %39, 1
  %40 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv22.i, ptr %len39, align 1
  %41 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %len1128.i, align 1
  %42 = ptrtoint ptr %unknown2 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %unknown2, align 1
  br label %if.end147.i

if.else35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %remain_len.0265.i)
  %cmp37.i = icmp ult i16 %remain_len.0265.i, 513
  br i1 %cmp37.i, label %if.then39.i, label %if.else55.i

if.then39.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = trunc i16 %remain_len.0265.i to i8
  %conv42.i = add nsw i8 %43, 2
  %44 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv42.i, ptr %len39, align 1
  %45 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %len1128.i, align 1
  %46 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %unknown2, align 1
  %47 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %unknown3, align 1
  %48 = ptrtoint ptr %len4134.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %len4134.i, align 1
  %49 = ptrtoint ptr %len5136.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %len5136.i, align 1
  br label %if.end147.i

if.else55.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %remain_len.0265.i)
  %cmp57.i = icmp ult i16 %remain_len.0265.i, 768
  br i1 %cmp57.i, label %if.then59.i, label %if.else78.i

if.then59.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub61.i = add nsw i32 %conv267.i, -512
  %conv62.i = trunc i32 %sub61.i to i16
  %50 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %len39, align 1
  %51 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %len1128.i, align 1
  %52 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %unknown2, align 1
  %conv71.i = trunc i32 %sub61.i to i8
  %53 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv71.i, ptr %unknown3, align 1
  %54 = ptrtoint ptr %len4134.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %len4134.i, align 1
  %55 = ptrtoint ptr %len5136.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %len5136.i, align 1
  br label %if.end147.i

if.else78.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %remain_len.0265.i)
  %cmp80.i = icmp ult i16 %remain_len.0265.i, 1023
  br i1 %cmp80.i, label %if.then82.i, label %if.else101.i

if.then82.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub84.i = add nsw i16 %remain_len.0265.i, -512
  %56 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %len39, align 1
  %57 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %len1128.i, align 1
  %58 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %unknown2, align 1
  %59 = trunc i16 %remain_len.0265.i to i8
  %conv94.i = add nuw i8 %59, 1
  %60 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv94.i, ptr %unknown3, align 1
  %61 = ptrtoint ptr %len4134.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %len4134.i, align 1
  %62 = ptrtoint ptr %len5136.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %len5136.i, align 1
  br label %if.end147.i

if.else101.i:                                     ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %remain_len.0265.i)
  %cmp103.i = icmp ult i16 %remain_len.0265.i, 1025
  br i1 %cmp103.i, label %if.then105.i, label %if.else124.i

if.then105.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub107.i = add nsw i16 %remain_len.0265.i, -512
  %63 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %len39, align 1
  %64 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %len1128.i, align 1
  %65 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %unknown2, align 1
  %66 = trunc i16 %remain_len.0265.i to i8
  %conv117.i = add nsw i8 %66, 2
  %67 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv117.i, ptr %unknown3, align 1
  %68 = ptrtoint ptr %len4134.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %len4134.i, align 1
  %69 = ptrtoint ptr %len5136.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %len5136.i, align 1
  br label %if.end147.i

if.else124.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %len39, align 1
  %71 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %len1128.i, align 1
  %72 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %unknown2, align 1
  %73 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %unknown3, align 1
  %74 = ptrtoint ptr %len4134.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %len4134.i, align 1
  %75 = ptrtoint ptr %len5136.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %len5136.i, align 1
  %sub138.i = add i16 %remain_len.0265.i, -1024
  %add141.i = add i16 %start.0266.i, 1024
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else124.i, %if.then105.i, %if.then82.i, %if.then59.i, %if.then39.i, %if.then20.i, %if.then.i
  %remain_len.1.i = phi i16 [ 0, %if.then.i ], [ 0, %if.then20.i ], [ 0, %if.then39.i ], [ 0, %if.then59.i ], [ 0, %if.then82.i ], [ 0, %if.then105.i ], [ %sub138.i, %if.else124.i ]
  %len1.0.i = phi i16 [ %remain_len.0265.i, %if.then.i ], [ %remain_len.0265.i, %if.then20.i ], [ %remain_len.0265.i, %if.then39.i ], [ 512, %if.then59.i ], [ 512, %if.then82.i ], [ 512, %if.then105.i ], [ 512, %if.else124.i ]
  %len2.0.i = phi i16 [ 0, %if.then.i ], [ 0, %if.then20.i ], [ 0, %if.then39.i ], [ %conv62.i, %if.then59.i ], [ %sub84.i, %if.then82.i ], [ %sub107.i, %if.then105.i ], [ 512, %if.else124.i ]
  %start.1.i = phi i16 [ %start.0266.i, %if.then.i ], [ %start.0266.i, %if.then20.i ], [ %start.0266.i, %if.then39.i ], [ %start.0266.i, %if.then59.i ], [ %start.0266.i, %if.then82.i ], [ %start.0266.i, %if.then105.i ], [ %add141.i, %if.else124.i ]
  %76 = call i16 @llvm.bswap.i16(i16 %len1.0.i) #8
  %77 = ptrtoint ptr %tf1.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %tf1.i, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %len2.0.i) #8
  %79 = ptrtoint ptr %tf2.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %tf2.i, align 1
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %conv150.i = zext i16 %len1.0.i to i32
  %call.i = call fastcc i32 @vprbrd_i2c_receive(ptr noundef %81, ptr noundef %buf, i32 noundef %conv150.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp151.i = icmp slt i32 %call.i, 0
  br i1 %cmp151.i, label %if.end147.i.vprbrd_i2c_read.exit_crit_edge, label %if.end154.i

if.end147.i.vprbrd_i2c_read.exit_crit_edge:       ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_read.exit

if.end154.i:                                      ; preds = %if.end147.i
  %82 = ptrtoint ptr %buf155.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf155.i, align 4
  %conv156.i = zext i16 %start.1.i to i32
  %add.ptr.i = getelementptr i8, ptr %83, i32 %conv156.i
  %84 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %conv150.i)
  %conv158.i = zext i16 %len2.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len2.0.i)
  %cmp159.not.i = icmp eq i16 %len2.0.i, 0
  br i1 %cmp159.not.i, label %if.end154.i.if.end174.i_crit_edge, label %if.then161.i

if.end154.i.if.end174.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i

if.then161.i:                                     ; preds = %if.end154.i
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %call164.i = call fastcc i32 @vprbrd_i2c_receive(ptr noundef %86, ptr noundef %buf, i32 noundef %conv158.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %cmp165.i = icmp slt i32 %call164.i, 0
  br i1 %cmp165.i, label %if.then161.i.vprbrd_i2c_read.exit_crit_edge, label %if.end168.i

if.then161.i.vprbrd_i2c_read.exit_crit_edge:      ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_read.exit

if.end168.i:                                      ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %buf155.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf155.i, align 4
  %add.ptr171.i = getelementptr i8, ptr %88, i32 512
  %add.ptr172.i = getelementptr i8, ptr %add.ptr171.i, i32 %conv156.i
  %89 = call ptr @memcpy(ptr %add.ptr172.i, ptr %buf, i32 %conv158.i)
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.end168.i, %if.end154.i.if.end174.i_crit_edge
  %cmp.not.i = icmp eq i16 %remain_len.1.i, 0
  br i1 %cmp.not.i, label %if.end174.i.vprbrd_i2c_read.exit_crit_edge, label %if.end174.i.while.body.i_crit_edge

if.end174.i.while.body.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end174.i.vprbrd_i2c_read.exit_crit_edge:       ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_read.exit

vprbrd_i2c_read.exit:                             ; preds = %if.end174.i.vprbrd_i2c_read.exit_crit_edge, %if.then161.i.vprbrd_i2c_read.exit_crit_edge, %if.end147.i.vprbrd_i2c_read.exit_crit_edge, %.vprbrd_i2c_read.exit_crit_edge
  %90 = phi i32 [ %31, %.vprbrd_i2c_read.exit_crit_edge ], [ %call164.i, %if.then161.i.vprbrd_i2c_read.exit_crit_edge ], [ %call.i, %if.end147.i.vprbrd_i2c_read.exit_crit_edge ], [ %31, %if.end174.i.vprbrd_i2c_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool50 = icmp ne i32 %90, 0
  %91 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %algo_data, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i156 = shl i32 %96, 8
  %or2.i = or i32 %shl.i.i156, -2147483520
  %call3.i = call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or2.i, i8 noundef zeroext -23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 12, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call3.i)
  %cmp.not.i157 = icmp ne i32 %call3.i, 12
  %spec.select.i = or i1 %tobool50, %cmp.not.i157
  br i1 %spec.select.i, label %vprbrd_i2c_read.exit.error88.sink.split_crit_edge, label %do.body7.i

vprbrd_i2c_read.exit.error88.sink.split_crit_edge: ; preds = %vprbrd_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error88.sink.split

do.body7.i:                                       ; preds = %vprbrd_i2c_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vprbrd_i2c_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vprbrd_i2c_xfer, %do.end20.i)) #8
          to label %if.then14.i [label %do.end20.i], !srcloc !94

if.then14.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %tf2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tf2.i, align 1
  %conv17.i = zext i8 %98 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vprbrd_i2c_status.__UNIQUE_ID_ddebug295, ptr noundef %dev21, ptr noundef nonnull @.str.26, i32 noundef %conv17.i) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then14.i, %do.body7.i
  %99 = ptrtoint ptr %tf2.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tf2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp23.not.i = icmp eq i8 %100, 0
  br i1 %cmp23.not.i, label %do.end20.i.if.end86_crit_edge, label %do.end20.i.error88.sink.split_crit_edge

do.end20.i.error88.sink.split_crit_edge:          ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error88.sink.split

do.end20.i.if.end86_crit_edge:                    ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else:                                          ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_actual.i159) #8
  %101 = ptrtoint ptr %bytes_actual.i159 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %bytes_actual.i159, align 4, !annotation !95
  %len.i161 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 2
  %102 = ptrtoint ptr %len.i161 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len.i161, align 4
  %104 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %buf, align 1
  %buf43.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0228, i32 3
  %105 = ptrtoint ptr %unknown2 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 0, ptr %unknown2, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i173.while.cond.i_crit_edge, %if.else
  %remain_len.0.i = phi i16 [ %103, %if.else ], [ %remain_len.1.i168, %lor.lhs.false.i173.while.cond.i_crit_edge ]
  %start.0.i = phi i16 [ 0, %if.else ], [ %start.1.i169, %lor.lhs.false.i173.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %remain_len.0.i)
  %cmp.not.i163 = icmp eq i16 %remain_len.0.i, 0
  br i1 %cmp.not.i163, label %while.cond.i.vprbrd_i2c_write.exit_crit_edge, label %while.body.i165

while.cond.i.vprbrd_i2c_write.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_write.exit

while.body.i165:                                  ; preds = %while.cond.i
  %add.i164 = add i16 %start.0.i, 16384
  %106 = call i16 @llvm.bswap.i16(i16 %add.i164) #8
  %107 = ptrtoint ptr %addr37 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %106, ptr %addr37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 503, i16 %remain_len.0.i)
  %cmp9.i = icmp ugt i16 %remain_len.0.i, 503
  br i1 %cmp9.i, label %if.then.i166, label %if.else.i167

if.then.i166:                                     ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -1, ptr %len39, align 1
  %109 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -8, ptr %len1128.i, align 1
  %sub.i = add i16 %remain_len.0.i, -503
  %add16.i = add i16 %start.0.i, 503
  br label %if.end41.i

if.else.i167:                                     ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %remain_len.0.i)
  %cmp19.i = icmp ugt i16 %remain_len.0.i, 255
  br i1 %cmp19.i, label %if.then21.i, label %if.else32.i

if.then21.i:                                      ; preds = %if.else.i167
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %len39, align 1
  %111 = trunc i16 %remain_len.0.i to i8
  %conv26.i = add nuw i8 %111, 1
  %112 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv26.i, ptr %len1128.i, align 1
  %add30.i = add nuw nsw i16 %remain_len.0.i, 9
  br label %if.end41.i

if.else32.i:                                      ; preds = %if.else.i167
  call void @__sanitizer_cov_trace_pc() #10
  %conv33.i = trunc i16 %remain_len.0.i to i8
  %113 = ptrtoint ptr %len39 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv33.i, ptr %len39, align 1
  %114 = ptrtoint ptr %len1128.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %len1128.i, align 1
  %add39.i = add nuw nsw i16 %remain_len.0.i, 9
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else32.i, %if.then21.i, %if.then.i166
  %remain_len.1.i168 = phi i16 [ %sub.i, %if.then.i166 ], [ 0, %if.then21.i ], [ 0, %if.else32.i ]
  %bytes_xfer.0.i = phi i16 [ 512, %if.then.i166 ], [ %add30.i, %if.then21.i ], [ %add39.i, %if.else32.i ]
  %start.1.i169 = phi i16 [ %add16.i, %if.then.i166 ], [ %start.0.i, %if.then21.i ], [ %start.0.i, %if.else32.i ]
  %115 = ptrtoint ptr %buf43.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf43.i, align 4
  %conv44.i = zext i16 %start.1.i169 to i32
  %add.ptr.i170 = getelementptr i8, ptr %116, i32 %conv44.i
  %conv45.i = zext i16 %bytes_xfer.0.i to i32
  %sub46.i = add nsw i32 %conv45.i, -9
  %117 = call ptr @memcpy(ptr %tf1.i, ptr %add.ptr.i170, i32 %sub46.i)
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i171 = shl i32 %121, 8
  %or.i172 = or i32 %shl.i.i171, -1073676288
  %call49.i = call i32 @usb_bulk_msg(ptr noundef %119, i32 noundef %or.i172, ptr noundef %buf, i32 noundef %conv45.i, ptr noundef nonnull %bytes_actual.i159, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.end41.i.vprbrd_i2c_write.exit_crit_edge, label %lor.lhs.false.i173

if.end41.i.vprbrd_i2c_write.exit_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_write.exit

lor.lhs.false.i173:                               ; preds = %if.end41.i
  %122 = ptrtoint ptr %bytes_actual.i159 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bytes_actual.i159, align 4
  %cmp53.not.i = icmp eq i32 %123, %conv45.i
  br i1 %cmp53.not.i, label %lor.lhs.false.i173.while.cond.i_crit_edge, label %lor.lhs.false.i173.vprbrd_i2c_write.exit_crit_edge

lor.lhs.false.i173.vprbrd_i2c_write.exit_crit_edge: ; preds = %lor.lhs.false.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %vprbrd_i2c_write.exit

lor.lhs.false.i173.while.cond.i_crit_edge:        ; preds = %lor.lhs.false.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

vprbrd_i2c_write.exit:                            ; preds = %lor.lhs.false.i173.vprbrd_i2c_write.exit_crit_edge, %if.end41.i.vprbrd_i2c_write.exit_crit_edge, %while.cond.i.vprbrd_i2c_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual.i159) #8
  %124 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %buf, align 1
  %125 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %unknown2, align 1
  %126 = ptrtoint ptr %unknown3 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %unknown3, align 1
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx, align 4
  %conv65 = trunc i16 %128 to i8
  %129 = ptrtoint ptr %addr37 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv65, ptr %addr37, align 1
  %130 = ptrtoint ptr %unknown1 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %unknown1, align 1
  %131 = ptrtoint ptr %len.i161 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %len.i161, align 4
  %133 = call i16 @llvm.bswap.i16(i16 %132)
  %134 = ptrtoint ptr %len39 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %len39, align 1
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_actual.i174) #8
  %137 = ptrtoint ptr %bytes_actual.i174 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %bytes_actual.i174, align 4, !annotation !95
  %138 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %136, align 8
  %shl.i.i175 = shl i32 %139, 8
  %or.i176 = or i32 %shl.i.i175, -1073676288
  %call1.i177 = call i32 @usb_bulk_msg(ptr noundef %136, i32 noundef %or.i176, ptr noundef %buf, i32 noundef 7, ptr noundef nonnull %bytes_actual.i174, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %cmp.i178 = icmp slt i32 %call1.i177, 0
  br i1 %cmp.i178, label %vprbrd_i2c_write.exit._crit_edge, label %lor.lhs.false.i180

vprbrd_i2c_write.exit._crit_edge:                 ; preds = %vprbrd_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %142

lor.lhs.false.i180:                               ; preds = %vprbrd_i2c_write.exit
  %140 = ptrtoint ptr %bytes_actual.i174 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bytes_actual.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %141)
  %cmp2.not.i179 = icmp eq i32 %141, 7
  br i1 %cmp2.not.i179, label %vprbrd_i2c_addr.exit184, label %lor.lhs.false.i180._crit_edge

lor.lhs.false.i180._crit_edge:                    ; preds = %lor.lhs.false.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %142

vprbrd_i2c_addr.exit184:                          ; preds = %lor.lhs.false.i180
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual.i174) #8
  br label %143

142:                                              ; preds = %lor.lhs.false.i180._crit_edge, %vprbrd_i2c_write.exit._crit_edge
  %dev.i181 = getelementptr inbounds %struct.usb_device, ptr %136, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i181, ptr noundef nonnull @.str.18) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual.i174) #8
  br label %143

143:                                              ; preds = %142, %vprbrd_i2c_addr.exit184
  %cmp72234 = phi i1 [ true, %142 ], [ false, %vprbrd_i2c_addr.exit184 ]
  %144 = phi i32 [ -121, %142 ], [ 0, %vprbrd_i2c_addr.exit184 ]
  %145 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %algo_data, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %shl.i.i186 = shl i32 %150, 8
  %or2.i187 = or i32 %shl.i.i186, -2147483520
  %call3.i188 = call i32 @usb_control_msg(ptr noundef %148, i32 noundef %or2.i187, i8 noundef zeroext -23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 12, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call3.i188)
  %cmp.not.i189 = icmp ne i32 %call3.i188, 12
  %spec.select.i190 = or i1 %cmp72234, %cmp.not.i189
  br i1 %spec.select.i190, label %.error88.sink.split_crit_edge, label %do.body7.i191

.error88.sink.split_crit_edge:                    ; preds = %143
  call void @__sanitizer_cov_trace_pc() #10
  br label %error88.sink.split

do.body7.i191:                                    ; preds = %143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vprbrd_i2c_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vprbrd_i2c_xfer, %do.end20.i198)) #8
          to label %if.then14.i195 [label %do.end20.i198], !srcloc !94

if.then14.i195:                                   ; preds = %do.body7.i191
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %tf2.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tf2.i, align 1
  %conv17.i194 = zext i8 %152 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vprbrd_i2c_status.__UNIQUE_ID_ddebug295, ptr noundef %dev21, ptr noundef nonnull @.str.26, i32 noundef %conv17.i194) #8
  br label %do.end20.i198

do.end20.i198:                                    ; preds = %if.then14.i195, %do.body7.i191
  %153 = ptrtoint ptr %tf2.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %tf2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp23.not.i197 = icmp eq i8 %154, 0
  br i1 %cmp23.not.i197, label %vprbrd_i2c_status.exit204, label %do.end20.i198.error88.sink.split_crit_edge

do.end20.i198.error88.sink.split_crit_edge:       ; preds = %do.end20.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %error88.sink.split

vprbrd_i2c_status.exit204:                        ; preds = %do.end20.i198
  br i1 %cmp72234, label %vprbrd_i2c_status.exit204.error88_crit_edge, label %vprbrd_i2c_status.exit204.if.end86_crit_edge

vprbrd_i2c_status.exit204.if.end86_crit_edge:     ; preds = %vprbrd_i2c_status.exit204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

vprbrd_i2c_status.exit204.error88_crit_edge:      ; preds = %vprbrd_i2c_status.exit204
  call void @__sanitizer_cov_trace_pc() #10
  br label %error88

if.end86:                                         ; preds = %vprbrd_i2c_status.exit204.if.end86_crit_edge, %do.end20.i.if.end86_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %if.end86.cleanup_crit_edge, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error88.sink.split:                               ; preds = %do.end20.i198.error88.sink.split_crit_edge, %.error88.sink.split_crit_edge, %do.end20.i.error88.sink.split_crit_edge, %vprbrd_i2c_read.exit.error88.sink.split_crit_edge
  %.str.28.sink.i199.sink = phi ptr [ @.str.24, %vprbrd_i2c_read.exit.error88.sink.split_crit_edge ], [ @.str.28, %do.end20.i.error88.sink.split_crit_edge ], [ @.str.24, %.error88.sink.split_crit_edge ], [ @.str.28, %do.end20.i198.error88.sink.split_crit_edge ]
  %error.7.ph = phi i32 [ -121, %vprbrd_i2c_read.exit.error88.sink.split_crit_edge ], [ -71, %do.end20.i.error88.sink.split_crit_edge ], [ -121, %.error88.sink.split_crit_edge ], [ -71, %do.end20.i198.error88.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull %.str.28.sink.i199.sink) #11
  br label %error88

error88:                                          ; preds = %error88.sink.split, %vprbrd_i2c_status.exit204.error88_crit_edge
  %error.7 = phi i32 [ %error.7.ph, %error88.sink.split ], [ %144, %vprbrd_i2c_status.exit204.error88_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error88, %if.end86.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.7, %error88 ], [ %num, %do.end.cleanup_crit_edge ], [ %num, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vprbrd_i2c_func(ptr nocapture noundef readnone %i2c) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vprbrd_i2c_receive(ptr noundef %usb_dev, ptr noundef %rmsg, i32 noundef %bytes_xfer) unnamed_addr #3 align 64 {
entry:
  %bytes_actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_actual) #8
  %0 = ptrtoint ptr %bytes_actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bytes_actual, align 4, !annotation !95
  %1 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_dev, align 8
  %shl.i = shl i32 %2, 8
  %or = or i32 %shl.i, -1073676288
  %call1 = call i32 @usb_bulk_msg(ptr noundef %usb_dev, i32 noundef %or, ptr noundef %rmsg, i32 noundef 13, ptr noundef nonnull %bytes_actual, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %bytes_actual to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes_actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %cmp2.not = icmp eq i32 %4, 13
  br i1 %cmp2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %error.0 = phi i32 [ -121, %do.end ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %5 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_dev, align 8
  %shl.i24 = shl i32 %6, 8
  %or5 = or i32 %shl.i24, -1069350784
  %call6 = call i32 @usb_bulk_msg(ptr noundef %usb_dev, i32 noundef %or5, ptr noundef %rmsg, i32 noundef %bytes_xfer, ptr noundef nonnull %bytes_actual, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.do.end13_crit_edge, label %lor.lhs.false8

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

lor.lhs.false8:                                   ; preds = %if.end
  %7 = ptrtoint ptr %bytes_actual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes_actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %bytes_xfer)
  %cmp9.not = icmp eq i32 %8, %bytes_xfer
  br i1 %cmp9.not, label %lor.lhs.false8.if.end15_crit_edge, label %lor.lhs.false8.do.end13_crit_edge

lor.lhs.false8.do.end13_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

lor.lhs.false8.if.end15_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end13:                                         ; preds = %lor.lhs.false8.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.22) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %lor.lhs.false8.if.end15_crit_edge
  %error.1 = phi i32 [ -121, %do.end13 ], [ %error.0, %lor.lhs.false8.if.end15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_actual) #8
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__param_i2c_bus_freq, !1, !"__param_i2c_bus_freq", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_bus_freqtype293, !1, !"__UNIQUE_ID_i2c_bus_freqtype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_bus_freq294, !4, !"__UNIQUE_ID_i2c_bus_freq294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_viperboard__298_457_vprbrd_i2c_init4, !6, !"__initcall__kmod_i2c_viperboard__298_457_vprbrd_i2c_init4", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 457, i32 1}
!7 = !{ptr @__exitcall_vprbrd_i2c_exit, !8, !"__exitcall_vprbrd_i2c_exit", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 463, i32 1}
!9 = !{ptr @__UNIQUE_ID_author299, !10, !"__UNIQUE_ID_author299", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 465, i32 1}
!11 = !{ptr @__UNIQUE_ID_description300, !12, !"__UNIQUE_ID_description300", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 466, i32 1}
!13 = !{ptr @__UNIQUE_ID_file301, !14, !"__UNIQUE_ID_file301", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 467, i32 1}
!15 = !{ptr @__UNIQUE_ID_license302, !14, !"__UNIQUE_ID_license302", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias303, !17, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 468, i32 1}
!18 = !{ptr @__param_str_i2c_bus_freq, !1, !"__param_str_i2c_bus_freq", i1 false, i1 false}
!19 = !{ptr @i2c_bus_freq, !20, !"i2c_bus_freq", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 30, i32 21}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 451, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vprbrd_i2c_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vprbrd_i2c_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @i2c_bus_param, !28, !"i2c_bus_param", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 29, i32 11}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 420, i32 17}
!31 = !{ptr @vprbrd_i2c_driver, !32, !"vprbrd_i2c_driver", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 419, i32 31}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 378, i32 4}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 390, i32 4}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vprbrd_i2c_probe._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @vprbrd_i2c_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 395, i32 3}
!44 = !{ptr @vprbrd_i2c_probe._entry.9, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vprbrd_i2c_probe._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @vprbrd_algorithm, !47, !"vprbrd_algorithm", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 347, i32 35}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 276, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug296, !49, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 281, i32 3}
!55 = !{ptr @vprbrd_i2c_xfer.__UNIQUE_ID_ddebug297, !54, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!56 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 107, i32 3}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vprbrd_i2c_addr._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @vprbrd_i2c_addr._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 79, i32 3}
!65 = !{ptr @vprbrd_i2c_receive._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vprbrd_i2c_receive._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 89, i32 3}
!69 = !{ptr @vprbrd_i2c_receive._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vprbrd_i2c_receive._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 53, i32 3}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vprbrd_i2c_status._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @vprbrd_i2c_status._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 57, i32 2}
!78 = !{ptr @vprbrd_i2c_status.__UNIQUE_ID_ddebug295, !77, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 59, i32 3}
!81 = !{ptr @vprbrd_i2c_status._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @vprbrd_i2c_status._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @vprbrd_quirks, !84, !"vprbrd_quirks", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-viperboard.c", i32 352, i32 40}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148701620, i64 2148701625, i64 2148701638, i64 2148701682, i64 2148701716, i64 2148701737}
!95 = !{!"auto-init"}
