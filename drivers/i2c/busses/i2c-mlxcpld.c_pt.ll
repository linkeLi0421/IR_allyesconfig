; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-mlxcpld.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mlxcpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mlxcpld_i2c_priv = type { %struct.i2c_adapter, i32, %struct.mutex, %struct.mlxcpld_i2c_curr_xfer, ptr, i8, i32 }
%struct.mlxcpld_i2c_curr_xfer = type { i8, i8, i8, i8, ptr }
%struct.mlxreg_core_hotplug_platform_data = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_mlxcpld__288_588_mlxcpld_i2c_driver_init6 = internal global ptr @mlxcpld_i2c_driver_init, section ".initcall6.init", align 4
@mlxcpld_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxcpld_i2c_probe, ptr @mlxcpld_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxcpld_i2c_driver_exit = internal global ptr @mlxcpld_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"i2c_mlxcpld.author=Michael Shych <michaels@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"i2c_mlxcpld.description=Mellanox I2C-CPLD controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [48 x i8] c"i2c_mlxcpld.file=drivers/i2c/busses/i2c-mlxcpld\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"i2c_mlxcpld.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [39 x i8] c"i2c_mlxcpld.alias=platform:i2c-mlxcpld\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_mlxcpld\00", [20 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @mlxcpld_i2c_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 2, %struct.device zeroinitializer, i32 0, i32 1, [48 x i8] c"i2c-mlxcpld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @mlxcpld_i2c_quirks, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_quirks_ext = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 72, i16 68, i16 4, i16 0 }, [40 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mlxcpld_i2c_xfer, ptr null, ptr null, ptr null, ptr @mlxcpld_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 36, i16 32, i16 4, i16 0 }, [40 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Incorrect message\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlxcpld_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-mlxcpld.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_xfer._entry_ptr = internal global ptr @mlxcpld_i2c_xfer._entry, section ".printk_index", align 4
@mlxcpld_i2c_xfer._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LPCI2C bridge is busy\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_xfer._entry_ptr.9 = internal global ptr @mlxcpld_i2c_xfer._entry.7, section ".printk_index", align 4
@mlxcpld_i2c_xfer._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LPCI2C bridge is busy after reset\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_xfer._entry_ptr.12 = internal global ptr @mlxcpld_i2c_xfer._entry.10, section ".printk_index", align 4
@mlxcpld_i2c_check_msg_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Incorrect 0 num of messages\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxcpld_i2c_check_msg_params\00", [35 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_check_msg_params._entry_ptr = internal global ptr @mlxcpld_i2c_check_msg_params._entry, section ".printk_index", align 4
@mlxcpld_i2c_check_msg_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid address 0x%03x\0A\00", [40 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_check_msg_params._entry_ptr.17 = internal global ptr @mlxcpld_i2c_check_msg_params._entry.15, section ".printk_index", align 4
@mlxcpld_i2c_check_msg_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 172, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid buf in msg[%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_check_msg_params._entry_ptr.20 = internal global ptr @mlxcpld_i2c_check_msg_params._entry.18, section ".printk_index", align 4
@mlxcpld_i2c_check_msg_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid addr in msg[%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_check_msg_params._entry_ptr.23 = internal global ptr @mlxcpld_i2c_check_msg_params._entry.21, section ".printk_index", align 4
@mlxcpld_i2c_wait_for_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Incorrect smbus block read message len\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlxcpld_i2c_wait_for_tc\00", [40 x i8] zeroinitializer }, align 32
@mlxcpld_i2c_wait_for_tc._entry_ptr = internal global ptr @mlxcpld_i2c_wait_for_tc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"mlxcpld_i2c_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 580, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 584, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 528, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"mlxcpld_i2c_adapter\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 469, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"mlxcpld_i2c_quirks_ext\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 462, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"mlxcpld_i2c_algo\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 450, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"mlxcpld_i2c_quirks\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 455, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 397, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 406, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 418, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 159, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 164, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 171, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 176, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-mlxcpld.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 328, i32 5 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mlxcpld_i2c_driver_exit, ptr @__initcall__kmod_i2c_mlxcpld__288_588_mlxcpld_i2c_driver_init6, ptr @mlxcpld_i2c_check_msg_params._entry, ptr @mlxcpld_i2c_check_msg_params._entry.15, ptr @mlxcpld_i2c_check_msg_params._entry.18, ptr @mlxcpld_i2c_check_msg_params._entry.21, ptr @mlxcpld_i2c_check_msg_params._entry_ptr, ptr @mlxcpld_i2c_check_msg_params._entry_ptr.17, ptr @mlxcpld_i2c_check_msg_params._entry_ptr.20, ptr @mlxcpld_i2c_check_msg_params._entry_ptr.23, ptr @mlxcpld_i2c_driver_exit, ptr @mlxcpld_i2c_wait_for_tc._entry, ptr @mlxcpld_i2c_wait_for_tc._entry_ptr, ptr @mlxcpld_i2c_xfer._entry, ptr @mlxcpld_i2c_xfer._entry.10, ptr @mlxcpld_i2c_xfer._entry.7, ptr @mlxcpld_i2c_xfer._entry_ptr, ptr @mlxcpld_i2c_xfer._entry_ptr.12, ptr @mlxcpld_i2c_xfer._entry_ptr.9, ptr @mlxcpld_i2c_driver, ptr @.str, ptr @mlxcpld_i2c_probe.__key, ptr @.str.1, ptr @mlxcpld_i2c_adapter, ptr @mlxcpld_i2c_quirks_ext, ptr @mlxcpld_i2c_algo, ptr @mlxcpld_i2c_quirks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_quirks_ext to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_xfer._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_xfer._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_check_msg_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_check_msg_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_check_msg_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_check_msg_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_i2c_wait_for_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxcpld_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxcpld_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxcpld_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i62 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1480, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i62, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %call.i62, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlxcpld_i2c_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i62, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %call.i62, i32 0, i32 4
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 8
  %base_addr = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %call.i62, i32 0, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8192, ptr %base_addr, align 8
  %polling_time = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %call.i62, i32 0, i32 6
  %3 = ptrtoint ptr %polling_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 200, ptr %polling_time, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.body.if.end11_crit_edge, label %if.then6

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %do.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %8 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval.i, align 4, !annotation !74
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then6.mlxcpld_i2c_set_frequency.exit.thread_crit_edge, label %if.end.i

if.then6.mlxcpld_i2c_set_frequency.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2c_set_frequency.exit.thread

if.end.i:                                         ; preds = %if.then6
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %regmap.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %call.i63 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool2.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %mlxcpld_i2c_set_frequency.exit

if.end4.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval.i, align 4
  %mask.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %18, %16
  %bit.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bit.i, align 4
  %shr.i = lshr i32 %and.i, %20
  %21 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end4.i.mlxcpld_i2c_set_frequency.exit.thread_crit_edge [
    i32 1, label %if.end4.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end4.i.mlxcpld_i2c_set_frequency.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2c_set_frequency.exit.thread

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %if.end4.i.sw.epilog.i_crit_edge
  %freq.0.i = phi i8 [ 12, %sw.bb5.i ], [ 4, %if.end4.i.sw.epilog.i_crit_edge ]
  %22 = ptrtoint ptr %polling_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %polling_time, align 8
  %div7.i = sdiv i32 %23, 4
  store i32 %div7.i, ptr %polling_time, align 8
  %24 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr, align 8
  %add.i.i = add i32 %25, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add2.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %freq.0.i) #7, !srcloc !76
  br label %mlxcpld_i2c_set_frequency.exit.thread

mlxcpld_i2c_set_frequency.exit.thread:            ; preds = %sw.epilog.i, %if.end4.i.mlxcpld_i2c_set_frequency.exit.thread_crit_edge, %if.then6.mlxcpld_i2c_set_frequency.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %if.end11

mlxcpld_i2c_set_frequency.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %mlxcpld_i2_probe_failed

if.end11:                                         ; preds = %mlxcpld_i2c_set_frequency.exit.thread, %do.body.if.end11_crit_edge
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 500000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 50
  store i32 %spec.select.i, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @mlxcpld_i2c_adapter, i32 0, i32 7), align 4
  %27 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_addr, align 8
  %and.i64 = and i32 %28, 1048575
  %add2.i = or i32 %and.i64, -18874368
  %29 = inttoptr i32 %add2.i to ptr
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #7, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %31 = and i8 %30, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp = icmp eq i8 %31, 32
  br i1 %cmp, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @mlxcpld_i2c_quirks_ext, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @mlxcpld_i2c_adapter, i32 0, i32 17), align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool18.not = icmp sgt i8 %30, -1
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %smbus_block = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %call.i62, i32 0, i32 5
  %32 = ptrtoint ptr %smbus_block to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %smbus_block, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %34)
  %cmp21 = icmp sgt i32 %34, -2
  br i1 %cmp21, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %34, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @mlxcpld_i2c_adapter, i32 0, i32 11), align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %35 = call ptr @memcpy(ptr %call.i62, ptr @mlxcpld_i2c_adapter, i32 1360)
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i62, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i66 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i62, i32 0, i32 9, i32 8
  %37 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i62, ptr %driver_data.i.i66, align 4
  %call31 = call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call.i62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end25.cleanup_crit_edge, label %if.end25.mlxcpld_i2_probe_failed_crit_edge

if.end25.mlxcpld_i2_probe_failed_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2_probe_failed

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxcpld_i2_probe_failed:                          ; preds = %if.end25.mlxcpld_i2_probe_failed_crit_edge, %mlxcpld_i2c_set_frequency.exit
  %err.0 = phi i32 [ %call.i63, %mlxcpld_i2c_set_frequency.exit ], [ %call31, %if.end25.mlxcpld_i2_probe_failed_crit_edge ]
  call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %mlxcpld_i2_probe_failed, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %mlxcpld_i2_probe_failed ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxcpld_i2c_read_comm(ptr nocapture noundef readonly %priv, i8 noundef zeroext %offs, ptr nocapture noundef writeonly %data, i8 noundef zeroext %datalen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 8
  %conv = zext i8 %offs to i32
  %add = add i32 %1, %conv
  %2 = zext i8 %datalen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %datalen, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 3, label %sw.bb11
    i8 4, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %3 = inttoptr i32 %add2 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #7, !srcloc !79
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %data, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #7, !srcloc !79
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %data, align 2
  %add19 = add i32 %add, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %14 = inttoptr i32 %add21 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add.ptr, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = and i32 %add, 1048575
  %add28 = or i32 %and27, -18874368
  %17 = inttoptr i32 %add28 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #7, !srcloc !83
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %data, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv.i = zext i8 %datalen to i32
  %sub.i = and i32 %conv.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp32.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp32.not.i, label %sw.default.for.cond6.preheader.i_crit_edge, label %sw.default.for.body.i_crit_edge

sw.default.for.body.i_crit_edge:                  ; preds = %sw.default
  br label %for.body.i

sw.default.for.cond6.preheader.i_crit_edge:       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i.for.cond6.preheader.i_crit_edge, %sw.default.for.cond6.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.default.for.cond6.preheader.i_crit_edge ], [ %add5.i, %for.body.i.for.cond6.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp835.i = icmp slt i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp835.i, label %for.cond6.preheader.i.for.body10.i_crit_edge, label %for.cond6.preheader.i.sw.epilog_crit_edge

for.cond6.preheader.i.sw.epilog_crit_edge:        ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond6.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond6.preheader.i
  br label %for.body10.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.default.for.body.i_crit_edge
  %i.033.i = phi i32 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.default.for.body.i_crit_edge ]
  %add.i = add i32 %i.033.i, %add
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %21 = inttoptr i32 %add3.i to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #7, !srcloc !83
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %add.ptr.i = getelementptr i8, ptr %data, i32 %i.033.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr.i, align 4
  %add5.i = add nuw nsw i32 %i.033.i, 4
  %cmp.i = icmp ult i32 %add5.i, %sub.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond6.preheader.i_crit_edge

for.body.i.for.cond6.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond6.preheader.i.for.body10.i_crit_edge
  %i.136.i = phi i32 [ %inc.i, %for.body10.i.for.body10.i_crit_edge ], [ %i.0.lcssa.i, %for.cond6.preheader.i.for.body10.i_crit_edge ]
  %add12.i = add i32 %i.136.i, %add
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %25 = inttoptr i32 %add14.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %add.ptr18.i = getelementptr i8, ptr %data, i32 %i.136.i
  %27 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %add.ptr18.i, align 1
  %inc.i = add nuw nsw i32 %i.136.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body10.i.sw.epilog_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.body10.i.sw.epilog_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body10.i.sw.epilog_crit_edge, %for.cond6.preheader.i.sw.epilog_crit_edge, %sw.bb25, %sw.bb11, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxcpld_i2c_write_comm(ptr nocapture noundef readonly %priv, i8 noundef zeroext %offs, ptr nocapture noundef readonly %data, i8 noundef zeroext %datalen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 8
  %conv = zext i8 %offs to i32
  %add = add i32 %1, %conv
  %2 = zext i8 %datalen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %datalen, label %sw.default [
    i8 1, label %do.body
    i8 2, label %do.body4
    i8 3, label %do.body11
    i8 4, label %do.body25
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %4) #7, !srcloc !76
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %8) #7, !srcloc !88
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %and14 = and i32 %add, 1048575
  %add15 = or i32 %and14, -18874368
  %13 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %12) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %add20 = add i32 %add, 2
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %16 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %15) #7, !srcloc !76
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and28 = and i32 %add, 1048575
  %add29 = or i32 %and28, -18874368
  %20 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %19) #7, !srcloc !92
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv.i = zext i8 %datalen to i32
  %sub.i = and i32 %conv.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp31.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp31.not.i, label %sw.default.for.cond5.preheader.i_crit_edge, label %sw.default.do.body.i_crit_edge

sw.default.do.body.i_crit_edge:                   ; preds = %sw.default
  br label %do.body.i

sw.default.for.cond5.preheader.i_crit_edge:       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %do.body.i.for.cond5.preheader.i_crit_edge, %sw.default.for.cond5.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.default.for.cond5.preheader.i_crit_edge ], [ %add4.i, %do.body.i.for.cond5.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp734.i = icmp slt i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp734.i, label %for.cond5.preheader.i.do.body10.i_crit_edge, label %for.cond5.preheader.i.sw.epilog_crit_edge

for.cond5.preheader.i.sw.epilog_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond5.preheader.i.do.body10.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %do.body10.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.default.do.body.i_crit_edge
  %i.032.i = phi i32 [ %add4.i, %do.body.i.do.body.i_crit_edge ], [ 0, %sw.default.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %data, i32 %i.032.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %add.i = add i32 %i.032.i, %add
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %23) #7, !srcloc !92
  %add4.i = add nuw nsw i32 %i.032.i, 4
  %cmp.i = icmp ult i32 %add4.i, %sub.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.cond5.preheader.i_crit_edge

do.body.i.for.cond5.preheader.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond5.preheader.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body10.i:                                      ; preds = %do.body10.i.do.body10.i_crit_edge, %for.cond5.preheader.i.do.body10.i_crit_edge
  %i.135.i = phi i32 [ %inc.i, %do.body10.i.do.body10.i_crit_edge ], [ %i.0.lcssa.i, %for.cond5.preheader.i.do.body10.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %add.ptr13.i = getelementptr i8, ptr %data, i32 %i.135.i
  %25 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr13.i, align 1
  %add14.i = add i32 %i.135.i, %add
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %27 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %26) #7, !srcloc !76
  %inc.i = add nuw nsw i32 %i.135.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %do.body10.i.sw.epilog_crit_edge, label %do.body10.i.do.body10.i_crit_edge

do.body10.i.do.body10.i_crit_edge:                ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.body10.i.sw.epilog_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body10.i.sw.epilog_crit_edge, %for.cond5.preheader.i.sw.epilog_crit_edge, %do.body25, %do.body11, %do.body4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool.not.i = icmp eq i32 %num, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msgs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %5)
  %cmp.i = icmp ugt i16 %5, 127
  br i1 %cmp.i, label %do.end7.i, label %for.cond.preheader.i, !prof !95

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1366.i = icmp sgt i32 %num, 0
  br i1 %cmp1366.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end_crit_edge

for.cond.preheader.i.for.end_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %5 to i32
  %dev8.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #10
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.067.i, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i, align 4
  %tobool16.not.i = icmp eq ptr %9, null
  br i1 %tobool16.not.i, label %do.end28.i, label %if.end30.i, !prof !95

do.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev29.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev29.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %i.067.i) #10
  br label %do.end

if.end30.i:                                       ; preds = %for.body.i
  %arrayidx15.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.067.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %13)
  %cmp37.not.i = icmp eq i16 %5, %13
  br i1 %cmp37.not.i, label %for.inc.i, label %do.end48.i, !prof !96

do.end48.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev49.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dev49.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev49.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %i.067.i) #10
  br label %do.end

for.inc.i:                                        ; preds = %if.end30.i
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %mlxcpld_i2c_check_msg_params.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlxcpld_i2c_check_msg_params.exit:                ; preds = %for.inc.i
  br i1 %cmp1366.i, label %mlxcpld_i2c_check_msg_params.exit.for.body_crit_edge, label %mlxcpld_i2c_check_msg_params.exit.for.end_crit_edge

mlxcpld_i2c_check_msg_params.exit.for.end_crit_edge: ; preds = %mlxcpld_i2c_check_msg_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

mlxcpld_i2c_check_msg_params.exit.for.body_crit_edge: ; preds = %mlxcpld_i2c_check_msg_params.exit
  br label %for.body

do.end:                                           ; preds = %do.end48.i, %do.end28.i, %do.end7.i, %do.end.i
  %dev = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mlxcpld_i2c_check_msg_params.exit.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mlxcpld_i2c_check_msg_params.exit.for.body_crit_edge ]
  %comm_len.0115 = phi i8 [ %add, %for.body.for.body_crit_edge ], [ 0, %mlxcpld_i2c_check_msg_params.exit.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0116, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len, align 4
  %conv = trunc i16 %19 to i8
  %add = add i8 %comm_len.0115, %conv
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mlxcpld_i2c_check_msg_params.exit.for.end_crit_edge, %for.cond.preheader.i.for.end_crit_edge
  %comm_len.0.lcssa = phi i8 [ 0, %mlxcpld_i2c_check_msg_params.exit.for.end_crit_edge ], [ 0, %for.cond.preheader.i.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %polling_time.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 6
  %base_addr.i.i.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i50.do.body.i_crit_edge, %for.end
  %timeout.0.i = phi i32 [ 0, %for.end ], [ %add.i, %if.end.i50.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i.i = add i32 %21, 9
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add2.i.i.i = or i32 %and.i.i.i, -18874368
  %22 = inttoptr i32 %add2.i.i.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.not.i, label %if.end.i50, label %do.body.i.if.end19_crit_edge

do.body.i.if.end19_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end.i50:                                       ; preds = %do.body.i
  %25 = ptrtoint ptr %polling_time.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %polling_time.i, align 8
  %div.i = sdiv i32 %26, 2
  tail call void @usleep_range_state(i32 noundef %div.i, i32 noundef %26, i32 noundef 2) #7
  %27 = ptrtoint ptr %polling_time.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %polling_time.i, align 8
  %add.i = add i32 %28, %timeout.0.i
  %cmp.i49 = icmp slt i32 %add.i, 500001
  br i1 %cmp.i49, label %if.end.i50.do.body.i_crit_edge, label %do.end9

if.end.i50.do.body.i_crit_edge:                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end9:                                          ; preds = %if.end.i50
  %dev10 = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8) #10
  %lock.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %31 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i = add i32 %32, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %33 = inttoptr i32 %add2.i.i to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %35 = and i8 %34, -2
  %36 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i7.i = add i32 %37, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %and.i8.i = and i32 %add.i7.i, 1048575
  %add2.i9.i = or i32 %and.i8.i, -18874368
  %38 = inttoptr i32 %add2.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #7, !srcloc !76
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %39 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i53 = add i32 %40, 9
  %and.i.i54 = and i32 %add.i.i53, 1048575
  %add2.i.i55 = or i32 %and.i.i54, -18874368
  %41 = inttoptr i32 %add2.i.i55 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i56.not = icmp eq i8 %43, 0
  br i1 %tobool.not.i56.not, label %do.end16, label %do.end9.if.end19_crit_edge

do.end9.if.end19_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end19:                                         ; preds = %do.end9.if.end19_crit_edge, %do.body.i.if.end19_crit_edge
  %xfer.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3
  %msg.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msgs, ptr %msg.i, align 4
  %conv.i58 = trunc i32 %num to i8
  %msg_num.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i58, ptr %msg_num.i, align 1
  %sub.i = add i32 %num, -1
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %sub.i, i32 1
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 2
  %50 = trunc i16 %49 to i8
  %conv3.i = and i8 %50, 1
  %51 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv3.i, ptr %xfer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %cmp.not.i = icmp eq i8 %conv3.i, 0
  br i1 %cmp.not.i, label %if.end19.if.else.i_crit_edge, label %land.lhs.true.i

if.end19.if.else.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end19
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len.i, align 4
  %54 = zext i8 %comm_len.0.lcssa to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %54)
  %cmp12.not.i = icmp eq i16 %53, %54
  br i1 %cmp12.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i16 %53 to i8
  %addr_width.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv16.i, ptr %addr_width.i, align 1
  %sub22.i = sub i8 %comm_len.0.lcssa, %conv16.i
  br label %mlxcpld_i2c_set_transf_data.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end19.if.else.i_crit_edge
  %addr_width26.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %addr_width26.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %addr_width26.i, align 1
  br label %mlxcpld_i2c_set_transf_data.exit

mlxcpld_i2c_set_transf_data.exit:                 ; preds = %if.else.i, %if.then.i
  %comm_len.sink.i = phi i8 [ %comm_len.0.lcssa, %if.else.i ], [ %sub22.i, %if.then.i ]
  %data_len28.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %data_len28.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %comm_len.sink.i, ptr %data_len28.i, align 2
  %lock = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %58 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i61 = add i32 %59, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %data_len28.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data_len28.i, align 1
  %and.i.i62 = and i32 %add.i.i61, 1048575
  %add2.i.i63 = or i32 %and.i.i62, -18874368
  %62 = inttoptr i32 %add2.i.i63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %61) #7, !srcloc !76
  %addr_width.i64 = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %addr_width.i64 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %addr_width.i64, align 1
  %smbus_block.i = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %smbus_block.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %smbus_block.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i65 = icmp eq i8 %66, 0
  br i1 %tobool.not.i65, label %mlxcpld_i2c_set_transf_data.exit.if.end.i71_crit_edge, label %land.lhs.true.i68

mlxcpld_i2c_set_transf_data.exit.if.end.i71_crit_edge: ; preds = %mlxcpld_i2c_set_transf_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i71

land.lhs.true.i68:                                ; preds = %mlxcpld_i2c_set_transf_data.exit
  %67 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %msg_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp.i67 = icmp ugt i8 %68, 1
  br i1 %cmp.i67, label %land.lhs.true4.i, label %land.lhs.true.i68.if.end.i71_crit_edge

land.lhs.true.i68.if.end.i71_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i71

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i68
  %69 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %msg.i, align 4
  %len6.i = getelementptr %struct.i2c_msg, ptr %70, i32 1, i32 2
  %71 = ptrtoint ptr %len6.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %72)
  %cmp8.i = icmp eq i16 %72, 1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true4.i.if.end.i71_crit_edge

land.lhs.true4.i.if.end.i71_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i71

land.lhs.true10.i:                                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i70 = getelementptr %struct.i2c_msg, ptr %70, i32 1, i32 1
  %73 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags.i70, align 2
  %75 = and i16 %74, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %75)
  %.not.i = icmp eq i16 %75, 1025
  %76 = or i8 %64, -128
  %spec.select.i = select i1 %.not.i, i8 %76, i8 %64
  br label %if.end.i71

if.end.i71:                                       ; preds = %land.lhs.true10.i, %land.lhs.true4.i.if.end.i71_crit_edge, %land.lhs.true.i68.if.end.i71_crit_edge, %mlxcpld_i2c_set_transf_data.exit.if.end.i71_crit_edge
  %val.0.i = phi i8 [ %64, %mlxcpld_i2c_set_transf_data.exit.if.end.i71_crit_edge ], [ %64, %land.lhs.true4.i.if.end.i71_crit_edge ], [ %64, %land.lhs.true.i68.if.end.i71_crit_edge ], [ %spec.select.i, %land.lhs.true10.i ]
  %77 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i89.i = add i32 %78, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %and.i90.i = and i32 %add.i89.i, 1048575
  %add2.i91.i = or i32 %and.i90.i, -18874368
  %79 = inttoptr i32 %add2.i91.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %val.0.i) #7, !srcloc !76
  %80 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %msg_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp2997.not.i = icmp eq i8 %81, 0
  br i1 %cmp2997.not.i, label %if.end.i71.mlxcpld_i2c_xfer_msg.exit_crit_edge, label %if.end.i71.for.body.i72_crit_edge

if.end.i71.for.body.i72_crit_edge:                ; preds = %if.end.i71
  br label %for.body.i72

if.end.i71.mlxcpld_i2c_xfer_msg.exit_crit_edge:   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2c_xfer_msg.exit

for.body.i72:                                     ; preds = %for.inc.i75.for.body.i72_crit_edge, %if.end.i71.for.body.i72_crit_edge
  %len.0100.i = phi i32 [ %len.1.i, %for.inc.i75.for.body.i72_crit_edge ], [ 0, %if.end.i71.for.body.i72_crit_edge ]
  %i.098.i = phi i32 [ %inc.i74, %for.inc.i75.for.body.i72_crit_edge ], [ 0, %if.end.i71.for.body.i72_crit_edge ]
  %82 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg.i, align 4
  %flags34.i = getelementptr %struct.i2c_msg, ptr %83, i32 %i.098.i, i32 1
  %84 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags34.i, align 2
  %86 = and i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp37.not.not.i = icmp eq i16 %86, 0
  br i1 %cmp37.not.not.i, label %if.then39.i, label %for.body.i72.for.inc.i75_crit_edge

for.body.i72.for.inc.i75_crit_edge:               ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i75

if.then39.i:                                      ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #9
  %87 = trunc i32 %len.0100.i to i8
  %conv40.i = add i8 %87, 10
  %buf.i73 = getelementptr %struct.i2c_msg, ptr %83, i32 %i.098.i, i32 3
  %88 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf.i73, align 4
  %len47.i = getelementptr %struct.i2c_msg, ptr %83, i32 %i.098.i, i32 2
  %90 = ptrtoint ptr %len47.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %len47.i, align 4
  %conv48.i = trunc i16 %91 to i8
  tail call fastcc void @mlxcpld_i2c_write_comm(ptr noundef %1, i8 noundef zeroext %conv40.i, ptr noundef %89, i8 noundef zeroext %conv48.i) #7
  %92 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %msg.i, align 4
  %len52.i = getelementptr %struct.i2c_msg, ptr %93, i32 %i.098.i, i32 2
  %94 = ptrtoint ptr %len52.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %len52.i, align 4
  %conv53.i = zext i16 %95 to i32
  %add54.i = add i32 %len.0100.i, %conv53.i
  br label %for.inc.i75

for.inc.i75:                                      ; preds = %if.then39.i, %for.body.i72.for.inc.i75_crit_edge
  %len.1.i = phi i32 [ %add54.i, %if.then39.i ], [ %len.0100.i, %for.body.i72.for.inc.i75_crit_edge ]
  %inc.i74 = add nuw nsw i32 %i.098.i, 1
  %96 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %msg_num.i, align 1
  %conv28.i = zext i8 %97 to i32
  %cmp29.i = icmp ult i32 %inc.i74, %conv28.i
  br i1 %cmp29.i, label %for.inc.i75.for.body.i72_crit_edge, label %for.inc.i75.mlxcpld_i2c_xfer_msg.exit_crit_edge

for.inc.i75.mlxcpld_i2c_xfer_msg.exit_crit_edge:  ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2c_xfer_msg.exit

for.inc.i75.for.body.i72_crit_edge:               ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i72

mlxcpld_i2c_xfer_msg.exit:                        ; preds = %for.inc.i75.mlxcpld_i2c_xfer_msg.exit_crit_edge, %if.end.i71.mlxcpld_i2c_xfer_msg.exit_crit_edge
  %98 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %msg.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %99, align 4
  %conv59.i = trunc i16 %101 to i8
  %shl.i = shl i8 %conv59.i, 1
  %102 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %xfer.i, align 8
  %or63.i = or i8 %shl.i, %103
  %104 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i93.i = add i32 %105, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %and.i94.i = and i32 %add.i93.i, 1048575
  %add2.i95.i = or i32 %and.i94.i, -18874368
  %106 = inttoptr i32 %add2.i95.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %or63.i) #7, !srcloc !76
  br label %do.body.i85

do.body.i85:                                      ; preds = %land.rhs.i.do.body.i85_crit_edge, %mlxcpld_i2c_xfer_msg.exit
  %timeout.0.i79 = phi i32 [ 0, %mlxcpld_i2c_xfer_msg.exit ], [ %add.i86, %land.rhs.i.do.body.i85_crit_edge ]
  %107 = ptrtoint ptr %polling_time.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %polling_time.i, align 8
  %div.i80 = sdiv i32 %108, 2
  tail call void @usleep_range_state(i32 noundef %div.i80, i32 noundef %108, i32 noundef 2) #7
  %109 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i.i81 = add i32 %110, 9
  %and.i.i.i82 = and i32 %add.i.i.i81, 1048575
  %add2.i.i.i83 = or i32 %and.i.i.i82, -18874368
  %111 = inttoptr i32 %add2.i.i.i83 to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %conv.i.i = zext i8 %112 to i32
  %and.i.i84 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i, label %land.rhs.i, label %do.end.i88

land.rhs.i:                                       ; preds = %do.body.i85
  %113 = ptrtoint ptr %polling_time.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %polling_time.i, align 8
  %add.i86 = add i32 %114, %timeout.0.i79
  %cmp3.i87 = icmp slt i32 %add.i86, 500000
  br i1 %cmp3.i87, label %land.rhs.i.do.body.i85_crit_edge, label %land.rhs.i..loopexit_crit_edge

land.rhs.i..loopexit_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

land.rhs.i.do.body.i85_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i85

do.end.i88:                                       ; preds = %do.body.i85
  %and2.i.le.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.le.i)
  %tobool3.not.i.le.i = icmp eq i32 %and2.i.le.i, 0
  br i1 %tobool3.not.i.le.i, label %sw.bb4.i, label %do.end.i88..loopexit_crit_edge

do.end.i88..loopexit_crit_edge:                   ; preds = %do.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

sw.bb4.i:                                         ; preds = %do.end.i88
  %115 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %xfer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp5.not.i = icmp eq i8 %116, 1
  br i1 %cmp5.not.i, label %if.end13.i, label %sw.bb4.i.mlxcpld_i2c_wait_for_tc.exit_crit_edge

sw.bb4.i.mlxcpld_i2c_wait_for_tc.exit_crit_edge:  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxcpld_i2c_wait_for_tc.exit

if.end13.i:                                       ; preds = %sw.bb4.i
  %117 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %msg_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp16.i = icmp ne i8 %118, 1
  %..i93 = zext i1 %cmp16.i to i32
  %119 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %msg.i, align 4
  %buf.i95 = getelementptr %struct.i2c_msg, ptr %120, i32 %..i93, i32 3
  %121 = ptrtoint ptr %buf.i95 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buf.i95, align 4
  %tobool21.not.i = icmp eq ptr %122, null
  br i1 %tobool21.not.i, label %if.end13.i..loopexit_crit_edge, label %if.end23.i

if.end13.i..loopexit_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

if.end23.i:                                       ; preds = %if.end13.i
  %123 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i.i96 = add i32 %124, 8
  %and.i70.i = and i32 %add.i.i96, 1048575
  %add2.i.i97 = or i32 %and.i70.i, -18874368
  %125 = inttoptr i32 %add2.i.i97 to ptr
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %125) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %127 = ptrtoint ptr %smbus_block.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %smbus_block.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool24.not.i = icmp eq i8 %128, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %tobool27.not.i = icmp sgt i8 %126, -1
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %if.else39.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end23.i
  %129 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %base_addr.i.i.i, align 8
  %add.i72.i = add i32 %130, 7
  %and.i73.i = and i32 %add.i72.i, 1048575
  %add2.i74.i = or i32 %and.i73.i, -18874368
  %131 = inttoptr i32 %add2.i74.i to ptr
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %131) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %132)
  %cmp30.i = icmp ugt i8 %132, 32
  br i1 %cmp30.i, label %do.end37.i, label %if.then28.i.if.end42.i_crit_edge, !prof !95

if.then28.i.if.end42.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

do.end37.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i99 = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 4
  %133 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i99, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.24) #10
  br label %.loopexit

if.else39.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %data_len28.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %data_len28.i, align 2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else39.i, %if.then28.i.if.end42.i_crit_edge
  %datalen.0.i = phi i8 [ %136, %if.else39.i ], [ %132, %if.then28.i.if.end42.i_crit_edge ]
  %137 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %msg.i, align 4
  %buf46.i = getelementptr %struct.i2c_msg, ptr %138, i32 %..i93, i32 3
  %139 = ptrtoint ptr %buf46.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %buf46.i, align 4
  tail call fastcc void @mlxcpld_i2c_read_comm(ptr noundef %1, i8 noundef zeroext 10, ptr noundef %140, i8 noundef zeroext %datalen.0.i) #7
  br label %mlxcpld_i2c_wait_for_tc.exit

mlxcpld_i2c_wait_for_tc.exit:                     ; preds = %if.end42.i, %sw.bb4.i.mlxcpld_i2c_wait_for_tc.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

.loopexit:                                        ; preds = %do.end37.i, %if.end13.i..loopexit_crit_edge, %do.end.i88..loopexit_crit_edge, %land.rhs.i..loopexit_crit_edge
  %retval.0.i100.ph = phi i32 [ -6, %do.end.i88..loopexit_crit_edge ], [ -22, %if.end13.i..loopexit_crit_edge ], [ -71, %do.end37.i ], [ -110, %land.rhs.i..loopexit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %.loopexit, %mlxcpld_i2c_wait_for_tc.exit, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end16 ], [ %retval.0.i100.ph, %.loopexit ], [ %num, %mlxcpld_i2c_wait_for_tc.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxcpld_i2c_func(ptr nocapture noundef readonly %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %smbus_block = getelementptr inbounds %struct.mlxcpld_i2c_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %smbus_block to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smbus_block, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 251592713, i32 268369929
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_i2c_mlxcpld__288_588_mlxcpld_i2c_driver_init6, !1, !"__initcall__kmod_i2c_mlxcpld__288_588_mlxcpld_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 588, i32 1}
!2 = !{ptr @__exitcall_mlxcpld_i2c_driver_exit, !1, !"__exitcall_mlxcpld_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 590, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 591, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 592, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 593, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 584, i32 11}
!14 = !{ptr @mlxcpld_i2c_driver, !15, !"mlxcpld_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 580, i32 31}
!16 = !{ptr @mlxcpld_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 528, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlxcpld_i2c_adapter, !20, !"mlxcpld_i2c_adapter", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 469, i32 27}
!21 = !{ptr @mlxcpld_i2c_algo, !22, !"mlxcpld_i2c_algo", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 450, i32 35}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 397, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlxcpld_i2c_xfer._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlxcpld_i2c_xfer._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 406, i32 3}
!33 = !{ptr @mlxcpld_i2c_xfer._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlxcpld_i2c_xfer._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 418, i32 4}
!37 = !{ptr @mlxcpld_i2c_xfer._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlxcpld_i2c_xfer._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 159, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlxcpld_i2c_check_msg_params._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlxcpld_i2c_check_msg_params._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 164, i32 3}
!46 = !{ptr @mlxcpld_i2c_check_msg_params._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlxcpld_i2c_check_msg_params._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 171, i32 4}
!50 = !{ptr @mlxcpld_i2c_check_msg_params._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlxcpld_i2c_check_msg_params._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 176, i32 4}
!54 = !{ptr @mlxcpld_i2c_check_msg_params._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlxcpld_i2c_check_msg_params._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 328, i32 5}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mlxcpld_i2c_wait_for_tc._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mlxcpld_i2c_wait_for_tc._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mlxcpld_i2c_quirks, !62, !"mlxcpld_i2c_quirks", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 455, i32 40}
!63 = !{ptr @mlxcpld_i2c_quirks_ext, !64, !"mlxcpld_i2c_quirks_ext", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-mlxcpld.c", i32 462, i32 40}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2155629686}
!76 = !{i64 6843726}
!77 = !{i64 6844121}
!78 = !{i64 2155627322}
!79 = !{i64 6843503}
!80 = !{i64 2155627948}
!81 = !{i64 2155628574}
!82 = !{i64 2155628851}
!83 = !{i64 6844341}
!84 = !{i64 2155629477}
!85 = !{i64 2155626776}
!86 = !{i64 2155627053}
!87 = !{i64 2155630051}
!88 = !{i64 6843303}
!89 = !{i64 2155630533}
!90 = !{i64 2155630980}
!91 = !{i64 2155631349}
!92 = !{i64 6843923}
!93 = !{i64 2155625558}
!94 = !{i64 2155626017}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i8 0, i8 2}
