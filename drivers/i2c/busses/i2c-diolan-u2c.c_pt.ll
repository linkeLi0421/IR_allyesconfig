; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-diolan-u2c.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-diolan-u2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.i2c_diolan_u2c = type { [128 x i8], [256 x i8], i32, i32, ptr, ptr, %struct.i2c_adapter, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_frequency = internal constant [25 x i8] c"i2c_diolan_u2c.frequency\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@frequency = internal global { i32, [28 x i8] } { i32 100000, [28 x i8] zeroinitializer }, align 32
@__param_frequency = internal constant %struct.kernel_param { ptr @__param_str_frequency, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @frequency } }, section "__param", align 4
@__UNIQUE_ID_frequencytype293 = internal constant [39 x i8] c"i2c_diolan_u2c.parmtype=frequency:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_frequency294 = internal constant [59 x i8] c"i2c_diolan_u2c.parm=frequency:I2C clock frequency in hertz\00", section ".modinfo", align 1
@__initcall__kmod_i2c_diolan_u2c__297_514_diolan_u2c_driver_init6 = internal global ptr @diolan_u2c_driver_init, section ".initcall6.init", align 4
@diolan_u2c_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @diolan_u2c_probe, ptr @diolan_u2c_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @diolan_u2c_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_diolan_u2c_driver_exit = internal global ptr @diolan_u2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [57 x i8] c"i2c_diolan_u2c.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [49 x i8] c"i2c_diolan_u2c.description=i2c-diolan-u2c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [54 x i8] c"i2c_diolan_u2c.file=drivers/i2c/busses/i2c-diolan-u2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"i2c_diolan_u2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_diolan_u2c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c-diolan-u2c\00", [17 x i8] zeroinitializer }, align 32
@diolan_u2c_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2751, i16 13168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@diolan_usb_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @diolan_usb_xfer, ptr null, ptr null, ptr null, ptr @diolan_usb_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i2c-diolan-u2c at bus %03d device %03d\00", [57 x i8] zeroinitializer }, align 32
@diolan_u2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"diolan_u2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-diolan-u2c.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@diolan_u2c_probe._entry_ptr = internal global ptr @diolan_u2c_probe._entry, section ".printk_index", align 4
@diolan_u2c_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"connected i2c-diolan-u2c\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@diolan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 315, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Diolan U2C at USB bus %03d address %03d speed %d Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"diolan_init\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@diolan_init._entry_ptr = internal global ptr @diolan_init._entry, section ".printk_index", align 4
@diolan_flush_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to flush input buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"diolan_flush_input\00", [45 x i8] zeroinitializer }, align 32
@diolan_flush_input._entry_ptr = internal global ptr @diolan_flush_input._entry, section ".printk_index", align 4
@diolan_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 280, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Diolan U2C firmware version %u.%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"diolan_fw_version\00", [46 x i8] zeroinitializer }, align 32
@diolan_fw_version._entry_ptr = internal global ptr @diolan_fw_version._entry, section ".printk_index", align 4
@diolan_get_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 292, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Diolan U2C serial number %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"diolan_get_serial\00", [46 x i8] zeroinitializer }, align 32
@diolan_get_serial._entry_ptr = internal global ptr @diolan_get_serial._entry, section ".printk_index", align 4
@diolan_u2c_disconnect.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"diolan_u2c_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 7, i64 9]
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 88, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"diolan_u2c_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 507, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 514, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 508, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"diolan_u2c_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 423, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"diolan_usb_algorithm\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 416, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 468, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 476, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 485, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 313, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 214, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 277, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 291, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-diolan-u2c.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 504, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_frequency294, ptr @__UNIQUE_ID_frequencytype293, ptr @__UNIQUE_ID_license301, ptr @__exitcall_diolan_u2c_driver_exit, ptr @__initcall__kmod_i2c_diolan_u2c__297_514_diolan_u2c_driver_init6, ptr @__param_frequency, ptr @diolan_flush_input._entry, ptr @diolan_flush_input._entry_ptr, ptr @diolan_fw_version._entry, ptr @diolan_fw_version._entry_ptr, ptr @diolan_get_serial._entry, ptr @diolan_get_serial._entry_ptr, ptr @diolan_init._entry, ptr @diolan_init._entry_ptr, ptr @diolan_u2c_driver_exit, ptr @diolan_u2c_probe._entry, ptr @diolan_u2c_probe._entry_ptr, ptr @frequency, ptr @diolan_u2c_driver, ptr @.str, ptr @.str.1, ptr @diolan_u2c_table, ptr @diolan_usb_algorithm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frequency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_u2c_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_u2c_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_usb_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_u2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_flush_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diolan_get_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @diolan_u2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @diolan_u2c_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @diolan_u2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @diolan_u2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diolan_u2c_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %actual.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp4 = icmp ult i8 %5, 2
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1768) #12
  %cmp6 = icmp eq ptr %call7.i.i, null
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress, align 2
  %conv11 = zext i8 %10 to i32
  %ep_out = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %ep_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv11, ptr %ep_out, align 4
  %12 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress15 = getelementptr %struct.usb_host_endpoint, ptr %12, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress15, align 2
  %conv16 = zext i8 %14 to i32
  %ep_in = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ep_in to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv16, ptr %ep_in, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 -128
  %call18 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %usb_dev = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %usb_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %usb_dev, align 8
  %interface19 = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %interface19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %interface, ptr %interface19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @diolan_usb_algorithm, ptr %algo, align 8
  %driver_data.i.i84 = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i84 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %driver_data.i.i84, align 4
  %name = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6, i32 12
  %bus = getelementptr inbounds %struct.usb_device, ptr %call18, i32 0, i32 12
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %busnum, align 4
  %29 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call18, align 8
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %30)
  %31 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interface19, align 4
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %parent = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 1
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev28, ptr %parent, align 8
  %34 = load i32, ptr @frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199999, i32 %34)
  %cmp.i = icmp ugt i32 %34, 199999
  br i1 %cmp.i, label %if.end9.do.end.i_crit_edge, label %if.else.i

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.else.i:                                        ; preds = %if.end9
  %35 = add nsw i32 %34, -100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999, i32 %35)
  %36 = icmp ult i32 %35, -99999
  br i1 %36, label %if.else.i.do.end.i_crit_edge, label %if.else4.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nuw nsw i32 %34, 999999
  %div.i = udiv i32 %sub.i, %34
  %sub5.i = add nsw i32 %div.i, -10
  %div650.i = lshr i32 %sub5.i, 1
  %37 = tail call i32 @llvm.smin.i32(i32 %div650.i, i32 241) #9
  %38 = add nuw nsw i32 %37, 1
  %sub10.i = shl nuw nsw i32 %38, 1
  %add11.i = add nuw nsw i32 %sub10.i, 8
  %div1284.i = udiv i32 1000000, %add11.i
  br label %do.end.i

do.end.i:                                         ; preds = %if.else4.i, %if.else.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  %.sink.i = phi i32 [ %div1284.i, %if.else4.i ], [ 400000, %if.end9.do.end.i_crit_edge ], [ 100000, %if.else.i.do.end.i_crit_edge ]
  %speed.0.i = phi i32 [ %38, %if.else4.i ], [ 0, %if.end9.do.end.i_crit_edge ], [ 1, %if.else.i.do.end.i_crit_edge ]
  store i32 %.sink.i, ptr @frequency, align 4
  %39 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_dev, align 8
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i, align 8
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %busnum.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %40, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.9, i32 noundef %44, i32 noundef %46, i32 noundef %.sink.i) #13
  %ibuffer.i.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i
  %i.021.i.i = phi i32 [ 0, %do.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i.i) #9
  %47 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %actual.i.i, align 4
  %48 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_dev, align 8
  %50 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ep_in, align 8
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 8
  %shl.i.i.i = shl i32 %53, 8
  %shl1.i.i.i = shl i32 %51, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or2.i.i = or i32 %or.i.i.i, -1073741696
  %call3.i.i = call i32 @usb_bulk_msg(ptr noundef %49, i32 noundef %or2.i.i, ptr noundef %ibuffer.i.i, i32 noundef 256, ptr noundef nonnull %actual.i.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %for.body.i.i.for.end.thread.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.end.thread.i.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %54 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %actual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp5.i.i = icmp eq i32 %55, 0
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.for.end.thread.i.i_crit_edge, label %for.inc.i.i

lor.lhs.false.i.i.for.end.thread.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %lor.lhs.false.i.i.for.end.thread.i.i_crit_edge, %for.body.i.i.for.end.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i.i) #9
  br label %diolan_flush_input.exit.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i.i) #9
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interface19, align 4
  %dev9.i.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.12) #13
  br label %diolan_flush_input.exit.i

diolan_flush_input.exit.i:                        ; preds = %do.end.i.i, %for.end.thread.i.i
  %olen.i.i.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %olen.i.i.i, align 8
  %inc.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i, ptr %olen.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 10, ptr %arrayidx.i.i.i, align 1
  %ocount.i.i.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %ocount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ocount.i.i.i, align 4
  %inc1.i.i.i = add i32 %62, 1
  store i32 %inc1.i.i.i, ptr %ocount.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @diolan_write_cmd(ptr noundef %call7.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %do.end.i53.i, label %diolan_flush_input.exit.i.diolan_fw_version.exit.i_crit_edge

diolan_flush_input.exit.i.diolan_fw_version.exit.i_crit_edge: ; preds = %diolan_flush_input.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %diolan_fw_version.exit.i

do.end.i53.i:                                     ; preds = %diolan_flush_input.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %interface19, align 4
  %dev1.i.i = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %ibuffer.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ibuffer.i.i, align 8
  %conv.i.i = zext i8 %66 to i32
  %arrayidx3.i.i = getelementptr %struct.i2c_diolan_u2c, ptr %call7.i.i, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv.i.i, i32 noundef %conv4.i.i) #13
  br label %diolan_fw_version.exit.i

diolan_fw_version.exit.i:                         ; preds = %do.end.i53.i, %diolan_flush_input.exit.i.diolan_fw_version.exit.i_crit_edge
  %69 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %olen.i.i.i, align 8
  %inc.i.i55.i = add i32 %70, 1
  store i32 %inc.i.i55.i, ptr %olen.i.i.i, align 8
  %arrayidx.i.i56.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 11, ptr %arrayidx.i.i56.i, align 1
  %72 = ptrtoint ptr %ocount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ocount.i.i.i, align 4
  %inc1.i.i58.i = add i32 %73, 1
  store i32 %inc1.i.i58.i, ptr %ocount.i.i.i, align 4
  %call.i.i59.i = call fastcc i32 @diolan_write_cmd(ptr noundef %call7.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i59.i)
  %cmp.i60.i = icmp sgt i32 %call.i.i59.i, 3
  br i1 %cmp.i60.i, label %if.then.i.i, label %diolan_fw_version.exit.i.diolan_get_serial.exit.i_crit_edge

diolan_fw_version.exit.i.diolan_get_serial.exit.i_crit_edge: ; preds = %diolan_fw_version.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %diolan_get_serial.exit.i

if.then.i.i:                                      ; preds = %diolan_fw_version.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %ibuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ibuffer.i.i, align 8
  %76 = call i32 @llvm.bswap.i32(i32 %75) #9
  %77 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %interface19, align 4
  %dev1.i63.i = getelementptr inbounds %struct.usb_interface, ptr %78, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i63.i, ptr noundef nonnull @.str.16, i32 noundef %76) #13
  br label %diolan_get_serial.exit.i

diolan_get_serial.exit.i:                         ; preds = %if.then.i.i, %diolan_fw_version.exit.i.diolan_get_serial.exit.i_crit_edge
  %conv.i = trunc i32 %speed.0.i to i8
  %79 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %olen.i.i.i, align 8
  %inc.i.i65.i = add i32 %80, 1
  store i32 %inc.i.i65.i, ptr %olen.i.i.i, align 8
  %arrayidx.i.i66.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i66.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 27, ptr %arrayidx.i.i66.i, align 1
  %82 = load i32, ptr %olen.i.i.i, align 8
  %inc3.i.i.i = add i32 %82, 1
  store i32 %inc3.i.i.i, ptr %olen.i.i.i, align 8
  %arrayidx4.i.i.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i, ptr %arrayidx4.i.i.i, align 1
  %84 = ptrtoint ptr %ocount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ocount.i.i.i, align 4
  %inc5.i.i.i = add i32 %85, 1
  store i32 %inc5.i.i.i, ptr %ocount.i.i.i, align 4
  %call.i.i68.i = call fastcc i32 @diolan_write_cmd(ptr noundef %call7.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68.i)
  %cmp17.i = icmp slt i32 %call.i.i68.i, 0
  br i1 %cmp17.i, label %diolan_get_serial.exit.i.do.end_crit_edge, label %if.end20.i

diolan_get_serial.exit.i.do.end_crit_edge:        ; preds = %diolan_get_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end20.i:                                       ; preds = %diolan_get_serial.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.0.i)
  %cmp21.i = icmp ne i32 %speed.0.i, 0
  %frombool.i.i = zext i1 %cmp21.i to i8
  %86 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %olen.i.i.i, align 8
  %inc.i.i70.i = add i32 %87, 1
  store i32 %inc.i.i70.i, ptr %olen.i.i.i, align 8
  %arrayidx.i.i71.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx.i.i71.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 36, ptr %arrayidx.i.i71.i, align 1
  %89 = load i32, ptr %olen.i.i.i, align 8
  %inc3.i.i72.i = add i32 %89, 1
  store i32 %inc3.i.i72.i, ptr %olen.i.i.i, align 8
  %arrayidx4.i.i73.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx4.i.i73.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %frombool.i.i, ptr %arrayidx4.i.i73.i, align 1
  %91 = ptrtoint ptr %ocount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ocount.i.i.i, align 4
  %inc5.i.i75.i = add i32 %92, 1
  store i32 %inc5.i.i75.i, ptr %ocount.i.i.i, align 4
  %call.i.i76.i = call fastcc i32 @diolan_write_cmd(ptr noundef %call7.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i76.i)
  %cmp24.i = icmp sgt i32 %call.i.i76.i, -1
  %93 = and i1 %cmp21.i, %cmp24.i
  br i1 %93, label %if.then30.i, label %if.end20.i.diolan_init.exit_crit_edge

if.end20.i.diolan_init.exit_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %diolan_init.exit

if.then30.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %olen.i.i.i, align 8
  %inc.i.i78.i = add i32 %95, 1
  store i32 %inc.i.i78.i, ptr %olen.i.i.i, align 8
  %arrayidx.i.i79.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 38, ptr %arrayidx.i.i79.i, align 1
  %97 = load i32, ptr %olen.i.i.i, align 8
  %inc3.i.i80.i = add i32 %97, 1
  store i32 %inc3.i.i80.i, ptr %olen.i.i.i, align 8
  %arrayidx4.i.i81.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx4.i.i81.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -56, ptr %arrayidx4.i.i81.i, align 1
  %99 = load i32, ptr %olen.i.i.i, align 8
  %inc7.i.i.i = add i32 %99, 1
  store i32 %inc7.i.i.i, ptr %olen.i.i.i, align 8
  %arrayidx8.i.i.i = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx8.i.i.i, align 1
  %101 = ptrtoint ptr %ocount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ocount.i.i.i, align 4
  %inc9.i.i.i = add i32 %102, 1
  store i32 %inc9.i.i.i, ptr %ocount.i.i.i, align 4
  %call.i.i83.i = call fastcc i32 @diolan_write_cmd(ptr noundef %call7.i.i, i1 noundef zeroext true) #9
  br label %diolan_init.exit

diolan_init.exit:                                 ; preds = %if.then30.i, %if.end20.i.diolan_init.exit_crit_edge
  %retval.0.i85 = phi i32 [ %call.i.i76.i, %if.end20.i.diolan_init.exit_crit_edge ], [ %call.i.i83.i, %if.then30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i85)
  %cmp32 = icmp slt i32 %retval.0.i85, 0
  br i1 %cmp32, label %diolan_init.exit.do.end_crit_edge, label %if.end36

diolan_init.exit.do.end_crit_edge:                ; preds = %diolan_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %diolan_init.exit.do.end_crit_edge, %diolan_get_serial.exit.i.do.end_crit_edge
  %retval.0.i8590 = phi i32 [ %retval.0.i85, %diolan_init.exit.do.end_crit_edge ], [ %call.i.i68.i, %diolan_get_serial.exit.i.do.end_crit_edge ]
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.3) #13
  br label %error_free

if.end36:                                         ; preds = %diolan_init.exit
  %call38 = call i32 @i2c_add_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end36.error_free_crit_edge, label %do.body43

if.end36.error_free_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free

do.body43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @diolan_u2c_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@diolan_u2c_probe, %cleanup)) #9
          to label %if.then48 [label %cleanup], !srcloc !74

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %dev49 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @diolan_u2c_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev49, ptr noundef nonnull @.str.8) #9
  br label %cleanup

error_free:                                       ; preds = %if.end36.error_free_crit_edge, %do.end
  %ret.0 = phi i32 [ %retval.0.i8590, %do.end ], [ %call38, %if.end36.error_free_crit_edge ]
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %driver_data.i.i, align 4
  %104 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %usb_dev, align 8
  call void @usb_put_dev(ptr noundef %105) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.then48, %do.body43, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then48 ], [ %ret.0, %error_free ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @diolan_u2c_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %1, i32 0, i32 6
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %usb_dev.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_dev.i, align 8
  tail call void @usb_put_dev(ptr noundef %4) #9
  tail call void @kfree(ptr noundef %1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @diolan_u2c_disconnect.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@diolan_u2c_disconnect, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @diolan_u2c_disconnect.__UNIQUE_ID_ddebug296, ptr noundef %dev5, ptr noundef nonnull @.str.19) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diolan_usb_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %olen.i.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %olen.i.i, align 8
  %inc.i.i = add i32 %3, 1
  store i32 %inc.i.i, ptr %olen.i.i, align 8
  %arrayidx.i.i = getelementptr [128 x i8], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %arrayidx.i.i, align 1
  %ocount.i.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ocount.i.i, align 4
  %inc1.i.i = add i32 %6, 1
  store i32 %inc1.i.i, ptr %ocount.i.i, align 4
  %call.i.i = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup90_crit_edge, label %for.cond.preheader

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2182 = icmp sgt i32 %num, 0
  br i1 %cmp2182, label %for.body.lr.ph, label %for.cond.preheader.abort_crit_edge

for.cond.preheader.abort_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ibuffer.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc79.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc80, %for.inc79.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0183)
  %tobool.not = icmp eq i32 %i.0183, 0
  br i1 %tobool.not, label %for.body.if.end8_crit_edge, label %if.then3

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %for.body
  %7 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i.i, align 8
  %inc.i.i132 = add i32 %8, 1
  store i32 %inc.i.i132, ptr %olen.i.i, align 8
  %arrayidx.i.i133 = getelementptr [128 x i8], ptr %1, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %arrayidx.i.i133, align 1
  %10 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocount.i.i, align 4
  %inc1.i.i135 = add i32 %11, 1
  store i32 %inc1.i.i135, ptr %ocount.i.i, align 4
  %call.i.i136 = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136)
  %cmp5 = icmp slt i32 %call.i.i136, 0
  br i1 %cmp5, label %if.then3.abort_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3.abort_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  %conv.i = trunc i16 %13 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0183, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 2
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %or.i = or i8 %17, %shl.i
  %18 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %olen.i.i, align 8
  %inc.i.i138 = add i32 %19, 1
  store i32 %inc.i.i138, ptr %olen.i.i, align 8
  %arrayidx.i.i139 = getelementptr [128 x i8], ptr %1, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 19, ptr %arrayidx.i.i139, align 1
  %21 = load i32, ptr %olen.i.i, align 8
  %inc3.i.i = add i32 %21, 1
  store i32 %inc3.i.i, ptr %olen.i.i, align 8
  %arrayidx4.i.i = getelementptr [128 x i8], ptr %1, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.i, ptr %arrayidx4.i.i, align 1
  %23 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ocount.i.i, align 4
  %inc5.i.i = add i32 %24, 1
  store i32 %inc5.i.i, ptr %ocount.i.i, align 4
  %call.i.i141 = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp11 = icmp slt i32 %call.i.i141, 0
  br i1 %cmp11, label %if.end8.abort_crit_edge, label %if.end13

if.end8.abort_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end13:                                         ; preds = %if.end8
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.not = icmp eq i16 %27, 0
  %len63 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0183, i32 2
  %28 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp65180.not = icmp eq i16 %29, 0
  br i1 %tobool14.not, label %for.cond62.preheader, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end13
  br i1 %cmp65180.not, label %for.cond16.preheader.for.inc79_crit_edge, label %for.body20.lr.ph

for.cond16.preheader.for.inc79_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %conv17175 = zext i16 %29 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0183, i32 3
  br label %for.body20

for.cond62.preheader:                             ; preds = %if.end13
  br i1 %cmp65180.not, label %for.cond62.preheader.for.inc79_crit_edge, label %for.body67.lr.ph

for.cond62.preheader.for.inc79_crit_edge:         ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.body67.lr.ph:                                 ; preds = %for.cond62.preheader
  %buf68 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0183, i32 3
  br label %for.body67

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %for.body20.lr.ph
  %conv17178 = phi i32 [ %conv17175, %for.body20.lr.ph ], [ %conv17, %for.inc.for.body20_crit_edge ]
  %j.0177 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.inc.for.body20_crit_edge ]
  %sub = add nsw i32 %conv17178, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0177, i32 %sub)
  %cmp23 = icmp slt i32 %j.0177, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0177)
  %cmp25 = icmp eq i32 %j.0177, 0
  br i1 %cmp25, label %land.lhs.true, label %for.body20.if.end32_crit_edge

for.body20.if.end32_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 2
  %32 = and i16 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool30.not = icmp ne i16 %32, 0
  %spec.select = select i1 %tobool30.not, i1 true, i1 %cmp23
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %for.body20.if.end32_crit_edge
  %ack.0.shrunk = phi i1 [ %cmp23, %for.body20.if.end32_crit_edge ], [ %spec.select, %land.lhs.true ]
  %frombool.i = zext i1 %ack.0.shrunk to i8
  %33 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %olen.i.i, align 8
  %inc.i.i143 = add i32 %34, 1
  store i32 %inc.i.i143, ptr %olen.i.i, align 8
  %arrayidx.i.i144 = getelementptr [128 x i8], ptr %1, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 20, ptr %arrayidx.i.i144, align 1
  %36 = load i32, ptr %olen.i.i, align 8
  %inc3.i.i145 = add i32 %36, 1
  store i32 %inc3.i.i145, ptr %olen.i.i, align 8
  %arrayidx4.i.i146 = getelementptr [128 x i8], ptr %1, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx4.i.i146 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %arrayidx4.i.i146, align 1
  %38 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ocount.i.i, align 4
  %inc5.i.i148 = add i32 %39, 1
  store i32 %inc5.i.i148, ptr %ocount.i.i, align 4
  %call.i.i149 = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp.i = icmp sgt i32 %call.i.i149, 0
  br i1 %cmp.i, label %if.end38, label %if.else.i

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp2.i = icmp eq i32 %call.i.i149, 0
  %spec.select170 = select i1 %cmp2.i, i32 -5, i32 %call.i.i149
  br label %abort

if.end38:                                         ; preds = %if.end32
  %40 = ptrtoint ptr %ibuffer.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ibuffer.i, align 8
  br i1 %cmp25, label %land.lhs.true41, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true41:                                  ; preds = %if.end38
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i, align 2
  %44 = and i16 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool45.not = icmp eq i16 %44, 0
  br i1 %tobool45.not, label %land.lhs.true41.for.inc_crit_edge, label %if.then46

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then46:                                        ; preds = %land.lhs.true41
  %45 = add i8 %41, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %45)
  %46 = icmp ult i8 %45, -32
  br i1 %46, label %if.then46.abort_crit_edge, label %if.end54

if.then46.abort_crit_edge:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %conv47 = zext i8 %41 to i16
  %47 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len63, align 4
  %add = add i16 %48, %conv47
  store i16 %add, ptr %len63, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %land.lhs.true41.for.inc_crit_edge, %if.end38.for.inc_crit_edge
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf, align 4
  %arrayidx60 = getelementptr i8, ptr %50, i32 %j.0177
  %51 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %41, ptr %arrayidx60, align 1
  %inc = add nuw nsw i32 %j.0177, 1
  %52 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len63, align 4
  %conv17 = zext i16 %53 to i32
  %cmp18 = icmp ult i32 %inc, %conv17
  br i1 %cmp18, label %for.inc.for.body20_crit_edge, label %for.inc.for.inc79_crit_edge

for.inc.for.inc79_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.cond62:                                       ; preds = %for.body67
  %inc76 = add nuw nsw i32 %j.1181, 1
  %54 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len63, align 4
  %conv64 = zext i16 %55 to i32
  %cmp65 = icmp ult i32 %inc76, %conv64
  br i1 %cmp65, label %for.cond62.for.body67_crit_edge, label %for.cond62.for.inc79_crit_edge

for.cond62.for.inc79_crit_edge:                   ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.cond62.for.body67_crit_edge:                  ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.body67:                                       ; preds = %for.cond62.for.body67_crit_edge, %for.body67.lr.ph
  %j.1181 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc76, %for.cond62.for.body67_crit_edge ]
  %56 = ptrtoint ptr %buf68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf68, align 4
  %arrayidx69 = getelementptr i8, ptr %57, i32 %j.1181
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx69, align 1
  %60 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %olen.i.i, align 8
  %inc.i.i151 = add i32 %61, 1
  store i32 %inc.i.i151, ptr %olen.i.i, align 8
  %arrayidx.i.i152 = getelementptr [128 x i8], ptr %1, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 19, ptr %arrayidx.i.i152, align 1
  %63 = load i32, ptr %olen.i.i, align 8
  %inc3.i.i153 = add i32 %63, 1
  store i32 %inc3.i.i153, ptr %olen.i.i, align 8
  %arrayidx4.i.i154 = getelementptr [128 x i8], ptr %1, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx4.i.i154 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %59, ptr %arrayidx4.i.i154, align 1
  %65 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ocount.i.i, align 4
  %inc5.i.i156 = add i32 %66, 1
  store i32 %inc5.i.i156, ptr %ocount.i.i, align 4
  %call.i.i157 = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %cmp71 = icmp slt i32 %call.i.i157, 0
  br i1 %cmp71, label %for.body67.abort_crit_edge, label %for.cond62

for.body67.abort_crit_edge:                       ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

for.inc79:                                        ; preds = %for.cond62.for.inc79_crit_edge, %for.inc.for.inc79_crit_edge, %for.cond62.preheader.for.inc79_crit_edge, %for.cond16.preheader.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %i.0183, 1
  %exitcond.not = icmp eq i32 %inc80, %num
  br i1 %exitcond.not, label %for.inc79.abort_crit_edge, label %for.inc79.for.body_crit_edge

for.inc79.for.body_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc79.abort_crit_edge:                        ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

abort:                                            ; preds = %for.inc79.abort_crit_edge, %for.body67.abort_crit_edge, %if.then46.abort_crit_edge, %if.else.i, %if.end8.abort_crit_edge, %if.then3.abort_crit_edge, %for.cond.preheader.abort_crit_edge
  %ret.1 = phi i32 [ %spec.select170, %if.else.i ], [ %num, %for.cond.preheader.abort_crit_edge ], [ %call.i.i157, %for.body67.abort_crit_edge ], [ -71, %if.then46.abort_crit_edge ], [ %call.i.i136, %if.then3.abort_crit_edge ], [ %call.i.i141, %if.end8.abort_crit_edge ], [ %num, %for.inc79.abort_crit_edge ]
  %67 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %olen.i.i, align 8
  %inc.i.i159 = add i32 %68, 1
  store i32 %inc.i.i159, ptr %olen.i.i, align 8
  %arrayidx.i.i160 = getelementptr [128 x i8], ptr %1, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 13, ptr %arrayidx.i.i160, align 1
  %70 = ptrtoint ptr %ocount.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ocount.i.i, align 4
  %inc1.i.i162 = add i32 %71, 1
  store i32 %inc1.i.i162, ptr %ocount.i.i, align 4
  %call.i.i163 = tail call fastcc i32 @diolan_write_cmd(ptr noundef %1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp83 = icmp slt i32 %call.i.i163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1)
  %cmp86 = icmp sgt i32 %ret.1, -1
  %or.cond130 = select i1 %cmp83, i1 %cmp86, i1 false
  %ret.2 = select i1 %or.cond130, i32 %call.i.i163, i32 %ret.1
  br label %cleanup90

cleanup90:                                        ; preds = %abort, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %ret.2, %abort ], [ %call.i.i, %entry.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @diolan_usb_func(ptr nocapture noundef readnone %a) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268402697
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diolan_write_cmd(ptr noundef %dev, i1 noundef zeroext %flush) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %flush, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %olen = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %olen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %1)
  %cmp = icmp sgt i32 %1, 123
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #9
  %2 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual.i, align 4, !annotation !75
  %olen.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %olen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.diolan_usb_transfer.exit_crit_edge, label %lor.lhs.false.i

if.then.diolan_usb_transfer.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %diolan_usb_transfer.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %ocount.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ocount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.diolan_usb_transfer.exit_crit_edge, label %if.end.i

lor.lhs.false.i.diolan_usb_transfer.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %diolan_usb_transfer.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %usb_dev.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_dev.i, align 8
  %ep_out.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ep_out.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %12, 8
  %shl1.i.i = shl i32 %10, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or.i, ptr noundef %dev, i32 noundef %4, ptr noundef nonnull %actual.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.cond.preheader.i, label %if.end.i.if.end28.i_crit_edge

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ocount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp56.i = icmp sgt i32 %14, 0
  br i1 %cmp56.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end28.i_crit_edge

for.cond.preheader.i.if.end28.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ep_in.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 2
  %ibuffer.i = getelementptr inbounds %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %ret.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %cleanup.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_dev.i, align 8
  %17 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ep_in.i, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %shl.i53.i = shl i32 %20, 8
  %shl1.i54.i = shl i32 %18, 15
  %or.i55.i = or i32 %shl1.i54.i, %shl.i53.i
  %or12.i = or i32 %or.i55.i, -1073741696
  %call14.i = call i32 @usb_bulk_msg(ptr noundef %16, i32 noundef %or12.i, ptr noundef %ibuffer.i, i32 noundef 256, ptr noundef nonnull %actual.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.057.i)
  %cmp15.i = icmp slt i32 %ret.057.i, 0
  br i1 %cmp15.i, label %for.body.i.cleanup.i_crit_edge, label %if.end17.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp18.i = icmp eq i32 %call14.i, 0
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end17.i.cleanup.i_crit_edge

if.end17.i.cleanup.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  %21 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp19.i = icmp sgt i32 %22, 0
  br i1 %cmp19.i, label %if.then20.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %sub.i = add nsw i32 %22, -1
  %arrayidx.i = getelementptr %struct.i2c_diolan_u2c, ptr %dev, i32 0, i32 1, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %sw.default.i [
    i8 7, label %sw.bb.i
    i8 9, label %if.then20.i.cleanup.i_crit_edge
    i8 0, label %sw.bb25.i
  ]

if.then20.i.cleanup.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.058.i)
  %cmp22.i = icmp eq i32 %i.058.i, 1
  %cond.i = select i1 %cmp22.i, i32 -6, i32 -5
  br label %cleanup.i

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sw.default.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.default.i, %sw.bb25.i, %sw.bb.i, %if.then20.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %if.end17.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %ret.2.i = phi i32 [ %ret.057.i, %for.body.i.cleanup.i_crit_edge ], [ -5, %sw.default.i ], [ %sub.i, %sw.bb25.i ], [ %cond.i, %sw.bb.i ], [ 0, %land.lhs.true.i.cleanup.i_crit_edge ], [ %call14.i, %if.end17.i.cleanup.i_crit_edge ], [ -110, %if.then20.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %26 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ocount.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %27
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end28.i_crit_edge

cleanup.i.if.end28.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end28.i:                                       ; preds = %cleanup.i.if.end28.i_crit_edge, %for.cond.preheader.i.if.end28.i_crit_edge, %if.end.i.if.end28.i_crit_edge
  %ret.3.i = phi i32 [ %call4.i, %if.end.i.if.end28.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end28.i_crit_edge ], [ %ret.2.i, %cleanup.i.if.end28.i_crit_edge ]
  %28 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %olen.i, align 8
  %29 = ptrtoint ptr %ocount.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ocount.i, align 4
  br label %diolan_usb_transfer.exit

diolan_usb_transfer.exit:                         ; preds = %if.end28.i, %lor.lhs.false.i.diolan_usb_transfer.exit_crit_edge, %if.then.diolan_usb_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.3.i, %if.end28.i ], [ -22, %lor.lhs.false.i.diolan_usb_transfer.exit_crit_edge ], [ -22, %if.then.diolan_usb_transfer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #9
  br label %return

return:                                           ; preds = %diolan_usb_transfer.exit, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %diolan_usb_transfer.exit ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__param_frequency, !1, !"__param_frequency", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_frequencytype293, !1, !"__UNIQUE_ID_frequencytype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_frequency294, !4, !"__UNIQUE_ID_frequency294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 91, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_diolan_u2c__297_514_diolan_u2c_driver_init6, !6, !"__initcall__kmod_i2c_diolan_u2c__297_514_diolan_u2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 514, i32 1}
!7 = !{ptr @__exitcall_diolan_u2c_driver_exit, !6, !"__exitcall_diolan_u2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 516, i32 1}
!10 = !{ptr @__UNIQUE_ID_description299, !11, !"__UNIQUE_ID_description299", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 517, i32 1}
!12 = !{ptr @__UNIQUE_ID_file300, !13, !"__UNIQUE_ID_file300", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 518, i32 1}
!14 = !{ptr @__UNIQUE_ID_license301, !13, !"__UNIQUE_ID_license301", i1 false, i1 false}
!15 = !{ptr @__param_str_frequency, !1, !"__param_str_frequency", i1 false, i1 false}
!16 = !{ptr @frequency, !17, !"frequency", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 88, i32 13}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 508, i32 10}
!21 = !{ptr @diolan_u2c_driver, !22, !"diolan_u2c_driver", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 507, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 468, i32 4}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 476, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @diolan_u2c_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @diolan_u2c_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 485, i32 2}
!35 = !{ptr @diolan_u2c_probe.__UNIQUE_ID_ddebug295, !34, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!36 = !{ptr @diolan_usb_algorithm, !37, !"diolan_usb_algorithm", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 416, i32 35}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 313, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @diolan_init._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @diolan_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 214, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @diolan_flush_input._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @diolan_flush_input._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 277, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @diolan_fw_version._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @diolan_fw_version._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 291, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @diolan_get_serial._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @diolan_get_serial._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 504, i32 2}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @diolan_u2c_disconnect.__UNIQUE_ID_ddebug296, !60, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!63 = !{ptr @diolan_u2c_table, !64, !"diolan_u2c_table", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-diolan-u2c.c", i32 423, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148702679, i64 2148702684, i64 2148702697, i64 2148702741, i64 2148702775, i64 2148702796}
!75 = !{!"auto-init"}
