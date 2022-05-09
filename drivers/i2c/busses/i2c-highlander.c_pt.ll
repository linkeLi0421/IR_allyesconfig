; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-highlander.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-highlander.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.highlander_i2c_dev = type { ptr, ptr, %struct.i2c_adapter, %struct.completion, i32, i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_i2c_highlander__292_462_highlander_i2c_driver_init6 = internal global ptr @highlander_i2c_driver_init, section ".initcall6.init", align 4
@highlander_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @highlander_i2c_probe, ptr @highlander_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_highlander_i2c_driver_exit = internal global ptr @highlander_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"i2c_highlander.author=Paul Mundt\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [69 x i8] c"i2c_highlander.description=Renesas Highlander FPGA I2C/SMBus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [54 x i8] c"i2c_highlander.file=drivers/i2c/busses/i2c-highlander\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [30 x i8] c"i2c_highlander.license=GPL v2\00", section ".modinfo", align 1
@__param_str_iic_force_poll = internal constant [30 x i8] c"i2c_highlander.iic_force_poll\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@iic_force_poll = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_iic_force_poll = internal constant %struct.kernel_param { ptr @__param_str_iic_force_poll, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @iic_force_poll } }, section "__param", align 4
@__UNIQUE_ID_iic_force_polltype297 = internal constant [44 x i8] c"i2c_highlander.parmtype=iic_force_poll:bool\00", section ".modinfo", align 1
@__param_str_iic_force_normal = internal constant [32 x i8] c"i2c_highlander.iic_force_normal\00", align 1
@iic_force_normal = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_iic_force_normal = internal constant %struct.kernel_param { ptr @__param_str_iic_force_normal, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @iic_force_normal } }, section "__param", align 4
@__UNIQUE_ID_iic_force_normaltype298 = internal constant [46 x i8] c"i2c_highlander.parmtype=iic_force_normal:bool\00", section ".modinfo", align 1
@__param_str_iic_timeout = internal constant [27 x i8] c"i2c_highlander.iic_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iic_timeout = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_iic_timeout = internal constant %struct.kernel_param { ptr @__param_str_iic_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @iic_timeout } }, section "__param", align 4
@__UNIQUE_ID_iic_timeouttype299 = internal constant [40 x i8] c"i2c_highlander.parmtype=iic_timeout:int\00", section ".modinfo", align 1
@__param_str_iic_read_delay = internal constant [30 x i8] c"i2c_highlander.iic_read_delay\00", align 1
@iic_read_delay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_iic_read_delay = internal constant %struct.kernel_param { ptr @__param_str_iic_read_delay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @iic_read_delay } }, section "__param", align 4
@__UNIQUE_ID_iic_read_delaytype300 = internal constant [43 x i8] c"i2c_highlander.parmtype=iic_read_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_iic_force_poll301 = internal constant [54 x i8] c"i2c_highlander.parm=iic_force_poll:Force polling mode\00", section ".modinfo", align 1
@__UNIQUE_ID_iic_force_normal302 = internal constant [97 x i8] c"i2c_highlander.parm=iic_force_normal:Force normal mode (100 kHz), default is fast mode (400 kHz)\00", section ".modinfo", align 1
@__UNIQUE_ID_iic_timeout303 = internal constant [77 x i8] c"i2c_highlander.parm=iic_timeout:Set timeout value in msecs (default 1000 ms)\00", section ".modinfo", align 1
@__UNIQUE_ID_iic_read_delay304 = internal constant [81 x i8] c"i2c_highlander.parm=iic_read_delay:Delay between data read cycles (default 0 ms)\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c-highlander\00", [17 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no mem resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"highlander_i2c_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-highlander.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry_ptr = internal global ptr @highlander_i2c_probe._entry, section ".printk_index", align 4
@highlander_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no IRQ, using polling mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry_ptr.9 = internal global ptr @highlander_i2c_probe._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HL FPGA I2C adapter\00", [44 x i8] zeroinitializer }, align 32
@highlander_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @highlander_i2c_smbus_xfer, ptr null, ptr @highlander_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"controller didn't come up\0A\00", [37 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry_ptr.13 = internal global ptr @highlander_i2c_probe._entry.11, section ".printk_index", align 4
@highlander_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failure adding adapter\0A\00", [40 x i8] zeroinitializer }, align 32
@highlander_i2c_probe._entry_ptr.16 = internal global ptr @highlander_i2c_probe._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@highlander_i2c_smbus_xfer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_highlander\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"highlander_i2c_smbus_xfer\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"addr %04x, command %02x, read_write %d, size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@highlander_i2c_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported command %d\0A\00", [40 x i8] zeroinitializer }, align 32
@highlander_i2c_smbus_xfer._entry_ptr = internal global ptr @highlander_i2c_smbus_xfer._entry, section ".printk_index", align 4
@highlander_i2c_smbus_xfer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported xfer size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@highlander_i2c_smbus_xfer._entry_ptr.23 = internal global ptr @highlander_i2c_smbus_xfer._entry.21, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@highlander_i2c_command.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"highlander_i2c_command\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"command data[%x] 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@highlander_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Arbitration loss\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"highlander_i2c_read\00", [44 x i8] zeroinitializer }, align 32
@highlander_i2c_read._entry_ptr = internal global ptr @highlander_i2c_read._entry, section ".printk_index", align 4
@highlander_i2c_read.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read data[%x] 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@highlander_i2c_wait_for_bbsy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 132, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for bus ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"highlander_i2c_wait_for_bbsy\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@highlander_i2c_wait_for_bbsy._entry_ptr = internal global ptr @highlander_i2c_wait_for_bbsy._entry, section ".printk_index", align 4
@highlander_i2c_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"polling timed out\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"highlander_i2c_poll\00", [44 x i8] zeroinitializer }, align 32
@highlander_i2c_poll._entry_ptr = internal global ptr @highlander_i2c_poll._entry, section ".printk_index", align 4
@highlander_i2c_wait_for_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 153, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ack abnormality\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"highlander_i2c_wait_for_ack\00", [36 x i8] zeroinitializer }, align 32
@highlander_i2c_wait_for_ack._entry_ptr = internal global ptr @highlander_i2c_wait_for_ack._entry, section ".printk_index", align 4
@highlander_i2c_write.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"highlander_i2c_write\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write data[%x] 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 32]
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"highlander_i2c_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 453, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"iic_force_poll\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 51, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"iic_force_normal\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 51, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"iic_timeout\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 52, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"iic_read_delay\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 52, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 455, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 364, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 393, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 405, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"highlander_i2c_algo\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 350, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 415, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 421, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 285, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 301, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 325, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 121, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 220, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 244, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 132, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 194, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 153, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-highlander.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 264, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_iic_force_normal302, ptr @__UNIQUE_ID_iic_force_normaltype298, ptr @__UNIQUE_ID_iic_force_poll301, ptr @__UNIQUE_ID_iic_force_polltype297, ptr @__UNIQUE_ID_iic_read_delay304, ptr @__UNIQUE_ID_iic_read_delaytype300, ptr @__UNIQUE_ID_iic_timeout303, ptr @__UNIQUE_ID_iic_timeouttype299, ptr @__UNIQUE_ID_license296, ptr @__exitcall_highlander_i2c_driver_exit, ptr @__initcall__kmod_i2c_highlander__292_462_highlander_i2c_driver_init6, ptr @__param_iic_force_normal, ptr @__param_iic_force_poll, ptr @__param_iic_read_delay, ptr @__param_iic_timeout, ptr @highlander_i2c_driver_exit, ptr @highlander_i2c_poll._entry, ptr @highlander_i2c_poll._entry_ptr, ptr @highlander_i2c_probe._entry, ptr @highlander_i2c_probe._entry.11, ptr @highlander_i2c_probe._entry.14, ptr @highlander_i2c_probe._entry.6, ptr @highlander_i2c_probe._entry_ptr, ptr @highlander_i2c_probe._entry_ptr.13, ptr @highlander_i2c_probe._entry_ptr.16, ptr @highlander_i2c_probe._entry_ptr.9, ptr @highlander_i2c_read._entry, ptr @highlander_i2c_read._entry_ptr, ptr @highlander_i2c_smbus_xfer._entry, ptr @highlander_i2c_smbus_xfer._entry.21, ptr @highlander_i2c_smbus_xfer._entry_ptr, ptr @highlander_i2c_smbus_xfer._entry_ptr.23, ptr @highlander_i2c_wait_for_ack._entry, ptr @highlander_i2c_wait_for_ack._entry_ptr, ptr @highlander_i2c_wait_for_bbsy._entry, ptr @highlander_i2c_wait_for_bbsy._entry_ptr, ptr @highlander_i2c_driver, ptr @iic_force_poll, ptr @iic_force_normal, ptr @iic_timeout, ptr @iic_read_delay, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @highlander_i2c_algo, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iic_force_poll to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iic_force_normal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iic_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iic_read_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_smbus_xfer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_wait_for_bbsy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highlander_i2c_wait_for_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @highlander_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @highlander_i2c_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @highlander_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @highlander_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highlander_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !128

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1440) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end16, !prof !128

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call18 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %add.i) #10
  %base = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %base, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end16.err_crit_edge, label %if.end30, !prof !128

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end30:                                         ; preds = %if.end16
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev31, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call33 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call33, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end30.if.end38.thread_crit_edge, label %lor.lhs.false

if.end30.if.end38.thread_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread

lor.lhs.false:                                    ; preds = %if.end30
  %9 = load i8, ptr @iic_force_poll, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool35.not = icmp eq i8 %9, 0
  br i1 %tobool35.not, label %if.end38, label %lor.lhs.false.if.end38.thread_crit_edge

lor.lhs.false.if.end38.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %lor.lhs.false.if.end38.thread_crit_edge, %if.end30.if.end38.thread_crit_edge
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %irq, align 4
  br label %do.end55

if.end38:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool40.not = icmp eq i32 %call33, 0
  br i1 %tobool40.not, label %if.end38.do.end55_crit_edge, label %if.then41

if.end38.do.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

if.then41:                                        ; preds = %if.end38
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call33, ptr noundef nonnull @highlander_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %12, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %if.end52, label %if.then41.err_unmap_crit_edge, !prof !130

if.then41.err_unmap_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap

if.end52:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %16 = or i16 %15, 16384
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #10, !srcloc !134
  br label %if.end57

do.end55:                                         ; preds = %if.end38.do.end55_crit_edge, %if.end38.thread
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev31, ptr noundef nonnull @.str.7) #13
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %22 = and i16 %21, -16385
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #10, !srcloc !134
  br label %if.end57

if.end57:                                         ; preds = %do.end55, %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_read_time = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %last_read_time to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_read_time, align 8
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !131
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %31 = load i8, ptr @iic_force_normal, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %32 = and i16 %30, -145
  %33 = or i16 %32, 16
  %34 = or i16 %30, 144
  %smmr.0.i = select i1 %tobool.not.i, i16 %34, i16 %33
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %37 = tail call i16 @llvm.bswap.i16(i16 %smmr.0.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %37) #10, !srcloc !134
  %adapter = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2
  %driver_data.i.i147 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 8
  %38 = ptrtoint ptr %driver_data.i.i147 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %driver_data.i.i147, align 4
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %class, align 4
  %name58 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 12
  %call59 = tail call i32 @strlcpy(ptr noundef %name58, ptr noundef nonnull @.str.10, i32 noundef 48) #10
  %algo = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @highlander_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev31, ptr %parent, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.highlander_i2c_dev, ptr %call7.i.i, i32 0, i32 2, i32 11
  %45 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %nr, align 4
  %call62 = tail call fastcc i32 @highlander_i2c_reset(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end75, label %if.end57.err_free_irq_crit_edge, !prof !130

if.end57.err_free_irq_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

if.end75:                                         ; preds = %if.end57
  %call76 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end75.cleanup_crit_edge, label %if.end75.err_free_irq_crit_edge, !prof !130

if.end75.err_free_irq_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_irq:                                     ; preds = %if.end75.err_free_irq_crit_edge, %if.end57.err_free_irq_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %if.end57.err_free_irq_crit_edge ], [ @.str.15, %if.end75.err_free_irq_crit_edge ]
  %ret.0 = phi i32 [ %call62, %if.end57.err_free_irq_crit_edge ], [ %call76, %if.end75.err_free_irq_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull %.str.15.sink) #13
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool91.not = icmp eq i32 %47, 0
  br i1 %tobool91.not, label %err_free_irq.err_unmap_crit_edge, label %if.then92

err_free_irq.err_unmap_crit_edge:                 ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap

if.then92:                                        ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #12
  %call94 = tail call ptr @free_irq(i32 noundef %47, ptr noundef nonnull %call7.i.i) #10
  br label %err_unmap

err_unmap:                                        ; preds = %if.then92, %err_free_irq.err_unmap_crit_edge, %if.then41.err_unmap_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then41.err_unmap_crit_edge ], [ %ret.0, %if.then92 ], [ %ret.0, %err_free_irq.err_unmap_crit_edge ]
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %49) #10
  br label %err

err:                                              ; preds = %err_unmap, %if.end16.err_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_unmap ], [ -6, %if.end16.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end75.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.2, %err ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highlander_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #10
  %irq = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highlander_i2c_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %3 = or i16 %2, 512
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %3) #10, !srcloc !134
  %cmd_complete = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev_id, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_complete) #10
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @highlander_i2c_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %3 = or i16 %2, 4096
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %3) #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = load i32, ptr @iic_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #10
  %add.i = add i32 %call2.i.i, %6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %11 = and i16 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not5.i = icmp eq i16 %11, 0
  br i1 %tobool.not5.i, label %entry.highlander_i2c_wait_for_bbsy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.highlander_i2c_wait_for_bbsy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %highlander_i2c_wait_for_bbsy.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.30) #13
  br label %highlander_i2c_wait_for_bbsy.exit

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #10
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %18 = and i16 %17, 1024
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %if.end.i.highlander_i2c_wait_for_bbsy.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.highlander_i2c_wait_for_bbsy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %highlander_i2c_wait_for_bbsy.exit

highlander_i2c_wait_for_bbsy.exit:                ; preds = %if.end.i.highlander_i2c_wait_for_bbsy.exit_crit_edge, %do.end.i, %entry.highlander_i2c_wait_for_bbsy.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ 0, %entry.highlander_i2c_wait_for_bbsy.exit_crit_edge ], [ 0, %if.end.i.highlander_i2c_wait_for_bbsy.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highlander_i2c_smbus_xfer(ptr nocapture noundef readonly %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmd_complete = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @highlander_i2c_smbus_xfer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@highlander_i2c_smbus_xfer, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %conv = zext i16 %addr to i32
  %conv7 = zext i8 %command to i32
  %conv8 = zext i8 %read_write to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @highlander_i2c_smbus_xfer.__UNIQUE_ID_ddebug291, ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %size) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end16 [
    i32 2, label %sw.bb
    i32 8, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %buf = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %buf, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [34 x i8], ptr %data, i32 0, i32 1
  %buf10 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %buf10, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 2
  %conv12 = zext i8 %9 to i32
  br label %sw.epilog

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %size) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %conv12.sink = phi i32 [ %conv12, %sw.bb9 ], [ 1, %sw.bb ]
  %buf_len13 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %buf_len13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv12.sink, ptr %buf_len13, align 4
  %base = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !131
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %17 = and i16 %16, -4
  %buf_len21 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %buf_len21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_len21, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %19, label %do.end36 [
    i32 1, label %sw.epilog.sw.epilog39_crit_edge
    i32 8, label %sw.bb22
    i32 16, label %sw.bb25
    i32 32, label %sw.bb29
  ]

sw.epilog.sw.epilog39_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog39

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %21 = or i16 %17, 1
  br label %sw.epilog39

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %22 = or i16 %17, 2
  br label %sw.epilog39

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %23 = or i16 %16, 3
  br label %sw.epilog39

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %19) #13
  br label %cleanup

sw.epilog39:                                      ; preds = %sw.bb29, %sw.bb25, %sw.bb22, %sw.epilog.sw.epilog39_crit_edge
  %tmp.0 = phi i16 [ %23, %sw.bb29 ], [ %22, %sw.bb25 ], [ %21, %sw.bb22 ], [ %17, %sw.epilog.sw.epilog39_crit_edge ]
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %28 = tail call i16 @llvm.bswap.i16(i16 %tmp.0) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %28) #10, !srcloc !134
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %32 = or i16 %31, 512
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %32) #10, !srcloc !134
  %shl = shl i16 %addr, 1
  %conv43 = zext i8 %read_write to i16
  %or44 = or i16 %shl, %conv43
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %36, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %37 = tail call i16 @llvm.bswap.i16(i16 %or44) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 %37) #10, !srcloc !134
  %38 = ptrtoint ptr %buf_len21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_len21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp28.not.i = icmp eq i32 %39, 0
  br i1 %cmp28.not.i, label %sw.epilog39.highlander_i2c_command.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog39.highlander_i2c_command.exit_crit_edge: ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #12
  br label %highlander_i2c_command.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog39
  %conv.i = zext i8 %command to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %conv2.i = trunc i32 %or.i to i16
  %conv8.i = trunc i32 %shl.i to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %cmd.029.i = phi i16 [ %conv2.i, %for.body.lr.ph.i ], [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ]
  %sub.i = sub i32 %39, %i.030.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp4.i = icmp eq i32 %sub.i, 1
  %spec.select.i = select i1 %cmp4.i, i16 %conv8.i, i16 %cmd.029.i
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 6
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %i.030.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %42 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %42) #10, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @highlander_i2c_command.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@highlander_i2c_smbus_xfer, %for.inc.i)) #10
          to label %if.then13.i [label %for.inc.i], !srcloc !135

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %div26.i = lshr exact i32 %i.030.i, 1
  %conv15.i = zext i16 %spec.select.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @highlander_i2c_command.__UNIQUE_ID_ddebug288, ptr noundef %44, ptr noundef nonnull @.str.26, i32 noundef %div26.i, i32 noundef %conv15.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %for.body.i
  %add.i = add i32 %i.030.i, 2
  %cmp.i = icmp ult i32 %add.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.highlander_i2c_command.exit_crit_edge

for.inc.i.highlander_i2c_command.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %highlander_i2c_command.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

highlander_i2c_command.exit:                      ; preds = %for.inc.i.highlander_i2c_command.exit_crit_edge, %sw.epilog39.highlander_i2c_command.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 1
  br i1 %cmp, label %if.then51, label %if.else

if.then51:                                        ; preds = %highlander_i2c_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call fastcc i32 @highlander_i2c_read(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %highlander_i2c_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call fastcc i32 @highlander_i2c_write(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then51, %do.end36, %do.end16
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end36 ], [ %call52, %if.then51 ], [ %call53, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @highlander_i2c_func(ptr nocapture noundef readnone %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 202899456
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @highlander_i2c_read(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #10
  %0 = call ptr @memset(ptr %data, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = load i32, ptr @iic_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #10
  %add.i = add i32 %call2.i.i, %1
  %base.i = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %6 = and i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not5.i = icmp eq i16 %6, 0
  br i1 %tobool.not5.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.i:                                     ; preds = %if.end.i62.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i61 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i61, label %highlander_i2c_wait_for_bbsy.exit, label %if.end.i62

if.end.i62:                                       ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %11 = and i16 %10, 1024
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.end.i62.if.end_crit_edge, label %if.end.i62.while.body.i_crit_edge

if.end.i62.while.body.i_crit_edge:                ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i62.if.end_crit_edge:                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

highlander_i2c_wait_for_bbsy.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i62.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %17 = or i16 %16, 256
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #10, !srcloc !134
  %call1 = tail call fastcc i32 @highlander_i2c_wait_xfer_done(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %22 = load i32, ptr @iic_read_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %land.lhs.true

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_read_time = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 4
  %24 = ptrtoint ptr %last_read_time to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_read_time, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %22) #10
  %26 = add i32 %25, %call2.i
  %sub = sub i32 %23, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %last_read_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_read_time, align 8
  %29 = load i32, ptr @iic_read_delay, align 4
  %call2.i56 = tail call i32 @__msecs_to_jiffies(i32 noundef %29) #10
  %add11 = add i32 %call2.i56, %28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub12 = sub i32 %add11, %30
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %sub12) #10
  tail call void @msleep(i32 noundef %call13) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %buf_len = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 7
  %31 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_len, align 4
  %add15 = add i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add15)
  %cmp1675.not = icmp ult i32 %add15, 2
  br i1 %cmp1675.not, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %buf78 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 6
  %33 = ptrtoint ptr %buf78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf78, align 8
  br label %for.end.i

for.body.preheader:                               ; preds = %if.end14
  %shr = lshr i32 %add15, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.076 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 70
  %mul = shl nuw i32 %i.076, 1
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %mul
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #10, !srcloc !131
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %arrayidx = getelementptr [16 x i16], ptr %data, i32 0, i32 %i.076
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @highlander_i2c_read.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@highlander_i2c_read, %for.inc)) #10
          to label %if.then25 [label %for.inc], !srcloc !135

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @highlander_i2c_read.__UNIQUE_ID_ddebug289, ptr noundef %41, ptr noundef nonnull @.str.29, i32 noundef %i.076, i32 noundef %conv) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %for.body
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %44 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 6
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp7.i = icmp sgt i32 %.pr, 1
  br i1 %cmp7.i, label %for.end.for.body.i_crit_edge, label %for.end.for.end.i_crit_edge

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %len.addr.010.i = phi i32 [ %sub.i65, %for.body.i.for.body.i_crit_edge ], [ %.pr, %for.end.for.body.i_crit_edge ]
  %dst.addr.09.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %46, %for.end.for.body.i_crit_edge ]
  %src.addr.08.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %data, %for.end.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %src.addr.08.i, i32 1
  %47 = ptrtoint ptr %src.addr.08.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %src.addr.08.i, align 2
  %49 = ptrtoint ptr %dst.addr.09.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %dst.addr.09.i, align 2
  %add.ptr.i = getelementptr i8, ptr %dst.addr.09.i, i32 2
  %sub.i65 = add nsw i32 %len.addr.010.i, -2
  %cmp.i66 = icmp ugt i32 %len.addr.010.i, 3
  br i1 %cmp.i66, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge, %for.end.thread
  %src.addr.0.lcssa.i = phi ptr [ %data, %for.end.for.end.i_crit_edge ], [ %data, %for.end.thread ], [ %incdec.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %dst.addr.0.lcssa.i = phi ptr [ %46, %for.end.for.end.i_crit_edge ], [ %34, %for.end.thread ], [ %add.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %len.addr.0.lcssa.i = phi i32 [ %.pr, %for.end.for.end.i_crit_edge ], [ %32, %for.end.thread ], [ %sub.i65, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool.not.i67 = icmp eq i32 %len.addr.0.lcssa.i, 0
  br i1 %tobool.not.i67, label %for.end.i.smbus_read_data.exit_crit_edge, label %if.then.i68

for.end.i.smbus_read_data.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_read_data.exit

if.then.i68:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %src.addr.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %src.addr.0.lcssa.i, align 2
  %52 = lshr i16 %51, 8
  %conv1.i = trunc i16 %52 to i8
  %53 = ptrtoint ptr %dst.addr.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv1.i, ptr %dst.addr.0.lcssa.i, align 1
  br label %smbus_read_data.exit

smbus_read_data.exit:                             ; preds = %if.then.i68, %for.end.i.smbus_read_data.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %last_read_time32 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 4
  %55 = ptrtoint ptr %last_read_time32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %last_read_time32, align 8
  br label %cleanup

cleanup:                                          ; preds = %smbus_read_data.exit, %do.end, %highlander_i2c_wait_for_bbsy.exit
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %smbus_read_data.exit ], [ -11, %highlander_i2c_wait_for_bbsy.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @highlander_i2c_write(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #10
  %buf = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 6
  %0 = call ptr @memset(ptr %data, i32 255, i32 32)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 8
  %buf_len = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7.i = icmp sgt i32 %4, 1
  br i1 %cmp7.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %len.addr.010.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %dst.addr.09.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %data, %entry.for.body.i_crit_edge ]
  %src.addr.08.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %2, %entry.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %src.addr.08.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %src.addr.08.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %dst.addr.09.i, i32 1
  %7 = ptrtoint ptr %dst.addr.09.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %dst.addr.09.i, align 2
  %add.ptr.i = getelementptr i8, ptr %src.addr.08.i, i32 2
  %sub.i = add nsw i32 %len.addr.010.i, -2
  %cmp.i = icmp ugt i32 %len.addr.010.i, 3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %src.addr.0.lcssa.i = phi ptr [ %2, %entry.for.end.i_crit_edge ], [ %add.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %dst.addr.0.lcssa.i = phi ptr [ %data, %entry.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %len.addr.0.lcssa.i = phi i32 [ %4, %entry.for.end.i_crit_edge ], [ %sub.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.lcssa.i, 0
  br i1 %tobool.not.i, label %for.end.i.smbus_write_data.exit_crit_edge, label %if.then.i

for.end.i.smbus_write_data.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_write_data.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %src.addr.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src.addr.0.lcssa.i, align 1
  %conv.i = zext i8 %9 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %10 = ptrtoint ptr %dst.addr.0.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %shl.i, ptr %dst.addr.0.lcssa.i, align 2
  br label %smbus_write_data.exit

smbus_write_data.exit:                            ; preds = %if.then.i, %for.end.i.smbus_write_data.exit_crit_edge
  %add = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp35.not = icmp ult i32 %add, 2
  br i1 %cmp35.not, label %smbus_write_data.exit.for.end_crit_edge, label %for.body.lr.ph

smbus_write_data.exit.for.end_crit_edge:          ; preds = %smbus_write_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %smbus_write_data.exit
  %shr = lshr i32 %add, 1
  %base = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i16], ptr %data, i32 0, i32 %i.036
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 70
  %mul = shl nuw i32 %i.036, 1
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 %15) #10, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @highlander_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@highlander_i2c_write, %for.inc)) #10
          to label %if.then [label %for.inc], !srcloc !135

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @highlander_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.38, i32 noundef %i.036, i32 noundef %conv) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %smbus_write_data.exit.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = load i32, ptr @iic_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %21) #10
  %add.i = add i32 %call2.i.i, %20
  %base.i = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %25 = and i16 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not5.i = icmp eq i16 %25, 0
  br i1 %tobool.not5.i, label %for.end.if.end11_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i27 = sub i32 %add.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i27)
  %cmp.i28 = icmp slt i32 %sub.i27, 0
  br i1 %cmp.i28, label %highlander_i2c_wait_for_bbsy.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #10
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %30 = and i16 %29, 1024
  %tobool.not.i29 = icmp eq i16 %30, 0
  br i1 %tobool.not.i29, label %if.end.i.if.end11_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

highlander_i2c_wait_for_bbsy.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %for.end.if.end11_crit_edge
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %36 = or i16 %35, 256
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #10, !srcloc !134
  %call12 = tail call fastcc i32 @highlander_i2c_wait_xfer_done(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %highlander_i2c_wait_for_bbsy.exit
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -11, %highlander_i2c_wait_for_bbsy.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @highlander_i2c_wait_xfer_done(ptr noundef %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_complete = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 3
  %2 = load i32, ptr @iic_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #10
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %call2.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = load i32, ptr @iic_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #10
  %add.i = add i32 %call2.i.i, %3
  %base.i = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %8 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not18.i = icmp eq i16 %8, 0
  br i1 %tobool.not18.i, label %if.else.if.end.i7_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.if.end.i7_crit_edge:                      ; preds = %if.else
  br label %if.end.i7

if.end.i7:                                        ; preds = %do.end.i.if.end.i7_crit_edge, %if.else.if.end.i7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i6 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i6, label %do.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !137
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 0) #10
  %call.i.i = tail call i32 @__cond_resched() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %13 = and i16 %12, 512
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %do.end.i.if.end.i7_crit_edge, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i.if.end.i7_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i7

do.end14.i:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.33) #13
  br label %if.end

if.end:                                           ; preds = %do.end14.i, %do.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %base.i8 = getelementptr inbounds %struct.highlander_i2c_dev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %base.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i8, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %19 = and i16 %18, 2560
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %19)
  %cmp.i9 = icmp eq i16 %19, 2048
  br i1 %cmp.i9, label %do.end.i10, label %if.end.highlander_i2c_wait_for_ack.exit_crit_edge

if.end.highlander_i2c_wait_for_ack.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %highlander_i2c_wait_for_ack.exit

do.end.i10:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.35) #13
  %call3.i = tail call fastcc i32 @highlander_i2c_reset(ptr noundef %dev) #10
  br label %highlander_i2c_wait_for_ack.exit

highlander_i2c_wait_for_ack.exit:                 ; preds = %do.end.i10, %if.end.highlander_i2c_wait_for_ack.exit_crit_edge
  %retval.0.i11 = phi i32 [ %call3.i, %do.end.i10 ], [ 0, %if.end.highlander_i2c_wait_for_ack.exit_crit_edge ]
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !115, !116, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_i2c_highlander__292_462_highlander_i2c_driver_init6, !1, !"__initcall__kmod_i2c_highlander__292_462_highlander_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 462, i32 1}
!2 = !{ptr @__exitcall_highlander_i2c_driver_exit, !1, !"__exitcall_highlander_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 464, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 465, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 466, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__param_iic_force_poll, !11, !"__param_iic_force_poll", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 468, i32 1}
!12 = !{ptr @__UNIQUE_ID_iic_force_polltype297, !11, !"__UNIQUE_ID_iic_force_polltype297", i1 false, i1 false}
!13 = !{ptr @__param_iic_force_normal, !14, !"__param_iic_force_normal", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 469, i32 1}
!15 = !{ptr @__UNIQUE_ID_iic_force_normaltype298, !14, !"__UNIQUE_ID_iic_force_normaltype298", i1 false, i1 false}
!16 = !{ptr @__param_iic_timeout, !17, !"__param_iic_timeout", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 470, i32 1}
!18 = !{ptr @__UNIQUE_ID_iic_timeouttype299, !17, !"__UNIQUE_ID_iic_timeouttype299", i1 false, i1 false}
!19 = !{ptr @__param_iic_read_delay, !20, !"__param_iic_read_delay", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 471, i32 1}
!21 = !{ptr @__UNIQUE_ID_iic_read_delaytype300, !20, !"__UNIQUE_ID_iic_read_delaytype300", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_iic_force_poll301, !23, !"__UNIQUE_ID_iic_force_poll301", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 473, i32 1}
!24 = !{ptr @__UNIQUE_ID_iic_force_normal302, !25, !"__UNIQUE_ID_iic_force_normal302", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 474, i32 1}
!26 = !{ptr @__UNIQUE_ID_iic_timeout303, !27, !"__UNIQUE_ID_iic_timeout303", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 476, i32 1}
!28 = !{ptr @__UNIQUE_ID_iic_read_delay304, !29, !"__UNIQUE_ID_iic_read_delay304", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 477, i32 1}
!30 = !{ptr @iic_force_poll, !31, !"iic_force_poll", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 51, i32 13}
!32 = !{ptr @iic_force_normal, !33, !"iic_force_normal", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 51, i32 29}
!34 = !{ptr @iic_read_delay, !35, !"iic_read_delay", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 52, i32 32}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 455, i32 11}
!38 = !{ptr @highlander_i2c_driver, !39, !"highlander_i2c_driver", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 453, i32 31}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 364, i32 3}
!42 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @highlander_i2c_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @highlander_i2c_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 393, i32 3}
!50 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @highlander_i2c_probe._entry.6, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @highlander_i2c_probe._entry_ptr.9, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 405, i32 22}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 415, i32 3}
!57 = !{ptr @highlander_i2c_probe._entry.11, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @highlander_i2c_probe._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 421, i32 3}
!61 = !{ptr @highlander_i2c_probe._entry.14, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @highlander_i2c_probe._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @highlander_i2c_algo, !64, !"highlander_i2c_algo", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 350, i32 35}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 285, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @highlander_i2c_smbus_xfer.__UNIQUE_ID_ddebug291, !66, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 301, i32 3}
!72 = !{ptr @highlander_i2c_smbus_xfer._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @highlander_i2c_smbus_xfer._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 325, i32 3}
!76 = !{ptr @highlander_i2c_smbus_xfer._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @highlander_i2c_smbus_xfer._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 121, i32 3}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @highlander_i2c_command.__UNIQUE_ID_ddebug288, !82, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 220, i32 3}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @highlander_i2c_read._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @highlander_i2c_read._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 244, i32 3}
!92 = !{ptr @highlander_i2c_read.__UNIQUE_ID_ddebug289, !91, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 132, i32 4}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @highlander_i2c_wait_for_bbsy._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @highlander_i2c_wait_for_bbsy._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 194, i32 2}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @highlander_i2c_poll._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @highlander_i2c_poll._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 153, i32 3}
!106 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @highlander_i2c_wait_for_ack._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @highlander_i2c_wait_for_ack._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 264, i32 3}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @highlander_i2c_write.__UNIQUE_ID_ddebug290, !110, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!113 = !{ptr @__param_str_iic_force_poll, !11, !"__param_str_iic_force_poll", i1 false, i1 false}
!114 = !{ptr @__param_str_iic_force_normal, !14, !"__param_str_iic_force_normal", i1 false, i1 false}
!115 = !{ptr @__param_str_iic_timeout, !17, !"__param_str_iic_timeout", i1 false, i1 false}
!116 = !{ptr @iic_timeout, !117, !"iic_timeout", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-highlander.c", i32 52, i32 12}
!118 = !{ptr @__param_str_iic_read_delay, !20, !"__param_str_iic_read_delay", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i8 0, i8 2}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 4624468}
!132 = !{i64 2152165043}
!133 = !{i64 2152166460}
!134 = !{i64 4624268}
!135 = !{i64 2148962383, i64 2148962388, i64 2148962401, i64 2148962445, i64 2148962479, i64 2148962500}
!136 = !{i64 2155545734}
!137 = !{i64 2155545576}
