; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-cros-ec-tunnel.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cros-ec-tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ec_i2c_device = type { ptr, %struct.i2c_adapter, ptr, i16, [256 x i8], [256 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_i2c_passthru = type { i8, i8, [0 x %struct.ec_params_i2c_passthru_msg] }
%struct.ec_params_i2c_passthru_msg = type { i16, i16 }

@__initcall__kmod_i2c_cros_ec_tunnel__290_317_ec_i2c_tunnel_driver_init6 = internal global ptr @ec_i2c_tunnel_driver_init, section ".initcall6.init", align 4
@ec_i2c_tunnel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ec_i2c_probe, ptr @ec_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ec_i2c_tunnel_driver_exit = internal global ptr @ec_i2c_tunnel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [62 x i8] c"i2c_cros_ec_tunnel.file=drivers/i2c/busses/i2c-cros-ec-tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"i2c_cros_ec_tunnel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [52 x i8] c"i2c_cros_ec_tunnel.description=EC I2C tunnel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [53 x i8] c"i2c_cros_ec_tunnel.alias=platform:cros-ec-i2c-tunnel\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros-ec-i2c-tunnel\00", [45 x i8] zeroinitializer }, align 32
@cros_ec_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-i2c-tunnel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ec_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Missing sendrecv\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ec_i2c_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/i2c/busses/i2c-cros-ec-tunnel.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ec_i2c_probe._entry_ptr = internal global ptr @ec_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"google,remote-bus\00", [46 x i8] zeroinitializer }, align 32
@ec_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't read remote-bus property\0A\00", [61 x i8] zeroinitializer }, align 32
@ec_i2c_probe._entry_ptr.9 = internal global ptr @ec_i2c_probe._entry.7, section ".printk_index", align 4
@ec_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ec_i2c_xfer, ptr null, ptr null, ptr null, ptr @ec_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ec_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 188, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error constructing message %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ec_i2c_xfer\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ec_i2c_xfer._entry_ptr = internal global ptr @ec_i2c_xfer._entry, section ".printk_index", align 4
@ec_i2c_xfer._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 195, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error preparing response %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ec_i2c_xfer._entry_ptr.15 = internal global ptr @ec_i2c_xfer._entry.13, section ".printk_index", align 4
@ec_i2c_xfer._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error constructing EC i2c message %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ec_i2c_xfer._entry_ptr.18 = internal global ptr @ec_i2c_xfer._entry.16, section ".printk_index", align 4
@ec_i2c_xfer._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error transferring EC i2c message %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ec_i2c_xfer._entry_ptr.21 = internal global ptr @ec_i2c_xfer._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"ec_i2c_tunnel_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 307, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 311, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"cros_ec_i2c_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 295, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 251, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 259, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 261, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"ec_i2c_algorithm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 237, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 188, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 195, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 206, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [43 x i8] c"../drivers/i2c/busses/i2c-cros-ec-tunnel.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 217, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ec_i2c_tunnel_driver_exit, ptr @__initcall__kmod_i2c_cros_ec_tunnel__290_317_ec_i2c_tunnel_driver_init6, ptr @ec_i2c_probe._entry, ptr @ec_i2c_probe._entry.7, ptr @ec_i2c_probe._entry_ptr, ptr @ec_i2c_probe._entry_ptr.9, ptr @ec_i2c_tunnel_driver_exit, ptr @ec_i2c_xfer._entry, ptr @ec_i2c_xfer._entry.13, ptr @ec_i2c_xfer._entry.16, ptr @ec_i2c_xfer._entry.19, ptr @ec_i2c_xfer._entry_ptr, ptr @ec_i2c_xfer._entry_ptr.15, ptr @ec_i2c_xfer._entry_ptr.18, ptr @ec_i2c_xfer._entry_ptr.21, ptr @ec_i2c_tunnel_driver, ptr @.str, ptr @cros_ec_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ec_i2c_algorithm, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_tunnel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_xfer._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_xfer._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_i2c_xfer._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_i2c_tunnel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ec_i2c_tunnel_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ec_i2c_tunnel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ec_i2c_tunnel_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %remote_bus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_bus) #9
  %4 = ptrtoint ptr %remote_bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %remote_bus, align 4, !annotation !59
  %cmd_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %cmd_xfer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_xfer, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1888, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i67 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %remote_bus, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool7.not = icmp eq i32 %call.i67, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %remote_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %remote_bus, align 4
  %conv = trunc i32 %8 to i16
  %remote_bus13 = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %remote_bus13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %remote_bus13, align 4
  %ec14 = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %ec14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %ec14, align 8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 8
  %adap = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %adap, align 8
  %name = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 12
  %call17 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #9
  %algo = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ec_i2c_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %algo_data, align 4
  %parent23 = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %15 = ptrtoint ptr %parent23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent23, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %of_node27 = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %18 = ptrtoint ptr %of_node27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node27, align 8
  %retries = getelementptr inbounds %struct.ec_i2c_device, ptr %call.i, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %retries, align 8
  %call33 = call i32 @i2c_add_adapter(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end12.cleanup_crit_edge, %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i67, %do.end11 ], [ 0, %if.end36 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call33, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_bus) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_i2c_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.ec_i2c_device, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %i2c_msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %remote_bus = getelementptr inbounds %struct.ec_i2c_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %remote_bus to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %remote_bus, align 4
  %mul.i = shl i32 %num, 2
  %add.i = or i32 %mul.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp11.i = icmp sgt i32 %num, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %ec_i2c_count_message.exit.thread

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %size.014.i = phi i32 [ %size.1.i, %for.inc.i.for.body.i_crit_edge ], [ %add.i, %entry.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.012.i, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.then.i71, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i71:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.012.i, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len.i, align 4
  %conv2.i = zext i16 %10 to i32
  %add3.i = add i32 %size.014.i, %conv2.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i71, %for.body.i.for.inc.i_crit_edge
  %size.1.i = phi i32 [ %size.014.i, %for.body.i.for.inc.i_crit_edge ], [ %add3.i, %if.then.i71 ]
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %ec_i2c_count_message.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ec_i2c_count_message.exit:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.i)
  %cmp = icmp slt i32 %size.1.i, 0
  br i1 %cmp, label %ec_i2c_count_message.exit.do.end_crit_edge, label %ec_i2c_count_message.exit.for.body.i74_crit_edge

ec_i2c_count_message.exit.for.body.i74_crit_edge: ; preds = %ec_i2c_count_message.exit
  br label %for.body.i74

ec_i2c_count_message.exit.do.end_crit_edge:       ; preds = %ec_i2c_count_message.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

ec_i2c_count_message.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp110 = icmp slt i32 %add.i, 0
  br i1 %cmp110, label %ec_i2c_count_message.exit.thread.do.end_crit_edge, label %ec_i2c_count_message.exit.thread.if.end8.i_crit_edge

ec_i2c_count_message.exit.thread.if.end8.i_crit_edge: ; preds = %ec_i2c_count_message.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

ec_i2c_count_message.exit.thread.do.end_crit_edge: ; preds = %ec_i2c_count_message.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %ec_i2c_count_message.exit.thread.do.end_crit_edge, %ec_i2c_count_message.exit.do.end_crit_edge
  %size.0.lcssa.i112 = phi i32 [ %add.i, %ec_i2c_count_message.exit.thread.do.end_crit_edge ], [ %size.1.i, %ec_i2c_count_message.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %size.0.lcssa.i112) #12
  br label %cleanup

for.body.i74:                                     ; preds = %for.inc.i82.for.body.i74_crit_edge, %ec_i2c_count_message.exit.for.body.i74_crit_edge
  %i.010.i = phi i32 [ %inc.i80, %for.inc.i82.for.body.i74_crit_edge ], [ 0, %ec_i2c_count_message.exit.for.body.i74_crit_edge ]
  %size.09.i = phi i32 [ %size.1.i79, %for.inc.i82.for.body.i74_crit_edge ], [ 2, %ec_i2c_count_message.exit.for.body.i74_crit_edge ]
  %flags.i72 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.010.i, i32 1
  %11 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i72, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i73 = icmp eq i16 %13, 0
  br i1 %tobool.not.i73, label %for.body.i74.for.inc.i82_crit_edge, label %if.then.i78

for.body.i74.for.inc.i82_crit_edge:               ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i82

if.then.i78:                                      ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #11
  %len.i75 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.010.i, i32 2
  %14 = ptrtoint ptr %len.i75 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i75, align 4
  %conv2.i76 = zext i16 %15 to i32
  %add.i77 = add i32 %size.09.i, %conv2.i76
  br label %for.inc.i82

for.inc.i82:                                      ; preds = %if.then.i78, %for.body.i74.for.inc.i82_crit_edge
  %size.1.i79 = phi i32 [ %add.i77, %if.then.i78 ], [ %size.09.i, %for.body.i74.for.inc.i82_crit_edge ]
  %inc.i80 = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i81 = icmp eq i32 %inc.i80, %num
  br i1 %exitcond.not.i81, label %ec_i2c_count_response.exit, label %for.inc.i82.for.body.i74_crit_edge

for.inc.i82.for.body.i74_crit_edge:               ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i74

ec_i2c_count_response.exit:                       ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.i79)
  %cmp3 = icmp slt i32 %size.1.i79, 0
  br i1 %cmp3, label %do.end7, label %ec_i2c_count_response.exit.if.end8.i_crit_edge

ec_i2c_count_response.exit.if.end8.i_crit_edge:   ; preds = %ec_i2c_count_response.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end7:                                          ; preds = %ec_i2c_count_response.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %size.1.i79) #12
  br label %cleanup

if.end8.i:                                        ; preds = %ec_i2c_count_response.exit.if.end8.i_crit_edge, %ec_i2c_count_message.exit.thread.if.end8.i_crit_edge
  %size.0.lcssa.i83119 = phi i32 [ %size.1.i79, %ec_i2c_count_response.exit.if.end8.i_crit_edge ], [ 2, %ec_i2c_count_message.exit.thread.if.end8.i_crit_edge ]
  %size.0.lcssa.i111114118 = phi i32 [ %size.1.i, %ec_i2c_count_response.exit.if.end8.i_crit_edge ], [ %add.i, %ec_i2c_count_message.exit.thread.if.end8.i_crit_edge ]
  %16 = tail call i32 @llvm.smax.i32(i32 %size.0.lcssa.i111114118, i32 %size.0.lcssa.i83119)
  %add = add nuw i32 %16, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end12

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i, i32 0, i32 5
  %conv.i = trunc i16 %5 to i8
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %data, align 4
  %conv2.i84 = trunc i32 %num to i8
  %num_msgs.i = getelementptr inbounds %struct.ec_params_i2c_passthru, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %num_msgs.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i84, ptr %num_msgs.i, align 1
  br i1 %cmp11.i, label %for.body.preheader.i, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.body.preheader.i:                             ; preds = %if.end12
  %add.ptr.i = getelementptr i8, ptr %data, i32 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.inc.i93.for.body.i89_crit_edge, %for.body.preheader.i
  %i.048.i = phi i32 [ %inc.i91, %for.inc.i93.for.body.i89_crit_edge ], [ 0, %for.body.preheader.i ]
  %out_data.047.i = phi ptr [ %out_data.2.ph.i, %for.inc.i93.for.body.i89_crit_edge ], [ %add.ptr1.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.048.i
  %arrayidx5.i = getelementptr %struct.ec_params_i2c_passthru, ptr %data, i32 0, i32 2, i32 %i.048.i
  %len.i86 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.048.i, i32 2
  %19 = ptrtoint ptr %len.i86 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len.i86, align 4
  %len6.i = getelementptr %struct.ec_params_i2c_passthru, ptr %data, i32 0, i32 2, i32 %i.048.i, i32 1
  %21 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %len6.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx5.i, align 2
  %flags.i87 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.048.i, i32 1
  %25 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i87, align 2
  %conv7.i = zext i16 %26 to i32
  %and.i = and i32 %conv7.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %if.end.i90, label %do.end18

if.end.i90:                                       ; preds = %for.body.i89
  %and10.i = and i32 %conv7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  %27 = or i16 %23, -32768
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx5.i, align 2
  br label %for.inc.i93

if.else.i:                                        ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  %buf16.i = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.048.i, i32 3
  %29 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf16.i, align 4
  %conv18.i = zext i16 %20 to i32
  %31 = call ptr @memcpy(ptr %out_data.047.i, ptr %30, i32 %conv18.i)
  %32 = ptrtoint ptr %len6.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len6.i, align 4
  %conv20.i = zext i16 %33 to i32
  %add.ptr21.i = getelementptr i8, ptr %out_data.047.i, i32 %conv20.i
  br label %for.inc.i93

for.inc.i93:                                      ; preds = %if.else.i, %if.then12.i
  %out_data.2.ph.i = phi ptr [ %add.ptr21.i, %if.else.i ], [ %out_data.047.i, %if.then12.i ]
  %inc.i91 = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, %num
  br i1 %exitcond.not.i92, label %for.inc.i93.if.end19_crit_edge, label %for.inc.i93.for.body.i89_crit_edge

for.inc.i93.for.body.i89_crit_edge:               ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i89

for.inc.i93.if.end19_crit_edge:                   ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end18:                                         ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef -22) #12
  br label %exit

if.end19:                                         ; preds = %for.inc.i93.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %34 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %call9.i, align 128
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i, i32 0, i32 1
  %35 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 158, ptr %command, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i, i32 0, i32 2
  %36 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %size.0.lcssa.i111114118, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i, i32 0, i32 3
  %37 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %size.0.lcssa.i83119, ptr %insize, align 4
  %ec = getelementptr inbounds %struct.ec_i2c_device, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ec, align 8
  %call20 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %39, ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %call20) #12
  br label %exit

if.end26:                                         ; preds = %if.end19
  %add.ptr.i94 = getelementptr i8, ptr %data, i32 2
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 4
  %conv.i95 = zext i8 %41 to i32
  %and.i96 = and i32 %conv.i95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %if.else.i98, label %if.end26.exit_crit_edge

if.end26.exit_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.else.i98:                                      ; preds = %if.end26
  %and3.i = and i32 %conv.i95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else6.i, label %if.else.i98.exit_crit_edge

if.else.i98.exit_crit_edge:                       ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.else6.i:                                       ; preds = %if.else.i98
  %and9.i = and i32 %conv.i95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.else6.i.exit_crit_edge

if.else6.i.exit_crit_edge:                        ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end13.i:                                       ; preds = %if.else6.i
  %42 = ptrtoint ptr %num_msgs.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_msgs.i, align 1
  %conv14.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14.i, i32 %num)
  %cmp.i100 = icmp sgt i32 %conv14.i, %num
  br i1 %cmp.i100, label %if.end13.i.exit_crit_edge, label %if.end17.i

if.end13.i.exit_crit_edge:                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp2049.not.i = icmp eq i8 %43, 0
  br i1 %cmp2049.not.i, label %if.end17.i.exit_crit_edge, label %if.end17.i.for.body.i102_crit_edge

if.end17.i.for.body.i102_crit_edge:               ; preds = %if.end17.i
  br label %for.body.i102

if.end17.i.exit_crit_edge:                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.i102:                                    ; preds = %if.end32.i.for.body.i102_crit_edge, %if.end17.i.for.body.i102_crit_edge
  %i.051.i = phi i32 [ %inc.i104, %if.end32.i.for.body.i102_crit_edge ], [ 0, %if.end17.i.for.body.i102_crit_edge ]
  %in_data.050.i = phi ptr [ %in_data.1.i, %if.end32.i.for.body.i102_crit_edge ], [ %add.ptr.i94, %if.end17.i.for.body.i102_crit_edge ]
  %flags.i101 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.051.i, i32 1
  %44 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags.i101, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool25.not.i = icmp eq i16 %46, 0
  br i1 %tobool25.not.i, label %for.body.i102.if.end32.i_crit_edge, label %if.then26.i

for.body.i102.if.end32.i_crit_edge:               ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then26.i:                                      ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #11
  %buf27.i = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.051.i, i32 3
  %47 = ptrtoint ptr %buf27.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf27.i, align 4
  %len.i103 = getelementptr %struct.i2c_msg, ptr %i2c_msgs, i32 %i.051.i, i32 2
  %49 = ptrtoint ptr %len.i103 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len.i103, align 4
  %conv28.i = zext i16 %50 to i32
  %51 = call ptr @memcpy(ptr %48, ptr %in_data.050.i, i32 %conv28.i)
  %52 = load i16, ptr %len.i103, align 4
  %conv30.i = zext i16 %52 to i32
  %add.ptr31.i = getelementptr i8, ptr %in_data.050.i, i32 %conv30.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then26.i, %for.body.i102.if.end32.i_crit_edge
  %in_data.1.i = phi ptr [ %add.ptr31.i, %if.then26.i ], [ %in_data.050.i, %for.body.i102.if.end32.i_crit_edge ]
  %inc.i104 = add nuw nsw i32 %i.051.i, 1
  %exitcond.not = icmp eq i32 %inc.i104, %conv14.i
  br i1 %exitcond.not, label %if.end32.i.exit_crit_edge, label %if.end32.i.for.body.i102_crit_edge

if.end32.i.for.body.i102_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i102

if.end32.i.exit_crit_edge:                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

exit:                                             ; preds = %if.end32.i.exit_crit_edge, %if.end17.i.exit_crit_edge, %if.end13.i.exit_crit_edge, %if.else6.i.exit_crit_edge, %if.else.i98.exit_crit_edge, %if.end26.exit_crit_edge, %do.end25, %do.end18
  %result.0 = phi i32 [ -22, %do.end18 ], [ %call20, %do.end25 ], [ 0, %if.end17.i.exit_crit_edge ], [ -71, %if.end13.i.exit_crit_edge ], [ -5, %if.else6.i.exit_crit_edge ], [ -6, %if.else.i98.exit_crit_edge ], [ -110, %if.end26.exit_crit_edge ], [ %conv14.i, %if.end32.i.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end8.i.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %size.0.lcssa.i112, %do.end ], [ %size.1.i79, %do.end7 ], [ %result.0, %exit ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ec_i2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_i2c_cros_ec_tunnel__290_317_ec_i2c_tunnel_driver_init6, !1, !"__initcall__kmod_i2c_cros_ec_tunnel__290_317_ec_i2c_tunnel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_ec_i2c_tunnel_driver_exit, !1, !"__exitcall_ec_i2c_tunnel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description293, !7, !"__UNIQUE_ID_description293", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 320, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias294, !9, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 321, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 311, i32 11}
!12 = !{ptr @ec_i2c_tunnel_driver, !13, !"ec_i2c_tunnel_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 307, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 251, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ec_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ec_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 259, i32 38}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 261, i32 3}
!26 = !{ptr @ec_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ec_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ec_i2c_algorithm, !29, !"ec_i2c_algorithm", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 237, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 188, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ec_i2c_xfer._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @ec_i2c_xfer._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 195, i32 3}
!38 = !{ptr @ec_i2c_xfer._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ec_i2c_xfer._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 206, i32 3}
!42 = !{ptr @ec_i2c_xfer._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ec_i2c_xfer._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 217, i32 3}
!46 = !{ptr @ec_i2c_xfer._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ec_i2c_xfer._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cros_ec_i2c_of_match, !49, !"cros_ec_i2c_of_match", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-cros-ec-tunnel.c", i32 295, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
